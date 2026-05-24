package com.bayyari.tv.util

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class M3uParserTest {

    private val parser = M3uParser()

    @Test
    fun parse_simpleM3u_parsesChannels() {
        val m3u = """#EXTM3U
#EXTINF:-1 tvg-id="100" tvg-name="Channel A" tvg-logo="http://x/logo.png" group-title="News",Channel A
http://example.com/100.m3u8
""".trimIndent()
        val list = parser.parse(m3u, serverId = 1)
        assertEquals(1, list.size)
        val ch = list[0]
        assertEquals(100, ch.streamId)
        assertEquals("Channel A", ch.name)
        assertEquals("http://x/logo.png", ch.streamIcon)
        assertEquals("News", ch.categoryId)
        assertEquals(1, ch.serverId)
    }

    @Test
    fun parse_empty_returnsEmpty() {
        assertTrue(parser.parse("", 0).isEmpty())
    }
}
