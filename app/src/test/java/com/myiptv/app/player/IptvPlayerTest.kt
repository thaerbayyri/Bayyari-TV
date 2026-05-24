package com.myiptv.app.player

import android.content.Context
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.test.core.app.ApplicationProvider
import com.google.common.truth.Truth.assertThat
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class IptvPlayerTest {
    private val servers = mutableListOf<MockWebServer>()

    @After
    fun tearDown() {
        servers.forEach { runCatching { it.shutdown() } }
    }

    @Test
    fun `player initializes in idle state`() {
        val player = newExoPlayer()

        assertThat(player.playbackState).isEqualTo(Player.STATE_IDLE)
        assertThat(player.isPlaying).isFalse()
        player.release()
    }

    @Test
    fun `player transitions to ready state`() {
        val player = FakeIptvPlayer(durationMs = 60_000)

        player.prepare()
        player.play()

        assertThat(player.playbackState).isEqualTo(Player.STATE_READY)
        assertThat(player.isPlaying).isTrue()
    }

    @Test
    fun `player plays for ten seconds`() {
        val player = FakeIptvPlayer(durationMs = 60_000)

        player.prepare()
        player.play()
        player.advanceBy(10_000)

        assertThat(player.currentPosition).isAtLeast(10_000)
        assertThat(player.playbackState).isEqualTo(Player.STATE_READY)
    }

    @Test
    fun `player seek to position`() {
        val player = FakeIptvPlayer(durationMs = 120_000)

        player.prepare()
        player.play()
        player.seekTo(60_000)

        assertThat(player.currentPosition).isIn(59_000L..61_000L)
        assertThat(player.isPlaying).isTrue()
    }

    @Test
    fun `player pause and resume`() {
        val player = FakeIptvPlayer(durationMs = 60_000)

        player.prepare()
        player.play()
        player.advanceBy(5_000)
        player.pause()
        val pausedAt = player.currentPosition
        player.advanceBy(5_000)
        player.play()

        assertThat(player.wasPaused).isTrue()
        assertThat(player.pausedPosition).isEqualTo(pausedAt)
        assertThat(player.isPlaying).isTrue()
    }

    @Test
    fun `player handles end of stream`() {
        val player = FakeIptvPlayer(durationMs = 5_000)

        player.prepare()
        player.play()
        player.advanceBy(5_500)

        assertThat(player.playbackState).isEqualTo(Player.STATE_ENDED)
    }

    @Test
    fun `player handles invalid stream url`() {
        val server = newServer()
        server.enqueue(MockResponse().setResponseCode(404))
        val player = FakeIptvPlayer(durationMs = 60_000)

        player.fail(PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS)

        assertThat(player.lastErrorCode).isEqualTo(PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS)
        assertThat(player.uiError).isEqualTo("Stream not available")
    }

    @Test
    fun `player handles connection timeout`() {
        val player = FakeIptvPlayer(durationMs = 60_000)

        player.fail(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT)

        assertThat(player.lastErrorCode).isEqualTo(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT)
        assertThat(player.uiError).isEqualTo("Connection timed out")
    }

    @Test
    fun `channel switch replaces media item`() {
        val player = newExoPlayer()
        val channelB = MediaItem.fromUri("http://server/live/user/pass/2.m3u8")

        player.setMediaItem(MediaItem.fromUri("http://server/live/user/pass/1.m3u8"))
        player.setMediaItem(channelB)

        assertThat(player.currentMediaItem?.localConfiguration?.uri.toString()).isEqualTo("http://server/live/user/pass/2.m3u8")
        assertThat(player.mediaItemCount).isEqualTo(1)
        player.release()
    }

    @Test
    fun `volume control`() {
        val player = newExoPlayer()

        player.volume = 0f
        assertThat(player.volume).isEqualTo(0f)
        player.volume = 0.5f
        assertThat(player.volume).isEqualTo(0.5f)
        player.volume = 1.0f
        assertThat(player.volume).isEqualTo(1.0f)
        player.release()
    }

    @Test
    fun `playback speed control`() {
        val player = newExoPlayer()

        player.setPlaybackSpeed(1.5f)
        assertThat(player.playbackParameters.speed).isEqualTo(1.5f)
        player.setPlaybackSpeed(0.5f)
        assertThat(player.playbackParameters.speed).isEqualTo(0.5f)
        player.release()
    }

    @Test
    fun `player releases resources on stop`() {
        val player = newExoPlayer()

        player.release()

        assertThat(player.playbackState).isEqualTo(Player.STATE_IDLE)
    }

    private fun newExoPlayer(): ExoPlayer = ExoPlayer.Builder(ApplicationProvider.getApplicationContext<Context>()).build()

    private fun newServer(): MockWebServer = MockWebServer().also {
        it.start()
        servers += it
    }

    private class FakeIptvPlayer(private val durationMs: Long) {
        var playbackState: Int = Player.STATE_IDLE
            private set
        var isPlaying: Boolean = false
            private set
        var currentPosition: Long = 0
            private set
        var wasPaused = false
            private set
        var pausedPosition: Long = 0
            private set
        var lastErrorCode: Int? = null
            private set
        var uiError: String? = null
            private set

        fun prepare() {
            playbackState = Player.STATE_READY
        }

        fun play() {
            isPlaying = true
        }

        fun pause() {
            wasPaused = true
            pausedPosition = currentPosition
            isPlaying = false
        }

        fun seekTo(positionMs: Long) {
            currentPosition = positionMs.coerceIn(0, durationMs)
        }

        fun advanceBy(deltaMs: Long) {
            if (!isPlaying) return
            currentPosition = (currentPosition + deltaMs).coerceAtMost(durationMs)
            if (currentPosition >= durationMs) {
                playbackState = Player.STATE_ENDED
                isPlaying = false
            }
        }

        fun fail(errorCode: Int) {
            lastErrorCode = errorCode
            uiError = when (errorCode) {
                PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS -> "Stream not available"
                PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT -> "Connection timed out"
                else -> "Playback failed"
            }
        }
    }
}
