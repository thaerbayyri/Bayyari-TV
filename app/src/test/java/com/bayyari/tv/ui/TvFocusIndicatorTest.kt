package com.bayyari.tv.ui

import com.google.common.truth.Truth.assertThat
import org.junit.Test
import java.io.File

class TvFocusIndicatorTest {

    @Test
    fun tvMediaCardsAndChannelRowsExposeFocusedState() {
        val cardFocus = readRes("drawable/bg_tv_card_focus.xml")
        val channelRowFocus = readRes("drawable/bg_channel_row_selector.xml")
        val presenter = readMainSource("com/bayyari/tv/ui/home/MediaCardPresenter.kt")

        assertThat(cardFocus).contains("state_focused")
        assertThat(channelRowFocus).contains("state_focused")
        assertThat(presenter).contains("setOnFocusChangeListener")
        assertThat(presenter).contains("bg_tv_card_focus")
    }

    private fun readRes(relativePath: String): String {
        val root = File(System.getProperty("user.dir") ?: ".")
        val candidates = listOf(
            File(root, "src/main/res/$relativePath"),
            File(root, "app/src/main/res/$relativePath")
        )
        val file = candidates.firstOrNull { it.exists() }
            ?: error("Missing resource: $relativePath under $root")
        return file.readText()
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
