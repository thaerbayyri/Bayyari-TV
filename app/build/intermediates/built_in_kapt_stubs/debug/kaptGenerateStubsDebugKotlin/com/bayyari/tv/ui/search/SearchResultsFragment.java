package com.bayyari.tv.ui.search;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.bayyari.tv.R;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.databinding.FragmentSearchResultsBinding;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.domain.model.Movie;
import com.bayyari.tv.domain.model.Series;
import com.bayyari.tv.ui.live.LivePlayerActivity;
import com.bayyari.tv.ui.live.TvLivePlayerActivity;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.StreamUrlBuilder;
import dagger.hilt.android.AndroidEntryPoint;
import javax.inject.Inject;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 52\u00020\u0001:\u00015B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010\'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,H\u0002J \u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020#H\u0002J\u0010\u00102\u001a\u0002032\u0006\u0010%\u001a\u00020&H\u0002J\b\u00104\u001a\u00020\u001fH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d\u00a8\u00066"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchResultsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModel", "Lcom/bayyari/tv/ui/search/SearchViewModel;", "getViewModel", "()Lcom/bayyari/tv/ui/search/SearchViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "getAuthRepository", "()Lcom/bayyari/tv/data/repository/AuthRepository;", "setAuthRepository", "(Lcom/bayyari/tv/data/repository/AuthRepository;)V", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "getPrefs", "()Lcom/bayyari/tv/util/EncryptedPrefs;", "setPrefs", "(Lcom/bayyari/tv/util/EncryptedPrefs;)V", "streamUrlBuilder", "Lcom/bayyari/tv/util/StreamUrlBuilder;", "getStreamUrlBuilder", "()Lcom/bayyari/tv/util/StreamUrlBuilder;", "setStreamUrlBuilder", "(Lcom/bayyari/tv/util/StreamUrlBuilder;)V", "onViewCreated", "", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "openLive", "channel", "Lcom/bayyari/tv/domain/model/Channel;", "openMovie", "movie", "Lcom/bayyari/tv/domain/model/Movie;", "openSeries", "series", "Lcom/bayyari/tv/domain/model/Series;", "navigateToDetail", "actionId", "", "destinationId", "args", "buildLiveUrl", "", "onDestroyView", "Companion", "app"})
public final class SearchResultsFragment extends androidx.fragment.app.Fragment {
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String ARG_TAB = "tab";
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "SearchResultsFragment";
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy viewModel$delegate = null;
    @org.jetbrains.annotations.Nullable()
    private com.bayyari.tv.databinding.FragmentSearchResultsBinding binding;
    @javax.inject.Inject()
    public com.bayyari.tv.data.repository.AuthRepository authRepository;
    @javax.inject.Inject()
    public com.bayyari.tv.util.EncryptedPrefs prefs;
    @javax.inject.Inject()
    public com.bayyari.tv.util.StreamUrlBuilder streamUrlBuilder;
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.ui.search.SearchResultsFragment.Companion Companion = null;
    
    public SearchResultsFragment() {
        super();
    }
    
    private final com.bayyari.tv.ui.search.SearchViewModel getViewModel() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.repository.AuthRepository getAuthRepository() {
        return null;
    }
    
    public final void setAuthRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.EncryptedPrefs getPrefs() {
        return null;
    }
    
    public final void setPrefs(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.StreamUrlBuilder getStreamUrlBuilder() {
        return null;
    }
    
    public final void setStreamUrlBuilder(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.StreamUrlBuilder p0) {
    }
    
    @java.lang.Override()
    public void onViewCreated(@org.jetbrains.annotations.NotNull()
    android.view.View view, @org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
    
    private final void openLive(com.bayyari.tv.domain.model.Channel channel) {
    }
    
    private final void openMovie(com.bayyari.tv.domain.model.Movie movie) {
    }
    
    private final void openSeries(com.bayyari.tv.domain.model.Series series) {
    }
    
    private final void navigateToDetail(int actionId, int destinationId, android.os.Bundle args) {
    }
    
    private final java.lang.String buildLiveUrl(com.bayyari.tv.domain.model.Channel channel) {
        return null;
    }
    
    @java.lang.Override()
    public void onDestroyView() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;", "", "<init>", "()V", "ARG_TAB", "", "TAG", "newInstance", "Lcom/bayyari/tv/ui/search/SearchResultsFragment;", "tab", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.ui.search.SearchResultsFragment newInstance(@org.jetbrains.annotations.NotNull()
        java.lang.String tab) {
            return null;
        }
    }
}