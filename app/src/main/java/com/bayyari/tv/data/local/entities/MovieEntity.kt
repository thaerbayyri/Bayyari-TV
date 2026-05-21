package com.bayyari.tv.data.local.entities

import androidx.room.Entity
import androidx.room.Index

@Entity(
    tableName = "movies",
    primaryKeys = ["streamId", "serverId"],
    indices = [Index("categoryId"), Index("serverId"), Index("name")]
)
data class MovieEntity(
    val streamId: Int,
    val name: String,
    val streamIcon: String,
    val categoryId: String,
    val rating: Double,
    val rating5Based: Double,
    val added: Long,
    val containerExtension: String,
    val serverId: Int
)
