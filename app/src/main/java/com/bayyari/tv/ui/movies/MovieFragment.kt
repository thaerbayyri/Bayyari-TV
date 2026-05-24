package com.bayyari.tv.ui.movies

import android.os.Bundle
import android.view.View
import android.view.inputmethod.InputMethodManager
import android.content.Context
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentMovieBinding
import com.bayyari.tv.ui.common.adapter.CategoryAdapter
import com.bayyari.tv.ui.common.adapter.MovieAdapter
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint
import android.widget.AdapterView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import com.bayyari.tv.domain.model.Category

@AndroidEntryPoint
class MovieFragment : Fragment(R.layout.fragment_movie) {

    private val viewModel: MovieViewModel by viewModels()
    private var binding: FragmentMovieBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentMovieBinding.bind(view)
        val b = binding ?: return

        val categoryAdapter = CategoryAdapter(
            onClick = { category -> viewModel.selectCategory(category.id) },
            onLongClick = { category -> confirmHideCategory(category) }
        )
        b.recyclerCategories.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerCategories.adapter = categoryAdapter

        val movieAdapter = MovieAdapter { movie ->
            runCatching {
                findNavController().navigate(
                    R.id.action_movie_to_detail,
                    bundleOf("streamId" to movie.streamId)
                )
            }
        }
        b.recyclerMovies.layoutManager = GridLayoutManager(requireContext(), posterSpanCount())
        b.recyclerMovies.adapter = movieAdapter

        b.buttonMovieSearch.setOnClickListener {
            val show = b.searchMovies.visibility != View.VISIBLE
            b.searchMovies.visibility = if (show) View.VISIBLE else View.GONE
            if (show) {
                b.searchMovies.requestFocus()
                b.searchMovies.post {
                    val imm = requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                    imm.showSoftInput(b.searchMovies.findFocus(), InputMethodManager.SHOW_IMPLICIT)
                }
            } else {
                b.searchMovies.setQuery("", false)
                b.searchMovies.clearFocus()
                val imm = requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                imm.hideSoftInputFromWindow(b.searchMovies.windowToken, 0)
                viewModel.setQuery("")
            }
        }

        b.searchMovies.setOnQueryTextListener(object : androidx.appcompat.widget.SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                viewModel.setQuery(query.orEmpty())
                b.searchMovies.clearFocus()
                return true
            }
            override fun onQueryTextChange(newText: String?): Boolean {
                viewModel.setQuery(newText.orEmpty())
                return true
            }
        })

        b.spinnerSort.setSelection(3, false)
        b.spinnerSort.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, v: View?, position: Int, id: Long) {
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

        viewLifecycleOwner.collectStarted(viewModel.selectedCategoryId) { id ->
            categoryAdapter.setSelected(id ?: "")
        }

        viewLifecycleOwner.collectStarted(viewModel.categories) { cats ->
            categoryAdapter.submitList(cats)
        }

        viewLifecycleOwner.collectStarted(viewModel.movies) { list ->
            movieAdapter.submitList(list)
            val catId = viewModel.selectedCategoryId.value
            val label = if (catId.isNullOrBlank()) "All"
                else viewModel.categories.value.find { it.id == catId }?.name ?: "All"
            b.textMovieCount.text = "$label (${list.size})"
        }

        viewModel.refresh()
    }

    override fun onResume() {
        super.onResume()
        viewModel.reloadPreferences()
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }

    private fun posterSpanCount(): Int {
        val widthDp = resources.configuration.screenWidthDp.takeIf { it > 0 } ?: 360
        val contentDp = (widthDp * 0.78f).toInt()
        return (contentDp / 120).coerceIn(2, 6)
    }

    private fun confirmHideCategory(category: Category) {
        if (category.id.isBlank()) return
        AlertDialog.Builder(requireContext())
            .setTitle(R.string.live_hide_category)
            .setMessage(getString(R.string.content_hide_category_confirm, category.name))
            .setNegativeButton(R.string.action_cancel, null)
            .setPositiveButton(R.string.action_ok) { _, _ ->
                viewModel.hideCategory(category.id)
                Toast.makeText(requireContext(), R.string.live_hidden_category_done, Toast.LENGTH_SHORT).show()
            }
            .show()
    }
}
