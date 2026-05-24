package com.bayyari.tv.ui.live

import com.bayyari.tv.domain.model.Channel
import org.junit.Assert.assertEquals
import org.junit.Test

class LiveChannelFiltersTest {

    @Test
    fun apply_hidesCategoriesBeforeCountingResults() {
        val result = LiveChannelFilters.apply(
            channels = sampleChannels(),
            categoryId = null,
            query = "",
            hiddenCategoryIds = setOf("kids"),
            sortMode = LiveSortMode.NameAsc
        )

        assertEquals(listOf("Alpha News", "Zulu Sports"), result.map { it.name })
    }

    @Test
    fun apply_sortsCatchUpChannelsFirstThenByName() {
        val result = LiveChannelFilters.apply(
            channels = sampleChannels(),
            categoryId = null,
            query = "",
            hiddenCategoryIds = emptySet(),
            sortMode = LiveSortMode.CatchUp
        )

        assertEquals(listOf("Beta Kids", "Zulu Sports", "Alpha News"), result.map { it.name })
    }

    @Test
    fun fromPref_fallsBackToNameAscendingForUnknownValues() {
        assertEquals(LiveSortMode.NameAsc, LiveSortMode.fromPref("unsupported"))
    }

    private fun sampleChannels(): List<Channel> = listOf(
        channel(name = "Zulu Sports", categoryId = "sports", catchUp = true, added = 10),
        channel(name = "Alpha News", categoryId = "news", catchUp = false, added = 30),
        channel(name = "Beta Kids", categoryId = "kids", catchUp = true, added = 20)
    )

    private fun channel(
        name: String,
        categoryId: String,
        catchUp: Boolean,
        added: Long
    ): Channel = Channel(
        streamId = name.hashCode(),
        name = name,
        streamIcon = "",
        categoryId = categoryId,
        categoryName = categoryId,
        epgChannelId = "",
        tvArchive = if (catchUp) 1 else 0,
        tvArchiveDuration = if (catchUp) 7 else 0,
        addedEpochSeconds = added,
        serverId = 1
    )
}
