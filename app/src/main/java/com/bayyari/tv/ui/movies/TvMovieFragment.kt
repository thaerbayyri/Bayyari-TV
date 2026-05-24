package com.bayyari.tv.ui.movies

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.viewModels
import androidx.leanback.app.VerticalGridSupportFragment
import androidx.leanback.widget.ArrayObjectAdapter
import androidx.leanback.widget.VerticalGridPresenter
import androidx.leanback.widget.OnItemViewClickedListener
import com.bayyari.tv.ui.home.MediaCardPresenter
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class TvMovieFragment : VerticalGridSupportFragment() {

    private val viewModel: MovieViewModel by viewModels()

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
        val presenter = VerticalGridPresenter().apply { numberOfColumns = 5 }
        setGridPresenter(presenter)
        val adapter = ArrayObjectAdapter(MediaCardPresenter())
        this.adapter = adapter

        onItemViewClickedListener = OnItemViewClickedListener { _, item, _, _ ->
            val movie = item as? Movie ?: return@OnItemViewClickedListener
            val detail = com.bayyari.tv.ui.movies.MovieDetailFragment().apply {
                arguments = Bundle().apply { putInt("streamId", movie.streamId) }
            }
            (activity as? com.bayyari.tv.ui.TvMainActivity)?.showTvSection(detail)
        }

        viewLifecycleOwner.collectStarted(viewModel.movies) { adapter.setItems(it, null) }

        viewModel.refresh()
    }
}
