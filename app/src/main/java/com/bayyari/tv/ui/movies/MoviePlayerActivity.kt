package com.bayyari.tv.ui.movies

import android.content.Intent
import android.os.Bundle
import android.view.WindowManager
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.databinding.ActivityMoviePlayerBinding
import com.bayyari.tv.player.IptvPlayer
import com.bayyari.tv.ui.BaseActivity
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.WatchHistoryRepository
import com.bayyari.tv.player.PlayerService
import com.bayyari.tv.util.NetworkUtils
import com.bayyari.tv.util.StreamUrlBuilder
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class MoviePlayerActivity : BaseActivity() {

    companion object {
        const val EXTRA_MOVIE_ID = "extra_movie_id"
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

    private lateinit var binding: ActivityMoviePlayerBinding
    private var wasPlaying = true

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMoviePlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        startService(Intent(this, PlayerService::class.java))

        binding.playerView.player = iptvPlayer.getPlayer()

        val movieId = intent.getIntExtra(EXTRA_MOVIE_ID, 0)
        val server = authRepository.getActiveServer()
        if (movieId != 0 && server != null) {
            val url = streamUrlBuilder.movie(server.normalizedUrl, server.username, server.password, movieId, "mp4")
            iptvPlayer.prepare(url)
            lifecycleScope.launch {
                val history = watchHistoryRepository.find(movieId, "movie", server.id)
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
            val position = iptvPlayer.getPlayer().currentPosition
            val duration = iptvPlayer.getPlayer().duration
            val movieId = intent.getIntExtra(EXTRA_MOVIE_ID, 0)
            if (movieId != 0 && duration > 0) {
                lifecycleScope.launch {
                    watchHistoryRepository.save(
                        com.bayyari.tv.data.local.entities.WatchHistoryEntity(
                            contentId = movieId,
                            contentType = "movie",
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
