package com.bayyari.tv.ui.search

import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.view.View
import androidx.core.content.ContextCompat
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.fragment.app.activityViewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.databinding.FragmentSearchResultsBinding
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.ui.live.LivePlayerActivity
import com.bayyari.tv.ui.live.TvLivePlayerActivity
import com.bayyari.tv.util.EncryptedPrefs
import com.bayyari.tv.util.StreamUrlBuilder
import com.bayyari.tv.util.collectStarted
import com.bayyari.tv.util.isTelevisionDevice
import com.bayyari.tv.util.toast
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class SearchResultsFragment : Fragment(R.layout.fragment_search_results) {

    companion object {
        private const val ARG_TAB = "tab"
        private const val TAG = "SearchResultsFragment"
        fun newInstance(tab: String) = SearchResultsFragment().apply {
            arguments = Bundle().apply { putString(ARG_TAB, tab) }
        }
    }

    private val viewModel: SearchViewModel by activityViewModels()
    private var binding: FragmentSearchResultsBinding? = null

    @Inject lateinit var authRepository: AuthRepository
    @Inject lateinit var prefs: EncryptedPrefs
    @Inject lateinit var streamUrlBuilder: StreamUrlBuilder

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentSearchResultsBinding.bind(view)
        val tab = arguments?.getString(ARG_TAB).orEmpty()
        val recycler = binding?.recyclerResults ?: return

        recycler.layoutManager = LinearLayoutManager(requireContext())
        recycler.addItemDecoration(
            DividerItemDecoration(requireContext(), DividerItemDecoration.VERTICAL).also { divider ->
                ContextCompat.getDrawable(requireContext(), R.drawable.divider_search)
                    ?.let { divider.setDrawable(it) }
            }
        )

        val adapter = SearchAllAdapter { item ->
            when (item) {
                is SearchItem.Live -> openLive(item.channel)
                is SearchItem.MovieResult -> openMovie(item.movie)
                is SearchItem.SeriesResult -> openSeries(item.series)
            }
        }
        recycler.adapter = adapter

        viewLifecycleOwner.collectStarted(viewModel.result) { result ->
            val items: List<SearchItem> = when (tab) {
                "live"   -> result.live.map { SearchItem.Live(it) }
                "movies" -> result.movies.map { SearchItem.MovieResult(it) }
                "series" -> result.series.map { SearchItem.SeriesResult(it) }
                else     -> result.live.map { SearchItem.Live(it) } +
                            result.movies.map { SearchItem.MovieResult(it) } +
                            result.series.map { SearchItem.SeriesResult(it) }
            }
            adapter.submitList(items)
        }
    }

    private fun openLive(channel: Channel) {
        val url = buildLiveUrl(channel)
        if (url.isBlank()) return
        val playerActivity = if (requireContext().isTelevisionDevice()) {
            TvLivePlayerActivity::class.java
        } else {
            LivePlayerActivity::class.java
        }
        startActivity(Intent(requireContext(), playerActivity).apply {
            putExtra(LivePlayerActivity.EXTRA_STREAM_URL, url)
            putExtra(LivePlayerActivity.EXTRA_CHANNEL_NAME, channel.name)
            putExtra(LivePlayerActivity.EXTRA_STREAM_ID, channel.streamId)
        })
    }

    private fun openMovie(movie: Movie) {
        navigateToDetail(
            actionId = R.id.action_search_to_movie_detail,
            destinationId = R.id.movieDetailFragment,
            args = bundleOf("streamId" to movie.streamId)
        )
    }

    private fun openSeries(series: Series) {
        navigateToDetail(
            actionId = R.id.action_search_to_series_detail,
            destinationId = R.id.seriesDetailFragment,
            args = bundleOf("seriesId" to series.seriesId)
        )
    }

    private fun navigateToDetail(actionId: Int, destinationId: Int, args: Bundle) {
        runCatching {
            val navController = findNavController()
            val routeId = navController.currentDestination?.getAction(actionId)?.let { actionId }
                ?: destinationId
            navController.navigate(routeId, args)
        }.onFailure { error ->
            Log.e(TAG, "Search result navigation failed", error)
            toast(getString(R.string.state_error_generic))
        }
    }

    private fun buildLiveUrl(channel: Channel): String {
        channel.directStreamUrl?.takeIf { it.isNotBlank() }?.let { return it }
        val server = authRepository.getActiveServer() ?: return ""
        val liveFormat = if (prefs.getStreamFormat() == "ts") {
            StreamUrlBuilder.LiveFormat.TS
        } else {
            StreamUrlBuilder.LiveFormat.HLS
        }
        return streamUrlBuilder.live(
            server.normalizedUrl,
            server.username,
            server.password,
            channel.streamId,
            liveFormat
        )
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
