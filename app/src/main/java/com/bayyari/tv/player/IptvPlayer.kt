package com.bayyari.tv.player

import android.content.Context
import android.net.Uri
import android.os.Handler
import android.os.Looper
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.datasource.DefaultDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.LoadControl
import androidx.media3.exoplayer.source.MediaSource
import androidx.media3.exoplayer.source.ProgressiveMediaSource
import androidx.media3.exoplayer.hls.HlsMediaSource
import androidx.media3.exoplayer.rtsp.RtspMediaSource
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import com.bayyari.tv.util.Constants
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import javax.inject.Inject
import javax.inject.Singleton
import dagger.hilt.android.qualifiers.ApplicationContext

@Singleton
class IptvPlayer @Inject constructor(
    @ApplicationContext private val appContext: Context,
    private val loadControl: LoadControl
) {

    private val trackSelector = DefaultTrackSelector(appContext)
    private val player = ExoPlayer.Builder(appContext)
        .setLoadControl(loadControl)
        .setTrackSelector(trackSelector)
        .build()

    private val mainHandler = Handler(Looper.getMainLooper())
    private var retryJob: Job? = null

    fun getPlayer(): ExoPlayer = player

    fun prepare(url: String, playWhenReady: Boolean = true) {
        player.setMediaSource(buildMediaSource(url))
        player.prepare()
        player.playWhenReady = playWhenReady
    }

    fun release() {
        retryJob?.cancel()
        player.release()
    }

    fun pause() { player.pause() }
    fun play() { player.play() }

    fun setPlaybackSpeed(speed: Float) {
        player.setPlaybackSpeed(speed)
    }

    fun setAudioTrack(groupIndex: Int, trackIndex: Int) {
        TrackSelector.applyAudioTrack(trackSelector, groupIndex, trackIndex)
    }

    fun setSubtitleTrack(groupIndex: Int, trackIndex: Int) {
        TrackSelector.applySubtitleTrack(trackSelector, groupIndex, trackIndex)
    }

    fun audioTracks(): List<TrackSelector.TrackInfo> = TrackSelector.audioTracks(trackSelector)

    fun subtitleTracks(): List<TrackSelector.TrackInfo> = TrackSelector.subtitleTracks(trackSelector)

    fun addRetryListener(onFinalError: (PlaybackException) -> Unit) {
        player.addListener(object : Player.Listener {
            override fun onPlayerError(error: PlaybackException) {
                scheduleRetry(error, onFinalError)
            }
        })
    }

    private fun scheduleRetry(error: PlaybackException, onFinalError: (PlaybackException) -> Unit) {
        if (retryJob?.isActive == true) return
        retryJob = CoroutineScope(Dispatchers.Main).launch {
            var attempt = 0
            while (attempt < Constants.PLAYER_RETRY_COUNT) {
                val backoff = Constants.PLAYER_RETRY_BACKOFF_BASE_MS * (1L shl attempt)
                delay(backoff)
                player.prepare()
                attempt++
                if (player.playbackState == Player.STATE_READY) return@launch
            }
            onFinalError(error)
        }
    }

    private fun buildMediaSource(url: String): MediaSource {
        val uri = Uri.parse(url)
        val factory = DefaultDataSource.Factory(appContext)
        return when {
            url.contains(".m3u8", ignoreCase = true) ->
                HlsMediaSource.Factory(factory).createMediaSource(MediaItem.fromUri(uri))
            url.startsWith("rtsp", ignoreCase = true) ->
                RtspMediaSource.Factory().createMediaSource(MediaItem.fromUri(uri))
            else ->
                ProgressiveMediaSource.Factory(factory).createMediaSource(MediaItem.fromUri(uri))
        }
    }
}
