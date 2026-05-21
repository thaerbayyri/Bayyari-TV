package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.R
import com.bayyari.tv.databinding.ItemSeriesBinding
import com.bayyari.tv.domain.model.Series
import com.bumptech.glide.Glide

class SeriesAdapter(
    private val onClick: (Series) -> Unit
) : ListAdapter<Series, SeriesAdapter.SeriesViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): SeriesViewHolder {
        val binding = ItemSeriesBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return SeriesViewHolder(binding)
    }

    override fun onBindViewHolder(holder: SeriesViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class SeriesViewHolder(
        private val binding: ItemSeriesBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: Series) {
            binding.textSeriesTitle.text = item.name
            val rating = item.rating.toDoubleOrNull()
            binding.textRating.text = if (rating != null && rating > 0) String.format("%.1f", rating) else "—"
            binding.textSeriesSub.text = item.genre.ifBlank { item.releaseDate.ifBlank { " " } }
            Glide.with(binding.imageCover)
                .load(item.cover.takeIf { it.isNotBlank() })
                .placeholder(R.color.colorCard)
                .error(R.color.colorCard)
                .centerCrop()
                .into(binding.imageCover)
            binding.root.setOnClickListener { onClick(item) }
        }
    }

    private object Diff : DiffUtil.ItemCallback<Series>() {
        override fun areItemsTheSame(oldItem: Series, newItem: Series): Boolean =
            oldItem.seriesId == newItem.seriesId && oldItem.serverId == newItem.serverId

        override fun areContentsTheSame(oldItem: Series, newItem: Series): Boolean =
            oldItem == newItem
    }
}
