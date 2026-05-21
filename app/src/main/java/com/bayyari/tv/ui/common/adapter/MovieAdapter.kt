package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.R
import com.bayyari.tv.databinding.ItemMovieBinding
import com.bayyari.tv.domain.model.Movie
import com.bumptech.glide.Glide

class MovieAdapter(
    private val onClick: (Movie) -> Unit
) : ListAdapter<Movie, MovieAdapter.MovieViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MovieViewHolder {
        val binding = ItemMovieBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return MovieViewHolder(binding)
    }

    override fun onBindViewHolder(holder: MovieViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class MovieViewHolder(
        private val binding: ItemMovieBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: Movie) {
            binding.textMovieTitle.text = item.name

            val ratingValue = item.rating5Based.takeIf { it > 0 }
                ?: (item.rating.takeIf { it > 0 }?.div(2.0) ?: 0.0)
            binding.textRating.text = if (ratingValue > 0) String.format("%.1f", ratingValue) else "—"

            val year = epochToYear(item.addedEpochSeconds)
            binding.textMovieSub.text = if (year.isNotBlank()) year else " "

            Glide.with(binding.imagePoster)
                .load(item.poster.takeIf { it.isNotBlank() })
                .placeholder(R.color.colorCard)
                .error(R.color.colorCard)
                .centerCrop()
                .into(binding.imagePoster)

            // Tag visibility — show "NEW" if added in last 30 days
            val isNew = item.addedEpochSeconds > 0 &&
                (System.currentTimeMillis() / 1000 - item.addedEpochSeconds) < (30L * 24 * 3600)
            if (isNew) {
                binding.textTag.text = "NEW"
                binding.textTag.setBackgroundResource(R.drawable.bg_tag_new)
                binding.textTag.visibility = View.VISIBLE
            } else {
                binding.textTag.visibility = View.GONE
            }

            binding.root.setOnClickListener { onClick(item) }
        }

        private fun epochToYear(epoch: Long): String {
            if (epoch <= 0) return ""
            val ms = if (epoch < 1_000_000_000_000L) epoch * 1000 else epoch
            val cal = java.util.Calendar.getInstance().apply { timeInMillis = ms }
            return cal.get(java.util.Calendar.YEAR).toString()
        }
    }

    private object Diff : DiffUtil.ItemCallback<Movie>() {
        override fun areItemsTheSame(oldItem: Movie, newItem: Movie): Boolean =
            oldItem.streamId == newItem.streamId && oldItem.serverId == newItem.serverId

        override fun areContentsTheSame(oldItem: Movie, newItem: Movie): Boolean =
            oldItem == newItem
    }
}
