package com.bayyari.tv.ui.search

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.databinding.ItemSearchAllBinding

sealed class SearchItem {
    data class Live(val name: String) : SearchItem()
    data class Movie(val name: String) : SearchItem()
    data class Series(val name: String) : SearchItem()
}

class SearchAllAdapter : ListAdapter<SearchItem, SearchAllAdapter.ViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemSearchAllBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    class ViewHolder(private val binding: ItemSearchAllBinding) : RecyclerView.ViewHolder(binding.root) {
        fun bind(item: SearchItem) {
            binding.textTitle.text = when (item) {
                is SearchItem.Live -> "Live: ${item.name}"
                is SearchItem.Movie -> "Movie: ${item.name}"
                is SearchItem.Series -> "Series: ${item.name}"
            }
        }
    }

    private object Diff : DiffUtil.ItemCallback<SearchItem>() {
        override fun areItemsTheSame(oldItem: SearchItem, newItem: SearchItem): Boolean =
            oldItem == newItem

        override fun areContentsTheSame(oldItem: SearchItem, newItem: SearchItem): Boolean =
            oldItem == newItem
    }
}
