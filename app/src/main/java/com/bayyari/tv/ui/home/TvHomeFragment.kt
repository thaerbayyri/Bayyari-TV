package com.bayyari.tv.ui.home

import android.os.Bundle
import androidx.fragment.app.viewModels
import androidx.leanback.app.BrowseSupportFragment
import androidx.leanback.widget.ArrayObjectAdapter
import androidx.leanback.widget.HeaderItem
import androidx.leanback.widget.ListRow
import androidx.leanback.widget.ListRowPresenter
import androidx.leanback.widget.OnItemViewClickedListener
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.R
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint

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

        onItemViewClickedListener = OnItemViewClickedListener { _, item, _, _ ->
            when (item) {
                is Channel -> (activity as? com.bayyari.tv.ui.TvMainActivity)?.showTvSection(
                    com.bayyari.tv.ui.live.TvLiveFragment()
                )
                is Movie -> (activity as? com.bayyari.tv.ui.TvMainActivity)?.showTvSection(
                    com.bayyari.tv.ui.movies.TvMovieFragment()
                )
                is Series -> (activity as? com.bayyari.tv.ui.TvMainActivity)?.showTvSection(
                    com.bayyari.tv.ui.series.TvSeriesFragment()
                )
            }
        }

        viewLifecycleOwner.collectStarted(viewModel.live) { items ->
            liveAdapter.setItems(items, null)
        }
        viewLifecycleOwner.collectStarted(viewModel.movies) { items ->
            movieAdapter.setItems(items, null)
        }
        viewLifecycleOwner.collectStarted(viewModel.series) { items ->
            seriesAdapter.setItems(items, null)
        }

        viewModel.load()
    }
}
