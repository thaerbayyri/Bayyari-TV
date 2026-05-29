package com.bayyari.tv.ui.home;

import androidx.lifecycle.ViewModel;
import android.util.Log;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.local.entities.FavoriteEntity;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.LiveRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import com.bayyari.tv.data.repository.WatchHistoryRepository;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.domain.model.Movie;
import com.bayyari.tv.domain.model.Series;
import com.bayyari.tv.domain.model.WatchEntry;
import com.bayyari.tv.ui.favorites.FavoriteItem;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharingStarted;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 12\u00020\u0001:\u00011B9\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u00a2\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020(R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00150\u0014\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u00150\u001a\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001d\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u00150\u001a\u00a2\u0006\b\n\u0000\u001a\u0004\b \u0010\u001dR\u001d\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u00150\u001a\u00a2\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001dR\u0017\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u001a\u00a2\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001dR\u0019\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010(0\u001a\u00a2\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001dR\u001d\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u00150\u0014\u00a2\u0006\b\n\u0000\u001a\u0004\b,\u0010\u0018\u00a8\u00062"}, d2 = {"Lcom/bayyari/tv/ui/home/HomeViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "liveRepository", "Lcom/bayyari/tv/data/repository/LiveRepository;", "movieRepository", "Lcom/bayyari/tv/data/repository/MovieRepository;", "seriesRepository", "Lcom/bayyari/tv/data/repository/SeriesRepository;", "watchHistoryRepository", "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;", "favoriteDao", "Lcom/bayyari/tv/data/local/dao/FavoriteDao;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/repository/WatchHistoryRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;)V", "serverId", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "continueWatching", "Lkotlinx/coroutines/flow/StateFlow;", "", "Lcom/bayyari/tv/domain/model/WatchEntry;", "getContinueWatching", "()Lkotlinx/coroutines/flow/StateFlow;", "liveChannels", "Lkotlinx/coroutines/flow/Flow;", "Lcom/bayyari/tv/domain/model/Channel;", "getLiveChannels", "()Lkotlinx/coroutines/flow/Flow;", "latestMovies", "Lcom/bayyari/tv/domain/model/Movie;", "getLatestMovies", "latestSeries", "Lcom/bayyari/tv/domain/model/Series;", "getLatestSeries", "stats", "Lcom/bayyari/tv/ui/home/HomeStats;", "getStats", "featured", "Lcom/bayyari/tv/ui/home/FeaturedItem;", "getFeatured", "homeFavorites", "Lcom/bayyari/tv/ui/favorites/FavoriteItem;", "getHomeFavorites", "refreshAll", "", "addFeaturedFavorite", "item", "Companion", "app"})
@dagger.hilt.android.lifecycle.HiltViewModel()
@kotlin.OptIn(markerClass = {kotlinx.coroutines.ExperimentalCoroutinesApi.class})
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
    private final com.bayyari.tv.data.repository.WatchHistoryRepository watchHistoryRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Integer> serverId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.WatchEntry>> continueWatching = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Channel>> liveChannels = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Movie>> latestMovies = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Series>> latestSeries = null;
    
    /**
     * Real counts from lightweight COUNT(*) queries — avoids loading full catalogs into memory.
     */
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<com.bayyari.tv.ui.home.HomeStats> stats = null;
    
    /**
     * Hero "Featured Tonight" — picks the first movie or series that actually has a cover image.
     * Movies are preferred; series are the fallback when no movie has a poster.
     */
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.Flow<com.bayyari.tv.ui.home.FeaturedItem> featured = null;
    
    /**
     * Up to 20 favorites for the home page row — same logic as FavoritesViewModel.
     */
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.ui.favorites.FavoriteItem>> homeFavorites = null;
    @java.lang.Deprecated()
    public static final int HOME_PREVIEW_LIMIT = 20;
    @org.jetbrains.annotations.NotNull()
    private static final com.bayyari.tv.ui.home.HomeViewModel.Companion Companion = null;
    
    @javax.inject.Inject()
    public HomeViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.LiveRepository liveRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.MovieRepository movieRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.SeriesRepository seriesRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.WatchHistoryRepository watchHistoryRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.WatchEntry>> getContinueWatching() {
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
     * Real counts from lightweight COUNT(*) queries — avoids loading full catalogs into memory.
     */
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<com.bayyari.tv.ui.home.HomeStats> getStats() {
        return null;
    }
    
    /**
     * Hero "Featured Tonight" — picks the first movie or series that actually has a cover image.
     * Movies are preferred; series are the fallback when no movie has a poster.
     */
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<com.bayyari.tv.ui.home.FeaturedItem> getFeatured() {
        return null;
    }
    
    /**
     * Up to 20 favorites for the home page row — same logic as FavoritesViewModel.
     */
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.ui.favorites.FavoriteItem>> getHomeFavorites() {
        return null;
    }
    
    public final void refreshAll() {
    }
    
    public final void addFeaturedFavorite(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.ui.home.FeaturedItem item) {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"}, d2 = {"Lcom/bayyari/tv/ui/home/HomeViewModel$Companion;", "", "<init>", "()V", "HOME_PREVIEW_LIMIT", "", "app"})
    static final class Companion {
        
        private Companion() {
            super();
        }
    }
}