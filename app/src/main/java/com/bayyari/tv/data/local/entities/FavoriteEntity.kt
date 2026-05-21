package com.bayyari.tv.data.local.entities

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "favorites",
    indices = [Index(value = ["contentId", "contentType", "serverId"], unique = true)]
)
data class FavoriteEntity(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val contentId: Int,
    val contentType: String,   // "live" | "movie" | "series"
    val serverId: Int,
    val addedAt: Long
)
