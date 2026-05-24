package com.bayyari.tv.ui.series

import android.os.Bundle
import androidx.core.os.bundleOf
import androidx.fragment.app.viewModels
import androidx.leanback.app.VerticalGridSupportFragment
import androidx.leanback.widget.ArrayObjectAdapter
import androidx.leanback.widget.VerticalGridPresenter
import androidx.leanback.widget.OnItemViewClickedListener
import com.bayyari.tv.ui.home.MediaCardPresenter
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class TvSeriesFragment : VerticalGridSupportFragment() {

    private val viewModel: SeriesViewModel by viewModels()

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
        val presenter = VerticalGridPresenter().apply { numberOfColumns = 5 }
        setGridPresenter(presenter)
        val adapter = ArrayObjectAdapter(MediaCardPresenter())
        this.adapter = adapter

        onItemViewClickedListener = OnItemViewClickedListener { _, item, _, _ ->
            val series = item as? Series ?: return@OnItemViewClickedListener
            val detail = SeriesDetailFragment().apply {
                arguments = bundleOf(
                    "seriesId" to series.seriesId,
                    "autoOpenSeason" to true
                )
            }
            (activity as? com.bayyari.tv.ui.TvMainActivity)?.showTvSection(detail)
        }

        viewLifecycleOwner.collectStarted(viewModel.series) { adapter.setItems(it, null) }

        viewModel.refresh()
    }
}
