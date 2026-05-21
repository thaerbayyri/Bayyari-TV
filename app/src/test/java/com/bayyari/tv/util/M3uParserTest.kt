package com.bayyari.tv.util

import org.junit.Assert.assertEquals
import org.junit.Test

class M3uParserTest {

    private val parser = M3uParser()

    @Test
    fun parses_basic_m3u() {
        val m3u = """
            #EXTM3U
            #EXTINF:-1 tvg-id="id1" tvg-name="Channel 1" tvg-logo="logo.png" group-title="News",Channel 1
            http://example.com/stream/1
        """.trimIndent()

        val items = parser.parse(m3u, 1)
        assertEquals(1, items.size)
        assertEquals("Channel 1", items.first().name)
        assertEquals("News", items.first().categoryName)
    }
}
