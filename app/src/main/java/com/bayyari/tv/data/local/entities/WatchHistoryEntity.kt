package com.bayyari.tv.data.local.entities

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "watch_history",
    indices = [Index(value = ["contentId", "contentType", "serverId"], unique = true)]
)
data class WatchHistoryEntity(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val contentId: Int,
    val contentType: String,    // "movie" | "episode" | "live"
    val positionMs: Long,
    val durationMs: Long,
    val watchedAt: Long,
    val serverId: Int,
    val title: String = "",
    val poster: String = ""
)
