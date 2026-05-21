package com.bayyari.tv.util

import org.junit.Assert.assertEquals
import org.junit.Test

class StreamUrlBuilderTest {

    private val builder = StreamUrlBuilder()

    @Test
    fun builds_live_hls_url() {
        val url = builder.live("http://example.com/", "u", "p", 123, StreamUrlBuilder.LiveFormat.HLS)
        assertEquals("http://example.com/live/u/p/123.m3u8", url)
    }

    @Test
    fun builds_movie_url() {
        val url = builder.movie("http://example.com/", "u", "p", 99, "mp4")
        assertEquals("http://example.com/movie/u/p/99.mp4", url)
    }

    @Test
    fun builds_catchup_url() {
        val url = builder.catchUp("http://example.com/", "u", "p", 5, 0, 60)
        assertEquals("http://example.com/timeshift/u/p/60/1970-01-01:00-00/5.ts", url)
    }
}
