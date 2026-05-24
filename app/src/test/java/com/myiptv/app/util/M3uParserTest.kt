package com.myiptv.app.util

import com.bayyari.tv.util.M3uParser
import com.google.common.truth.Truth.assertThat
import org.junit.Test

class M3uParserTest {

    @Test
    fun `parses playlist channels with metadata`() {
        val channels = M3uParser().parse(
            """
            #EXTM3U
            #EXTINF:-1 tvg-id="news" tvg-name="News HD" tvg-logo="http://img/news.png" group-title="News",Fallback
            http://server/live/user/pass/101.m3u8
            #EXTINF:-1 tvg-id="sport" group-title="Sports",Sports HD
            http://server/live/user/pass/102.ts
            """.trimIndent(),
            serverId = 7
        )

        assertThat(channels).hasSize(2)
        assertThat(channels[0].streamId).isEqualTo(101)
        assertThat(channels[0].name).isEqualTo("News HD")
        assertThat(channels[0].streamIcon).isEqualTo("http://img/news.png")
        assertThat(channels[0].categoryName).isEqualTo("News")
        assertThat(channels[0].serverId).isEqualTo(7)
    }

    @Test
    fun `invalid playlist returns empty list`() {
        assertThat(M3uParser().parse("not a playlist")).isEmpty()
    }

    @Test
    fun `parser assigns synthetic negative id when url has no numeric id`() {
        val channels = M3uParser().parse(
            """
            #EXTM3U
            #EXTINF:-1 group-title="Other",Camera
            http://camera.local/live
            """.trimIndent()
        )

        assertThat(channels.single().streamId).isLessThan(0)
        assertThat(channels.single().directStreamUrl).isEqualTo("http://camera.local/live")
    }
}
