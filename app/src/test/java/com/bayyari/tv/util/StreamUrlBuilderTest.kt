package com.bayyari.tv.util

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class StreamUrlBuilderTest {
    private val builder = StreamUrlBuilder()

    @Test
    fun live_hls_buildsCorrectUrl() {
        val url = builder.live("https://s.example/", "user", "p@ss", 123, StreamUrlBuilder.LiveFormat.HLS)
        assertEquals("https://s.example/live/user/p%40ss/123.m3u8", url)
    }

    @Test
    fun live_ts_buildsCorrectUrl() {
        val url = builder.live("https://s.example", "u e", "p+ss", 5, StreamUrlBuilder.LiveFormat.TS)
        assertEquals("https://s.example/live/u%20e/p%2Bss/5.ts", url)
    }

    @Test
    fun movie_defaultsToMp4() {
        val url = builder.movie("https://s/", "u", "p", 10, "")
        assertEquals("https://s/movie/u/p/10.mp4", url)
    }

    @Test
    fun episode_buildsCorrectUrl() {
        val url = builder.episode("https://s.example/", "user", "pa ss", 77, "mkv")
        assertEquals("https://s.example/series/user/pa%20ss/77.mkv", url)
    }

    @Test
    fun catchUp_formatsTimestampAndUsesTs() {
        // 2021-01-01T00:00:00Z -> 1609459200000L
        val url = builder.catchUp("https://s/", "u", "p", 5, 1609459200000L, 30)
        assertTrue(url.contains("2021-01-01:00-00"))
        assertTrue(url.endsWith("/5.ts"))
    }

    @Test
    fun logo_normalizesBlankAndNull() {
        assertEquals("", builder.logo(null))
        assertEquals("", builder.logo("   "))
        assertEquals("http://x/logo.png", builder.logo("http://x/logo.png"))
    }

    @Test
    fun movie_stripsQueryFromExtension() {
        val url = builder.movie("https://s/", "u", "p", 9, ".mp4?token=1")
        assertEquals("https://s/movie/u/p/9.mp4", url)
    }
}
