package com.bayyari.tv.ui.live

import android.os.Bundle
import android.util.Log
import android.view.WindowManager
import androidx.activity.viewModels
import androidx.media3.common.PlaybackException
import androidx.media3.common.Player
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
    private var playerListener: Player.Listener? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityTvLivePlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)

        binding.playerView.player = iptvPlayer.getPlayer()
        binding.playerView.useController = true

        playerListener = object : Player.Listener {
            override fun onPlayerError(error: PlaybackException) {
                Log.e(TAG, "TV live playback error code=${error.errorCode}", error)
            }
        }.also { iptvPlayer.getPlayer().addListener(it) }

        val directUrl = intent.getStringExtra(LivePlayerActivity.EXTRA_STREAM_URL).orEmpty()
        val streamId = intent.getIntExtra(LivePlayerActivity.EXTRA_STREAM_ID, 0)
        if (directUrl.isNotBlank()) {
            iptvPlayer.prepare(directUrl)
        } else if (streamId != 0) {
            viewModel.load(streamId)
        }
        collectStarted(viewModel.channel) { channel ->
            if (channel == null) return@collectStarted
            val url = viewModel.buildStreamUrl(channel)
            if (url.isNotBlank()) iptvPlayer.prepare(url)
        }
    }

    override fun onResume() {
        super.onResume()
        iptvPlayer.play()
    }

    override fun onDestroy() {
        playerListener?.let { iptvPlayer.getPlayer().removeListener(it) }
        playerListener = null
        iptvPlayer.release()
        super.onDestroy()
    }

    companion object {
        private const val TAG = "TvLivePlayerActivity"
    }
}
