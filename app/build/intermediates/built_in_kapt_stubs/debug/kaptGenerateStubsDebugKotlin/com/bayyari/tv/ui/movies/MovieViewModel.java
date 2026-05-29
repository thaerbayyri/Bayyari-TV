package com.bayyari.tv.ui.movies;

import androidx.lifecycle.ViewModel;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.domain.model.Category;
import com.bayyari.tv.domain.model.Movie;
import com.bayyari.tv.util.EncryptedPrefs;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.SharingStarted;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001/B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\b\b\u0010\tJ\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u000eJ\u000e\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020\u0010J\u0010\u0010(\u001a\u00020#2\b\u0010)\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010*\u001a\u00020#2\u0006\u0010)\u001a\u00020\u000eJ\u0006\u0010+\u001a\u00020#J\u0010\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020.H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000b\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R \u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00150\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00170\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001a0\u0019\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u0019\u00a2\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001f\u00a8\u00060"}, d2 = {"Lcom/bayyari/tv/ui/movies/MovieViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "movieRepository", "Lcom/bayyari/tv/data/repository/MovieRepository;", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/util/EncryptedPrefs;)V", "serverId", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "query", "", "sort", "Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;", "selectedCategoryId", "getSelectedCategoryId", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "categoryNames", "", "hiddenCategoryIds", "", "allMovies", "Lkotlinx/coroutines/flow/StateFlow;", "", "Lcom/bayyari/tv/domain/model/Movie;", "categories", "Lcom/bayyari/tv/domain/model/Category;", "getCategories", "()Lkotlinx/coroutines/flow/StateFlow;", "movies", "getMovies", "refresh", "", "setQuery", "value", "setSort", "sortBy", "selectCategory", "id", "hideCategory", "reloadPreferences", "yearFromEpoch", "epochSeconds", "", "Sort", "app"})
@kotlin.OptIn(markerClass = {kotlinx.coroutines.ExperimentalCoroutinesApi.class})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class MovieViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.MovieRepository movieRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.EncryptedPrefs prefs = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Integer> serverId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> query = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.ui.movies.MovieViewModel.Sort> sort = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> selectedCategoryId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.Map<java.lang.String, java.lang.String>> categoryNames = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<java.lang.String>> hiddenCategoryIds = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Movie>> allMovies = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Category>> categories = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Movie>> movies = null;
    
    @javax.inject.Inject()
    public MovieViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.MovieRepository movieRepository, @org.jetbrains.annotations.NotNull()
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
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Movie>> getMovies() {
        return null;
    }
    
    public final void refresh() {
    }
    
    public final void setQuery(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    public final void setSort(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.ui.movies.MovieViewModel.Sort sortBy) {
    }
    
    public final void selectCategory(@org.jetbrains.annotations.Nullable()
    java.lang.String id) {
    }
    
    public final void hideCategory(@org.jetbrains.annotations.NotNull()
    java.lang.String id) {
    }
    
    public final void reloadPreferences() {
    }
    
    private final int yearFromEpoch(long epochSeconds) {
        return 0;
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007\u00a8\u0006\b"}, d2 = {"Lcom/bayyari/tv/ui/movies/MovieViewModel$Sort;", "", "<init>", "(Ljava/lang/String;I)V", "NAME", "RATING", "YEAR", "ADDED", "app"})
    public static enum Sort {
        /*public static final*/ NAME /* = new NAME() */,
        /*public static final*/ RATING /* = new RATING() */,
        /*public static final*/ YEAR /* = new YEAR() */,
        /*public static final*/ ADDED /* = new ADDED() */;
        
        Sort() {
        }
        
        @org.jetbrains.annotations.NotNull()
        public static kotlin.enums.EnumEntries<com.bayyari.tv.ui.movies.MovieViewModel.Sort> getEntries() {
            return null;
        }
    }
}