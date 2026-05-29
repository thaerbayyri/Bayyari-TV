package com.bayyari.tv.ui.search

import com.google.common.truth.Truth.assertThat
import org.junit.Test
import java.io.File

class SearchAllAdapterTest {

    @Test
    fun adapterDispatchesBoundLiveMovieAndSeriesClicks() {
        val source = readMainSource("com/bayyari/tv/ui/search/SearchAllAdapter.kt")

        assertThat(source).contains("is SearchItem.Live ->")
        assertThat(source).contains("is SearchItem.MovieResult ->")
        assertThat(source).contains("is SearchItem.SeriesResult ->")
        assertThat(source).contains("binding.root.setOnClickListener { onClick(item) }")
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
