package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.api.models.MovieDetailResponse;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.entities.MovieEntity;
import com.bayyari.tv.domain.model.Movie;
import com.bayyari.tv.domain.model.Server;
import com.bayyari.tv.util.Constants;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import javax.inject.Inject;
import javax.inject.Singleton;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\nJ$\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\t2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0016\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J \u0010\u0015\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u0017J$\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u001cJ$\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010 J\"\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\"2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u001e\u0010#\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010&J\f\u0010\'\u001a\u00020\u000e*\u00020(H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"}, d2 = {"Lcom/bayyari/tv/data/repository/MovieRepository;", "", "api", "Lcom/bayyari/tv/data/api/XtreamApiService;", "movieDao", "Lcom/bayyari/tv/data/local/dao/MovieDao;", "<init>", "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/MovieDao;)V", "observeMovieCount", "Lkotlinx/coroutines/flow/Flow;", "", "serverId", "observeMovies", "", "Lcom/bayyari/tv/domain/model/Movie;", "categoryId", "", "refresh", "server", "Lcom/bayyari/tv/domain/model/Server;", "(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMovie", "streamId", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "latest", "limit", "hasCachedMovies", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cachedMovieCount", "search", "query", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchCategoryNames", "", "getMovieDetail", "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;", "vodId", "(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toDomain", "Lcom/bayyari/tv/data/local/entities/MovieEntity;", "app"})
public final class MovieRepository {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.api.XtreamApiService api = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.MovieDao movieDao = null;
    
    @javax.inject.Inject()
    public MovieRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.api.XtreamApiService api, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.MovieDao movieDao) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.lang.Integer> observeMovieCount(int serverId) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Movie>> observeMovies(int serverId, @org.jetbrains.annotations.Nullable()
    java.lang.String categoryId) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object refresh(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Integer> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object getMovie(int serverId, int streamId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.domain.model.Movie> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object latest(int serverId, int limit, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.domain.model.Movie>> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object hasCachedMovies(int serverId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Boolean> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object cachedMovieCount(int serverId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Integer> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object search(int serverId, @org.jetbrains.annotations.NotNull()
    java.lang.String query, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.domain.model.Movie>> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object fetchCategoryNames(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.Map<java.lang.String, java.lang.String>> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object getMovieDetail(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server, int vodId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.api.models.MovieDetailResponse> $completion) {
        return null;
    }
    
    private final com.bayyari.tv.domain.model.Movie toDomain(com.bayyari.tv.data.local.entities.MovieEntity $this$toDomain) {
        return null;
    }
}