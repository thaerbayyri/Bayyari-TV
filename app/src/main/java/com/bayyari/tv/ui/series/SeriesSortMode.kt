package com.bayyari.tv.ui.series

enum class SeriesSortMode(val prefValue: String) {
    AddedDesc("added_desc"),
    NameAsc("name_asc"),
    NameDesc("name_desc"),
    RatingDesc("rating_desc");

    companion object {
        fun fromPref(value: String): SeriesSortMode =
            entries.firstOrNull { it.prefValue == value } ?: AddedDesc
    }
}
