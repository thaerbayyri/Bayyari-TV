package com.myiptv.app

import android.content.Context
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.exoplayer.ExoPlayer
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.filters.LargeTest
import com.google.common.truth.Truth.assertThat
import org.junit.After
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

@LargeTest
@RunWith(AndroidJUnit4::class)
class StreamPlaybackTest {
    private var player: ExoPlayer? = null

    @After
    fun tearDown() {
        player?.release()
    }

    @Test
    fun realStreamPlaybackStartsWithinEightSeconds() {
        assumeTrue(AndroidTestServerConfig.isRealServerAvailable)
        val player = newPlayer()
        val ready = CountDownLatch(1)
        player.addListener(object : Player.Listener {
            override fun onPlaybackStateChanged(playbackState: Int) {
                if (playbackState == Player.STATE_READY) ready.countDown()
            }
        })

        player.setMediaItem(MediaItem.fromUri(liveUrl()))
        player.prepare()
        player.play()

        assertThat(ready.await(8, TimeUnit.SECONDS)).isTrue()
        assertThat(player.playerError).isNull()
    }

    @Test
    fun realStreamPlaysForThirtySecondsWithoutError() {
        assumeTrue(AndroidTestServerConfig.isRealServerAvailable)
        val player = newPlayer()
        val ready = CountDownLatch(1)
        player.addListener(object : Player.Listener {
            override fun onPlaybackStateChanged(playbackState: Int) {
                if (playbackState == Player.STATE_READY) ready.countDown()
            }
        })

        player.setMediaItem(MediaItem.fromUri(liveUrl()))
        player.prepare()
        player.play()

        assertThat(ready.await(8, TimeUnit.SECONDS)).isTrue()
        Thread.sleep(30_000)
        assertThat(player.playbackState).isEqualTo(Player.STATE_READY)
        assertThat(player.playerError).isNull()
        assertThat(player.currentPosition).isGreaterThan(25_000L)
    }

    @Test
    fun realStreamSeekToLiveEdgeDoesNotCrash() {
        assumeTrue(AndroidTestServerConfig.isRealServerAvailable)
        val player = newPlayer()
        val ready = CountDownLatch(1)
        player.addListener(object : Player.Listener {
            override fun onPlaybackStateChanged(playbackState: Int) {
                if (playbackState == Player.STATE_READY) ready.countDown()
            }
        })

        player.setMediaItem(MediaItem.fromUri(liveUrl()))
        player.prepare()
        player.play()
        assertThat(ready.await(8, TimeUnit.SECONDS)).isTrue()
        player.seekToDefaultPosition()

        assertThat(player.playerError).isNull()
    }

    private fun newPlayer(): ExoPlayer {
        return ExoPlayer.Builder(ApplicationProvider.getApplicationContext<Context>()).build().also {
            player = it
        }
    }

    private fun liveUrl(): String =
        "${AndroidTestServerConfig.serverUrl.trimEnd('/')}/live/${AndroidTestServerConfig.username}/${AndroidTestServerConfig.password}/${AndroidTestServerConfig.liveStreamId}.m3u8"
}
