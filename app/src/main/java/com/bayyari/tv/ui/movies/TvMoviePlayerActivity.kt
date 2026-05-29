package com.bayyari.tv.ui.movies

import android.os.Bundle
import android.view.WindowManager
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.databinding.ActivityTvMoviePlayerBinding
import com.bayyari.tv.player.IptvPlayer
import com.bayyari.tv.ui.BaseActivity
import com.bayyari.tv.util.StreamUrlBuilder
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class TvMoviePlayerActivity : BaseActivity() {

    @Inject
    lateinit var iptvPlayer: IptvPlayer

    @Inject
    lateinit var authRepository: AuthRepository

    @Inject
    lateinit var streamUrlBuilder: StreamUrlBuilder

    private lateinit var binding: ActivityTvMoviePlayerBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityTvMoviePlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)

        binding.playerView.player = iptvPlayer.getPlayer()
        binding.playerView.useController = true

        val movieId = intent.getIntExtra(MoviePlayerActivity.EXTRA_MOVIE_ID, 0)
        val server = authRepository.getActiveServer()
        if (movieId != 0 && server != null) {
            val url = streamUrlBuilder.movie(server.normalizedUrl, server.username, server.password, movieId, "mp4")
            iptvPlayer.prepare(url)
        }
    }

    override fun onDestroy() {
        iptvPlayer.release()
        super.onDestroy()
    }
}
