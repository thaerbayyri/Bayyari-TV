package com.bayyari.tv.ui.series

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
import com.bayyari.tv.databinding.FragmentSeriesBinding
import com.bayyari.tv.ui.common.adapter.CategoryAdapter
import com.bayyari.tv.ui.common.adapter.SeriesAdapter
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint
import android.widget.AdapterView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import com.bayyari.tv.domain.model.Category

@AndroidEntryPoint
class SeriesFragment : Fragment(R.layout.fragment_series) {

    private val viewModel: SeriesViewModel by viewModels()
    private var binding: FragmentSeriesBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentSeriesBinding.bind(view)
        val b = binding ?: return

        val categoryAdapter = CategoryAdapter(
            onClick = { category -> viewModel.selectCategory(category.id) },
            onLongClick = { category -> confirmHideCategory(category) }
        )
        b.recyclerCategories.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerCategories.adapter = categoryAdapter

        val seriesAdapter = SeriesAdapter { series ->
            findNavController().navigate(
                R.id.action_series_to_detail,
                bundleOf("seriesId" to series.seriesId)
            )
        }
        b.recyclerSeries.layoutManager = GridLayoutManager(requireContext(), posterSpanCount())
        b.recyclerSeries.adapter = seriesAdapter

        b.buttonSeriesSearch.setOnClickListener {
            val show = b.searchSeries.visibility != View.VISIBLE
            b.searchSeries.visibility = if (show) View.VISIBLE else View.GONE
            if (show) {
                b.searchSeries.requestFocus()
                b.searchSeries.post {
                    val imm = requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                    imm.showSoftInput(b.searchSeries.findFocus(), InputMethodManager.SHOW_IMPLICIT)
                }
            } else {
                b.searchSeries.setQuery("", false)
                b.searchSeries.clearFocus()
                val imm = requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                imm.hideSoftInputFromWindow(b.searchSeries.windowToken, 0)
                viewModel.setQuery("")
            }
        }

        b.searchSeries.setOnQueryTextListener(object : androidx.appcompat.widget.SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                viewModel.setQuery(query.orEmpty())
                b.searchSeries.clearFocus()
                return true
            }
            override fun onQueryTextChange(newText: String?): Boolean {
                viewModel.setQuery(newText.orEmpty())
                return true
            }
        })

        b.spinnerSeriesSort.setSelection(
            when (viewModel.getSortMode()) {
                SeriesSortMode.NameAsc -> 1
                SeriesSortMode.NameDesc -> 2
                SeriesSortMode.RatingDesc -> 3
                SeriesSortMode.AddedDesc -> 0
            },
            false
        )
        b.spinnerSeriesSort.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>?, v: View?, position: Int, id: Long) {
                val sort = when (position) {
                    1 -> SeriesSortMode.NameAsc
                    2 -> SeriesSortMode.NameDesc
                    3 -> SeriesSortMode.RatingDesc
                    else -> SeriesSortMode.AddedDesc
                }
                viewModel.setSortMode(sort)
            }
            override fun onNothingSelected(parent: AdapterView<*>?) = Unit
        }

        viewLifecycleOwner.collectStarted(viewModel.selectedCategoryId) { id ->
            categoryAdapter.setSelected(id ?: "")
        }

        viewLifecycleOwner.collectStarted(viewModel.categories) { cats ->
            categoryAdapter.submitList(cats)
        }

        viewLifecycleOwner.collectStarted(viewModel.series) { list ->
            seriesAdapter.submitList(list)
            val catId = viewModel.selectedCategoryId.value
            val label = if (catId.isNullOrBlank()) "All"
                else viewModel.categories.value.find { it.id == catId }?.name ?: "All"
            b.textSeriesCount.text = "$label (${list.size})"
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
