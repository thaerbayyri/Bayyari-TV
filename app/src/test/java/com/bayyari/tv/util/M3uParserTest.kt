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

    @Test
    fun parse_headerOnly_returnsEmptyAndNoEpg() {
        val res = parser.parseFull("#EXTM3U", serverId = 5)
        assertTrue(res.channels.isEmpty())
        assertEquals(null, res.epgUrl)
    }

    @Test
    fun parse_withUrlTvg_parsesEpgUrl() {
        val m3u = "#EXTM3U url-tvg=\"http://epg.example/guide.xml\"\n#EXTINF:-1,Channel\nhttp://example.com/42.m3u8"
        val res = parser.parseFull(m3u, serverId = 2)
        assertEquals("http://epg.example/guide.xml", res.epgUrl)
        assertEquals(1, res.channels.size)
        assertEquals(42, res.channels[0].streamId)
        assertEquals(2, res.channels[0].serverId)
    }

    @Test
    fun parse_malformedExtInf_skipsChannelGracefully() {
        val m3u = "#EXTM3U\n#EXTINF:-1 tvg-id=\"10\" tvg-name=\"Broken\"\nhttp://example.com/10.m3u8"
        val res = parser.parseFull(m3u, serverId = 1)
        assertTrue(res.channels.isEmpty())
        assertEquals(null, res.epgUrl)
    }

    @Test
    fun parse_missingGroupTitle_usesEmptyCategoryId() {
        val m3u = "#EXTM3U\n#EXTINF:-1 tvg-id=\"10\" tvg-name=\"N\" ,Name\nhttp://example.com/10.m3u8"
        val ch = parser.parse(m3u, serverId = 1)[0]
        assertEquals("", ch.categoryId)
        assertEquals("Uncategorized", ch.categoryName)
    }

    @Test
    fun parse_noNumericId_assignsNegativeFallback() {
        val m3u = "#EXTM3U\n#EXTINF:-1,NoId\nhttp://example.com/stream.m3u8"
        val ch = parser.parse(m3u, serverId = 0)[0]
        assertTrue(ch.streamId < 0)
        assertEquals("NoId", ch.name)
    }

    @Test
    fun parse_missingHeader_stillParsesChannels() {
        val m3u = "#EXTINF:-1 tvg-id=\"abc\",Channel\nhttp://example.com/1.m3u8"
        val res = parser.parseFull(m3u, serverId = 0)
        assertEquals(1, res.channels.size)
        assertEquals("abc", res.channels[0].epgChannelId)
        assertEquals(null, res.epgUrl)
    }
}
