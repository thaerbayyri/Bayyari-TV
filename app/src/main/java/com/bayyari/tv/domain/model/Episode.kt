package com.bayyari.tv.domain.model

data class Episode(
    val id: Int,
    val season: Int,
    val episodeNumber: Int,
    val title: String,
    val plot: String,
    val durationSecs: Int,
    val rating: String,
    val releaseDate: String,
    val containerExtension: String,
    val poster: String,
    val subtitleTracks: List<SubtitleTrack> = emptyList()
)
