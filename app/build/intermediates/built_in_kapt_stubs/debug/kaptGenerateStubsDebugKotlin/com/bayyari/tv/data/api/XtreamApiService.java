package com.bayyari.tv.data.api;

import com.bayyari.tv.data.api.models.CategoryDto;
import com.bayyari.tv.data.api.models.EpgResponse;
import com.bayyari.tv.data.api.models.LiveStreamDto;
import com.bayyari.tv.data.api.models.LoginResponse;
import com.bayyari.tv.data.api.models.MovieDetailResponse;
import com.bayyari.tv.data.api.models.MovieDto;
import com.bayyari.tv.data.api.models.SeriesDto;
import com.bayyari.tv.data.api.models.SeriesInfoDto;
import retrofit2.http.GET;
import retrofit2.http.Query;
import retrofit2.http.Url;

/**
 * Xtream Codes player_api.php interface.
 *
 * All endpoints use `@Url` for the base or `@GET("player_api.php")` because the active server
 * URL is dynamic (chosen from the encrypted server list at runtime). Retrofit is configured
 * with a placeholder base URL; the [com.bayyari.tv.data.repository.AuthRepository] (and others)
 * pass a fully-qualified URL via the OkHttp interceptor mechanism.
 */
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0007J2\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u000eJ<\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u00052\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0011J2\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u000eJ2\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\t2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u000eJ6\u0010\u0016\u001a\u00020\u00172\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0001\u0010\u0018\u001a\u00020\u00192\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u001aJ2\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u000eJ2\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\t2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u000eJ6\u0010\u001e\u001a\u00020\u001f2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0001\u0010 \u001a\u00020\u00192\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u001aJ2\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00130\t2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u000eJ@\u0010\"\u001a\u00020#2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0001\u0010$\u001a\u00020\u00192\b\b\u0003\u0010%\u001a\u00020\u00192\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010&J6\u0010\'\u001a\u00020#2\b\b\u0001\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\f\u001a\u00020\u00052\b\b\u0001\u0010$\u001a\u00020\u00192\b\b\u0003\u0010\r\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u001aJ\u001e\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)2\b\b\u0001\u0010+\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010,\u00a8\u0006-\u00c0\u0006\u0003"}, d2 = {"Lcom/bayyari/tv/data/api/XtreamApiService;", "", "login", "Lcom/bayyari/tv/data/api/models/LoginResponse;", "username", "", "password", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLiveStreams", "", "Lcom/bayyari/tv/data/api/models/LiveStreamDto;", "u", "p", "action", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLiveStreamsInCategory", "categoryId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLiveCategories", "Lcom/bayyari/tv/data/api/models/CategoryDto;", "getVodStreams", "Lcom/bayyari/tv/data/api/models/MovieDto;", "getVodInfo", "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;", "vodId", "", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVodCategories", "getSeries", "Lcom/bayyari/tv/data/api/models/SeriesDto;", "getSeriesInfo", "Lcom/bayyari/tv/data/api/models/SeriesInfoDto;", "seriesId", "getSeriesCategories", "getShortEpg", "Lcom/bayyari/tv/data/api/models/EpgResponse;", "streamId", "limit", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSimpleDataTable", "fetchRaw", "Lretrofit2/Response;", "Lokhttp3/ResponseBody;", "url", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"})
public abstract interface XtreamApiService {
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object login(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String username, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String password, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.api.models.LoginResponse> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getLiveStreams(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.api.models.LiveStreamDto>> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getLiveStreamsInCategory(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "category_id")
    @org.jetbrains.annotations.NotNull()
    java.lang.String categoryId, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.api.models.LiveStreamDto>> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getLiveCategories(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.api.models.CategoryDto>> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getVodStreams(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.api.models.MovieDto>> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getVodInfo(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "vod_id")
    int vodId, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.api.models.MovieDetailResponse> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getVodCategories(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.api.models.CategoryDto>> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getSeries(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.api.models.SeriesDto>> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getSeriesInfo(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "series_id")
    int seriesId, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.api.models.SeriesInfoDto> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getSeriesCategories(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.api.models.CategoryDto>> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getShortEpg(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "stream_id")
    int streamId, @retrofit2.http.Query(value = "limit")
    int limit, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.api.models.EpgResponse> $completion);
    
    @retrofit2.http.GET(value = "player_api.php")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getSimpleDataTable(@retrofit2.http.Query(value = "username")
    @org.jetbrains.annotations.NotNull()
    java.lang.String u, @retrofit2.http.Query(value = "password")
    @org.jetbrains.annotations.NotNull()
    java.lang.String p, @retrofit2.http.Query(value = "stream_id")
    int streamId, @retrofit2.http.Query(value = "action")
    @org.jetbrains.annotations.NotNull()
    java.lang.String action, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.api.models.EpgResponse> $completion);
    
    /**
     * Raw fetch for an arbitrary URL (used for M3U downloads).
     */
    @retrofit2.http.GET()
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object fetchRaw(@retrofit2.http.Url()
    @org.jetbrains.annotations.NotNull()
    java.lang.String url, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super retrofit2.Response<okhttp3.ResponseBody>> $completion);
    
    /**
     * Xtream Codes player_api.php interface.
     *
     * All endpoints use `@Url` for the base or `@GET("player_api.php")` because the active server
     * URL is dynamic (chosen from the encrypted server list at runtime). Retrofit is configured
     * with a placeholder base URL; the [com.bayyari.tv.data.repository.AuthRepository] (and others)
     * pass a fully-qualified URL via the OkHttp interceptor mechanism.
     */
    @kotlin.Metadata(mv = {2, 2, 0}, k = 3, xi = 48)
    public static final class DefaultImpls {
    }
}