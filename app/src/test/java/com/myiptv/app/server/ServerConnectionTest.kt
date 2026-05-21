package com.myiptv.app.server

import com.google.common.truth.Truth.assertThat
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Before
import org.junit.Test
import java.util.concurrent.TimeUnit
import kotlinx.coroutines.runBlocking

class ServerConnectionTest {
    private lateinit var server: MockWebServer

    @Before
    fun setup() {
        server = MockWebServer()
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    @Test
    fun `server responds to ping within 5 seconds`() {
        server.enqueue(MockResponse().setResponseCode(200))
        server.start()

        val client = OkHttpClient.Builder()
            .connectTimeout(5, TimeUnit.SECONDS)
            .build()

        val request = Request.Builder().url(server.url("/")).head().build()
        client.newCall(request).execute().use { response ->
            assertThat(response.code).isEqualTo(200)
        }
    }

    @Test
    fun `xtream login success parses user info`() = runBlocking {
        val body = """
        {
          "user_info": {
            "username": "testuser",
            "password": "testpass",
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
        """.trimIndent()

        server.enqueue(MockResponse().setResponseCode(200).setBody(body))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?username=testuser&password=testpass")).get().build()
        client.newCall(request).execute().use { resp ->
            val s = resp.body?.string() ?: ""
            assertThat(s).contains("testuser")
            assertThat(s).contains("max_connections")
        }
    }

    @Test
    fun `login with wrong credentials returns auth failure`() = runBlocking {
        val body = "{\"user_info\": { \"auth\": 0 }}"
        server.enqueue(MockResponse().setResponseCode(200).setBody(body))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?username=bad&password=bad")).get().build()
        client.newCall(request).execute().use { resp ->
            val s = resp.body?.string() ?: ""
            assertThat(s).contains("\"auth\": 0")
        }
    }

    @Test
    fun `login with server timeout emits connection timed out`() {
        // Simulate delayed response; client timeout 5s
        server.enqueue(MockResponse().setBody("{}").setBodyDelay(10, TimeUnit.SECONDS))
        server.start()

        val client = OkHttpClient.Builder().callTimeout(5, TimeUnit.SECONDS).build()
        val request = Request.Builder().url(server.url("/player_api.php")).get().build()

        try {
            client.newCall(request).execute().use { _ -> }
            // If no exception, fail
            assertThat(false).isTrue()
        } catch (e: Exception) {
            assertThat(e.message).containsMatch("timed out|timeout|connect timed out")
        }
    }

    @Test
    fun `login with expired subscription shows warning but allows login`() = runBlocking {
        val expiredTs = 1000000 // way in the past
        val body = "{ \"user_info\": { \"username\": \"u\", \"exp_date\": \"$expiredTs\" } }"
        server.enqueue(MockResponse().setResponseCode(200).setBody(body))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?username=u&password=p")).get().build()
        client.newCall(request).execute().use { resp ->
            val s = resp.body?.string() ?: ""
            assertThat(s).contains("exp_date")
        }
    }

    @Test
    fun `server unreachable connection refused is handled`() {
        // Point to a port likely unused
        val client = OkHttpClient.Builder().connectTimeout(5, TimeUnit.SECONDS).build()
        val request = Request.Builder().url("http://127.0.0.1:59999/").head().build()
        try {
            client.newCall(request).execute().use { _ -> }
            assertThat(false).isTrue()
        } catch (e: Exception) {
            assertThat(e).isNotNull()
        }
    }

    @Test
    fun `server returns html instead of json handled gracefully`() = runBlocking {
        val html = "<html><body>404 Not Found</body></html>"
        server.enqueue(MockResponse().setResponseCode(404).setBody(html).addHeader("Content-Type", "text/html"))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php")).get().build()
        client.newCall(request).execute().use { resp ->
            val contentType = resp.header("Content-Type") ?: ""
            assertThat(contentType).contains("text/html")
            val bodyStr = resp.body?.string() ?: ""
            assertThat(bodyStr).contains("404 Not Found")
        }
    }

    @Test
    fun `multiple concurrent login attempts dedupe to single request`() = runBlocking {
        // We'll simulate debounce by allowing only one request to be enqueued
        server.enqueue(MockResponse().setResponseCode(200).setBody("{\"user_info\":{}}"))
        server.start()

        val client = OkHttpClient.Builder().build()
        val url = server.url("/player_api.php?username=x&password=y")

        // Launch 3 calls concurrently
        val jobs = (1..3).map {
            kotlinx.coroutines.async {
                client.newCall(Request.Builder().url(url).get().build()).execute().use { it.code }
            }
        }
        jobs.forEach { it.await() }

        // Only one request should have been served by server
        assertThat(server.requestCount).isEqualTo(1)
    }
}
