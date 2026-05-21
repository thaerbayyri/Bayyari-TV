package com.bayyari.tv.ui.favorites

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.databinding.ItemFavoriteBinding

class FavoriteAdapter : ListAdapter<FavoritesViewModel.FavoriteItem, FavoriteAdapter.ViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemFavoriteBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    class ViewHolder(private val binding: ItemFavoriteBinding) : RecyclerView.ViewHolder(binding.root) {
        fun bind(item: FavoritesViewModel.FavoriteItem) {
            binding.textTitle.text = "${item.type}: ${item.title}"
        }
    }

    private object Diff : DiffUtil.ItemCallback<FavoritesViewModel.FavoriteItem>() {
        override fun areItemsTheSame(oldItem: FavoritesViewModel.FavoriteItem, newItem: FavoritesViewModel.FavoriteItem): Boolean =
            oldItem.id == newItem.id && oldItem.type == newItem.type

        override fun areContentsTheSame(oldItem: FavoritesViewModel.FavoriteItem, newItem: FavoritesViewModel.FavoriteItem): Boolean =
            oldItem == newItem
    }
}
