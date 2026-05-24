package com.bayyari.tv.ui.home

import android.content.Intent
import android.app.Dialog
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentHomeBinding
import com.bayyari.tv.databinding.IncludeStatCellBinding
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.WatchEntry
import com.bayyari.tv.ui.common.adapter.ChannelAdapter
import com.bayyari.tv.ui.common.adapter.ContinueWatchingAdapter
import com.bayyari.tv.ui.common.adapter.HomeFavoriteAdapter
import com.bayyari.tv.ui.common.adapter.MovieAdapter
import com.bayyari.tv.ui.common.adapter.SeriesAdapter
import com.bayyari.tv.ui.favorites.FavoriteItem
import com.bayyari.tv.ui.live.LivePlayerActivity
import com.bayyari.tv.ui.MainActivity
import com.bayyari.tv.ui.movies.MoviePlayerActivity
import com.bayyari.tv.ui.series.EpisodePlayerActivity
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
        val continueAdapter = ContinueWatchingAdapter { entry -> openWatchEntry(entry) }
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
        val homeFavAdapter = HomeFavoriteAdapter { item -> openFavoriteItem(item) }

        b.recyclerContinue.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerContinue.adapter = continueAdapter
        b.recyclerLive.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerLive.adapter = liveAdapter
        b.recyclerMovies.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerMovies.adapter = movieAdapter
        b.recyclerSeries.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerSeries.adapter = seriesAdapter
        b.recyclerHomeFavorites.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        b.recyclerHomeFavorites.adapter = homeFavAdapter

        // See-all links → corresponding nav destinations
        b.seeAllLive.setOnClickListener { safeNavigate(R.id.liveFragment) }
        b.seeAllMovies.setOnClickListener { safeNavigate(R.id.movieFragment) }
        b.seeAllSeries.setOnClickListener { safeNavigate(R.id.seriesFragment) }
        b.seeAllContinue.setOnClickListener { safeNavigate(R.id.favoritesFragment) }
        b.seeAllFavorites.setOnClickListener { safeNavigate(R.id.favoritesFragment) }

        // Featured hero
        b.buttonHeroPlay.setOnClickListener {
            val featured = b.heroTitle.tag as? FeaturedItem ?: return@setOnClickListener
            when (featured.contentType) {
                "series" -> runCatching {
                    val args = Bundle().apply { putInt("seriesId", featured.id) }
                    findNavController().navigate(R.id.action_home_to_series_detail, args)
                }
                else -> startActivity(Intent(requireContext(), MoviePlayerActivity::class.java).apply {
                    putExtra(MoviePlayerActivity.EXTRA_MOVIE_ID, featured.id)
                })
            }
        }
        b.buttonHeroAdd.setOnClickListener {
            val featured = b.heroTitle.tag as? FeaturedItem ?: return@setOnClickListener
            viewModel.addFeaturedFavorite(featured)
            Toast.makeText(requireContext(), R.string.live_add_favorite, Toast.LENGTH_SHORT).show()
        }

        viewLifecycleOwner.collectStarted(viewModel.continueWatching) { items ->
            continueAdapter.submitList(items)
            val vis = if (items.isEmpty()) View.GONE else View.VISIBLE
            b.sectionContinueHeader.visibility = vis
            b.recyclerContinue.visibility = vis
        }
        viewLifecycleOwner.collectStarted(viewModel.liveChannels) { liveAdapter.submitList(it) }
        viewLifecycleOwner.collectStarted(viewModel.latestMovies) { movieAdapter.submitList(it) }
        viewLifecycleOwner.collectStarted(viewModel.latestSeries) { seriesAdapter.submitList(it) }
        viewLifecycleOwner.collectStarted(viewModel.homeFavorites) { items ->
            homeFavAdapter.submitList(items)
            val vis = if (items.isEmpty()) View.GONE else View.VISIBLE
            b.sectionFavoritesHeader.visibility = vis
            b.recyclerHomeFavorites.visibility = vis
        }
        viewLifecycleOwner.collectStarted(viewModel.stats) { s ->
            statBindings[0].first.statValue.text = formatCount(s.channelCount)
            statBindings[1].first.statValue.text = formatCount(s.movieCount)
            statBindings[2].first.statValue.text = formatCount(s.seriesCount)
        }
        viewLifecycleOwner.collectStarted(viewModel.featured) { item -> bindHero(item) }

        viewModel.refreshAll()
        showWelcomePopupAfterLogin()
    }

    private fun bindHero(item: FeaturedItem?) {
        val b = binding ?: return
        b.heroTitle.text = item?.name ?: "Welcome to BAYYARI-TV"
        b.heroTitle.tag = item
        b.heroRating.text = if (item != null && item.rating > 0) {
            String.format("%.1f", item.rating)
        } else {
            "—"
        }
        b.heroMeta.text = if (item?.contentType == "series") "Series · HD" else "M3U · HLS · 4K HDR"
        if (item != null && item.imageUrl.isNotBlank()) {
            Glide.with(b.heroBackdrop)
                .load(item.imageUrl)
                .placeholder(R.drawable.bg_hero_gradient)
                .error(R.drawable.bg_hero_gradient)
                .centerCrop()
                .into(b.heroBackdrop)
        } else {
            b.heroBackdrop.setImageResource(R.drawable.bg_hero_gradient)
        }
    }

    private fun showWelcomePopupAfterLogin() {
        val activityIntent = requireActivity().intent
        if (!activityIntent.getBooleanExtra(MainActivity.EXTRA_SHOW_WELCOME_POPUP, false)) return
        activityIntent.removeExtra(MainActivity.EXTRA_SHOW_WELCOME_POPUP)

        val dialog = Dialog(requireContext())
        dialog.setContentView(R.layout.dialog_welcome_popup)
        dialog.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
        dialog.findViewById<View>(R.id.buttonCloseWelcome)?.setOnClickListener {
            dialog.dismiss()
        }
        dialog.setOnShowListener {
            dialog.window?.setLayout(
                (resources.displayMetrics.widthPixels * 0.94f).toInt(),
                (resources.displayMetrics.heightPixels * 0.88f).toInt()
            )
        }
        dialog.show()
    }

    private fun openMovieDetail(movie: Movie) {
        runCatching {
            val args = Bundle().apply { putInt("streamId", movie.streamId) }
            findNavController().navigate(R.id.action_home_to_movie_detail, args)
        }.onFailure {
            openMoviePlayer(movie)
        }
    }

    private fun openWatchEntry(entry: WatchEntry) {
        when (entry.contentType.lowercase()) {
            "live" -> startActivity(Intent(requireContext(), LivePlayerActivity::class.java).apply {
                putExtra(LivePlayerActivity.EXTRA_STREAM_ID, entry.contentId)
            })
            "movie" -> runCatching {
                val args = Bundle().apply { putInt("streamId", entry.contentId) }
                findNavController().navigate(R.id.action_home_to_movie_detail, args)
            }.onFailure {
                startActivity(Intent(requireContext(), MoviePlayerActivity::class.java).apply {
                    putExtra(MoviePlayerActivity.EXTRA_MOVIE_ID, entry.contentId)
                })
            }
            "series" -> runCatching {
                val args = Bundle().apply { putInt("seriesId", entry.contentId) }
                findNavController().navigate(R.id.action_home_to_series_detail, args)
            }
            "episode" -> startActivity(Intent(requireContext(), EpisodePlayerActivity::class.java).apply {
                putExtra(EpisodePlayerActivity.EXTRA_EPISODE_ID, entry.contentId)
                putExtra(EpisodePlayerActivity.EXTRA_CONTAINER_EXT, "mp4")
            })
            else -> safeNavigate(R.id.favoritesFragment)
        }
    }

    private fun openFavoriteItem(item: FavoriteItem) {
        when (item.contentType.lowercase()) {
            "live" -> startActivity(Intent(requireContext(), LivePlayerActivity::class.java).apply {
                putExtra(LivePlayerActivity.EXTRA_STREAM_ID, item.contentId)
            })
            "movie" -> runCatching {
                val args = Bundle().apply { putInt("streamId", item.contentId) }
                findNavController().navigate(R.id.action_home_to_movie_detail, args)
            }.onFailure {
                startActivity(Intent(requireContext(), MoviePlayerActivity::class.java).apply {
                    putExtra(MoviePlayerActivity.EXTRA_MOVIE_ID, item.contentId)
                })
            }
            "series" -> runCatching {
                val args = Bundle().apply { putInt("seriesId", item.contentId) }
                findNavController().navigate(R.id.action_home_to_series_detail, args)
            }
            else -> safeNavigate(R.id.favoritesFragment)
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
