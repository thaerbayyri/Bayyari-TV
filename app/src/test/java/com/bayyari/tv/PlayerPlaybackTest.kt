package com.bayyari.tv

import io.mockk.MockKAnnotations
import io.mockk.impl.annotations.MockK
import io.mockk.every
import io.mockk.verify
import io.mockk.confirmVerified
import org.junit.Before
import org.junit.Test

/**
 * Lightweight unit test that verifies the playback wiring calls the expected
 * methods on a simple player interface. This avoids depending on ExoPlayer
 * classes in the unit test classpath.
 */
class PlayerPlaybackTest {

    interface SimplePlayer {
        fun setMediaUrl(url: String)
        fun prepare()
        var playWhenReady: Boolean
    }

    @MockK(relaxed = true)
    lateinit var player: SimplePlayer

    @Before
    fun setUp() {
        MockKAnnotations.init(this)
    }

    class PlaybackClient(private val player: SimplePlayer) {
        fun playUrl(url: String) {
            player.setMediaUrl(url)
            player.prepare()
            player.playWhenReady = true
        }
    }

    @Test
    fun `player setMediaUrl and prepare are invoked with expected url`() {
        val url = "https://xtream.test/live/user/pass/123.m3u8"

        every { player.playWhenReady = any() } returns Unit

        val client = PlaybackClient(player)
        client.playUrl(url)

        verify {
            player.setMediaUrl(url)
            player.prepare()
            player.playWhenReady = true
        }

        confirmVerified(player)
    }
}
