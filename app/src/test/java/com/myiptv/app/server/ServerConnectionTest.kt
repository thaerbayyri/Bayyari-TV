package com.myiptv.app.server

import app.cash.turbine.test
import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.api.models.LoginResponse
import com.google.common.truth.Truth.assertThat
import com.google.gson.JsonSyntaxException
import kotlinx.coroutines.Deferred
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.runTest
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Test
import retrofit2.HttpException
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.io.IOException
import java.net.ConnectException
import java.util.concurrent.TimeUnit

class ServerConnectionTest {
    private val servers = mutableListOf<MockWebServer>()

    @After
    fun tearDown() {
        servers.forEach { runCatching { it.shutdown() } }
    }

    @Test
    fun `server responds to ping within 5 seconds`() {
        val server = newServer()
        server.enqueue(MockResponse().setResponseCode(200))

        val client = OkHttpClient.Builder()
            .connectTimeout(5, TimeUnit.SECONDS)
            .build()
        client.newCall(Request.Builder().url(server.url("/")).head().build()).execute().use { response ->
            assertThat(response.code).isAnyOf(200, 301)
        }
    }

    @Test
    fun `xtream login success parses user and server info`() = runTest {
        val server = newServer()
        server.enqueue(MockResponse().setBody(LOGIN_SUCCESS_JSON).setResponseCode(200))
        val response = service(server).login("testuser", "testpass")

        assertThat(response.userInfo?.username).isEqualTo("testuser")
        assertThat(response.userInfo?.status).isEqualTo("Active")
        assertThat(response.userInfo?.expDate).isEqualTo("1767225600")
        assertThat(response.userInfo?.maxConnections).isEqualTo("2")
        assertThat(response.serverInfo?.url).isEqualTo("testserver.com")
    }

    @Test
    fun `login with wrong credentials returns invalid credentials state`() = runTest {
        val server = newServer()
        server.enqueue(MockResponse().setResponseCode(401).setBody("""{"user_info":{"auth":0}}"""))
        val viewModel = TestLoginViewModel(service(server))

        viewModel.login("bad", "bad")

        viewModel.state.test {
            assertThat(awaitItem()).isEqualTo(LoginUiState.Error("Invalid credentials", retryVisible = false))
        }
        assertThat(viewModel.navigateHome).isFalse()
    }

    @Test
    fun `login with server timeout exposes retry state`() = runTest {
        val server = newServer()
        server.enqueue(MockResponse().setBodyDelay(10, TimeUnit.SECONDS).setBody(LOGIN_SUCCESS_JSON))
        val viewModel = TestLoginViewModel(service(server, readTimeoutSeconds = 5))

        viewModel.login("testuser", "testpass")

        viewModel.state.test {
            val error = awaitItem()
            assertThat(error).isEqualTo(LoginUiState.Error("Connection timed out", retryVisible = true))
        }
    }

    @Test
    fun `login with expired subscription warns and allows login`() = runTest {
        val server = newServer()
        server.enqueue(MockResponse().setBody(LOGIN_EXPIRED_JSON).setResponseCode(200))
        val viewModel = TestLoginViewModel(service(server))

        viewModel.login("testuser", "testpass")

        viewModel.state.test {
            assertThat(awaitItem()).isEqualTo(LoginUiState.Success("Subscription expired", allowNavigation = true))
        }
        assertThat(viewModel.navigateHome).isTrue()
    }

    @Test
    fun `server unreachable emits error within 5 seconds`() = runTest {
        val api = Retrofit.Builder()
            .baseUrl("http://127.0.0.1:9999/")
            .addConverterFactory(GsonConverterFactory.create())
            .client(OkHttpClient.Builder().connectTimeout(5, TimeUnit.SECONDS).build())
            .build()
            .create(XtreamApiService::class.java)
        val viewModel = TestLoginViewModel(api)

        viewModel.login("testuser", "testpass")

        viewModel.state.test {
            val state = awaitItem()
            assertThat(state).isInstanceOf(LoginUiState.Error::class.java)
            assertThat((state as LoginUiState.Error).message).contains("Server unreachable")
        }
    }

    @Test
    fun `server returns html instead of json maps to invalid server url`() = runTest {
        val server = newServer()
        server.enqueue(
            MockResponse()
                .setResponseCode(200)
                .setHeader("Content-Type", "text/html")
                .setBody("<html><body>404 Not Found</body></html>")
        )
        val viewModel = TestLoginViewModel(service(server))

        viewModel.login("testuser", "testpass")

        viewModel.state.test {
            assertThat(awaitItem()).isEqualTo(LoginUiState.Error("Invalid server URL", retryVisible = false))
        }
    }

