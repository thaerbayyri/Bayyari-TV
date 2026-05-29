package com.bayyari.tv.ui.movies;

import android.util.Log;
import androidx.lifecycle.ViewModel;
import com.bayyari.tv.data.api.models.MovieDetailResponse;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.local.entities.FavoriteEntity;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.domain.model.Movie;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.StateFlow;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0010\u00a8\u0006\""}, d2 = {"Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "movieRepository", "Lcom/bayyari/tv/data/repository/MovieRepository;", "favoriteDao", "Lcom/bayyari/tv/data/local/dao/FavoriteDao;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;)V", "_movie", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/bayyari/tv/domain/model/Movie;", "movie", "Lkotlinx/coroutines/flow/StateFlow;", "getMovie", "()Lkotlinx/coroutines/flow/StateFlow;", "_detail", "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;", "detail", "getDetail", "_loading", "", "loading", "getLoading", "_error", "", "error", "getError", "load", "", "streamId", "", "addFavorite", "app"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class MovieDetailViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.MovieRepository movieRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.domain.model.Movie> _movie = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.domain.model.Movie> movie = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.data.api.models.MovieDetailResponse> _detail = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.data.api.models.MovieDetailResponse> detail = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> _loading = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.Boolean> loading = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> _error = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.String> error = null;
    
    @javax.inject.Inject()
    public MovieDetailViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.MovieRepository movieRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.domain.model.Movie> getMovie() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.data.api.models.MovieDetailResponse> getDetail() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.lang.Boolean> getLoading() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.lang.String> getError() {
        return null;
    }
    
    public final void load(int streamId) {
    }
    
    public final void addFavorite(int streamId) {
    }
}