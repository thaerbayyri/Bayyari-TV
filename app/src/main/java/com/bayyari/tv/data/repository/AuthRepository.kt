package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.api.models.LoginResponse
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.EncryptedPrefs
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.withContext
import java.io.IOException
import javax.net.ssl.SSLException
import javax.net.ssl.SSLHandshakeException
import javax.inject.Inject
import javax.inject.Singleton
import android.util.Log

@Singleton
class AuthRepository @Inject constructor(
    private val api: XtreamApiService,
    private val prefs: EncryptedPrefs
) {

    private val _activeServer = MutableStateFlow(prefs.getActiveServer())

    fun activeServerFlow(): Flow<Server?> = _activeServer.asStateFlow()

    suspend fun login(serverUrl: String, username: String, password: String, label: String, remember: Boolean): Result<Server> =
        withContext(Dispatchers.IO) {
            val normalizedUrl = normalizeUrl(serverUrl)
                ?: return@withContext Result.failure(IllegalArgumentException("Invalid server URL — make sure it starts with http://"))

            val base = Server(
                label = label.ifBlank { normalizedUrl },
                url = normalizedUrl,
                username = username,
                password = password
            )
            val previousActiveId = prefs.getActiveServerId()
            val saved = prefs.upsertServer(base)
            prefs.setActiveServerId(saved.id)

            runCatching {
                val response = api.login(username, password)
                checkAuthResponse(response)
                val updated = mergeLoginInfo(saved, response)
                prefs.setRememberLogin(remember)
                prefs.upsertServer(updated)
            }.recoverCatching { throwable ->
                if (!shouldRetryAsHttp(saved.url, throwable)) throw throwable

                val downgradedUrl = saved.url.downgradedToHttpOrNull() ?: throw throwable
                val downgraded = saved.copy(url = downgradedUrl)
                val downgradedSaved = prefs.upsertServer(downgraded)
                prefs.setActiveServerId(downgradedSaved.id)

                val response = api.login(username, password)
                checkAuthResponse(response)
                val updated = mergeLoginInfo(downgradedSaved, response)
                prefs.setRememberLogin(remember)
                prefs.upsertServer(updated)
            }.onSuccess {
                _activeServer.value = prefs.getActiveServer()
            }.onFailure { t ->
                Log.w("AuthRepository", "Login failed, rolling back", t)
                prefs.removeServer(saved.id)
                prefs.setActiveServerId(previousActiveId)
                _activeServer.value = prefs.getActiveServer()
            }
        }

    private fun checkAuthResponse(response: LoginResponse) {
        val auth = response.userInfo?.auth
        if (auth == 0) {
            throw IOException("Invalid username or password")
        }
    }

    private fun normalizeUrl(input: String): String? {
        val trimmed = input.trim().trimEnd('/')
        val withScheme = when {
            trimmed.startsWith("http://", ignoreCase = true) ||
            trimmed.startsWith("https://", ignoreCase = true) -> trimmed
            trimmed.isNotBlank() -> "http://$trimmed"
            else -> return null
        }
        return withScheme.toHttpUrlOrNull()?.toString()?.trimEnd('/') ?: withScheme
    }

    suspend fun addM3uServer(label: String, url: String): Server = withContext(Dispatchers.IO) {
        val server = Server(
            label = label.ifBlank { url },
            url = url,
            username = "",
            password = "",
            isM3uOnly = true
        )
        val saved = prefs.upsertServer(server)
        prefs.setActiveServerId(saved.id)
        saved
    }

    fun getServers(): List<Server> = prefs.getServers()

    fun getActiveServer(): Server? = prefs.getActiveServer()

    fun setActiveServer(id: Int) {
        prefs.setActiveServerId(id)
        _activeServer.value = prefs.getActiveServer()
    }

    fun removeServer(id: Int) {
        prefs.removeServer(id)
        _activeServer.value = prefs.getActiveServer()
    }

    fun rememberLogin(remember: Boolean) = prefs.setRememberLogin(remember)

    fun isRememberLogin(): Boolean = prefs.isRememberLogin()

    private fun mergeLoginInfo(server: Server, response: LoginResponse): Server {
        val user = response.userInfo
        val exp = user?.expDate?.toLongOrNull() ?: 0
        val maxConnections = user?.maxConnections?.toIntOrNull() ?: 0
        return server.copy(
            expiresAtEpochSeconds = exp,
            maxConnections = maxConnections
        )
    }

    private fun shouldRetryAsHttp(serverUrl: String, throwable: Throwable): Boolean {
        if (!serverUrl.startsWith("https://", ignoreCase = true)) return false
        if (throwable.isLikelyTlsMismatch()) return true
        return false
    }

    private fun Throwable.isLikelyTlsMismatch(): Boolean {
        var current: Throwable? = this
        while (current != null) {
            val message = current.message.orEmpty()
            if (current is SSLHandshakeException || current is SSLException) return true
            if (current is IOException && message.contains("TLS packet header", ignoreCase = true)) return true
            if (message.contains("TLS packet header", ignoreCase = true)) return true
            current = current.cause
        }
        return false
    }

    private fun String.downgradedToHttpOrNull(): String? {
        val parsed = toHttpUrlOrNull() ?: return null
        if (parsed.scheme != "https") return null
        return parsed.newBuilder()
            .scheme("http")
            .build()
            .toString()
            .trimEnd('/')
    }
}
