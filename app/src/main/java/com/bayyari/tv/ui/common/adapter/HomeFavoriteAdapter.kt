package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.databinding.ItemFavoriteHomeBinding
import com.bayyari.tv.ui.favorites.FavoriteItem

class HomeFavoriteAdapter(
    private val onClick: (FavoriteItem) -> Unit
) : ListAdapter<FavoriteItem, HomeFavoriteAdapter.VH>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
        val binding = ItemFavoriteHomeBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return VH(binding)
    }

    override fun onBindViewHolder(holder: VH, position: Int) = holder.bind(getItem(position))

    inner class VH(private val binding: ItemFavoriteHomeBinding) : RecyclerView.ViewHolder(binding.root) {
        fun bind(item: FavoriteItem) {
            binding.textType.text = item.type.uppercase()
            binding.textTitle.text = item.title
            binding.root.setOnClickListener { onClick(item) }
        }
    }

    private object Diff : DiffUtil.ItemCallback<FavoriteItem>() {
        override fun areItemsTheSame(a: FavoriteItem, b: FavoriteItem) = a.id == b.id
        override fun areContentsTheSame(a: FavoriteItem, b: FavoriteItem) = a == b
    }
}
