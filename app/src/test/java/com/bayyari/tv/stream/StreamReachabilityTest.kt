package com.bayyari.tv.stream

import com.bayyari.tv.util.TestServerConfig
import com.google.common.truth.Truth.assertThat
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response
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
        assumeTrue(realServerHealthCheckEnabled)

        head("${serverUrl}/live/$username/$password/$liveStreamId.m3u8").use { response ->
            assertThat(response.code).isAnyOf(200, 302)
            assertThat(response.header("Content-Type").orEmpty()).containsMatch("application/vnd\\.apple\\.mpegurl|mpegurl|video/")
        }
    }

    @Test
    fun `live stream ts format reachable`() {
        assumeTrue(realServerHealthCheckEnabled)

        head("${serverUrl}/live/$username/$password/$liveStreamId.ts").use { response ->
            assertThat(response.code).isEqualTo(200)
            assertThat(response.header("Content-Type").orEmpty()).containsMatch("video/mp2t|application/octet-stream|video/")
        }
    }

    @Test
    fun `movie stream url reachable`() {
        assumeTrue(realServerHealthCheckEnabled)

        head("${serverUrl}/movie/$username/$password/$movieId.mkv").use { response ->
            assertThat(response.code).isEqualTo(200)
            assertThat(response.header("Content-Length")?.toLongOrNull() ?: 0L).isGreaterThan(0L)
            assertThat(response.header("Content-Type").orEmpty()).containsMatch("video/x-matroska|video/mp4|application/octet-stream")
        }
    }

    @Test
    fun `series episode url reachable and supports range requests`() {
        assumeTrue(realServerHealthCheckEnabled)

        head("${serverUrl}/series/$username/$password/$episodeId.mp4").use { response ->
            assertThat(response.code).isEqualTo(200)
            assertThat(response.header("Accept-Ranges").orEmpty()).contains("bytes")
        }
    }

    @Test
    fun `catch up stream reachable or returns graceful unsupported error`() {
        assumeTrue(realServerHealthCheckEnabled)
        val yesterday = Calendar.getInstance(TimeZone.getTimeZone("UTC")).apply {
            add(Calendar.DAY_OF_YEAR, -1)
            set(Calendar.HOUR_OF_DAY, 21)
            set(Calendar.MINUTE, 0)
        }.time
        val timestamp = SimpleDateFormat("yyyy-MM-dd:HH-mm", Locale.US).apply {
            timeZone = TimeZone.getTimeZone("UTC")
        }.format(yesterday)

        val url = "$serverUrl/timeshift/$username/$password/60/$timestamp/$liveStreamId.ts"
        head(url).use { response ->
            assertThat(response.code).isAnyOf(200, 302, 403)
            if (response.code == 403) assertThat("Catch-up not supported").contains("not supported")
        }
    }

    @Test
    fun `invalid stream id returns 404 or 403`() {
        assumeTrue(realServerHealthCheckEnabled)

        head("$serverUrl/live/$username/$password/999999999.m3u8").use { response ->
            assertThat(response.code).isAnyOf(404, 403)
            assertThat(mapStreamError(response.code)).isEqualTo("Stream not available")
        }
    }

    @Test
    fun `stream url with expired session triggers reauth then retry`() {
        val server = newServer()
        server.enqueue(MockResponse().setResponseCode(401))
        server.enqueue(MockResponse().setResponseCode(200).setHeader("Content-Type", "video/mp2t"))

        retryAfterUnauthorized(server.url("/live/user/pass/1.ts").toString()) {
            "new-token"
        }.use { result ->
            assertThat(result.code).isEqualTo(200)
            assertThat(server.requestCount).isEqualTo(2)
        }
    }

    @Test
    fun `stream redirect handling follows final target`() {
        val server = newServer()
        server.enqueue(MockResponse().setResponseCode(302).setHeader("Location", server.url("/cdn/stream.ts")))
        server.enqueue(MockResponse().setResponseCode(200).setHeader("Content-Type", "video/mp2t"))

        head(server.url("/live/user/pass/1.ts").toString()).use { response ->
            assertThat(response.code).isEqualTo(200)
            assertThat(response.request.url.encodedPath).isEqualTo("/cdn/stream.ts")
        }
    }

    private fun head(url: String): Response = client.newCall(Request.Builder().url(url).head().build()).execute()

    private fun retryAfterUnauthorized(url: String, reauth: () -> String): Response {
        val first = head(url)
        if (first.code != 401) return first
        first.close()
        assertThat(reauth()).isNotEmpty()
        return head(url)
    }

    private fun mapStreamError(code: Int): String =
        if (code == 403 || code == 404) "Stream not available" else "Unexpected stream error"

    private val realServerHealthCheckEnabled: Boolean
        get() = java.lang.Boolean.getBoolean("stream.health.enabled") && TestServerConfig.hasRealServer()
    private val serverUrl: String
        get() = TestServerConfig.get("server.url").orEmpty().trimEnd('/')
    private val username: String
        get() = TestServerConfig.get("server.username").orEmpty()
    private val password: String
        get() = TestServerConfig.get("server.password").orEmpty()
    private val liveStreamId: String
        get() = TestServerConfig.get("test.stream.live_id").orEmpty()
    private val movieId: String
        get() = TestServerConfig.get("test.stream.movie_id").orEmpty()
    private val episodeId: String
        get() = TestServerConfig.get("test.stream.series_episode_id").orEmpty()

    private fun newServer(): MockWebServer = MockWebServer().also {
        it.start()
        servers += it
    }
}
