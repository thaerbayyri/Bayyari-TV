package com.bayyari.tv.ui.live

import android.app.PictureInPictureParams
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.util.Rational
import android.util.Log
import android.view.WindowManager
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
import com.bayyari.tv.ui.BaseActivity
import androidx.media3.ui.AspectRatioFrameLayout
import com.bayyari.tv.R
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.databinding.ActivityLivePlayerBinding
import com.bayyari.tv.player.IptvPlayer
import com.bayyari.tv.player.PlayerService
import com.bayyari.tv.util.Constants
import com.bayyari.tv.util.EncryptedPrefs
import com.bayyari.tv.util.NetworkUtils
import com.bayyari.tv.util.StreamUrlBuilder
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class LivePlayerActivity : BaseActivity() {

    companion object {
        const val EXTRA_STREAM_ID = "extra_stream_id"
        const val EXTRA_STREAM_URL = "extra_stream_url"
        const val EXTRA_CHANNEL_NAME = "extra_channel_name"
        private const val TAG = "LivePlayerActivity"
    }

    @Inject
    lateinit var iptvPlayer: IptvPlayer

    @Inject
    lateinit var prefs: EncryptedPrefs

    @Inject
    lateinit var authRepository: AuthRepository

    @Inject
    lateinit var streamUrlBuilder: StreamUrlBuilder

    @Inject
    lateinit var networkUtils: NetworkUtils

    private val viewModel: LivePlayerViewModel by viewModels()
    private lateinit var binding: ActivityLivePlayerBinding
    private var aspectIndex = 0
    private var wasPlaying = true
    private val hideHandler = Handler(Looper.getMainLooper())
    private var prepareStartMs = 0L
    private var streamCandidates: List<String> = emptyList()
    private var streamCandidateIndex = 0
    private var playerListener: Player.Listener? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLivePlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        startService(Intent(this, PlayerService::class.java))

        binding.playerView.player = iptvPlayer.getPlayer()
        iptvPlayer.addRetryListener { }
        playerListener = object : Player.Listener {
            override fun onPlaybackStateChanged(playbackState: Int) {
                Log.d(TAG, "playbackState=$playbackState isPlaying=${iptvPlayer.getPlayer().isPlaying}")
            }

            override fun onPlayerError(error: PlaybackException) {
                Log.e(TAG, "Player error code=${error.errorCode} message=${error.message}", error)
                if (streamCandidateIndex < streamCandidates.lastIndex) {
                    streamCandidateIndex += 1
                    Log.w(TAG, "Retrying live stream with fallback candidate $streamCandidateIndex")
                    prepareCurrentCandidate()
                }
            }

            override fun onRenderedFirstFrame() {
                val ttffMs = SystemClock.elapsedRealtime() - prepareStartMs
                Log.d("PERF_PLAYER", "TTFF: ${ttffMs}ms")
            }
        }.also { iptvPlayer.getPlayer().addListener(it) }

        val directUrl = intent.getStringExtra(EXTRA_STREAM_URL).orEmpty()
        val directName = intent.getStringExtra(EXTRA_CHANNEL_NAME).orEmpty()
        val streamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        if (directUrl.isNotBlank()) {
            binding.playerControls.setTitle(directName.ifBlank { "Live stream" })
            binding.playerControls.setSubtitle(getString(R.string.live_now_playing, ""))
            Log.d(TAG, "Preparing direct stream url=$directUrl")
            streamCandidates = buildLiveCandidates(directUrl, streamId)
            streamCandidateIndex = 0
            prepareCurrentCandidate()
        } else if (streamId != 0) {
            prefs.setLastChannelId(streamId)
            viewModel.load(streamId)
        }

        binding.playerControls.onPlayPause = {
            val player = iptvPlayer.getPlayer()
            if (player.isPlaying) player.pause() else player.play()
            binding.playerControls.setPlayState(player.isPlaying)
        }
        binding.playerControls.onAspectRatio = { toggleAspectRatio() }
        binding.playerControls.onPip = { enterPip() }
        binding.playerControls.onExternal = { openExternalPlayer() }
        binding.playerControls.onAudioTracks = { showAudioTracks() }
        binding.playerControls.onSubtitleTracks = { showSubtitleTracks() }
        binding.playerControls.onEpg = { toggleEpg() }

        binding.playerView.setOnClickListener {
            toggleControls()
        }

        collectStarted(viewModel.channel) { channel ->
            if (channel == null) return@collectStarted
            val url = viewModel.buildStreamUrl(channel)
            if (url.isNotBlank()) {
                binding.playerControls.setTitle(channel.name)
                binding.playerControls.setSubtitle(getString(R.string.live_now_playing, ""))
                streamCandidates = buildLiveCandidates(url, channel.streamId)
                streamCandidateIndex = 0
                prepareCurrentCandidate()
            }
        }
        collectStarted(viewModel.epg) { epg ->
            binding.epgOverlay.submit(epg)
        }

        collectStarted(networkUtils.observe()) { connected ->
            if (!connected) {
                wasPlaying = iptvPlayer.getPlayer().isPlaying
                iptvPlayer.pause()
            } else if (wasPlaying) {
                iptvPlayer.play()
            }
        }
    }

    override fun onStart() {
        super.onStart()
        hideSystemUi()
    }

    private fun hideSystemUi() {
        WindowCompat.setDecorFitsSystemWindows(window, false)
        val controller = WindowInsetsControllerCompat(window, binding.root)
        controller.hide(WindowInsetsCompat.Type.systemBars())
        controller.systemBarsBehavior =
            WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
    }

    private fun toggleControls() {
        val visible = binding.playerControls.visibility == android.view.View.VISIBLE
        if (visible) {
            binding.playerControls.visibility = android.view.View.GONE
            hideHandler.removeCallbacksAndMessages(null)
        } else {
            binding.playerControls.visibility = android.view.View.VISIBLE
            hideHandler.removeCallbacksAndMessages(null)
            hideHandler.postDelayed({
                binding.playerControls.visibility = android.view.View.GONE
            }, Constants.PLAYER_CONTROLS_AUTO_HIDE_MS)
        }
    }

    private fun toggleAspectRatio() {
        aspectIndex = (aspectIndex + 1) % 4
        val mode = when (aspectIndex) {
            0 -> AspectRatioFrameLayout.RESIZE_MODE_FIT
            1 -> AspectRatioFrameLayout.RESIZE_MODE_FILL
            2 -> AspectRatioFrameLayout.RESIZE_MODE_ZOOM
            else -> AspectRatioFrameLayout.RESIZE_MODE_FIXED_WIDTH
        }
        binding.playerView.resizeMode = mode
    }

    private fun enterPip() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val params = PictureInPictureParams.Builder()
                .setAspectRatio(Rational(16, 9))
                .build()
            enterPictureInPictureMode(params)
        }
    }

    private fun openExternalPlayer() {
        val current = viewModel.channel.value ?: return
        val url = streamCandidates.getOrNull(streamCandidateIndex) ?: viewModel.buildStreamUrl(current)
        val intent = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(android.net.Uri.parse(url), "video/*")
        }
        if (packageManager.resolveActivity(intent, PackageManager.MATCH_DEFAULT_ONLY) != null) {
            startActivity(intent)
        }
    }

    private fun buildLiveCandidates(primaryUrl: String, streamId: Int): List<String> {
        val server = authRepository.getActiveServer()
        val generated = if (server != null && streamId != 0) {
            val formats = if (prefs.getStreamFormat() == "ts") {
                listOf(StreamUrlBuilder.LiveFormat.TS, StreamUrlBuilder.LiveFormat.HLS)
            } else {
                listOf(StreamUrlBuilder.LiveFormat.HLS, StreamUrlBuilder.LiveFormat.TS)
            }
            formats.map { format ->
                streamUrlBuilder.live(server.normalizedUrl, server.username, server.password, streamId, format)
            }
        } else {
            emptyList()
        }
        return (listOf(primaryUrl) + generated + primaryUrl.swappedLiveExtension()).distinct()
    }

    private fun String.swappedLiveExtension(): List<String> = when {
        endsWith(".m3u8", ignoreCase = true) -> listOf(dropLast(5) + ".ts")
        endsWith(".ts", ignoreCase = true) -> listOf(dropLast(3) + ".m3u8")
        else -> emptyList()
    }

    private fun prepareCurrentCandidate() {
        val url = streamCandidates.getOrNull(streamCandidateIndex) ?: return
        prepareStartMs = SystemClock.elapsedRealtime()
        iptvPlayer.prepare(url)
    }

    private fun toggleEpg() {
        binding.epgOverlay.visibility = if (binding.epgOverlay.visibility == android.view.View.VISIBLE) {
            android.view.View.GONE
        } else {
            android.view.View.VISIBLE
        }
    }

    private fun showAudioTracks() {
        val tracks = iptvPlayer.audioTracks()
        if (tracks.isEmpty()) return
        val labels = tracks.map { it.label }.toTypedArray()
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.live_audio_track))
            .setItems(labels) { _, which ->
                val selected = tracks[which]
                iptvPlayer.setAudioTrack(selected.groupIndex, selected.trackIndex)
            }
            .show()
    }

    private fun showSubtitleTracks() {
        val tracks = iptvPlayer.subtitleTracks()
        if (tracks.isEmpty()) return
        val labels = tracks.map { it.label }.toTypedArray()
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.live_subtitle_track))
            .setItems(labels) { _, which ->
                val selected = tracks[which]
                iptvPlayer.setSubtitleTrack(selected.groupIndex, selected.trackIndex)
            }
            .show()
    }

    override fun onDestroy() {
        playerListener?.let { iptvPlayer.getPlayer().removeListener(it) }
        playerListener = null
        iptvPlayer.release()
        stopService(Intent(this, PlayerService::class.java))
        super.onDestroy()
    }
}
