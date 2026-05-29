package com.bayyari.tv.ui.sync

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.ProgressBar
import android.widget.TextView
import androidx.activity.viewModels
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.R
import com.bayyari.tv.databinding.ActivitySyncBinding
import com.bayyari.tv.ui.BaseActivity
import com.bayyari.tv.ui.MainActivity
import com.bayyari.tv.ui.TvMainActivity
import com.bayyari.tv.util.isTelevisionDevice
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import java.text.NumberFormat

@AndroidEntryPoint
class SyncActivity : BaseActivity() {

    private val viewModel: SyncViewModel by viewModels()
    private lateinit var binding: ActivitySyncBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySyncBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.buttonEnter.setOnClickListener { openMainActivity() }
        binding.buttonRetry.setOnClickListener { viewModel.retry() }

        lifecycleScope.launch {
            viewModel.state.collect { state -> render(state) }
        }
    }

    private fun render(state: SyncViewModel.SyncState) {
        val fmt = NumberFormat.getNumberInstance()

        // Channels row
        renderRow(
            progress = binding.progressChannels,
            countView = binding.textChannelCount,
            itemState = state.channels,
            fmt = fmt
        )

        // Movies row
        renderRow(
            progress = binding.progressMovies,
            countView = binding.textMovieCount,
            itemState = state.movies,
            fmt = fmt
        )

        // Series row
        renderRow(
            progress = binding.progressSeries,
            countView = binding.textSeriesCount,
            itemState = state.series,
            fmt = fmt
        )

        // Fatal error
        if (state.fatalError != null) {
            binding.textSyncError.text = state.fatalError
            binding.textSyncError.visibility = View.VISIBLE
            binding.buttonRetry.visibility = View.VISIBLE
            binding.buttonEnter.visibility = View.GONE
        } else {
            binding.textSyncError.visibility = View.GONE
        }

        // All done — show button and auto-navigate after a short pause
        if (state.allDone && state.fatalError == null) {
            binding.buttonEnter.visibility = View.VISIBLE
            binding.buttonRetry.visibility = View.GONE

            val channels = (state.channels as? SyncViewModel.ItemState.Done)?.count ?: 0
            val movies = (state.movies as? SyncViewModel.ItemState.Done)?.count ?: 0
            val series = (state.series as? SyncViewModel.ItemState.Done)?.count ?: 0
            binding.textSyncSubtitle.text =
                "Ready! ${fmt.format(channels)} channels" +
                (if (movies > 0) ", ${fmt.format(movies)} movies" else "") +
                (if (series > 0) ", ${fmt.format(series)} series" else "") +
                " loaded."

            lifecycleScope.launch {
                delay(400)
                openMainActivity()
            }
        }
    }

    private fun renderRow(
        progress: ProgressBar,
        countView: TextView,
        itemState: SyncViewModel.ItemState,
        fmt: NumberFormat
    ) {
        when (itemState) {
            is SyncViewModel.ItemState.Loading -> {
                progress.visibility = View.VISIBLE
                countView.visibility = View.GONE
            }
            is SyncViewModel.ItemState.Done -> {
                progress.visibility = View.GONE
                countView.text = fmt.format(itemState.count)
                countView.visibility = View.VISIBLE
            }
            is SyncViewModel.ItemState.Skipped -> {
                progress.visibility = View.GONE
                countView.text = itemState.label
                countView.setTextColor(getColor(R.color.colorTextSecondary))
                countView.visibility = View.VISIBLE
            }
        }
    }

    private fun openMainActivity() {
        val target = if (shouldOpenTvMain()) TvMainActivity::class.java else MainActivity::class.java
        startActivity(
            Intent(this, target)
                .putExtra(
                    MainActivity.EXTRA_SHOW_WELCOME_POPUP,
                    intent.getBooleanExtra(MainActivity.EXTRA_SHOW_WELCOME_POPUP, false)
                )
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
        )
        finish()
    }

    private fun shouldOpenTvMain(): Boolean =
        intent.getBooleanExtra(EXTRA_TV_ENTRY, false) || isTelevisionDevice()

    companion object {
        const val EXTRA_TV_ENTRY = "extra_tv_entry"
    }
}
