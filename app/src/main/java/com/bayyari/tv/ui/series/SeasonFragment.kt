package com.bayyari.tv.ui.series

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentSeasonBinding
import com.bayyari.tv.ui.common.adapter.EpisodeAdapter
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

@AndroidEntryPoint
class SeasonFragment : Fragment(R.layout.fragment_season) {

    private val viewModel: SeriesDetailViewModel by viewModels()
    private var binding: FragmentSeasonBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentSeasonBinding.bind(view)
        val seriesId = arguments?.getInt("seriesId") ?: 0
        val seasonNumber = arguments?.getInt("seasonNumber") ?: 0
        if (seriesId != 0) viewModel.load(seriesId)

        val adapter = EpisodeAdapter { episode ->
            startActivity(Intent(requireContext(), EpisodePlayerActivity::class.java).apply {
                putExtra(EpisodePlayerActivity.EXTRA_EPISODE_ID, episode.id)
                putExtra(EpisodePlayerActivity.EXTRA_CONTAINER_EXT, episode.containerExtension)
            })
        }
        binding?.recyclerEpisodes?.layoutManager = LinearLayoutManager(requireContext())
        binding?.recyclerEpisodes?.adapter = adapter

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.episodesBySeason.collectLatest { map ->
                adapter.submitList(map[seasonNumber].orEmpty())
            }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
