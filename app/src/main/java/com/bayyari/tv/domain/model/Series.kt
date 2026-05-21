package com.bayyari.tv.domain.model

data class Series(
    val seriesId: Int,
    val name: String,
    val cover: String,
    val plot: String,
    val cast: String,
    val director: String,
    val genre: String,
    val releaseDate: String,
    val lastModified: Long,
    val rating: String,
    val categoryId: String,
    val serverId: Int
)
