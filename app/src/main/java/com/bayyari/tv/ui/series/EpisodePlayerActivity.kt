package com.bayyari.tv.ui.series

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.View
import android.view.WindowManager
import androidx.appcompat.app.AlertDialog
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.media3.common.Player
import androidx.media3.ui.AspectRatioFrameLayout
import com.bayyari.tv.R
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.databinding.ActivityEpisodePlayerBinding
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.WatchHistoryRepository
import com.bayyari.tv.domain.model.WatchEntry
import com.bayyari.tv.player.IptvPlayer
import com.bayyari.tv.player.PlayerService
import com.bayyari.tv.ui.BaseActivity
import com.bayyari.tv.util.Constants
import com.bayyari.tv.util.StreamUrlBuilder
import com.bayyari.tv.util.NetworkUtils
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class EpisodePlayerActivity : BaseActivity() {

    companion object {
        const val EXTRA_EPISODE_ID = "extra_episode_id"
        const val EXTRA_CONTAINER_EXT = "extra_container_ext"
    }

    @Inject
    lateinit var iptvPlayer: IptvPlayer

    @Inject
    lateinit var authRepository: AuthRepository

    @Inject
    lateinit var streamUrlBuilder: StreamUrlBuilder

    @Inject
    lateinit var watchHistoryRepository: WatchHistoryRepository

    @Inject
    lateinit var networkUtils: NetworkUtils

    private lateinit var binding: ActivityEpisodePlayerBinding
    private var wasPlaying = true
    private var aspectIndex = 0
    private var playerListener: Player.Listener? = null
    private val controlsHandler = Handler(Looper.getMainLooper())

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityEpisodePlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        startService(Intent(this, PlayerService::class.java))

        binding.playerView.player = iptvPlayer.getPlayer()
        binding.playerControls.setTitle("Episode")
        binding.playerControls.setSubtitle("BAYYARI-TV")
        binding.playerControls.setTitleVisible(false)
        binding.playerControls.setMovieMode()
        binding.playerControls.visibility = View.GONE
        binding.playerControls.onPlayPause = {
            val player = iptvPlayer.getPlayer()
            if (player.isPlaying) player.pause() else player.play()
            binding.playerControls.setPlayState(player.isPlaying)
        }
        binding.playerControls.onAudioTracks = { showAudioTracks() }
        binding.playerControls.onSubtitleTracks = { showSubtitleTracks() }
        binding.playerControls.onAspectRatio = { toggleAspectRatio() }
        binding.playerView.setOnClickListener {
            showControlsTemporarily()
        }

        val episodeId = intent.getIntExtra(EXTRA_EPISODE_ID, 0)
        val ext = intent.getStringExtra(EXTRA_CONTAINER_EXT).orEmpty()
        val server = authRepository.getActiveServer()
        if (episodeId != 0 && server != null) {
            val url = streamUrlBuilder.episode(server.normalizedUrl, server.username, server.password, episodeId, ext)
            iptvPlayer.prepare(url)
            lifecycleScope.launch {
                val history = watchHistoryRepository.find(episodeId, "episode", server.id)
                if (history != null && history.positionMs > 0) {
                    iptvPlayer.getPlayer().seekTo(history.positionMs)
                }
            }
        }

        playerListener = object : Player.Listener {
            override fun onIsPlayingChanged(isPlaying: Boolean) {
                binding.playerControls.setPlayState(isPlaying)
                binding.playerControls.setTitleVisible(!isPlaying)
                if (isPlaying) {
                    hideControls()
                } else {
                    showControls()
                }
            }
        }.also { iptvPlayer.getPlayer().addListener(it) }

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

    private fun showControls() {
        controlsHandler.removeCallbacksAndMessages(null)
        binding.playerControls.visibility = View.VISIBLE
    }

    private fun hideControls() {
        controlsHandler.removeCallbacksAndMessages(null)
        binding.playerControls.visibility = View.GONE
    }

    private fun showControlsTemporarily() {
        binding.playerControls.visibility = View.VISIBLE
        controlsHandler.removeCallbacksAndMessages(null)
        if (iptvPlayer.getPlayer().isPlaying) {
            controlsHandler.postDelayed({
                binding.playerControls.visibility = View.GONE
            }, Constants.PLAYER_CONTROLS_AUTO_HIDE_MS)
        }
    }

    private fun toggleAspectRatio() {
        aspectIndex = (aspectIndex + 1) % 4
        binding.playerView.resizeMode = when (aspectIndex) {
            0 -> AspectRatioFrameLayout.RESIZE_MODE_FIT
            1 -> AspectRatioFrameLayout.RESIZE_MODE_FILL
            2 -> AspectRatioFrameLayout.RESIZE_MODE_ZOOM
            else -> AspectRatioFrameLayout.RESIZE_MODE_FIXED_WIDTH
        }
    }

    private fun showAudioTracks() {
        val tracks = iptvPlayer.audioTracks()
        if (tracks.isEmpty()) return
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.live_audio_track))
            .setItems(tracks.map { it.label }.toTypedArray()) { _, which ->
                val selected = tracks[which]
                iptvPlayer.setAudioTrack(selected.groupIndex, selected.trackIndex)
            }
            .show()
    }

    private fun showSubtitleTracks() {
        val tracks = iptvPlayer.subtitleTracks()
        if (tracks.isEmpty()) {
            AlertDialog.Builder(this)
                .setTitle(getString(R.string.live_subtitle_track))
                .setMessage("No embedded captions or subtitles were found for this episode.")
                .setPositiveButton(R.string.action_ok, null)
                .show()
            return
        }
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.live_subtitle_track))
            .setItems(tracks.map { it.label }.toTypedArray()) { _, which ->
                val selected = tracks[which]
                iptvPlayer.setSubtitleTrack(selected.groupIndex, selected.trackIndex)
            }
            .show()
    }

    override fun onDestroy() {
        controlsHandler.removeCallbacksAndMessages(null)
        playerListener?.let { iptvPlayer.getPlayer().removeListener(it) }
        playerListener = null
        val server = authRepository.getActiveServer()
        if (server != null) {
            val episodeId = intent.getIntExtra(EXTRA_EPISODE_ID, 0)
            val position = iptvPlayer.getPlayer().currentPosition
            val duration = iptvPlayer.getPlayer().duration
            if (episodeId != 0 && duration > 0) {
                lifecycleScope.launch {
                    watchHistoryRepository.save(
                        WatchEntry(
                            contentId = episodeId,
                            contentType = "episode",
                            positionMs = position,
                            durationMs = duration,
                            watchedAt = System.currentTimeMillis(),
                            serverId = server.id
                        )
                    )
                }
            }
        }
        iptvPlayer.release()
        stopService(Intent(this, PlayerService::class.java))
        super.onDestroy()
    }
}
