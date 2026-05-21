package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.R
import com.bayyari.tv.data.local.entities.WatchHistoryEntity
import com.bayyari.tv.databinding.ItemContinueWatchingBinding
import com.bumptech.glide.Glide

class ContinueWatchingAdapter(
    private val onClick: (WatchHistoryEntity) -> Unit
) : ListAdapter<WatchHistoryEntity, ContinueWatchingAdapter.WatchViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): WatchViewHolder {
        val binding = ItemContinueWatchingBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return WatchViewHolder(binding)
    }

    override fun onBindViewHolder(holder: WatchViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class WatchViewHolder(
        private val binding: ItemContinueWatchingBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: WatchHistoryEntity) {
            binding.textTitle.text = item.title.ifBlank { item.contentType.replaceFirstChar { it.uppercaseChar() } }
            val remaining = ((item.durationMs - item.positionMs).coerceAtLeast(0) / 60_000L)
            binding.textSubtitle.text = if (remaining > 0) "$remaining min left" else item.contentType
            val progress = if (item.durationMs > 0) {
                ((item.positionMs.toFloat() / item.durationMs.toFloat()) * 100f).toInt().coerceIn(0, 100)
            } else 0
            binding.progressBar.progress = progress
            Glide.with(binding.imagePoster)
                .load(item.poster.takeIf { it.isNotBlank() })
                .placeholder(R.color.colorCard)
                .error(R.color.colorCard)
                .centerCrop()
                .into(binding.imagePoster)
            binding.root.setOnClickListener { onClick(item) }
        }
    }

    private object Diff : DiffUtil.ItemCallback<WatchHistoryEntity>() {
        override fun areItemsTheSame(oldItem: WatchHistoryEntity, newItem: WatchHistoryEntity): Boolean =
            oldItem.id == newItem.id

        override fun areContentsTheSame(oldItem: WatchHistoryEntity, newItem: WatchHistoryEntity): Boolean =
            oldItem == newItem
    }
}
