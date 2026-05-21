package com.bayyari.tv.data.local.entities

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "epg",
    indices = [
        Index(value = ["streamId", "serverId"]),
        Index("startMs"),
        Index("endMs")
    ]
)
data class EpgEntity(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    val streamId: Int,
    val serverId: Int,
    val title: String,
    val description: String,
    val startMs: Long,
    val endMs: Long,
    val hasArchive: Boolean
)
