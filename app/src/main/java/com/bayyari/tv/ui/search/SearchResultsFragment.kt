package com.bayyari.tv.ui.search

import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.activityViewModels
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentSearchResultsBinding
import com.bayyari.tv.ui.common.adapter.ChannelAdapter
import com.bayyari.tv.ui.common.adapter.MovieAdapter
import com.bayyari.tv.ui.common.adapter.SeriesAdapter
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SearchResultsFragment : Fragment(R.layout.fragment_search_results) {

    companion object {
        private const val ARG_TAB = "tab"
        fun newInstance(tab: String) = SearchResultsFragment().apply {
            arguments = Bundle().apply { putString(ARG_TAB, tab) }
        }
    }

    private val viewModel: SearchViewModel by activityViewModels()
    private var binding: FragmentSearchResultsBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentSearchResultsBinding.bind(view)
        val tab = arguments?.getString(ARG_TAB).orEmpty()

        val recycler = binding?.recyclerResults ?: return
        recycler.layoutManager = LinearLayoutManager(requireContext())

        val allAdapter = SearchAllAdapter()
        val liveAdapter = ChannelAdapter(onClick = { })
        val movieAdapter = MovieAdapter { }
        val seriesAdapter = SeriesAdapter { }

        recycler.adapter = when (tab) {
            "live" -> liveAdapter
            "movies" -> movieAdapter
            "series" -> seriesAdapter
            else -> allAdapter
        }

        viewLifecycleOwner.collectStarted(viewModel.result) { result ->
            when (tab) {
                "live" -> liveAdapter.submitList(result.live)
                "movies" -> movieAdapter.submitList(result.movies)
                "series" -> seriesAdapter.submitList(result.series)
                else -> {
                    val items = result.live.map { SearchItem.Live(it.name) } +
                        result.movies.map { SearchItem.Movie(it.name) } +
                        result.series.map { SearchItem.Series(it.name) }
                    allAdapter.submitList(items)
                }
            }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
