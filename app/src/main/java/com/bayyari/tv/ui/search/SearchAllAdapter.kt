package com.bayyari.tv.ui.search

import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.R
import com.bayyari.tv.databinding.ItemSearchAllBinding
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import com.bumptech.glide.Glide

sealed class SearchItem {
    data class Live(val channel: Channel) : SearchItem()
    data class MovieResult(val movie: Movie) : SearchItem()
    data class SeriesResult(val series: Series) : SearchItem()
}

class SearchAllAdapter(
    private val onClick: (SearchItem) -> Unit
) : ListAdapter<SearchItem, SearchAllAdapter.ViewHolder>(Diff) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemSearchAllBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ViewHolder(binding, onClick)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    class ViewHolder(
        private val binding: ItemSearchAllBinding,
        private val onClick: (SearchItem) -> Unit
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: SearchItem) {
            val ctx = binding.root.context
            when (item) {
                is SearchItem.Live -> {
                    binding.textTitle.text = item.channel.name
                    binding.textType.text = item.channel.categoryName.ifBlank { "Live TV" }
                    binding.textBadge.text = "LIVE"
                    binding.textBadge.setBackgroundColor(Color.parseColor("#CC2222"))
                    Glide.with(ctx)
                        .load(item.channel.streamIcon.ifBlank { null })
                        .placeholder(R.drawable.ic_logo_tv)
                        .error(R.drawable.ic_logo_tv)
                        .centerCrop()
                        .into(binding.imageThumbnail)
                }
                is SearchItem.MovieResult -> {
                    binding.textTitle.text = item.movie.name
                    binding.textType.text = ctx.getString(R.string.nav_movies)
                    binding.textBadge.text = "MOVIE"
                    binding.textBadge.setBackgroundColor(Color.parseColor("#1565C0"))
                    Glide.with(ctx)
                        .load(item.movie.poster.ifBlank { null })
                        .placeholder(ColorDrawable(Color.parseColor("#1A1A2E")))
                        .error(ColorDrawable(Color.parseColor("#1A1A2E")))
                        .centerCrop()
                        .into(binding.imageThumbnail)
                }
                is SearchItem.SeriesResult -> {
                    binding.textTitle.text = item.series.name
                    binding.textType.text = item.series.genre.ifBlank { ctx.getString(R.string.nav_series) }
                    binding.textBadge.text = "SERIES"
                    binding.textBadge.setBackgroundColor(Color.parseColor("#2E7D32"))
                    Glide.with(ctx)
                        .load(item.series.cover.ifBlank { null })
                        .placeholder(ColorDrawable(Color.parseColor("#1A1A2E")))
                        .error(ColorDrawable(Color.parseColor("#1A1A2E")))
                        .centerCrop()
                        .into(binding.imageThumbnail)
                }
            }
            binding.root.setOnClickListener { onClick(item) }
        }
    }

    private object Diff : DiffUtil.ItemCallback<SearchItem>() {
        override fun areItemsTheSame(oldItem: SearchItem, newItem: SearchItem): Boolean =
            oldItem == newItem
        override fun areContentsTheSame(oldItem: SearchItem, newItem: SearchItem): Boolean =
            oldItem == newItem
    }
}
