package com.bayyari.tv.ui.favorites

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.appcompat.app.AlertDialog
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentFavoritesBinding
import com.bayyari.tv.ui.live.LivePlayerActivity
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class FavoritesFragment : Fragment(R.layout.fragment_favorites) {

    private val viewModel: FavoritesViewModel by viewModels()
    private var binding: FragmentFavoritesBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        val b = FragmentFavoritesBinding.bind(view)
        binding = b
        val adapter = FavoriteAdapter()
        b.recyclerFavorites.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerFavorites.adapter = adapter

        adapter.setOnClickListener { item ->
            openFavorite(item)
        }

        adapter.setOnLongClickListener { item ->
            AlertDialog.Builder(requireContext())
                .setTitle(item.title)
                .setItems(arrayOf(getString(R.string.action_remove))) { _, _ ->
                    viewModel.removeFavorite(item)
                }
                .show()
        }

        viewLifecycleOwner.collectStarted(viewModel.favorites) { items ->
            adapter.submitList(items)
            b.textFavoritesCount.text = if (items.size == 1) "1 item" else "${items.size} items"
            b.emptyState.visibility = if (items.isEmpty()) View.VISIBLE else View.GONE
            b.recyclerFavorites.visibility = if (items.isEmpty()) View.GONE else View.VISIBLE
        }
    }

    private fun openFavorite(item: FavoriteItem) {
        when (item.contentType) {
            "live" -> startActivity(Intent(requireContext(), LivePlayerActivity::class.java).apply {
                putExtra(LivePlayerActivity.EXTRA_STREAM_ID, item.contentId)
            })
            "movie" -> runCatching {
                findNavController().navigate(
                    R.id.movieDetailFragment,
                    bundleOf("streamId" to item.contentId)
                )
            }
            "series" -> runCatching {
                findNavController().navigate(
                    R.id.seriesDetailFragment,
                    bundleOf("seriesId" to item.contentId)
                )
            }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
