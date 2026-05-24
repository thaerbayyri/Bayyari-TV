package com.bayyari.tv.ui.common

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.FrameLayout
import com.bayyari.tv.databinding.ViewPlayerControlsBinding

class PlayerControlsView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null
) : FrameLayout(context, attrs) {

    private val binding = ViewPlayerControlsBinding.inflate(LayoutInflater.from(context), this, true)

    var onPlayPause: (() -> Unit)? = null
    var onNext: (() -> Unit)? = null
    var onPrev: (() -> Unit)? = null
    var onPip: (() -> Unit)? = null
    var onExternal: (() -> Unit)? = null
    var onAudioTracks: (() -> Unit)? = null
    var onSubtitleTracks: (() -> Unit)? = null
    var onAspectRatio: (() -> Unit)? = null
    var onLock: (() -> Unit)? = null
    var onEpg: (() -> Unit)? = null

    init {
        binding.buttonPlayPause.setOnClickListener { onPlayPause?.invoke() }
        binding.buttonNext.setOnClickListener { onNext?.invoke() }
        binding.buttonPrev.setOnClickListener { onPrev?.invoke() }
        binding.buttonPip.setOnClickListener { onPip?.invoke() }
        binding.buttonExternal.setOnClickListener { onExternal?.invoke() }
        binding.buttonAudio.setOnClickListener { onAudioTracks?.invoke() }
        binding.buttonSubtitles.setOnClickListener { onSubtitleTracks?.invoke() }
        binding.buttonAspect.setOnClickListener { onAspectRatio?.invoke() }
        binding.buttonLock.setOnClickListener { onLock?.invoke() }
        binding.buttonEpg.setOnClickListener { onEpg?.invoke() }
    }

    fun setTitle(title: String) {
        binding.textTitle.text = title
    }

    fun setSubtitle(subtitle: String) {
        binding.textSubtitle.text = subtitle
    }

    fun setTitleVisible(visible: Boolean) {
        val visibility = if (visible) View.VISIBLE else View.GONE
        binding.textTitle.visibility = visibility
        binding.textSubtitle.visibility = visibility
    }

    fun setPlayState(isPlaying: Boolean) {
        binding.buttonPlayPause.text = if (isPlaying) "||" else ">"
    }

    fun setMovieMode() {
        binding.buttonPrev.visibility = View.GONE
        binding.buttonNext.visibility = View.GONE
        binding.buttonEpg.visibility = View.GONE
        binding.buttonLock.visibility = View.GONE
        binding.buttonPip.visibility = View.GONE
        binding.buttonExternal.visibility = View.GONE
    }
}
