package com.bayyari.tv.ui.home

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import android.widget.Toast
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentHomeBinding
import com.bayyari.tv.databinding.IncludeStatCellBinding
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.ui.common.adapter.ChannelAdapter
import com.bayyari.tv.ui.common.adapter.ContinueWatchingAdapter
import com.bayyari.tv.ui.common.adapter.MovieAdapter
import com.bayyari.tv.ui.common.adapter.SeriesAdapter
import com.bayyari.tv.ui.live.LivePlayerActivity
import com.bayyari.tv.ui.movies.MoviePlayerActivity
import com.bayyari.tv.util.collectStarted
import com.bumptech.glide.Glide
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class HomeFragment : Fragment(R.layout.fragment_home) {

    private val viewModel: HomeViewModel by viewModels()
    private var binding: FragmentHomeBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentHomeBinding.bind(view)
        val b = binding ?: return

        // Stats cells (4 of them) — labels are static, values come from the stats flow
        val statBindings = listOf(
            IncludeStatCellBinding.bind(b.statChannels.root) to "Channels",
            IncludeStatCellBinding.bind(b.statMovies.root) to "Movies",
            IncludeStatCellBinding.bind(b.statSeries.root) to "Series",
            IncludeStatCellBinding.bind(b.statQuality.root) to "Quality"
        )
        statBindings.forEach { (cell, label) -> cell.statLabel.text = label }
        statBindings[3].first.statValue.text = "4K / FHD"
        statBindings[3].first.statValue.setTextColor(
            requireContext().getColor(R.color.colorPrimary)
        )

        // Adapters
        val continueAdapter = ContinueWatchingAdapter { /* TODO resume click */ }
        val liveAdapter = ChannelAdapter(onClick = { ch ->
            startActivity(Intent(requireContext(), LivePlayerActivity::class.java).apply {
                putExtra(LivePlayerActivity.EXTRA_STREAM_ID, ch.streamId)
            })
        }, compact = true)
        val movieAdapter = MovieAdapter(compact = true) { movie ->
            openMovieDetail(movie)
        }
        val seriesAdapter = SeriesAdapter(compact = true) { series ->
            runCatching {
                val args = Bundle().apply { putInt("seriesId", series.seriesId) }
                findNavController().navigate(R.id.action_home_to_series_detail, args)
            }
        }

        b.recyclerContinue.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerContinue.adapter = continueAdapter
        b.recyclerLive.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerLive.adapter = liveAdapter
        b.recyclerMovies.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerMovies.adapter = movieAdapter
        b.recyclerSeries.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerSeries.adapter = seriesAdapter

        // See-all links → corresponding nav destinations
        b.seeAllLive.setOnClickListener { safeNavigate(R.id.liveFragment) }
        b.seeAllMovies.setOnClickListener { safeNavigate(R.id.movieFragment) }
        b.seeAllSeries.setOnClickListener { safeNavigate(R.id.seriesFragment) }
        b.seeAllContinue.setOnClickListener { /* no-op for now */ }

        // Featured hero — populated from first latest movie
        b.buttonHeroPlay.setOnClickListener {
            (b.heroTitle.tag as? Movie)?.let { openMoviePlayer(it) }
        }
        b.buttonHeroAdd.setOnClickListener {
            val movie = b.heroTitle.tag as? Movie ?: return@setOnClickListener
            viewModel.addMovieFavorite(movie)
            Toast.makeText(requireContext(), R.string.live_add_favorite, Toast.LENGTH_SHORT).show()
        }

        viewLifecycleOwner.collectStarted(viewModel.continueWatching) { continueAdapter.submitList(it) }
        viewLifecycleOwner.collectStarted(viewModel.liveChannels) { liveAdapter.submitList(it) }
        viewLifecycleOwner.collectStarted(viewModel.latestMovies) { movieAdapter.submitList(it) }
        viewLifecycleOwner.collectStarted(viewModel.latestSeries) { seriesAdapter.submitList(it) }
        viewLifecycleOwner.collectStarted(viewModel.stats) { s ->
            statBindings[0].first.statValue.text = formatCount(s.channelCount)
            statBindings[1].first.statValue.text = formatCount(s.movieCount)
            statBindings[2].first.statValue.text = formatCount(s.seriesCount)
        }
        viewLifecycleOwner.collectStarted(viewModel.featured) { movie -> bindHero(movie) }

        viewModel.refreshAll()
    }

    private fun bindHero(movie: Movie?) {
        val b = binding ?: return
        b.heroTitle.text = movie?.name ?: "Welcome to BAYYARI-TV"
        b.heroTitle.tag = movie
        val ratingValue = movie?.rating5Based?.takeIf { it > 0 }
            ?: (movie?.rating ?: 0.0).takeIf { it > 0 }?.div(2)
        b.heroRating.text = if (ratingValue != null && ratingValue > 0) String.format("%.1f", ratingValue) else "—"
        b.heroMeta.text = "M3U · HLS · 4K HDR"
        if (movie != null && movie.poster.isNotBlank()) {
            Glide.with(b.heroBackdrop).load(movie.poster).centerCrop().into(b.heroBackdrop)
        } else {
            b.heroBackdrop.setImageDrawable(null)
        }
    }

    private fun openMovieDetail(movie: Movie) {
        runCatching {
            val args = Bundle().apply { putInt("streamId", movie.streamId) }
            findNavController().navigate(R.id.action_home_to_movie_detail, args)
        }.onFailure {
            openMoviePlayer(movie)
        }
    }

    private fun openMoviePlayer(movie: Movie) {
        startActivity(Intent(requireContext(), MoviePlayerActivity::class.java).apply {
            putExtra(MoviePlayerActivity.EXTRA_MOVIE_ID, movie.streamId)
        })
    }

    private fun safeNavigate(destId: Int) {
        runCatching { findNavController().navigate(destId) }
    }

    private fun formatCount(n: Int): String = when {
        n >= 1_000 -> java.text.NumberFormat.getIntegerInstance().format(n)
        n > 0 -> n.toString()
        else -> "0"
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
