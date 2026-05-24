package com.bayyari.tv.ui.series

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.OnBackPressedCallback
import androidx.fragment.app.Fragment
import androidx.fragment.app.activityViewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentSeasonBinding
import com.bayyari.tv.domain.model.Episode
import com.bayyari.tv.ui.common.adapter.EpisodeAdapter
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SeasonFragment : Fragment(R.layout.fragment_season) {

    // Shared with SeriesDetailFragment — no duplicate API call
    private val viewModel: SeriesDetailViewModel by activityViewModels()
    private var binding: FragmentSeasonBinding? = null
    private var selectedSeasonNumber: Int = 0
    private var seriesId: Int = 0
    private var episodesBySeason: Map<Int, List<Episode>> = emptyMap()
    private var episodeAdapter: EpisodeAdapter? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentSeasonBinding.bind(view)
        seriesId = arguments?.getInt("seriesId") ?: 0
        val seasonNumber = arguments?.getInt("seasonNumber") ?: 0
        selectedSeasonNumber = seasonNumber

        if (seriesId != 0) viewModel.loadIfNeeded(seriesId)

        binding?.buttonBack?.setOnClickListener {
            closeSeasonPage()
        }

        requireActivity().onBackPressedDispatcher.addCallback(
            viewLifecycleOwner,
            object : OnBackPressedCallback(true) {
                override fun handleOnBackPressed() {
                    closeSeasonPage()
                }
            }
        )

        val seasonAdapter = SeasonAdapter { clickedSeason ->
            selectedSeasonNumber = clickedSeason
            updateEpisodes()
            renderSeasonHeader()
        }
        val adapter = EpisodeAdapter { episode ->
            startActivity(Intent(requireContext(), EpisodePlayerActivity::class.java).apply {
                putExtra(EpisodePlayerActivity.EXTRA_EPISODE_ID, episode.id)
                putExtra(EpisodePlayerActivity.EXTRA_CONTAINER_EXT, episode.containerExtension)
            })
        }
        episodeAdapter = adapter

        binding?.recyclerSeasons?.layoutManager = LinearLayoutManager(requireContext())
        binding?.recyclerSeasons?.adapter = seasonAdapter
        binding?.recyclerEpisodes?.layoutManager = LinearLayoutManager(requireContext())
        binding?.recyclerEpisodes?.adapter = adapter

        viewLifecycleOwner.collectStarted(viewModel.seasons) { seasons ->
            seasonAdapter.submitList(seasons)
            if (selectedSeasonNumber == 0 && seasons.isNotEmpty()) {
                selectedSeasonNumber = seasons.first().seasonNumber
            }
            binding?.textEpisodesTitle?.text = if (selectedSeasonNumber > 0) {
                "Season $selectedSeasonNumber"
            } else {
                getString(R.string.series_seasons)
            }
            renderSeasonHeader()
            updateEpisodes()
        }

        viewLifecycleOwner.collectStarted(viewModel.episodesBySeason) { map ->
            episodesBySeason = map
            updateEpisodes()
            renderSeasonHeader()
        }

        viewLifecycleOwner.collectStarted(viewModel.loading) { loading ->
            binding?.textEpisodesTitle?.text = when {
                loading -> getString(R.string.state_loading)
                selectedSeasonNumber > 0 -> "Season $selectedSeasonNumber"
                else -> getString(R.string.series_seasons)
            }
        }
    }

    private fun updateEpisodes() {
        val adapter = episodeAdapter ?: return
        adapter.submitList(
            episodesBySeason[selectedSeasonNumber].orEmpty()
                .sortedBy { it.episodeNumber }
        )
    }

    private fun renderSeasonHeader() {
        val count = episodesBySeason[selectedSeasonNumber].orEmpty().size
        binding?.textEpisodesTitle?.text = if (selectedSeasonNumber > 0) {
            "Season $selectedSeasonNumber"
        } else {
            getString(R.string.series_seasons)
        }
        binding?.textEpisodesMeta?.text = if (count == 1) "1 episode" else "$count episodes"
    }

    private fun closeSeasonPage() {
        val navController = runCatching { findNavController() }.getOrNull()
        // SeriesFragment always opens seasons via autoOpenSeason=true, so the detail page was
        // never an explicit user step. Pop all the way back to the series list in one gesture.
        if (navController?.popBackStack(R.id.seriesFragment, false) == true) return
        // Fallback for paths where seriesFragment is not in the back stack (e.g. TV nav)
        if (navController?.popBackStack() == true) return
        if (parentFragmentManager.backStackEntryCount > 0) {
            parentFragmentManager.popBackStack()
            return
        }
        requireActivity().finish()
    }

    override fun onDestroyView() {
        episodeAdapter = null
        binding = null
        super.onDestroyView()
    }
}
