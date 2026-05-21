package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.databinding.ItemEpgProgramBinding
import com.bayyari.tv.domain.model.EpgProgram
import com.bayyari.tv.util.toEpgTime

class EpgProgramAdapter(
    private val onClick: ((EpgProgram) -> Unit)? = null
) : ListAdapter<EpgProgram, EpgProgramAdapter.EpgViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): EpgViewHolder {
        val binding = ItemEpgProgramBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return EpgViewHolder(binding)
    }

    override fun onBindViewHolder(holder: EpgViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class EpgViewHolder(
        private val binding: ItemEpgProgramBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: EpgProgram) {
            binding.textProgramTitle.text = item.title
            binding.textProgramTime.text = "${item.startMs.toEpgTime()} - ${item.endMs.toEpgTime()}"
            binding.root.setOnClickListener { onClick?.invoke(item) }
        }
    }

    private object Diff : DiffUtil.ItemCallback<EpgProgram>() {
        override fun areItemsTheSame(oldItem: EpgProgram, newItem: EpgProgram): Boolean =
            oldItem.startMs == newItem.startMs && oldItem.streamId == newItem.streamId

        override fun areContentsTheSame(oldItem: EpgProgram, newItem: EpgProgram): Boolean =
            oldItem == newItem
    }
}
