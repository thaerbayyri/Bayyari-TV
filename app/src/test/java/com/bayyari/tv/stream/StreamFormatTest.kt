package com.bayyari.tv.stream

import com.bayyari.tv.data.api.XtreamApiService
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class StreamFormatTest {
    private val server = MockWebServer()
    private lateinit var service: XtreamApiService

    @Before
    fun setup() {
        server.start()
        val client = OkHttpClient.Builder().build()
        service = Retrofit.Builder()
            .baseUrl(server.url("/"))
            .addConverterFactory(GsonConverterFactory.create())
            .client(client)
            .build()
            .create(XtreamApiService::class.java)
    }

    @After
    fun teardown() {
        server.shutdown()
    }

    @Test
    fun liveStreams_parsesResponseList() {
        val body = "[ { \"num\":1, \"name\":\"Channel A\", \"stream_type\":\"live\", \"stream_id\":101 } ]"
        server.enqueue(MockResponse().setResponseCode(200).setBody(body))

        val list = runBlocking { service.getLiveStreams("u", "p") }
        assertEquals(1, list.size)
        assertEquals(101, list.first().streamId)
    }
}
