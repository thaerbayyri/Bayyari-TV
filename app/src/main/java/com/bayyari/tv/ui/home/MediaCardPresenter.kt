package com.bayyari.tv.ui.home

import android.view.ViewGroup
import androidx.leanback.widget.ImageCardView
import androidx.leanback.widget.Presenter
import androidx.core.content.ContextCompat
import com.bayyari.tv.R
import com.bumptech.glide.Glide

class MediaCardPresenter : Presenter() {

    override fun onCreateViewHolder(parent: ViewGroup): ViewHolder {
        val card = ImageCardView(parent.context).apply {
            isFocusable = true
            isFocusableInTouchMode = true
            foreground = ContextCompat.getDrawable(context, R.drawable.bg_tv_card_focus)
            setOnFocusChangeListener { view, hasFocus ->
                val scale = if (hasFocus) 1.08f else 1f
                view.animate()
                    .scaleX(scale)
                    .scaleY(scale)
                    .setDuration(120L)
                    .start()
                elevation = if (hasFocus) 18f else 2f
            }
        }
        return ViewHolder(card)
    }

    override fun onBindViewHolder(viewHolder: ViewHolder, item: Any?) {
        val card = viewHolder.view as ImageCardView
        when (item) {
            is com.bayyari.tv.domain.model.Channel -> {
                card.setMainImageDimensions(180, 180)
                card.mainImageView?.let { imageView ->
                    imageView.scaleType = android.widget.ImageView.ScaleType.CENTER_CROP
                    Glide.with(card.context)
                        .load(item.streamIcon.takeIf { it.isNotBlank() })
                        .placeholder(R.drawable.ic_logo_tv)
                        .error(R.drawable.ic_logo_tv)
                        .into(imageView)
                }
                card.titleText = item.name
            }
            is com.bayyari.tv.domain.model.Movie -> {
                card.setMainImageDimensions(300, 169)
                card.mainImageView?.let { imageView ->
                    imageView.scaleType = android.widget.ImageView.ScaleType.CENTER_CROP
                    Glide.with(card.context)
                        .load(item.poster.takeIf { it.isNotBlank() })
                        .placeholder(R.drawable.banner_tv)
                        .error(R.drawable.banner_tv)
                        .into(imageView)
                }
                card.titleText = item.name
            }
            is com.bayyari.tv.domain.model.Series -> {
                card.setMainImageDimensions(300, 169)
                card.mainImageView?.let { imageView ->
                    imageView.scaleType = android.widget.ImageView.ScaleType.CENTER_CROP
                    Glide.with(card.context)
                        .load(item.cover.takeIf { it.isNotBlank() })
                        .placeholder(R.drawable.banner_tv)
                        .error(R.drawable.banner_tv)
                        .into(imageView)
                }
                card.titleText = item.name
            }
            else -> {
                card.setMainImageDimensions(240, 135)
                card.titleText = ""
            }
        }
    }

    override fun onUnbindViewHolder(viewHolder: ViewHolder) = Unit
}
