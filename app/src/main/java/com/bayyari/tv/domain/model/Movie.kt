package com.bayyari.tv.domain.model

data class Movie(
    val streamId: Int,
    val name: String,
    val poster: String,
    val categoryId: String,
    val rating: Double,
    val rating5Based: Double,
    val addedEpochSeconds: Long,
    val containerExtension: String,
    val serverId: Int
)
