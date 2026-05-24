package com.bayyari.tv.domain.model

data class WatchEntry(
    val id: Int = 0,
    val contentId: Int,
    val contentType: String,
    val positionMs: Long,
    val durationMs: Long,
    val watchedAt: Long,
    val serverId: Int,
    val title: String = "",
    val poster: String = ""
)
