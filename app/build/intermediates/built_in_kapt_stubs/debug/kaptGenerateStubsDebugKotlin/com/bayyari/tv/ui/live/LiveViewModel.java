package com.bayyari.tv.ui.live;

import androidx.lifecycle.ViewModel;
import android.util.Log;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.local.entities.FavoriteEntity;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.LiveRepository;
import com.bayyari.tv.domain.model.Category;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.StreamUrlBuilder;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.SharingStarted;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0010\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\b\f\u0010\rJ\u0006\u0010$\u001a\u00020%J\u0010\u0010&\u001a\u00020%2\b\u0010\'\u001a\u0004\u0018\u00010\u0012J\u000e\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020\u0012J\u000e\u0010*\u001a\u00020%2\u0006\u0010)\u001a\u00020\u0019J\u0006\u0010+\u001a\u00020\u0019J\u000e\u0010,\u001a\u00020%2\u0006\u0010\'\u001a\u00020\u0012J\u0006\u0010-\u001a\u00020%J\u0016\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u0012J\u000e\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020\u0010J\u000e\u00103\u001a\b\u0012\u0004\u0012\u00020\u00120\u0017H\u0002J\b\u00104\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000f\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00170\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u001c0\u001b\u00a2\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001d\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c0\u001b\u00a2\u0006\b\n\u0000\u001a\u0004\b#\u0010!\u00a8\u00065"}, d2 = {"Lcom/bayyari/tv/ui/live/LiveViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "liveRepository", "Lcom/bayyari/tv/data/repository/LiveRepository;", "favoriteDao", "Lcom/bayyari/tv/data/local/dao/FavoriteDao;", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "streamUrlBuilder", "Lcom/bayyari/tv/util/StreamUrlBuilder;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;Lcom/bayyari/tv/util/EncryptedPrefs;Lcom/bayyari/tv/util/StreamUrlBuilder;)V", "serverId", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "selectedCategoryId", "", "getSelectedCategoryId", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "query", "hiddenCategoryIds", "", "sortMode", "Lcom/bayyari/tv/ui/live/LiveSortMode;", "allChannels", "Lkotlinx/coroutines/flow/StateFlow;", "", "Lcom/bayyari/tv/domain/model/Channel;", "categories", "Lcom/bayyari/tv/domain/model/Category;", "getCategories", "()Lkotlinx/coroutines/flow/StateFlow;", "channels", "getChannels", "refresh", "", "selectCategory", "categoryId", "setQuery", "value", "setSortMode", "getSortMode", "hideCategory", "reloadPreferences", "buildLiveUrl", "channel", "format", "addFavorite", "streamId", "prefsHiddenCategories", "prefsLiveSortMode", "app"})
@kotlin.OptIn(markerClass = {kotlinx.coroutines.ExperimentalCoroutinesApi.class})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class LiveViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.LiveRepository liveRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.EncryptedPrefs prefs = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.StreamUrlBuilder streamUrlBuilder = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.Integer> serverId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> selectedCategoryId = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.lang.String> query = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<java.lang.String>> hiddenCategoryIds = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.ui.live.LiveSortMode> sortMode = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Channel>> allChannels = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Category>> categories = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Channel>> channels = null;
    
    @javax.inject.Inject()
    public LiveViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.LiveRepository liveRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs prefs, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.StreamUrlBuilder streamUrlBuilder) {
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
    public final kotlinx.coroutines.flow.StateFlow<java.util.List<com.bayyari.tv.domain.model.Channel>> getChannels() {
        return null;
    }
    
    public final void refresh() {
    }
    
    public final void selectCategory(@org.jetbrains.annotations.Nullable()
    java.lang.String categoryId) {
    }
    
    public final void setQuery(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    public final void setSortMode(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.ui.live.LiveSortMode value) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.ui.live.LiveSortMode getSortMode() {
        return null;
    }
    
    public final void hideCategory(@org.jetbrains.annotations.NotNull()
    java.lang.String categoryId) {
    }
    
    public final void reloadPreferences() {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String buildLiveUrl(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Channel channel, @org.jetbrains.annotations.NotNull()
    java.lang.String format) {
        return null;
    }
    
    public final void addFavorite(int streamId) {
    }
    
    private final java.util.Set<java.lang.String> prefsHiddenCategories() {
        return null;
    }
    
    private final java.lang.String prefsLiveSortMode() {
        return null;
    }
}