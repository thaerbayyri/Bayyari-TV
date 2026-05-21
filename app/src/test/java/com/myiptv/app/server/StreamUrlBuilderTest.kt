package com.myiptv.app.server

import com.google.common.truth.Truth.assertThat
import org.junit.Test
import java.net.URLEncoder

enum class StreamFormat { HLS, TS }

object StreamUrlBuilder {
    fun liveUrl(server: String, user: String, pass: String, streamId: Int, format: StreamFormat = StreamFormat.HLS): String {
        var s = server.trimEnd('/')
        val ext = if (format == StreamFormat.HLS) "m3u8" else "ts"
        val u = URLEncoder.encode(user, "UTF-8")
        val p = URLEncoder.encode(pass, "UTF-8")
        return "$s/live/$u/$p/$streamId.$ext"
    }

    fun movieUrl(server: String, user: String, pass: String, movieId: Int, ext: String): String {
        val s = server.trimEnd('/')
        val u = URLEncoder.encode(user, "UTF-8")
        val p = URLEncoder.encode(pass, "UTF-8")
        return "$s/movie/$u/$p/$movieId.$ext"
    }

    fun seriesUrl(server: String, user: String, pass: String, episodeId: Int, ext: String): String {
        val s = server.trimEnd('/')
        val u = URLEncoder.encode(user, "UTF-8")
        val p = URLEncoder.encode(pass, "UTF-8")
        return "$s/series/$u/$p/$episodeId.$ext"
    }

    fun timeshiftUrl(server: String, user: String, pass: String, streamId: Int, date: String, time: String, duration: Int): String {
        val s = server.trimEnd('/')
        val u = URLEncoder.encode(user, "UTF-8")
        val p = URLEncoder.encode(pass, "UTF-8")
        val t = date + ":" + time.replace(':', '-')
        return "$s/timeshift/$u/$p/$duration/$t/$streamId.ts"
    }
}

class StreamUrlBuilderTest {
    @Test
    fun `live stream HLS URL format`() {
        val url = StreamUrlBuilder.liveUrl("http://myserver.com:8080", "john", "x1y2", 1234)
        assertThat(url).isEqualTo("http://myserver.com:8080/live/john/x1y2/1234.m3u8")
    }

    @Test
    fun `live stream TS URL format`() {
        val url = StreamUrlBuilder.liveUrl("http://myserver.com:8080", "john", "x1y2", 1234, StreamFormat.TS)
        assertThat(url).isEqualTo("http://myserver.com:8080/live/john/x1y2/1234.ts")
    }

    @Test
    fun `movie stream URL format`() {
        val url = StreamUrlBuilder.movieUrl("http://myserver.com:8080", "john", "x1y2", 5678, "mkv")
        assertThat(url).isEqualTo("http://myserver.com:8080/movie/john/x1y2/5678.mkv")
    }

    @Test
    fun `series episode URL format`() {
        val url = StreamUrlBuilder.seriesUrl("http://myserver.com:8080", "john", "x1y2", 9999, "mp4")
        assertThat(url).isEqualTo("http://myserver.com:8080/series/john/x1y2/9999.mp4")
    }

    @Test
    fun `catch up timeshift url format`() {
        val url = StreamUrlBuilder.timeshiftUrl("http://myserver.com:8080", "john", "x1y2", 1234, "2024-01-15", "21:30", 120)
        assertThat(url).isEqualTo("http://myserver.com:8080/timeshift/john/x1y2/120/2024-01-15:21-30/1234.ts")
    }

    @Test
    fun `https server url produces https urls`() {
        val url = StreamUrlBuilder.liveUrl("https://myserver.com:8443", "john", "x", 1)
        assertThat(url.startsWith("https://")).isTrue()
    }

    @Test
    fun `trailing slash stripped`() {
        val url = StreamUrlBuilder.liveUrl("http://myserver.com:8080/", "john", "x", 1)
        assertThat(url).isEqualTo("http://myserver.com:8080/live/john/x/1.m3u8")
    }

    @Test
    fun `special characters encoded`() {
        val url = StreamUrlBuilder.liveUrl("http://myserver.com:8080", "john@doe", "p@ss#word!", 1)
        assertThat(url).contains("john%40doe")
        assertThat(url).contains("p%40ss%23word%21")
    }
}
