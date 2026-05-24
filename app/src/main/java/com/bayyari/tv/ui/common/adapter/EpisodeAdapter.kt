package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.ImageView
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.R
import com.bayyari.tv.databinding.ItemEpisodeBinding
import com.bayyari.tv.domain.model.Episode
import com.bumptech.glide.Glide

class EpisodeAdapter(
    private val onClick: (Episode) -> Unit
) : ListAdapter<Episode, EpisodeAdapter.EpisodeViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): EpisodeViewHolder {
        val binding = ItemEpisodeBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return EpisodeViewHolder(binding)
    }

    override fun onBindViewHolder(holder: EpisodeViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class EpisodeViewHolder(
        private val binding: ItemEpisodeBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: Episode) {
            binding.textEpisodeTitle.text = item.title
            binding.textEpisodeNumber.text = binding.root.context.getString(
                com.bayyari.tv.R.string.series_episode_number,
                item.season,
                item.episodeNumber
            )
            binding.textEpisodePlot.text = item.plot.ifBlank { "No description available" }
            binding.textEpisodeMeta.text = listOfNotNull(
                item.releaseDate.takeIf { it.isNotBlank() },
                item.rating.takeIf { it.isNotBlank() }?.let { "Rating $it" },
                item.durationSecs.takeIf { it > 0 }?.let { formatDuration(it) }
            ).joinToString("  |  ")
            val poster = item.poster.takeIf { it.isNotBlank() }
            val placeholderPadding = (22 * binding.root.resources.displayMetrics.density).toInt()
            binding.imageEpisode.scaleType = if (poster == null) {
                binding.imageEpisode.setPadding(placeholderPadding, placeholderPadding, placeholderPadding, placeholderPadding)
                ImageView.ScaleType.CENTER_INSIDE
            } else {
                binding.imageEpisode.setPadding(0, 0, 0, 0)
                ImageView.ScaleType.CENTER_CROP
            }
            val request = Glide.with(binding.imageEpisode)
                .load(poster)
                .placeholder(R.drawable.ic_episode_play)
                .error(R.drawable.ic_episode_play)
            if (poster == null) request.fitCenter() else request.centerCrop()
            request.into(binding.imageEpisode)
            binding.root.setOnClickListener { onClick(item) }
        }

        private fun formatDuration(seconds: Int): String {
            val minutes = seconds / 60
            if (minutes <= 0) return "${seconds}s"
            val hours = minutes / 60
            val mins = minutes % 60
            return if (hours > 0) "${hours}h ${mins}m" else "${minutes}m"
        }
    }

    private object Diff : DiffUtil.ItemCallback<Episode>() {
        override fun areItemsTheSame(oldItem: Episode, newItem: Episode): Boolean =
            oldItem.id == newItem.id

        override fun areContentsTheSame(oldItem: Episode, newItem: Episode): Boolean =
            oldItem == newItem
    }
}
