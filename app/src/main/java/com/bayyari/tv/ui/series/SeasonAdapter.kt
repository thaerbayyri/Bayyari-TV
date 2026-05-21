package com.bayyari.tv.ui.series

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.databinding.ItemSeasonBinding
import com.bayyari.tv.domain.model.Season

class SeasonAdapter(
    private val onClick: (Int) -> Unit
) : ListAdapter<Season, SeasonAdapter.SeasonViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): SeasonViewHolder {
        val binding = ItemSeasonBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return SeasonViewHolder(binding)
    }

    override fun onBindViewHolder(holder: SeasonViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class SeasonViewHolder(
        private val binding: ItemSeasonBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: Season) {
            binding.textSeasonName.text = item.name.ifBlank { "Season ${item.seasonNumber}" }
            binding.root.setOnClickListener { onClick(item.seasonNumber) }
        }
    }

    private object Diff : DiffUtil.ItemCallback<Season>() {
        override fun areItemsTheSame(oldItem: Season, newItem: Season): Boolean =
            oldItem.seasonNumber == newItem.seasonNumber

        override fun areContentsTheSame(oldItem: Season, newItem: Season): Boolean =
            oldItem == newItem
    }
}
