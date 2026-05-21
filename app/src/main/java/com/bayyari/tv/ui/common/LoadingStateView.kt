package com.bayyari.tv.ui.common

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.FrameLayout
import com.bayyari.tv.databinding.ViewLoadingStateBinding

class LoadingStateView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null
) : FrameLayout(context, attrs) {

    private val binding = ViewLoadingStateBinding.inflate(LayoutInflater.from(context), this, true)

    fun show(message: String) {
        binding.textMessage.text = message
        visibility = VISIBLE
    }

    fun hide() {
        visibility = GONE
    }
}
