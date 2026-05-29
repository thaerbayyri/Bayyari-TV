package com.bayyari.tv.ui.series

import android.os.Bundle
import android.view.View
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.fragment.app.activityViewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentSeriesDetailBinding
import com.bayyari.tv.util.collectStarted
import com.bayyari.tv.util.toast
import com.bumptech.glide.Glide
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SeriesDetailFragment : Fragment(R.layout.fragment_series_detail) {

    private val viewModel: SeriesDetailViewModel by activityViewModels()
    private var binding: FragmentSeriesDetailBinding? = null
    private var autoOpenSeason = false
    private var seasonAutoOpened = false

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentSeriesDetailBinding.bind(view)
        val seriesId = arguments?.getInt("seriesId") ?: 0
        autoOpenSeason = arguments?.getBoolean("autoOpenSeason") ?: false
        seasonAutoOpened = false

        if (seriesId != 0) viewModel.loadIfNeeded(seriesId)

        binding?.buttonBack?.setOnClickListener {
            findNavController().navigateUp()
        }

        val seasonAdapter = SeasonAdapter { seasonNumber ->
            openSeason(seriesId, seasonNumber)
        }
        binding?.recyclerSeasons?.layoutManager = LinearLayoutManager(requireContext())
        binding?.recyclerSeasons?.adapter = seasonAdapter

        binding?.buttonOpenSeasons?.setOnClickListener {
            val seasonNumber = viewModel.seasons.value.firstOrNull()?.seasonNumber ?: 1
            openSeason(seriesId, seasonNumber)
        }

        binding?.buttonFavorite?.setOnClickListener {
            viewModel.addFavorite(seriesId)
            toast(getString(R.string.favorite_added))
        }

        viewLifecycleOwner.collectStarted(viewModel.series) { series ->
            if (series != null) {
                binding?.textTitle?.text = series.name
                binding?.textPlot?.text = series.plot
                binding?.textMeta?.text = listOfNotNull(
                    series.releaseDate.takeIf { it.isNotBlank() },
                    series.genre.takeIf { it.isNotBlank() },
                    series.rating.takeIf { it.isNotBlank() }
                ).joinToString(" • ")
                Glide.with(this)
                    .load(series.cover.takeIf { it.isNotBlank() })
                    .placeholder(R.drawable.ic_logo_tv)
                    .error(R.drawable.ic_logo_tv)
                    .centerCrop()
                    .into(binding?.imageCover ?: return@collectStarted)
            }
        }

        viewLifecycleOwner.collectStarted(viewModel.seasons) { seasons ->
            seasonAdapter.submitList(seasons)
            if (autoOpenSeason && !seasonAutoOpened && seasons.isNotEmpty()) {
                seasonAutoOpened = true
                openSeason(seriesId, seasons.first().seasonNumber)
            }
        }

        viewLifecycleOwner.collectStarted(viewModel.error) { msg ->
            if (!msg.isNullOrBlank()) {
                binding?.textTitle?.text = msg
            }
        }
    }

    private fun openSeason(seriesId: Int, seasonNumber: Int) {
        val args = bundleOf("seriesId" to seriesId, "seasonNumber" to seasonNumber)
        runCatching {
            findNavController().navigate(R.id.action_series_to_season, args)
        }.onFailure {
            parentFragmentManager.beginTransaction()
                .replace(R.id.nav_host_fragment, SeasonFragment().apply { arguments = args })
                .addToBackStack(null)
                .commit()
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
