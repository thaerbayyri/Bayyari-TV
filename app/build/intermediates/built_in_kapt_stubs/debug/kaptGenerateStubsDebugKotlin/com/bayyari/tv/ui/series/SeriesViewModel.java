package com.bayyari.tv.ui.series;

import androidx.lifecycle.ViewModel;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import com.bayyari.tv.domain.model.Category;
import com.bayyari.tv.domain.model.Series;
import com.bayyari.tv.util.EncryptedPrefs;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.SharingStarted;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\b\b\u0010\tJ\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u000eJ\u0010\u0010&\u001a\u00020#2\b\u0010\'\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010(\u001a\u00020#2\u0006\u0010%\u001a\u00020\u0017J\u0006\u0010)\u001a\u00020\u0017J\u000e\u0010*\u001a\u00020#2\u0006\u0010\'\u001a\u00020\u000eJ\u0006\u0010+\u001a\u00020#R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000b\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00130\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00150\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001a0\u0019\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u0019\u00a2\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001f\u00a8\u0006,"}, d2 = {"Lcom/bayyari/tv/ui/series/SeriesViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "seriesRepository", "Lcom/bayyari/tv/data/repository/SeriesRepository;", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/util/EncryptedPrefs;)V", "serverId", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "query", "", "selectedCategoryId", "getSelectedCategoryId", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "categoryNames", "", "hiddenCategoryIds", "", "sortMode", "Lcom/bayyari/tv/ui/series/SeriesSortMode;", "allSeries", "Lkotlinx/coroutines/flow/StateFlow;", "", "Lcom/bayyari/tv/domain/model/Series;", "categories", "Lcom/bayyari/tv/domain/model/Category;", "getCategories", "()Lkotlinx/coroutines/flow/StateFlow;", "series", "getSeries", "refresh", "", "setQuery", "value", "selectCategory", "id", "setSortMode", "getSortMode", "hideCategory", "reloadPreferences", "app"})
@kotlin.OptIn(markerClass = {kotlinx.coroutines.ExperimentalCoroutinesApi.class})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class SeriesViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.SeriesRepository seriesRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.EncryptedPrefs prefs = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Integer> serverId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> query = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> selectedCategoryId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.Map<java.lang.String, java.lang.String>> categoryNames = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<java.lang.String>> hiddenCategoryIds = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.ui.series.SeriesSortMode> sortMode = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Series>> allSeries = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Category>> categories = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Series>> series = null;
    
    @javax.inject.Inject()
    public SeriesViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.SeriesRepository seriesRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs prefs) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> getSelectedCategoryId() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Category>> getCategories() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Series>> getSeries() {
        return null;
    }
    
    public final void refresh() {
    }
    
    public final void setQuery(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    public final void selectCategory(@org.jetbrains.annotations.Nullable()
    java.lang.String id) {
    }
    
    public final void setSortMode(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.ui.series.SeriesSortMode value) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.ui.series.SeriesSortMode getSortMode() {
        return null;
    }
    
    public final void hideCategory(@org.jetbrains.annotations.NotNull()
    java.lang.String id) {
    }
    
    public final void reloadPreferences() {
    }
}