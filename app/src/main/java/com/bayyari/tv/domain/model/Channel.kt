package com.bayyari.tv.domain.model

/**
 * Domain Channel. Mirrors [com.bayyari.tv.data.local.entities.ChannelEntity] plus an optional
 * [directStreamUrl] for M3U-sourced channels that bypass the Xtream URL builder.
 */
data class Channel(
    val streamId: Int,
    val name: String,
    val streamIcon: String,
    val categoryId: String,
    val categoryName: String = "",
    val epgChannelId: String,
    val tvArchive: Int,
    val tvArchiveDuration: Int,
    val addedEpochSeconds: Long,
    val serverId: Int,
    val directStreamUrl: String? = null
) {
    val supportsCatchUp: Boolean get() = tvArchive == 1 && tvArchiveDuration > 0
}
