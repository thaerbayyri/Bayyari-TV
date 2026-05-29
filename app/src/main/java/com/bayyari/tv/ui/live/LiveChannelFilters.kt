package com.bayyari.tv.ui.live

import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.util.Constants

enum class LiveSortMode(val prefValue: String) {
    NameAsc("name_asc"),
    NameDesc("name_desc"),
    Newest("newest"),
    CatchUp("catchup");

    companion object {
        fun fromPref(value: String): LiveSortMode =
            entries.firstOrNull { it.prefValue == value } ?: NameAsc
    }
}

object LiveChannelFilters {
    fun apply(
        channels: List<Channel>,
        categoryId: String?,
        query: String,
        hiddenCategoryIds: Set<String>,
        sortMode: LiveSortMode
    ): List<Channel> {
        val filtered = channels
            .asSequence()
            .filter { it.categoryId !in hiddenCategoryIds }
            .filter { !isDefaultHidden(it.categoryName) }
            .filter { categoryId.isNullOrBlank() || it.categoryId == categoryId }
            .filter { query.isBlank() || it.name.contains(query, ignoreCase = true) }

        return when (sortMode) {
            LiveSortMode.NameAsc -> filtered.sortedBy { it.name.lowercase() }
            LiveSortMode.NameDesc -> filtered.sortedByDescending { it.name.lowercase() }
            LiveSortMode.Newest -> filtered.sortedByDescending { it.addedEpochSeconds }
            LiveSortMode.CatchUp -> filtered.sortedWith(
                compareByDescending<Channel> { it.supportsCatchUp }.thenBy { it.name.lowercase() }
            )
        }.toList()
    }

    fun isDefaultHidden(categoryName: String): Boolean =
        Constants.DEFAULT_HIDDEN_LIVE_CATEGORY_NAMES.any { prefix ->
            categoryName.startsWith(prefix, ignoreCase = true)
        }
}
