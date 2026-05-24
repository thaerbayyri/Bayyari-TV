package com.bayyari.tv.data.api.models

import com.google.gson.annotations.JsonAdapter
import com.google.gson.annotations.SerializedName
import com.google.gson.JsonElement

/**
 * Response shape for `action=get_series_info`. The `episodes` field is unusual: the upstream
 * API returns a JSON object keyed by season number, e.g. {"1": [...], "2": [...]}, which we
 * deserialize as a Map.
 */
data class SeriesInfoDto(
    @SerializedName("seasons") val seasons: List<SeasonDto>?,
    @SerializedName("info") val info: SeriesInfoBlock?,
    @SerializedName("episodes") val episodes: Map<String, List<EpisodeDto>>?
)

data class SeasonDto(
    @SerializedName("air_date") val airDate: String?,
    @SerializedName("episode_count") val episodeCount: Int?,
    @SerializedName("id") val id: Int?,
    @SerializedName("name") val name: String?,
    @SerializedName("overview") val overview: String?,
    @SerializedName("season_number") val seasonNumber: Int?,
    @SerializedName("cover") val cover: String?,
    @SerializedName("cover_big") val coverBig: String?
)

data class SeriesInfoBlock(
    @SerializedName("name") val name: String?,
    @SerializedName("cover") val cover: String?,
    @SerializedName("plot") val plot: String?,
    @SerializedName("cast") val cast: String?,
    @SerializedName("director") val director: String?,
    @SerializedName("genre") val genre: String?,
    @SerializedName("releaseDate") val releaseDate: String?,
    @SerializedName("last_modified") val lastModified: String?,
    @SerializedName("rating") val rating: String?,
    @SerializedName("rating_5based") val rating5Based: Double?,
    @SerializedName("backdrop_path") val backdropPath: List<String>?,
    @SerializedName("youtube_trailer") val youtubeTrailer: String?,
    @SerializedName("episode_run_time") val episodeRuntime: String?,
    @SerializedName("category_id") val categoryId: String?
)

data class EpisodeDto(
    @SerializedName("id") val id: String?,            // stream_id (string in Xtream)
    @SerializedName("episode_num") val episodeNum: Any?,
    @SerializedName("title") val title: String?,
    @SerializedName("container_extension") val containerExtension: String?,
    @SerializedName("info") val info: EpisodeInfo?,
    @SerializedName("season") val season: Int?,
    @SerializedName("custom_sid") val customSid: String?,
    @SerializedName("added") val added: String?,
    @SerializedName("direct_source") val directSource: String?,
    @SerializedName("subtitles") val subtitles: JsonElement?,
    @SerializedName("subtitle") val subtitle: JsonElement?,
    @SerializedName("subtitle_url") val subtitleUrl: JsonElement?
)

data class EpisodeInfo(
    @SerializedName("movie_image") val movieImage: String?,
    @SerializedName("plot") val plot: String?,
    @SerializedName("duration_secs") val durationSecs: Int?,
    @SerializedName("duration") val duration: String?,
    @SerializedName("rating") val rating: String?,
    @SerializedName("releasedate") val releaseDate: String?,
    @SerializedName("season") val season: Int?,
    @SerializedName("tmdb_id") val tmdbId: String?,
    @SerializedName("subtitles") val subtitles: JsonElement?,
    @SerializedName("subtitle") val subtitle: JsonElement?,
    @SerializedName("subtitle_url") val subtitleUrl: JsonElement?
)
