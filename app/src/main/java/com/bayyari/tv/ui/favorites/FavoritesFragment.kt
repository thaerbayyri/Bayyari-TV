package com.bayyari.tv.ui.favorites

import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentFavoritesBinding
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

@AndroidEntryPoint
class FavoritesFragment : Fragment(R.layout.fragment_favorites) {

    private val viewModel: FavoritesViewModel by viewModels()
    private var binding: FragmentFavoritesBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentFavoritesBinding.bind(view)
        val adapter = FavoriteAdapter()
        binding?.recyclerFavorites?.layoutManager = LinearLayoutManager(requireContext())
        binding?.recyclerFavorites?.adapter = adapter

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.favorites.collectLatest { adapter.submitList(it) }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
