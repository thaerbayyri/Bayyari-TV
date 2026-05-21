package com.bayyari.tv.ui.series

import android.os.Bundle
import android.view.View
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.GridLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentSeriesBinding
import com.bayyari.tv.ui.common.adapter.SeriesAdapter
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

@AndroidEntryPoint
class SeriesFragment : Fragment(R.layout.fragment_series) {

    private val viewModel: SeriesViewModel by viewModels()
    private var binding: FragmentSeriesBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentSeriesBinding.bind(view)
        val b = binding ?: return

        val adapter = SeriesAdapter { series ->
            findNavController().navigate(
                R.id.action_series_to_detail,
                bundleOf("seriesId" to series.seriesId)
            )
        }
        b.recyclerSeries.layoutManager = GridLayoutManager(requireContext(), 3)
        b.recyclerSeries.adapter = adapter

        b.searchSeries.setOnQueryTextListener(object : androidx.appcompat.widget.SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                viewModel.setQuery(query.orEmpty())
                return true
            }

            override fun onQueryTextChange(newText: String?): Boolean {
                viewModel.setQuery(newText.orEmpty())
                return true
            }
        })

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.series.collectLatest { adapter.submitList(it) }
        }

        viewModel.refresh()
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
