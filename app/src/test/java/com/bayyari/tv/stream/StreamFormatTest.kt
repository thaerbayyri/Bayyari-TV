package com.bayyari.tv.stream

import com.bayyari.tv.data.api.XtreamApiService
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertTrue
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
    fun hlsManifestIsFetchedAndIdentified() {
        val manifest = "#EXTM3U\n#EXT-X-VERSION:3\nhttp://example/seg0.ts"
        server.enqueue(MockResponse().setResponseCode(200).setBody(manifest).setHeader("Content-Type", "application/vnd.apple.mpegurl"))

        val url = server.url("/playlist.m3u8").toString()
        val resp = runBlocking { service.fetchRaw(url) }
        val body = resp.body()?.string().orEmpty()
        assertTrue(body.contains("#EXTM3U"))
    }
}
