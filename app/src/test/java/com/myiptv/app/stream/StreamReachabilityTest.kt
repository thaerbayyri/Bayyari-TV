package com.myiptv.app.stream

import com.google.common.truth.Truth.assertThat
import com.myiptv.app.util.TestServerConfig
import okhttp3.OkHttpClient
import okhttp3.Request
import org.junit.Assume
import org.junit.Test
import java.util.concurrent.TimeUnit

class StreamReachabilityTest {
    private val client = OkHttpClient.Builder().followRedirects(true).followSslRedirects(true).connectTimeout(10, TimeUnit.SECONDS).build()

    @Test
    fun `live stream url is reachable HEAD`() {
        Assume.assumeTrue(TestServerConfig.isRealServerAvailable)
        val url = "${TestServerConfig.serverUrl}/live/${TestServerConfig.username}/${TestServerConfig.password}/${TestServerConfig.liveStreamId}.m3u8"
        val req = Request.Builder().url(url).head().build()
        client.newCall(req).execute().use { resp ->
            assertThat(resp.code).isAnyOf(200, 302)
            val ct = resp.header("Content-Type") ?: ""
            assertThat(ct).containsMatch("mpegurl|video")
        }
    }

    @Test
    fun `movie stream url reachable`() {
        Assume.assumeTrue(TestServerConfig.isRealServerAvailable)
        val url = "${TestServerConfig.serverUrl}/movie/${TestServerConfig.username}/${TestServerConfig.password}/${TestServerConfig.movieId}.mkv"
        val req = Request.Builder().url(url).head().build()
        client.newCall(req).execute().use { resp ->
            assertThat(resp.code).isEqualTo(200)
            val cl = resp.header("Content-Length")
            assertThat(cl).isNotNull()
        }
    }

    @Test
    fun `invalid stream id returns 404 or 403`() {
        Assume.assumeTrue(TestServerConfig.isRealServerAvailable)
        val url = "${TestServerConfig.serverUrl}/live/${TestServerConfig.username}/${TestServerConfig.password}/999999999.m3u8"
        val req = Request.Builder().url(url).head().build()
        client.newCall(req).execute().use { resp ->
            assertThat(resp.code).isAnyOf(404, 403)
        }
    }
}
