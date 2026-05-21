package com.bayyari.tv.ui.settings;

import androidx.lifecycle.ViewModel;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.dao.SeriesDao;
import com.bayyari.tv.data.local.dao.WatchHistoryDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.util.EncryptedPrefs;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.Dispatchers;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001BA\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0013J\u0006\u0010\u001f\u001a\u00020\u0015J\u000e\u0010 \u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""}, d2 = {"Lcom/bayyari/tv/ui/settings/SettingsViewModel;", "Landroidx/lifecycle/ViewModel;", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "channelDao", "Lcom/bayyari/tv/data/local/dao/ChannelDao;", "movieDao", "Lcom/bayyari/tv/data/local/dao/MovieDao;", "seriesDao", "Lcom/bayyari/tv/data/local/dao/SeriesDao;", "epgDao", "Lcom/bayyari/tv/data/local/dao/EpgDao;", "watchHistoryDao", "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/util/EncryptedPrefs;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/data/local/dao/MovieDao;Lcom/bayyari/tv/data/local/dao/SeriesDao;Lcom/bayyari/tv/data/local/dao/EpgDao;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V", "getServerInfo", "", "setDefaultPlayer", "", "value", "setStreamFormat", "setBufferSizeMs", "", "setAutoPlayNext", "enabled", "", "setParentalPin", "pin", "signOut", "clearCache", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class SettingsViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.EncryptedPrefs prefs = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.ChannelDao channelDao = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.MovieDao movieDao = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.SeriesDao seriesDao = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.EpgDao epgDao = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.WatchHistoryDao watchHistoryDao = null;
    
    @javax.inject.Inject()
    public SettingsViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs prefs, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.ChannelDao channelDao, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.MovieDao movieDao, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.SeriesDao seriesDao, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.EpgDao epgDao, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.WatchHistoryDao watchHistoryDao) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String getServerInfo() {
        return null;
    }
    
    public final void setDefaultPlayer(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    public final void setStreamFormat(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    public final void setBufferSizeMs(int value) {
    }
    
    public final void setAutoPlayNext(boolean enabled) {
    }
    
    public final void setParentalPin(@org.jetbrains.annotations.NotNull()
    java.lang.String pin) {
    }
    
    /**
     * Wipe the active server's id so MainActivity routes back to LoginActivity on the next
     * launch. We deliberately do not call `prefs.clearAll()` — that would also nuke saved
     * server configs the user may want to keep, which is the wrong behavior for "change playlist".
     */
    public final void signOut() {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object clearCache(@org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion) {
        return null;
    }
}