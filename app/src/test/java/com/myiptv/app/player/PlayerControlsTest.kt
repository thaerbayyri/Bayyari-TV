package com.myiptv.app.player

import com.google.common.truth.Truth.assertThat
import org.junit.Test

class PlayerControlsTest {

    @Test
    fun `play pause button invokes callback`() {
        val controls = TestPlayerControls()
        var clicked = false
        controls.onPlayPause = { clicked = true }

        controls.click(ControlButton.PlayPause)

        assertThat(clicked).isTrue()
    }

    @Test
    fun `next and previous buttons invoke callbacks`() {
        val controls = TestPlayerControls()
        val events = mutableListOf<String>()
        controls.onPrev = { events += "prev" }
        controls.onNext = { events += "next" }

        controls.click(ControlButton.Previous)
        controls.click(ControlButton.Next)

        assertThat(events).containsExactly("prev", "next").inOrder()
    }

    @Test
    fun `title subtitle and play state bind to visible controls`() {
        val controls = TestPlayerControls()

        controls.setTitle("Channel One")
        controls.setSubtitle("Now playing")
        controls.setPlayState(isPlaying = true)

        assertThat(controls.title).isEqualTo("Channel One")
        assertThat(controls.subtitle).isEqualTo("Now playing")
        assertThat(controls.playPauseLabel).isEqualTo("||")
    }

    @Test
    fun `advanced controls invoke callbacks`() {
        val controls = TestPlayerControls()
        val events = mutableListOf<String>()
        controls.onAudioTracks = { events += "audio" }
        controls.onSubtitleTracks = { events += "subtitles" }
        controls.onAspectRatio = { events += "aspect" }
        controls.onEpg = { events += "epg" }
        controls.onExternal = { events += "external" }
        controls.onPip = { events += "pip" }
        controls.onLock = { events += "lock" }

        controls.click(ControlButton.Audio)
        controls.click(ControlButton.Subtitles)
        controls.click(ControlButton.Aspect)
        controls.click(ControlButton.Epg)
        controls.click(ControlButton.External)
        controls.click(ControlButton.Pip)
        controls.click(ControlButton.Lock)

        assertThat(events).containsExactly("audio", "subtitles", "aspect", "epg", "external", "pip", "lock").inOrder()
    }

    private enum class ControlButton {
        PlayPause, Previous, Next, Audio, Subtitles, Aspect, Epg, External, Pip, Lock
    }

    private class TestPlayerControls {
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
        var title: String = ""
            private set
        var subtitle: String = ""
            private set
        var playPauseLabel: String = ">"
            private set

        fun click(button: ControlButton) {
            when (button) {
                ControlButton.PlayPause -> onPlayPause?.invoke()
                ControlButton.Previous -> onPrev?.invoke()
                ControlButton.Next -> onNext?.invoke()
                ControlButton.Audio -> onAudioTracks?.invoke()
                ControlButton.Subtitles -> onSubtitleTracks?.invoke()
                ControlButton.Aspect -> onAspectRatio?.invoke()
                ControlButton.Epg -> onEpg?.invoke()
                ControlButton.External -> onExternal?.invoke()
                ControlButton.Pip -> onPip?.invoke()
                ControlButton.Lock -> onLock?.invoke()
            }
        }

        fun setTitle(value: String) {
            title = value
        }

        fun setSubtitle(value: String) {
            subtitle = value
        }

        fun setPlayState(isPlaying: Boolean) {
            playPauseLabel = if (isPlaying) "||" else ">"
        }
    }
}
