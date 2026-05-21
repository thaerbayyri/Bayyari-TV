package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.R
import com.bayyari.tv.databinding.ItemChannelBinding
import com.bayyari.tv.domain.model.Channel
import com.bumptech.glide.Glide

class ChannelAdapter(
    private val onClick: (Channel) -> Unit,
    private val onLongClick: (Channel) -> Unit = {}
) : ListAdapter<Channel, ChannelAdapter.ChannelViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ChannelViewHolder {
        val binding = ItemChannelBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ChannelViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ChannelViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class ChannelViewHolder(
        private val binding: ItemChannelBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: Channel) {
            binding.textChannelName.text = item.name
            binding.textProgram.text = binding.root.context.getString(
                R.string.live_now_playing,
                binding.root.context.getString(R.string.live_no_epg)
            )
            Glide.with(binding.imageLogo)
                .load(item.streamIcon.takeIf { it.isNotBlank() })
                .placeholder(R.color.colorSurface)
                .error(R.color.colorSurface)
                .fitCenter()
                .into(binding.imageLogo)
            binding.root.setOnClickListener { onClick(item) }
            binding.root.setOnLongClickListener { onLongClick(item); true }
        }
    }

    private object Diff : DiffUtil.ItemCallback<Channel>() {
        override fun areItemsTheSame(oldItem: Channel, newItem: Channel): Boolean =
            oldItem.streamId == newItem.streamId && oldItem.serverId == newItem.serverId

        override fun areContentsTheSame(oldItem: Channel, newItem: Channel): Boolean =
            oldItem == newItem
    }
}
