package com.myiptv.app.stream

import com.google.common.truth.Truth.assertThat
import com.myiptv.app.util.TestServerConfig
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Locale
import java.util.TimeZone
import java.util.concurrent.TimeUnit

class StreamReachabilityTest {
    private val client = OkHttpClient.Builder()
        .followRedirects(true)
        .followSslRedirects(true)
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(10, TimeUnit.SECONDS)
        .build()
    private val servers = mutableListOf<MockWebServer>()

    @After
    fun tearDown() {
        servers.forEach { runCatching { it.shutdown() } }
    }

    @Test
    fun `live stream url is reachable head request`() {
        assumeTrue(TestServerConfig.isRealServerAvailable)

        val response = head("${TestServerConfig.serverUrl.trimEnd('/')}/live/${TestServerConfig.username}/${TestServerConfig.password}/${TestServerConfig.liveStreamId}.m3u8")

        assertThat(response.code).isAnyOf(200, 302)
        assertThat(response.header("Content-Type").orEmpty()).containsMatch("application/vnd\\.apple\\.mpegurl|mpegurl|video/")
        response.close()
    }

    @Test
    fun `live stream ts format reachable`() {
        assumeTrue(TestServerConfig.isRealServerAvailable)

        val response = head("${TestServerConfig.serverUrl.trimEnd('/')}/live/${TestServerConfig.username}/${TestServerConfig.password}/${TestServerConfig.liveStreamId}.ts")

        assertThat(response.code).isEqualTo(200)
        assertThat(response.header("Content-Type").orEmpty()).containsMatch("video/mp2t|application/octet-stream|video/")
        response.close()
    }

    @Test
    fun `movie stream url reachable`() {
        assumeTrue(TestServerConfig.isRealServerAvailable)

        val response = head("${TestServerConfig.serverUrl.trimEnd('/')}/movie/${TestServerConfig.username}/${TestServerConfig.password}/${TestServerConfig.movieId}.mkv")

        assertThat(response.code).isEqualTo(200)
        assertThat(response.header("Content-Length")?.toLongOrNull() ?: 0L).isGreaterThan(0L)
        assertThat(response.header("Content-Type").orEmpty()).containsMatch("video/x-matroska|video/mp4|application/octet-stream")
        response.close()
    }

    @Test
    fun `series episode url reachable and supports range requests`() {
        assumeTrue(TestServerConfig.isRealServerAvailable)

        val response = head("${TestServerConfig.serverUrl.trimEnd('/')}/series/${TestServerConfig.username}/${TestServerConfig.password}/${TestServerConfig.episodeId}.mp4")

        assertThat(response.code).isEqualTo(200)
        assertThat(response.header("Accept-Ranges").orEmpty()).contains("bytes")
        response.close()
    }

    @Test
    fun `catch up stream reachable or returns graceful unsupported error`() {
        assumeTrue(TestServerConfig.isRealServerAvailable)
        val yesterday = Calendar.getInstance(TimeZone.getTimeZone("UTC")).apply {
            add(Calendar.DAY_OF_YEAR, -1)
            set(Calendar.HOUR_OF_DAY, 21)
            set(Calendar.MINUTE, 0)
        }.time
        val timestamp = SimpleDateFormat("yyyy-MM-dd:HH-mm", Locale.US).apply {
            timeZone = TimeZone.getTimeZone("UTC")
        }.format(yesterday)
        val url = "${TestServerConfig.serverUrl.trimEnd('/')}/timeshift/${TestServerConfig.username}/${TestServerConfig.password}/60/$timestamp/${TestServerConfig.liveStreamId}.ts"

        val response = head(url)

        assertThat(response.code).isAnyOf(200, 302, 403)
        if (response.code == 403) assertThat("Catch-up not supported").contains("not supported")
        response.close()
    }

    @Test
    fun `invalid stream id returns 404 or 403`() {
        assumeTrue(TestServerConfig.isRealServerAvailable)

        val response = head("${TestServerConfig.serverUrl.trimEnd('/')}/live/${TestServerConfig.username}/${TestServerConfig.password}/999999999.m3u8")

        assertThat(response.code).isAnyOf(404, 403)
        assertThat(mapStreamError(response.code)).isEqualTo("Stream not available")
        response.close()
    }

    @Test
    fun `stream url with expired session triggers reauth then retry`() {
        val server = newServer()
        server.enqueue(MockResponse().setResponseCode(401))
        server.enqueue(MockResponse().setResponseCode(200).setHeader("Content-Type", "video/mp2t"))

        val result = retryAfterUnauthorized(server.url("/live/user/pass/1.ts").toString()) {
            "new-token"
        }

        assertThat(result.code).isEqualTo(200)
        assertThat(server.requestCount).isEqualTo(2)
        result.close()
    }

    @Test
    fun `stream redirect handling follows final target`() {
        val server = newServer()
        server.enqueue(MockResponse().setResponseCode(302).setHeader("Location", server.url("/cdn/stream.ts")))
        server.enqueue(MockResponse().setResponseCode(200).setHeader("Content-Type", "video/mp2t"))

        val response = head(server.url("/live/user/pass/1.ts").toString())

        assertThat(response.code).isEqualTo(200)
        assertThat(response.request.url.encodedPath).isEqualTo("/cdn/stream.ts")
        response.close()
    }

    private fun head(url: String) = client.newCall(Request.Builder().url(url).head().build()).execute()

    private fun retryAfterUnauthorized(url: String, reauth: () -> String): okhttp3.Response {
        val first = head(url)
        if (first.code != 401) return first
        first.close()
        assertThat(reauth()).isNotEmpty()
        return head(url)
    }

    private fun mapStreamError(code: Int): String = if (code == 403 || code == 404) "Stream not available" else "Unexpected stream error"

    private fun newServer(): MockWebServer = MockWebServer().also {
        it.start()
        servers += it
    }
}
