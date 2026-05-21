package com.bayyari.tv.ui.series

import android.content.Intent
import android.os.Bundle
import android.view.WindowManager
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.databinding.ActivityEpisodePlayerBinding
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.WatchHistoryRepository
import com.bayyari.tv.player.IptvPlayer
import com.bayyari.tv.player.PlayerService
import com.bayyari.tv.ui.BaseActivity
import com.bayyari.tv.util.StreamUrlBuilder
import com.bayyari.tv.util.NetworkUtils
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
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

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityEpisodePlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        startService(Intent(this, PlayerService::class.java))

        binding.playerView.player = iptvPlayer.getPlayer()

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

        lifecycleScope.launch {
            networkUtils.observe().collectLatest { connected ->
                if (!connected) {
                    wasPlaying = iptvPlayer.getPlayer().isPlaying
                    iptvPlayer.pause()
                } else if (wasPlaying) {
                    iptvPlayer.play()
                }
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

    override fun onDestroy() {
        val server = authRepository.getActiveServer()
        if (server != null) {
            val episodeId = intent.getIntExtra(EXTRA_EPISODE_ID, 0)
            val position = iptvPlayer.getPlayer().currentPosition
            val duration = iptvPlayer.getPlayer().duration
            if (episodeId != 0 && duration > 0) {
                lifecycleScope.launch {
                    watchHistoryRepository.save(
                        com.bayyari.tv.data.local.entities.WatchHistoryEntity(
                            contentId = episodeId,
                            contentType = "episode",
                            positionMs = position,
                            durationMs = duration,
                            watchedAt = System.currentTimeMillis(),
                            serverId = server.id,
                            title = "",
                            poster = ""
                        )
                    )
                }
            }
        }
        iptvPlayer.release()
        super.onDestroy()
    }
}
