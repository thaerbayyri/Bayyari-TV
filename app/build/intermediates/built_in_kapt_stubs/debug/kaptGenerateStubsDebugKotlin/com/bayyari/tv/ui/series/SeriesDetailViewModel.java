package com.bayyari.tv.ui.series;

import android.util.Log;
import androidx.lifecycle.ViewModel;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.local.entities.FavoriteEntity;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import com.bayyari.tv.domain.model.Episode;
import com.bayyari.tv.domain.model.Season;
import com.bayyari.tv.domain.model.Series;
import com.bayyari.tv.util.SubtitleTrackExtractor;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.StateFlow;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\b\b\u0010\tJ\u000e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0018J\u000e\u0010(\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0018J\u000e\u0010)\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R&\u0010\u0016\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00120\u00170\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R)\u0010\u001a\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00120\u00170\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0010R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0010R\u0016\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u000e\u00a2\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0010R\u000e\u0010$\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"}, d2 = {"Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "seriesRepository", "Lcom/bayyari/tv/data/repository/SeriesRepository;", "favoriteDao", "Lcom/bayyari/tv/data/local/dao/FavoriteDao;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;)V", "_series", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/bayyari/tv/domain/model/Series;", "series", "Lkotlinx/coroutines/flow/StateFlow;", "getSeries", "()Lkotlinx/coroutines/flow/StateFlow;", "_seasons", "", "Lcom/bayyari/tv/domain/model/Season;", "seasons", "getSeasons", "_episodesBySeason", "", "", "Lcom/bayyari/tv/domain/model/Episode;", "episodesBySeason", "getEpisodesBySeason", "_loading", "", "loading", "getLoading", "_error", "", "error", "getError", "loadedSeriesId", "loadIfNeeded", "", "seriesId", "load", "addFavorite", "app"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class SeriesDetailViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.SeriesRepository seriesRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.domain.model.Series> _series = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.domain.model.Series> series = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.List<com.bayyari.tv.domain.model.Season>> _seasons = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Season>> seasons = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.Map<java.lang.Integer, java.util.List<com.bayyari.tv.domain.model.Episode>>> _episodesBySeason = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.Map<java.lang.Integer, java.util.List<com.bayyari.tv.domain.model.Episode>>> episodesBySeason = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> _loading = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.Boolean> loading = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> _error = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.lang.String> error = null;
    private int loadedSeriesId = 0;
    
    @javax.inject.Inject()
    public SeriesDetailViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.SeriesRepository seriesRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.domain.model.Series> getSeries() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Season>> getSeasons() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.Map<java.lang.Integer, java.util.List<com.bayyari.tv.domain.model.Episode>>> getEpisodesBySeason() {
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
    
    public final void loadIfNeeded(int seriesId) {
    }
    
    public final void load(int seriesId) {
    }
    
    public final void addFavorite(int seriesId) {
    }
}