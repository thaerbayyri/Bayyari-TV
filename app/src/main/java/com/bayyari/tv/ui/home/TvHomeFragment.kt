package com.bayyari.tv.ui.home

import android.os.Bundle
import androidx.fragment.app.viewModels
import androidx.leanback.app.BrowseSupportFragment
import androidx.leanback.widget.ArrayObjectAdapter
import androidx.leanback.widget.HeaderItem
import androidx.leanback.widget.ListRow
import androidx.leanback.widget.ListRowPresenter
import com.bayyari.tv.R
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.launch

@AndroidEntryPoint
class TvHomeFragment : BrowseSupportFragment() {

    private val viewModel: TvHomeViewModel by viewModels()

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
        title = getString(R.string.app_name)
        headersState = HEADERS_ENABLED
        isHeadersTransitionOnBackEnabled = true

        val rowsAdapter = ArrayObjectAdapter(ListRowPresenter())
        adapter = rowsAdapter

        val presenter = MediaCardPresenter()
        val liveAdapter = ArrayObjectAdapter(presenter)
        val movieAdapter = ArrayObjectAdapter(presenter)
        val seriesAdapter = ArrayObjectAdapter(presenter)

        rowsAdapter.add(ListRow(HeaderItem(0, getString(R.string.home_live_now)), liveAdapter))
        rowsAdapter.add(ListRow(HeaderItem(1, getString(R.string.home_latest_movies)), movieAdapter))
        rowsAdapter.add(ListRow(HeaderItem(2, getString(R.string.home_latest_series)), seriesAdapter))

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.live.collectLatest { items ->
                liveAdapter.setItems(items, null)
            }
        }
        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.movies.collectLatest { items ->
                movieAdapter.setItems(items, null)
            }
        }
        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.series.collectLatest { items ->
                seriesAdapter.setItems(items, null)
            }
        }

        viewModel.load()
    }
}
