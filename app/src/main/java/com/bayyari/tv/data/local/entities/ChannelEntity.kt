package com.bayyari.tv.data.local.entities

import androidx.room.Entity
import androidx.room.Index

@Entity(
    tableName = "channels",
    primaryKeys = ["streamId", "serverId"],
    indices = [Index("categoryId"), Index("serverId"), Index("name")]
)
data class ChannelEntity(
    val streamId: Int,
    val name: String,
    val streamIcon: String,
    val categoryId: String,
    val categoryName: String,
    val tvArchive: Int,
    val tvArchiveDuration: Int,
    val epgChannelId: String,
    val added: Long,
    val serverId: Int,
    val directStreamUrl: String? = null
)
