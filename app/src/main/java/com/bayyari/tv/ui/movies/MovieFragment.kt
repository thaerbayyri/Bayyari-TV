package com.bayyari.tv.ui.movies

import android.os.Bundle
import android.view.View
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.GridLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentMovieBinding
import com.bayyari.tv.ui.common.adapter.MovieAdapter
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import android.widget.AdapterView

@AndroidEntryPoint
class MovieFragment : Fragment(R.layout.fragment_movie) {

    private val viewModel: MovieViewModel by viewModels()
    private var binding: FragmentMovieBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentMovieBinding.bind(view)
        val b = binding ?: return

        val adapter = MovieAdapter { movie ->
            findNavController().navigate(
                R.id.action_movie_to_detail,
                bundleOf("streamId" to movie.streamId)
            )
        }
        b.recyclerMovies.layoutManager = GridLayoutManager(requireContext(), 3)
        b.recyclerMovies.adapter = adapter

        b.searchMovies.setOnQueryTextListener(object : androidx.appcompat.widget.SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                viewModel.setQuery(query.orEmpty())
                return true
            }

            override fun onQueryTextChange(newText: String?): Boolean {
                viewModel.setQuery(newText.orEmpty())
                return true
            }
        })

        b.spinnerSort.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {
                val sort = when (position) {
                    0 -> MovieViewModel.Sort.NAME
                    1 -> MovieViewModel.Sort.RATING
                    2 -> MovieViewModel.Sort.YEAR
                    else -> MovieViewModel.Sort.ADDED
                }
                viewModel.setSort(sort)
            }

            override fun onNothingSelected(parent: AdapterView<*>?) = Unit
        }

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.movies.collectLatest { adapter.submitList(it) }
        }

        viewModel.refresh()
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
