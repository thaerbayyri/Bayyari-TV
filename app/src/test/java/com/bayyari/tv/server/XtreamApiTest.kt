package com.bayyari.tv.server

import com.bayyari.tv.data.api.XtreamApiService
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Before
import org.junit.Test
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class XtreamApiTest {
    private val server = MockWebServer()
    private lateinit var service: XtreamApiService

    @Before
    fun setup() {
        server.start()
        val logging = HttpLoggingInterceptor().apply { level = HttpLoggingInterceptor.Level.BASIC }
        val client = OkHttpClient.Builder().addInterceptor(logging).build()
        service = Retrofit.Builder()
            .baseUrl(server.url("/"))
            .addConverterFactory(GsonConverterFactory.create())
            .client(client)
            .build()
            .create(XtreamApiService::class.java)
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    @Test
    fun login_parsesLoginResponse() {
        val body = """{
            "user_info": { "username": "u", "password": "p", "message": "ok", "auth": 1, "status": "Active", "exp_date": "0", "is_trial": "0", "active_cons": "1", "created_at": "0", "max_connections": "1", "allowed_output_formats": ["m3u8"] },
            "server_info": { "url": "http://s", "port": "80", "https_port": "443", "server_protocol": "http", "rtmp_port": "1935", "timezone": "UTC", "timestamp_now": 0, "time_now": "0" }
        }""".trimIndent()
        server.enqueue(MockResponse().setResponseCode(200).setBody(body))

        val resp = runBlocking { service.login("u", "p") }
        assertNotNull(resp)
    }

    @Test
    fun getLiveStreams_parsesList() {
        val body = "[ { \"num\":1, \"name\":\"Channel A\", \"stream_type\":\"live\", \"stream_id\":100 } ]"
        server.enqueue(MockResponse().setResponseCode(200).setBody(body))

        val list = runBlocking { service.getLiveStreams("u", "p") }
        assertEquals(1, list.size)
        assertEquals(100, list.first().streamId)
    }
}