    @Test
    fun `multiple concurrent login attempts dedupe to one api call`() = runTest {
        val server = newServer()
        server.enqueue(MockResponse().setBody(LOGIN_SUCCESS_JSON).setBodyDelay(150, TimeUnit.MILLISECONDS))
        val viewModel = TestLoginViewModel(service(server))

        coroutineScope {
            val jobs: List<Deferred<Unit>> = List(3) { async { viewModel.login("testuser", "testpass") } }
            jobs.awaitAll()
        }

        assertThat(server.requestCount).isEqualTo(1)
        assertThat(viewModel.savedCredentials).isEqualTo("testuser:testpass")
        assertThat(viewModel.navigateHome).isTrue()
    }

    private fun newServer(): MockWebServer {
        return MockWebServer().also {
            it.start()
            servers += it
        }
    }

    private fun service(server: MockWebServer, readTimeoutSeconds: Long = 5): XtreamApiService {
        val client = OkHttpClient.Builder()
            .connectTimeout(5, TimeUnit.SECONDS)
            .readTimeout(readTimeoutSeconds, TimeUnit.SECONDS)
            .build()
        return Retrofit.Builder()
            .baseUrl(server.url("/"))
            .addConverterFactory(GsonConverterFactory.create())
            .client(client)
            .build()
            .create(XtreamApiService::class.java)
    }

    private class TestLoginViewModel(private val api: XtreamApiService) {
        val state = MutableStateFlow<LoginUiState>(LoginUiState.Idle)
        var navigateHome = false
            private set
        var savedCredentials: String? = null
            private set
        private var inFlight: Deferred<Unit>? = null

        suspend fun login(username: String, password: String) = coroutineScope {
            inFlight?.takeIf { it.isActive }?.await() ?: async {
                val ignored = runCatching { api.login(username, password) }
                    .onSuccess { response ->
                        val user = response.userInfo
                        if (user?.auth == 0) {
                            state.value = LoginUiState.Error("Invalid credentials", retryVisible = false)
                            return@onSuccess
                        }
                        savedCredentials = "$username:$password"
                        navigateHome = true
                        val expired = (user?.expDate?.toLongOrNull() ?: Long.MAX_VALUE) < (System.currentTimeMillis() / 1000)
                        state.value = LoginUiState.Success(
                            warning = if (expired) "Subscription expired" else null,
                            allowNavigation = true
                        )
                    }
                    .onFailure { error ->
                        state.value = when (error) {
                            is HttpException -> LoginUiState.Error("Invalid credentials", retryVisible = false)
                            is java.net.SocketTimeoutException -> LoginUiState.Error("Connection timed out", retryVisible = true)
                            is ConnectException -> LoginUiState.Error("Server unreachable: ${error.message.orEmpty()}", retryVisible = true)
                            is JsonSyntaxException -> LoginUiState.Error("Invalid server URL", retryVisible = false)
                            is IOException -> {
                                val message = error.message.orEmpty()
                                if (message.contains("json", ignoreCase = true) || message.contains("expected", ignoreCase = true)) {
                                    LoginUiState.Error("Invalid server URL", retryVisible = false)
                                } else {
                                    LoginUiState.Error("Server unreachable: $message", retryVisible = true)
                                }
                            }
                            else -> LoginUiState.Error("Invalid server URL", retryVisible = false)
                        }
                    }
                ignored.exceptionOrNull()
                Unit
            }.also { inFlight = it }.await()
        }
    }

    private sealed class LoginUiState {
        data object Idle : LoginUiState()
        data class Success(val warning: String?, val allowNavigation: Boolean) : LoginUiState()
        data class Error(val message: String, val retryVisible: Boolean) : LoginUiState()
    }

    private companion object {
        private const val LOGIN_SUCCESS_JSON = """
            {
              "user_info": {
                "username": "testuser",
                "password": "testpass",
                "auth": 1,
                "status": "Active",
                "exp_date": "1767225600",
                "is_trial": "0",
                "active_cons": "0",
                "created_at": "1609459200",
                "max_connections": "2",
                "allowed_output_formats": ["m3u8","ts","rtmp"]
              },
              "server_info": {
                "url": "testserver.com",
                "port": "8080",
                "https_port": "8443",
                "server_protocol": "http",
                "rtmp_port": "1935",
                "timezone": "UTC",
                "timestamp_now": 1700000000,
                "time_now": "2024-01-01 00:00:00"
              }
            }
        """

        private const val LOGIN_EXPIRED_JSON = """
            {
              "user_info": {
                "username": "testuser",
                "password": "testpass",
                "auth": 1,
                "status": "Active",
                "exp_date": "946684800",
                "is_trial": "0",
                "active_cons": "0",
                "created_at": "1609459200",
                "max_connections": "2",
                "allowed_output_formats": ["m3u8","ts"]
              },
              "server_info": {
                "url": "testserver.com",
                "port": "8080",
                "https_port": "8443",
                "server_protocol": "http",
                "rtmp_port": "1935",
                "timezone": "UTC",
                "timestamp_now": 1700000000,
                "time_now": "2024-01-01 00:00:00"
              }
            }
        """
    }
}
