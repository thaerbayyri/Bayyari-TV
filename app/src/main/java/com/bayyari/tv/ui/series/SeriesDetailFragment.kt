package com.bayyari.tv.ui.series

import android.os.Bundle
import android.view.View
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentSeriesDetailBinding
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

@AndroidEntryPoint
class SeriesDetailFragment : Fragment(R.layout.fragment_series_detail) {

    private val viewModel: SeriesDetailViewModel by viewModels()
    private var binding: FragmentSeriesDetailBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentSeriesDetailBinding.bind(view)
        val seriesId = arguments?.getInt("seriesId") ?: 0
        if (seriesId != 0) viewModel.load(seriesId)

        val seasonAdapter = SeasonAdapter { seasonNumber ->
            findNavController().navigate(
                R.id.action_series_to_season,
                bundleOf("seriesId" to seriesId, "seasonNumber" to seasonNumber)
            )
        }
        binding?.recyclerSeasons?.layoutManager = LinearLayoutManager(requireContext())
        binding?.recyclerSeasons?.adapter = seasonAdapter

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.series.collectLatest { series ->
                if (series != null) {
                    binding?.textTitle?.text = series.name
                    binding?.textPlot?.text = series.plot
                }
            }
        }
        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.seasons.collectLatest { seasonAdapter.submitList(it) }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
