package com.bayyari.tv.data.api.models

import com.google.gson.annotations.SerializedName
import com.google.gson.JsonElement

data class MovieDto(
    @SerializedName("num") val num: Int?,
    @SerializedName("name") val name: String?,
    @SerializedName("stream_type") val streamType: String?,
    @SerializedName("stream_id") val streamId: Int,
    @SerializedName("stream_icon") val streamIcon: String?,
    @SerializedName("rating") val rating: String?,
    @SerializedName("rating_5based") val rating5Based: Double?,
    @SerializedName("added") val added: String?,
    @SerializedName("category_id") val categoryId: String?,
    @SerializedName("container_extension") val containerExtension: String?,
    @SerializedName("custom_sid") val customSid: String?,
    @SerializedName("direct_source") val directSource: String?
)

data class MovieDetailResponse(
    @SerializedName("info") val info: MovieInfo?,
    @SerializedName("movie_data") val movieData: MovieDataDto?
)

data class MovieInfo(
    @SerializedName("movie_image") val movieImage: String?,
    @SerializedName("backdrop_path") val backdropPath: List<String>?,
    @SerializedName("tmdb_id") val tmdbId: String?,
    @SerializedName("youtube_trailer") val youtubeTrailer: String?,
    @SerializedName("genre") val genre: String?,
    @SerializedName("plot") val plot: String?,
    @SerializedName("cast") val cast: String?,
    @SerializedName("rating") val rating: String?,
    @SerializedName("director") val director: String?,
    @SerializedName("releasedate") val releaseDate: String?,
    @SerializedName("duration_secs") val durationSecs: Int?,
    @SerializedName("duration") val duration: String?,
    @SerializedName("country") val country: String?,
    @SerializedName("subtitles") val subtitles: JsonElement?,
    @SerializedName("subtitle") val subtitle: JsonElement?,
    @SerializedName("subtitle_url") val subtitleUrl: JsonElement?
)

data class MovieDataDto(
    @SerializedName("stream_id") val streamId: Int?,
    @SerializedName("name") val name: String?,
    @SerializedName("added") val added: String?,
    @SerializedName("category_id") val categoryId: String?,
    @SerializedName("container_extension") val containerExtension: String?,
    @SerializedName("custom_sid") val customSid: String?,
    @SerializedName("direct_source") val directSource: String?,
    @SerializedName("subtitles") val subtitles: JsonElement?,
    @SerializedName("subtitle") val subtitle: JsonElement?,
    @SerializedName("subtitle_url") val subtitleUrl: JsonElement?
)
