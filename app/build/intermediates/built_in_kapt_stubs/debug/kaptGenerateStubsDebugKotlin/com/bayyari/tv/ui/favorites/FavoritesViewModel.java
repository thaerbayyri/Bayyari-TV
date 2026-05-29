package com.bayyari.tv.ui.favorites;

import android.util.Log;
import androidx.lifecycle.ViewModel;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.LiveRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.flow.SharingStarted;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000f\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015\u00a8\u0006\u0019"}, d2 = {"Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "favoriteDao", "Lcom/bayyari/tv/data/local/dao/FavoriteDao;", "liveRepository", "Lcom/bayyari/tv/data/repository/LiveRepository;", "movieRepository", "Lcom/bayyari/tv/data/repository/MovieRepository;", "seriesRepository", "Lcom/bayyari/tv/data/repository/SeriesRepository;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V", "serverId", "Lkotlinx/coroutines/flow/StateFlow;", "", "favorites", "", "Lcom/bayyari/tv/ui/favorites/FavoriteItem;", "getFavorites", "()Lkotlinx/coroutines/flow/StateFlow;", "removeFavorite", "", "item", "app"})
@kotlin.OptIn(markerClass = {kotlinx.coroutines.ExperimentalCoroutinesApi.class})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class FavoritesViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.LiveRepository liveRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.MovieRepository movieRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.SeriesRepository seriesRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.Integer> serverId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.ui.favorites.FavoriteItem>> favorites = null;
    
    @javax.inject.Inject()
    public FavoritesViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.LiveRepository liveRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.MovieRepository movieRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.SeriesRepository seriesRepository) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.ui.favorites.FavoriteItem>> getFavorites() {
        return null;
    }
    
    public final void removeFavorite(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.ui.favorites.FavoriteItem item) {
    }
}