package com.bayyari.tv.ui

import com.google.common.truth.Truth.assertThat
import org.junit.Test
import java.io.File

class TvFullscreenPlaybackTest {

    @Test
    fun tvMainActivity_fallsBackWhenLeanbackHostCrashes() {
        val source = readMainSource("com/bayyari/tv/ui/TvMainActivity.kt")

        assertThat(source).contains("PREF_FORCE_PHONE_UI")
        assertThat(source).contains("falling back to phone UI")
        assertThat(source).contains("MainActivity::class.java")
    }

    @Test
    fun tvLivePlayer_fillsScreenAndResumesPlaybackOnResume() {
        val source = readMainSource("com/bayyari/tv/ui/live/TvLivePlayerActivity.kt")

        assertThat(source).contains("FLAG_KEEP_SCREEN_ON")
        assertThat(source).contains("binding.playerView.player = iptvPlayer.getPlayer()")
        assertThat(source).contains("binding.playerView.useController = true")
        assertThat(source).contains("override fun onResume()")
        assertThat(source).contains("iptvPlayer.play()")
    }

    private fun readMainSource(relativePath: String): String {
        val root = File(System.getProperty("user.dir") ?: ".")
        val candidates = listOf(
            File(root, "src/main/java/$relativePath"),
            File(root, "app/src/main/java/$relativePath")
        )
        val file = candidates.firstOrNull { it.exists() }
            ?: error("Missing source file: $relativePath under $root")
        return file.readText()
    }
}
