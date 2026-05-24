package com.bayyari.tv.ui.live

import android.os.Bundle
import android.view.WindowManager
import androidx.activity.viewModels
import com.bayyari.tv.databinding.ActivityTvLivePlayerBinding
import com.bayyari.tv.player.IptvPlayer
import com.bayyari.tv.ui.BaseActivity
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class TvLivePlayerActivity : BaseActivity() {

    @Inject
    lateinit var iptvPlayer: IptvPlayer

    private val viewModel: LivePlayerViewModel by viewModels()
    private lateinit var binding: ActivityTvLivePlayerBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityTvLivePlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)

        binding.playerView.player = iptvPlayer.getPlayer()

        val streamId = intent.getIntExtra(LivePlayerActivity.EXTRA_STREAM_ID, 0)
        if (streamId != 0) {
            viewModel.load(streamId)
        }
        collectStarted(viewModel.channel) { channel ->
            if (channel == null) return@collectStarted
            val url = viewModel.buildStreamUrl(channel)
            if (url.isNotBlank()) iptvPlayer.prepare(url)
        }
    }

    override fun onDestroy() {
        iptvPlayer.release()
        super.onDestroy()
    }
}
