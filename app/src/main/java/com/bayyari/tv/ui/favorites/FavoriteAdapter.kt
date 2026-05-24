package com.bayyari.tv.ui.favorites

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.databinding.ItemFavoriteBinding

data class FavoriteItem(val id: Int, val type: String, val title: String)

class FavoriteAdapter : ListAdapter<FavoriteItem, FavoriteAdapter.ViewHolder>(Diff) {

    private var onLongClick: ((FavoriteItem) -> Unit)? = null

    fun setOnLongClickListener(listener: (FavoriteItem) -> Unit) {
        onLongClick = listener
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemFavoriteBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(getItem(position), onLongClick)
    }

    class ViewHolder(private val binding: ItemFavoriteBinding) : RecyclerView.ViewHolder(binding.root) {
        fun bind(item: FavoriteItem, onLongClick: ((FavoriteItem) -> Unit)?) {
            binding.textTitle.text = "[${item.type}] ${item.title}"
            binding.root.setOnLongClickListener {
                onLongClick?.invoke(item)
                true
            }
        }
    }

    private object Diff : DiffUtil.ItemCallback<FavoriteItem>() {
        override fun areItemsTheSame(oldItem: FavoriteItem, newItem: FavoriteItem): Boolean =
            oldItem.id == newItem.id && oldItem.type == newItem.type
        override fun areContentsTheSame(oldItem: FavoriteItem, newItem: FavoriteItem): Boolean =
            oldItem == newItem
    }
}
