package com.bayyari.tv.server

import com.bayyari.tv.data.api.XtreamApiService
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.SocketPolicy
import org.junit.After
import org.junit.Assert.assertTrue
import kotlinx.coroutines.runBlocking
import org.junit.Before
import org.junit.Test
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.io.IOException
import java.util.concurrent.TimeUnit

class ServerConnectionTest {
    private val server = MockWebServer()

    @Before
    fun start() {
        server.start()
    }

    @After
    fun stop() {
        server.shutdown()
    }

    @Test
    fun fetchRaw_timesOutOnNoResponse() {
        // Client with short read timeout
        val client = OkHttpClient.Builder()
            .readTimeout(1, TimeUnit.SECONDS)
            .build()

        val service = Retrofit.Builder()
            .baseUrl(server.url("/"))
            .addConverterFactory(GsonConverterFactory.create())
            .client(client)
            .build()
            .create(XtreamApiService::class.java)

        // Enqueue a response that delays sending the body past the client's read timeout
        server.enqueue(MockResponse().setBodyDelay(2, java.util.concurrent.TimeUnit.SECONDS).setBody("ok"))

        val url = server.url("/hang").toString()
        try {
            runBlocking { service.fetchRaw(url) }
            // If we got here, the request didn't time out — fail
            assertTrue("Expected timeout but request succeeded", false)
        } catch (e: IOException) {
            // Expected: a timeout or connection closed
            val message = e.message.orEmpty()
            assertTrue(
                message.contains("timeout", ignoreCase = true) ||
                    message.contains("timed out", ignoreCase = true) ||
                    message.contains("failed", ignoreCase = true)
            )
        }
    }
}
