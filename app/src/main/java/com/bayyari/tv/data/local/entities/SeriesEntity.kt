package com.bayyari.tv.data.local.entities

import androidx.room.Entity
import androidx.room.Index

@Entity(
    tableName = "series",
    primaryKeys = ["seriesId", "serverId"],
    indices = [Index("categoryId"), Index("serverId"), Index("name")]
)
data class SeriesEntity(
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
