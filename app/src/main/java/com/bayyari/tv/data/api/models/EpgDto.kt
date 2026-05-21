package com.bayyari.tv.data.api.models

import com.google.gson.annotations.SerializedName

data class EpgResponse(
    @SerializedName("epg_listings") val listings: List<EpgListingDto>?
)

data class EpgListingDto(
    @SerializedName("id") val id: String?,
    @SerializedName("epg_id") val epgId: String?,
    @SerializedName("title") val title: String?,           // Base64 in Xtream responses
    @SerializedName("lang") val lang: String?,
    @SerializedName("start") val start: String?,           // "yyyy-MM-dd HH:mm:ss"
    @SerializedName("end") val end: String?,
    @SerializedName("description") val description: String?, // Base64
    @SerializedName("channel_id") val channelId: String?,
    @SerializedName("start_timestamp") val startTimestamp: String?, // epoch seconds, may be null
    @SerializedName("stop_timestamp") val stopTimestamp: String?,
    @SerializedName("now_playing") val nowPlaying: Int?,
    @SerializedName("has_archive") val hasArchive: Int?
)
