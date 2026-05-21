package com.bayyari.tv.data.api.models

import com.google.gson.annotations.SerializedName

/**
 * Catch-up programs are returned by the same EPG endpoints as live ones, but with
 * `has_archive=1`. This wrapper is kept as a distinct type so the repository layer can return
 * a focused catch-up list without leaking EPG types to UI.
 */
data class CatchUpProgramDto(
    @SerializedName("id") val id: String?,
    @SerializedName("title") val title: String?,         // Base64
    @SerializedName("start") val start: String?,
    @SerializedName("end") val end: String?,
    @SerializedName("description") val description: String?,
    @SerializedName("channel_id") val channelId: String?,
    @SerializedName("start_timestamp") val startTimestamp: String?,
    @SerializedName("stop_timestamp") val stopTimestamp: String?,
    @SerializedName("has_archive") val hasArchive: Int?
)
