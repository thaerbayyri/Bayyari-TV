package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.api.models.LoginResponse
import com.bayyari.tv.data.api.models.ServerInfoDto
import com.bayyari.tv.data.api.models.UserInfoDto
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.EncryptedPrefs
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.IOException

class AuthRepositoryTest {

    @Test
    fun login_retriesWithHttpWhenHttpsFailsWithTlsMismatch() = runTest {
        val api = mockk<XtreamApiService>()
        val prefs = mockk<EncryptedPrefs>()
        every { prefs.getActiveServer() } returns null
        val repository = AuthRepository(api, prefs)

        val tlsFailure = IOException("Unable to parse TLS packet header")
        val loginResponse = LoginResponse(
            userInfo = UserInfoDto(
                username = "demo",
                password = "demo",
                message = null,
                auth = 1,
                status = "Active",
                expDate = "1700000000",
                isTrial = "0",
                activeConnections = "1",
                createdAt = "1700000000",
                maxConnections = "2",
                allowedFormats = listOf("ts", "m3u8")
            ),
            serverInfo = ServerInfoDto(
                url = "spider-app.com",
                port = "8080",
                httpsPort = "8443",
                protocol = "http",
                rtmpPort = null,
                timezone = "UTC",
                timestampNow = null,
                timeNow = null
            )
        )

        every { prefs.upsertServer(any()) } answers {
            firstArg<Server>().let { server ->
                server.copy(id = if (server.id == 0) 1 else server.id)
            }
        }
        every { prefs.getActiveServerId() } returns 0
        every { prefs.setActiveServerId(any()) } returns Unit
        every { prefs.setRememberLogin(any()) } returns Unit

        coEvery { api.login("user", "pass") } throws tlsFailure andThen loginResponse

        val result = repository.login(
            serverUrl = "https://spider-app.com:8080",
            username = "user",
            password = "pass",
            label = "Spider",
            remember = true
        )

        assertTrue(result.isSuccess)
        val saved = result.getOrThrow()
        assertEquals("http://spider-app.com:8080", saved.url)
        assertEquals(2, saved.maxConnections)
        assertEquals(1700000000L, saved.expiresAtEpochSeconds)
        coVerify(exactly = 2) { api.login("user", "pass") }
    }

    @Test
    fun login_removesPendingServerAndRestoresPreviousActiveWhenValidationFails() = runTest {
        val api = mockk<XtreamApiService>()
        val prefs = mockk<EncryptedPrefs>()
        every { prefs.getActiveServer() } returns null
        val repository = AuthRepository(api, prefs)

        every { prefs.getActiveServerId() } returns 7
        every { prefs.upsertServer(any()) } answers {
            firstArg<Server>().copy(id = 8)
        }
        every { prefs.setActiveServerId(any()) } returns Unit
        every { prefs.removeServer(any()) } returns Unit
        every { prefs.setRememberLogin(any()) } returns Unit

        coEvery { api.login("bad", "creds") } throws IOException("unauthorized")

        val result = repository.login(
            serverUrl = "http://provider.test",
            username = "bad",
            password = "creds",
            label = "Bad",
            remember = true
        )

        assertFalse(result.isSuccess)
        coVerify(exactly = 1) { api.login("bad", "creds") }
        io.mockk.verify { prefs.removeServer(8) }
        io.mockk.verify { prefs.setActiveServerId(7) }
        io.mockk.verify(exactly = 0) { prefs.setRememberLogin(true) }
    }
}
