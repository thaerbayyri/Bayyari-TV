package com.bayyari.tv.player

import android.content.Context
import androidx.annotation.OptIn
import androidx.media3.common.AudioAttributes
import androidx.media3.common.MediaItem
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import androidx.media3.common.MediaItem.LiveConfiguration
import androidx.media3.common.util.UnstableApi
import androidx.media3.datasource.DefaultDataSource
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.LoadControl
import androidx.media3.exoplayer.DefaultRenderersFactory
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import com.bayyari.tv.util.Constants
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import java.util.concurrent.TimeUnit
import javax.inject.Inject
import javax.inject.Singleton
import dagger.hilt.android.qualifiers.ApplicationContext

@OptIn(UnstableApi::class)
@Singleton
class IptvPlayer @Inject constructor(
    @param:ApplicationContext private val appContext: Context,
    private val loadControl: LoadControl
) {

    private var trackSelector = DefaultTrackSelector(appContext)
    private var player = createPlayer()
    private var released = false
    private var playerScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
    private var retryJob: Job? = null
    private var retryCallback: ((PlaybackException) -> Unit)? = null
    private var retryListener: Player.Listener? = null
    private var lastMediaItem: MediaItem? = null

    fun getPlayer(): ExoPlayer = ensurePlayer()

    fun prepare(url: String, playWhenReady: Boolean = true) {
        val activePlayer = ensurePlayer()
        lastMediaItem = MediaItem.Builder()
            .setUri(url)
            .setLiveConfiguration(
                LiveConfiguration.Builder()
                    .setTargetOffsetMs(5_000L) // stay 5 s behind live edge
                    .setMaxOffsetMs(15_000L)
                    .build()
            )
            .build()
        activePlayer.setMediaItem(lastMediaItem!!)
        activePlayer.playWhenReady = playWhenReady
        activePlayer.prepare()
        if (playWhenReady) activePlayer.play()
    }

    fun release() {
        retryJob?.cancel()
        retryJob = null
        playerScope.coroutineContext[Job]?.cancel()
        playerScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
        player.release()
        released = true
    }

    fun pause() {
        if (!released) player.pause()
    }

    fun play() {
        if (!released) player.play()
    }

    fun setPlaybackSpeed(speed: Float) {
        ensurePlayer().setPlaybackSpeed(speed)
    }

    fun setAudioTrack(groupIndex: Int, trackIndex: Int) {
        TrackSelector.applyAudioTrack(trackSelector, groupIndex, trackIndex)
    }

    fun setSubtitleTrack(groupIndex: Int, trackIndex: Int) {
        TrackSelector.applySubtitleTrack(trackSelector, groupIndex, trackIndex)
    }

    fun clearSubtitleTrack() {
        TrackSelector.clearSubtitleTrack(trackSelector)
    }

    fun audioTracks(): List<TrackSelector.TrackInfo> = TrackSelector.audioTracks(trackSelector)

    fun subtitleTracks(): List<TrackSelector.TrackInfo> = TrackSelector.subtitleTracks(trackSelector)

    fun addRetryListener(onFinalError: (PlaybackException) -> Unit) {
        retryCallback = onFinalError
        val activePlayer = ensurePlayer()
        retryListener?.let { activePlayer.removeListener(it) }
        val listener = object : Player.Listener {
            override fun onPlayerError(error: PlaybackException) {
                scheduleRetry(error, onFinalError)
            }
        }
        retryListener = listener
        activePlayer.addListener(listener)
    }

    private fun scheduleRetry(error: PlaybackException, onFinalError: (PlaybackException) -> Unit) {
        if (retryJob?.isActive == true) return
        retryJob = playerScope.launch {
            var attempt = 0
            while (attempt < Constants.PLAYER_RETRY_COUNT) {
                val backoff = Constants.PLAYER_RETRY_BACKOFF_BASE_MS * (1L shl attempt)
                delay(backoff)
                val activePlayer = ensurePlayer()
                val mediaItem = lastMediaItem
                if (mediaItem != null) {
                    activePlayer.setMediaItem(mediaItem, false)
                    activePlayer.playWhenReady = true
                    activePlayer.prepare()
                    activePlayer.play()
                } else {
                    activePlayer.prepare()
                }
                attempt++
                if (activePlayer.playbackState == Player.STATE_READY || activePlayer.isPlaying) {
                    retryJob = null
                    return@launch
                }
            }
            retryJob = null
            onFinalError(error)
        }
    }

    private fun ensurePlayer(): ExoPlayer {
        if (released) {
            playerScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
            player = createPlayer()
            retryListener = null
            released = false
            retryCallback?.let { addRetryListener(it) }
        }
        return player
    }

    private fun createPlayer(): ExoPlayer {
        trackSelector = DefaultTrackSelector(appContext)
        val renderersFactory = DefaultRenderersFactory(appContext)
            .setEnableDecoderFallback(true)
        return ExoPlayer.Builder(appContext)
            .setRenderersFactory(renderersFactory)
            .setLoadControl(loadControl)
            .setTrackSelector(trackSelector)
            .setMediaSourceFactory(buildMediaSourceFactory())
            .build()
            .apply {
                setAudioAttributes(AudioAttributes.DEFAULT, true)
            }
    }

    private fun buildMediaSourceFactory(): DefaultMediaSourceFactory {
        val httpFactory = DefaultHttpDataSource.Factory()
            .setUserAgent("BAYYARI-TV/1.0")
            .setAllowCrossProtocolRedirects(true)
            .setConnectTimeoutMs(TimeUnit.SECONDS.toMillis(Constants.CONNECT_TIMEOUT_SECONDS).toInt())
            .setReadTimeoutMs(TimeUnit.SECONDS.toMillis(Constants.READ_TIMEOUT_SECONDS).toInt())
            .setDefaultRequestProperties(
                mapOf(
                    "Accept" to "*/*",
                    "Icy-MetaData" to "1"
                )
            )
        val dataSourceFactory = DefaultDataSource.Factory(appContext, httpFactory)
        return DefaultMediaSourceFactory(appContext)
            .setDataSourceFactory(dataSourceFactory)
    }
}
