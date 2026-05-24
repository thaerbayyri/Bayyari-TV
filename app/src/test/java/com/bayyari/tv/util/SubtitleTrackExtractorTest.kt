package com.bayyari.tv.util

import com.google.gson.JsonParser
import org.junit.Assert.assertEquals
import org.junit.Test

class SubtitleTrackExtractorTest {

    @Test
    fun fromElements_parsesMapAndArraySubtitleShapes() {
        val json = JsonParser.parseString(
            """
            {
              "Arabic": "https://cdn.example/subs/movie-ar.srt",
              "more": [
                { "language": "English", "url": "https://cdn.example/subs/movie-en.vtt" },
                { "label": "Bad", "url": "https://cdn.example/video.mp4" }
              ]
            }
            """.trimIndent()
        )

        val tracks = SubtitleTrackExtractor.fromElements(json)

        assertEquals(2, tracks.size)
        assertEquals("Arabic", tracks[0].label)
        assertEquals("ar", tracks[0].language)
        assertEquals("https://cdn.example/subs/movie-ar.srt", tracks[0].url)
        assertEquals("English", tracks[1].label)
        assertEquals("en", tracks[1].language)
        assertEquals("https://cdn.example/subs/movie-en.vtt", tracks[1].url)
    }

    @Test
    fun mimeTypeFor_detectsCommonSubtitleFormats() {
        assertEquals(androidx.media3.common.MimeTypes.TEXT_VTT, SubtitleTrackExtractor.mimeTypeFor("https://x/a.vtt"))
        assertEquals(androidx.media3.common.MimeTypes.APPLICATION_SUBRIP, SubtitleTrackExtractor.mimeTypeFor("https://x/a.srt?token=1"))
    }
}
