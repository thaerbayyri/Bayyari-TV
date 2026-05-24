package com.myiptv.app.server

import com.bayyari.tv.util.StreamUrlBuilder
import com.google.common.truth.Truth.assertThat
import org.junit.Test
import java.text.SimpleDateFormat
import java.util.Locale
import java.util.TimeZone

class StreamUrlBuilderTest {
    private val builder = StreamUrlBuilder()
    private val server = "http://myserver.com:8080"
    private val user = "john"
    private val pass = "x1y2"

    @Test
    fun `live stream hls url format`() {
        val url = builder.live(server, user, pass, 1234, StreamUrlBuilder.LiveFormat.HLS)

        assertThat(url).isEqualTo("http://myserver.com:8080/live/john/x1y2/1234.m3u8")
    }

    @Test
    fun `live stream ts url format`() {
        val url = builder.live(server, user, pass, 1234, StreamUrlBuilder.LiveFormat.TS)

        assertThat(url).isEqualTo("http://myserver.com:8080/live/john/x1y2/1234.ts")
    }

    @Test
    fun `movie stream url format`() {
        val url = builder.movie(server, user, pass, 5678, "mkv")

        assertThat(url).isEqualTo("http://myserver.com:8080/movie/john/x1y2/5678.mkv")
    }

    @Test
    fun `series episode url format`() {
        val url = builder.episode(server, user, pass, 9999, "mp4")

        assertThat(url).isEqualTo("http://myserver.com:8080/series/john/x1y2/9999.mp4")
    }

    @Test
    fun `catch up timeshift url format`() {
        val start = SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.US).apply {
            timeZone = TimeZone.getTimeZone("UTC")
        }.parse("2024-01-15 21:30")!!.time

        val url = builder.catchUp(server, user, pass, 1234, start, 120)

        assertThat(url).isEqualTo("http://myserver.com:8080/timeshift/john/x1y2/120/2024-01-15:21-30/1234.ts")
    }

    @Test
    fun `https server url is preserved`() {
        val url = builder.live("https://myserver.com:8443", user, pass, 1234, StreamUrlBuilder.LiveFormat.HLS)

        assertThat(url).startsWith("https://myserver.com:8443/")
    }

    @Test
    fun `server url with trailing slash does not create double slash`() {
        val url = builder.live("http://myserver.com:8080/", user, pass, 1, StreamUrlBuilder.LiveFormat.HLS)

        assertThat(url).isEqualTo("http://myserver.com:8080/live/john/x1y2/1.m3u8")
    }

    @Test
    fun `special characters in username and password are encoded`() {
        val url = builder.live(server, "john@doe", "p@ss#word!", 1, StreamUrlBuilder.LiveFormat.HLS)

        assertThat(url).isEqualTo("http://myserver.com:8080/live/john%40doe/p%40ss%23word%21/1.m3u8")
    }
}
