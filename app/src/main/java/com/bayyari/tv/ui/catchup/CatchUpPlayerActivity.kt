package com.bayyari.tv.ui.catchup

import android.content.Intent
import android.os.Bundle
import android.view.WindowManager
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.databinding.ActivityCatchupPlayerBinding
import com.bayyari.tv.player.IptvPlayer
import com.bayyari.tv.player.PlayerService
import com.bayyari.tv.ui.BaseActivity
import com.bayyari.tv.util.NetworkUtils
import com.bayyari.tv.util.StreamUrlBuilder
import dagger.hilt.android.AndroidEntryPoint
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class CatchUpPlayerActivity : BaseActivity() {

    companion object {
        const val EXTRA_STREAM_ID = "extra_stream_id"
        const val EXTRA_START_MS = "extra_start_ms"
        const val EXTRA_DURATION_MIN = "extra_duration_min"
    }

    @Inject
    lateinit var iptvPlayer: IptvPlayer

    @Inject
    lateinit var authRepository: AuthRepository

    @Inject
    lateinit var streamUrlBuilder: StreamUrlBuilder

    @Inject
    lateinit var networkUtils: NetworkUtils

    private lateinit var binding: ActivityCatchupPlayerBinding
    private var wasPlaying = true

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityCatchupPlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        startService(Intent(this, PlayerService::class.java))

        binding.playerView.player = iptvPlayer.getPlayer()

        val streamId = intent.getIntExtra(EXTRA_STREAM_ID, 0)
        val startMs = intent.getLongExtra(EXTRA_START_MS, 0L)
        val duration = intent.getIntExtra(EXTRA_DURATION_MIN, 0)
        val server = authRepository.getActiveServer()
        if (streamId != 0 && startMs > 0 && duration > 0 && server != null) {
            val url = streamUrlBuilder.catchUp(server.normalizedUrl, server.username, server.password, streamId, startMs, duration)
            iptvPlayer.prepare(url)
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

    override fun onDestroy() {
        iptvPlayer.release()
        super.onDestroy()
    }
}
