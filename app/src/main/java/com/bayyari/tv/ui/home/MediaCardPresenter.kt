package com.bayyari.tv.ui.home

import android.view.ViewGroup
import androidx.leanback.widget.ImageCardView
import androidx.leanback.widget.Presenter

class MediaCardPresenter : Presenter() {

    override fun onCreateViewHolder(parent: ViewGroup): ViewHolder {
        val card = ImageCardView(parent.context).apply {
            isFocusable = true
            isFocusableInTouchMode = true
            setMainImageDimensions(240, 135)
        }
        return ViewHolder(card)
    }

    override fun onBindViewHolder(viewHolder: ViewHolder, item: Any?) {
        val card = viewHolder.view as ImageCardView
        val title = when (item) {
            is com.bayyari.tv.domain.model.Channel -> item.name
            is com.bayyari.tv.domain.model.Movie -> item.name
            is com.bayyari.tv.domain.model.Series -> item.name
            else -> ""
        }
        card.titleText = title
    }

    override fun onUnbindViewHolder(viewHolder: ViewHolder) = Unit
}
