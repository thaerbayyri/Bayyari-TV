package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.api.models.LoginResponse
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.EncryptedPrefs
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class AuthRepository @Inject constructor(
    private val api: XtreamApiService,
    private val prefs: EncryptedPrefs
) {

    suspend fun login(serverUrl: String, username: String, password: String, label: String, remember: Boolean): Result<Server> =
        withContext(Dispatchers.IO) {
            val base = Server(
                label = label.ifBlank { serverUrl },
                url = serverUrl,
                username = username,
                password = password
            )
            val saved = prefs.upsertServer(base)
            prefs.setActiveServerId(saved.id)
            prefs.setRememberLogin(remember)

            runCatching {
                val response = api.login(username, password)
                val updated = mergeLoginInfo(saved, response)
                prefs.upsertServer(updated)
            }
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

    fun setActiveServer(id: Int) = prefs.setActiveServerId(id)

    fun removeServer(id: Int) = prefs.removeServer(id)

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
}
