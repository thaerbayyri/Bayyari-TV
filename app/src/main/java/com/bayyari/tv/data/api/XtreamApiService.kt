package com.bayyari.tv.data.api

import com.bayyari.tv.data.api.models.CategoryDto
import com.bayyari.tv.data.api.models.EpgResponse
import com.bayyari.tv.data.api.models.LiveStreamDto
import com.bayyari.tv.data.api.models.LoginResponse
import com.bayyari.tv.data.api.models.MovieDetailResponse
import com.bayyari.tv.data.api.models.MovieDto
import com.bayyari.tv.data.api.models.SeriesDto
import com.bayyari.tv.data.api.models.SeriesInfoDto
import retrofit2.http.GET
import retrofit2.http.Query
import retrofit2.http.Url

/**
 * Xtream Codes player_api.php interface.
 *
 * All endpoints use `@Url` for the base or `@GET("player_api.php")` because the active server
 * URL is dynamic (chosen from the encrypted server list at runtime). Retrofit is configured
 * with a placeholder base URL; the [com.bayyari.tv.data.repository.AuthRepository] (and others)
 * pass a fully-qualified URL via the OkHttp interceptor mechanism.
 */
interface XtreamApiService {

    @GET("player_api.php")
    suspend fun login(
        @Query("username") username: String,
        @Query("password") password: String
    ): LoginResponse

    // Live TV
    @GET("player_api.php")
    suspend fun getLiveStreams(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("action") action: String = "get_live_streams"
    ): List<LiveStreamDto>

    @GET("player_api.php")
    suspend fun getLiveStreamsInCategory(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("category_id") categoryId: String,
        @Query("action") action: String = "get_live_streams"
    ): List<LiveStreamDto>

    @GET("player_api.php")
    suspend fun getLiveCategories(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("action") action: String = "get_live_categories"
    ): List<CategoryDto>

    // VOD / Movies
    @GET("player_api.php")
    suspend fun getVodStreams(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("action") action: String = "get_vod_streams"
    ): List<MovieDto>

    @GET("player_api.php")
    suspend fun getVodInfo(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("vod_id") vodId: Int,
        @Query("action") action: String = "get_vod_info"
    ): MovieDetailResponse

    @GET("player_api.php")
    suspend fun getVodCategories(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("action") action: String = "get_vod_categories"
    ): List<CategoryDto>

    // Series
    @GET("player_api.php")
    suspend fun getSeries(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("action") action: String = "get_series"
    ): List<SeriesDto>

    @GET("player_api.php")
    suspend fun getSeriesInfo(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("series_id") seriesId: Int,
        @Query("action") action: String = "get_series_info"
    ): SeriesInfoDto

    @GET("player_api.php")
    suspend fun getSeriesCategories(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("action") action: String = "get_series_categories"
    ): List<CategoryDto>

    // EPG
    @GET("player_api.php")
    suspend fun getShortEpg(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("stream_id") streamId: Int,
        @Query("limit") limit: Int = 10,
        @Query("action") action: String = "get_short_epg"
    ): EpgResponse

    @GET("player_api.php")
    suspend fun getSimpleDataTable(
        @Query("username") u: String,
        @Query("password") p: String,
        @Query("stream_id") streamId: Int,
        @Query("action") action: String = "get_simple_data_table"
    ): EpgResponse

    /** Raw fetch for an arbitrary URL (used for M3U downloads). */
    @GET
    suspend fun fetchRaw(@Url url: String): retrofit2.Response<okhttp3.ResponseBody>
}
