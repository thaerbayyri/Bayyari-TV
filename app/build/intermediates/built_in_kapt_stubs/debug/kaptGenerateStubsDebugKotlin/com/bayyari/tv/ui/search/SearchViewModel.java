package com.bayyari.tv.ui.search;

import androidx.lifecycle.ViewModel;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.domain.model.Movie;
import com.bayyari.tv.domain.model.Series;
import com.bayyari.tv.domain.usecase.SearchUseCase;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.StateFlow;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0013B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f\u00a2\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\u00a8\u0006\u0014"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "searchUseCase", "Lcom/bayyari/tv/domain/usecase/SearchUseCase;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/domain/usecase/SearchUseCase;)V", "_result", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;", "result", "Lkotlinx/coroutines/flow/StateFlow;", "getResult", "()Lkotlinx/coroutines/flow/StateFlow;", "search", "", "query", "", "SearchResult", "app"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class SearchViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.domain.usecase.SearchUseCase searchUseCase = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.ui.search.SearchViewModel.SearchResult> _result = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.ui.search.SearchViewModel.SearchResult> result = null;
    
    @javax.inject.Inject()
    public SearchViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.usecase.SearchUseCase searchUseCase) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.ui.search.SearchViewModel.SearchResult> getResult() {
        return null;
    }
    
    public final void search(@org.jetbrains.annotations.NotNull()
    java.lang.String query) {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003\u00a2\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H\u00c6\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0003H\u00c6\u0003J9\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f\u00a8\u0006\u001a"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;", "", "live", "", "Lcom/bayyari/tv/domain/model/Channel;", "movies", "Lcom/bayyari/tv/domain/model/Movie;", "series", "Lcom/bayyari/tv/domain/model/Series;", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getLive", "()Ljava/util/List;", "getMovies", "getSeries", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app"})
    public static final class SearchResult {
        @org.jetbrains.annotations.NotNull()
        private final java.util.List<com.bayyari.tv.domain.model.Channel> live = null;
        @org.jetbrains.annotations.NotNull()
        private final java.util.List<com.bayyari.tv.domain.model.Movie> movies = null;
        @org.jetbrains.annotations.NotNull()
        private final java.util.List<com.bayyari.tv.domain.model.Series> series = null;
        
        public SearchResult(@org.jetbrains.annotations.NotNull()
        java.util.List<com.bayyari.tv.domain.model.Channel> live, @org.jetbrains.annotations.NotNull()
        java.util.List<com.bayyari.tv.domain.model.Movie> movies, @org.jetbrains.annotations.NotNull()
        java.util.List<com.bayyari.tv.domain.model.Series> series) {
            super();
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<com.bayyari.tv.domain.model.Channel> getLive() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<com.bayyari.tv.domain.model.Movie> getMovies() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<com.bayyari.tv.domain.model.Series> getSeries() {
            return null;
        }
        
        public SearchResult() {
            super();
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<com.bayyari.tv.domain.model.Channel> component1() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<com.bayyari.tv.domain.model.Movie> component2() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<com.bayyari.tv.domain.model.Series> component3() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.ui.search.SearchViewModel.SearchResult copy(@org.jetbrains.annotations.NotNull()
        java.util.List<com.bayyari.tv.domain.model.Channel> live, @org.jetbrains.annotations.NotNull()
        java.util.List<com.bayyari.tv.domain.model.Movie> movies, @org.jetbrains.annotations.NotNull()
        java.util.List<com.bayyari.tv.domain.model.Series> series) {
            return null;
        }
        
        @java.lang.Override()
        public boolean equals(@org.jetbrains.annotations.Nullable()
        java.lang.Object other) {
            return false;
        }
        
        @java.lang.Override()
        public int hashCode() {
            return 0;
        }
        
        @java.lang.Override()
        @org.jetbrains.annotations.NotNull()
        public java.lang.String toString() {
            return null;
        }
    }
}