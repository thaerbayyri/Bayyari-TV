package com.bayyari.tv.data.api

import com.bayyari.tv.data.api.models.CategoryDto
import com.bayyari.tv.data.api.models.LoginResponse
import com.google.gson.Gson
import com.google.gson.JsonObject
import kotlinx.coroutines.runBlocking
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import retrofit2.HttpException
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.net.URI

/**
 * Unit tests for the Xtream API service using MockWebServer.
 */
class XtreamApiServiceTest {

    private lateinit var server: MockWebServer
    private lateinit var service: XtreamApiService

    @Before
    fun setUp() {
        server = MockWebServer()
        server.start()

        val retrofit = Retrofit.Builder()
            .baseUrl(server.url("/"))
            .client(OkHttpClient.Builder().build())
            .addConverterFactory(GsonConverterFactory.create())
            .build()

        service = retrofit.create(XtreamApiService::class.java)
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    @Test
    fun `login success parses LoginResponse user and server info`() = runBlocking {
        val body = JsonObject().apply {
            add("user_info", JsonObject().apply {
                addProperty("username", "admin")
                addProperty("password", "secret")
                addProperty("auth", 1)
                addProperty("status", "Active")
                addProperty("exp_date", "1735689600")
            })
            add("server_info", JsonObject().apply {
                addProperty("url", "https://xtream.test/")
                addProperty("port", "8080")
                addProperty("server_protocol", "http")
            })
        }

        server.enqueue(
            MockResponse()
                .setResponseCode(200)
                .setBody(Gson().toJson(body))
                .setHeader("Content-Type", "application/json")
        )

        val resp = service.login("admin", "secret")

        assertNotNull(resp)
        assertEquals("admin", resp.userInfo?.username)
        assertEquals(1, resp.userInfo?.auth)
        assertEquals("https://xtream.test/", resp.serverInfo?.url)
    }

    @Test
    fun `login failure throws HttpException for 401`() = runBlocking {
        server.enqueue(
            MockResponse()
                .setResponseCode(401)
                .setBody("{\"error\":\"Unauthorized\"}")
                .setHeader("Content-Type", "application/json")
        )

        try {
            service.login("admin", "wrongpass")
            fail("Expected HttpException for 401")
        } catch (ex: Throwable) {
            assertTrue(ex is HttpException)
            if (ex is HttpException) assertEquals(401, ex.code())
        }
    }

    @Test
    fun `getLiveCategories sends username password and action query parameters`() = runBlocking {
        val categoriesJson = """
            [
              {"category_id":"1","category_name":"News","parent_id":null},
              {"category_id":"2","category_name":"Sports","parent_id":null}
            ]
        """.trimIndent()

        server.enqueue(
            MockResponse()
                .setResponseCode(200)
                .setBody(categoriesJson)
                .setHeader("Content-Type", "application/json")
        )

        val username = "tester"
        val password = "p@ss"
        val result: List<CategoryDto> = service.getLiveCategories(username, password)

        assertEquals(2, result.size)
        assertEquals("1", result[0].categoryId)

        val recorded = server.takeRequest()
        val reqUrl = recorded.requestUrl
        assertNotNull(reqUrl)
        assertEquals("tester", reqUrl?.queryParameter("u") ?: reqUrl?.queryParameter("username"))
        assertEquals("p@ss", reqUrl?.queryParameter("p") ?: reqUrl?.queryParameter("password"))
        assertEquals("get_live_categories", reqUrl?.queryParameter("action"))
    }

    companion object {
        private val allowedSchemes = setOf("http", "https", "rtmp", "rtmps", "rtp")
        private val blockedHosts = setOf("localhost", "127.0.0.1", "::1")

        fun isValidStreamUrl(url: String, allowedHost: String): Boolean {
            return try {
                val uri = URI(url)
                val scheme = uri.scheme?.lowercase() ?: return false
                if (!allowedSchemes.contains(scheme)) return false

                val host = uri.host?.lowercase() ?: return false
                if (blockedHosts.contains(host)) return false

                if (host == allowedHost.lowercase()) return true
                if (host.endsWith("." + allowedHost.lowercase())) return true
                return false
            } catch (ex: Exception) {
                false
            }
        }
    }

    @Test
    fun `stream url validation allows permitted schemes`() {
        val allowedHost = "xtream.test"
        val good = listOf(
            "https://xtream.test/live/user/pass/123.m3u8",
            "http://xtream.test/movie/user/pass/10.mp4",
            "rtmp://xtream.test/live/stream",
            "rtmps://xtream.test/live/stream"
        )

        for (u in good) {
            assertTrue(isValidStreamUrl(u, allowedHost))
        }
    }

    @Test
    fun `stream url validation rejects disallowed schemes and hosts`() {
        val allowedHost = "xtream.test"
        val bad = listOf(
            "file:///etc/passwd",
            "javascript:alert(1)",
            "http://evil.com/stream.m3u8",
            "http://127.0.0.1/admin",
            "http://localhost/secret"
        )

        for (u in bad) {
            assertFalse(isValidStreamUrl(u, allowedHost))
        }
    }
}
