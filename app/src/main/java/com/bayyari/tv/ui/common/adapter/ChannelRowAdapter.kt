package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.R
import com.bayyari.tv.databinding.ItemChannelRowBinding
import com.bayyari.tv.domain.model.Channel
import com.bumptech.glide.Glide

class ChannelRowAdapter(
    private val onClick: (Channel) -> Unit,
    private val onLongClick: (Channel) -> Unit = {}
) : ListAdapter<Channel, ChannelRowAdapter.ViewHolder>(Diff) {

    private var selectedStreamId: Int = -1

    fun setSelected(streamId: Int) {
        if (selectedStreamId == streamId) return
        selectedStreamId = streamId
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemChannelRowBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class ViewHolder(private val binding: ItemChannelRowBinding) : RecyclerView.ViewHolder(binding.root) {
        fun bind(item: Channel) {
            binding.textChannelName.text = item.name
            binding.root.isActivated = item.streamId == selectedStreamId
            Glide.with(binding.imageLogo)
                .load(item.streamIcon.takeIf { it.isNotBlank() })
                .placeholder(R.drawable.ic_logo_tv)
                .error(R.drawable.ic_logo_tv)
                .fitCenter()
                .into(binding.imageLogo)
            binding.root.setOnClickListener { onClick(item) }
            binding.root.setOnLongClickListener { onLongClick(item); true }
        }
    }

    private object Diff : DiffUtil.ItemCallback<Channel>() {
        override fun areItemsTheSame(old: Channel, new: Channel): Boolean =
            old.streamId == new.streamId && old.serverId == new.serverId
        override fun areContentsTheSame(old: Channel, new: Channel): Boolean =
            old == new
    }
}
