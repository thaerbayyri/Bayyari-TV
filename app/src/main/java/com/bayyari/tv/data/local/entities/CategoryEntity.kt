package com.bayyari.tv.data.local.entities

import androidx.room.Entity
import androidx.room.Index

@Entity(
    tableName = "categories",
    primaryKeys = ["categoryId", "kind", "serverId"],
    indices = [Index("serverId")]
)
data class CategoryEntity(
    val categoryId: String,
    val name: String,
    val kind: String,      // "live" | "vod" | "series"
    val serverId: Int
)
