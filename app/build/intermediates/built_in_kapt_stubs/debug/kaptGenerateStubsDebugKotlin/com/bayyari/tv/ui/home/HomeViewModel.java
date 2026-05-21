package com.bayyari.tv.ui.home;

import androidx.lifecycle.ViewModel;
import com.bayyari.tv.data.local.dao.WatchHistoryDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.LiveRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.domain.model.Movie;
import com.bayyari.tv.domain.model.Series;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharingStarted;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\b\f\u0010\rJ\u0006\u0010\'\u001a\u00020(R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0012\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00130\u0018\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u00130\u0018\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001bR\u001d\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u00130\u0018\u00a2\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u0018\u00a2\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001bR\u0019\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0018\u00a2\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001b\u00a8\u0006)"}, d2 = {"Lcom/bayyari/tv/ui/home/HomeViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "liveRepository", "Lcom/bayyari/tv/data/repository/LiveRepository;", "movieRepository", "Lcom/bayyari/tv/data/repository/MovieRepository;", "seriesRepository", "Lcom/bayyari/tv/data/repository/SeriesRepository;", "watchHistoryDao", "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V", "serverId", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "continueWatching", "Lkotlinx/coroutines/flow/StateFlow;", "", "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;", "getContinueWatching", "()Lkotlinx/coroutines/flow/StateFlow;", "liveChannels", "Lkotlinx/coroutines/flow/Flow;", "Lcom/bayyari/tv/domain/model/Channel;", "getLiveChannels", "()Lkotlinx/coroutines/flow/Flow;", "latestMovies", "Lcom/bayyari/tv/domain/model/Movie;", "getLatestMovies", "latestSeries", "Lcom/bayyari/tv/domain/model/Series;", "getLatestSeries", "stats", "Lcom/bayyari/tv/ui/home/HomeStats;", "getStats", "featured", "getFeatured", "refreshAll", "", "app"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class HomeViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.LiveRepository liveRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.MovieRepository movieRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.SeriesRepository seriesRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.WatchHistoryDao watchHistoryDao = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Integer> serverId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.data.local.entities.WatchHistoryEntity>> continueWatching = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Channel>> liveChannels = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Movie>> latestMovies = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Series>> latestSeries = null;
    
    /**
     * Stats counts derived from the same observed flows.
     */
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<com.bayyari.tv.ui.home.HomeStats> stats = null;
    
    /**
     * First latest movie (used to populate the hero card).
     */
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<com.bayyari.tv.domain.model.Movie> featured = null;
    
    @javax.inject.Inject()
    public HomeViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.LiveRepository liveRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.MovieRepository movieRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.SeriesRepository seriesRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.WatchHistoryDao watchHistoryDao) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.data.local.entities.WatchHistoryEntity>> getContinueWatching() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Channel>> getLiveChannels() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Movie>> getLatestMovies() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Series>> getLatestSeries() {
        return null;
    }
    
    /**
     * Stats counts derived from the same observed flows.
     */
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<com.bayyari.tv.ui.home.HomeStats> getStats() {
        return null;
    }
    
    /**
     * First latest movie (used to populate the hero card).
     */
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<com.bayyari.tv.domain.model.Movie> getFeatured() {
        return null;
    }
    
    public final void refreshAll() {
    }
}