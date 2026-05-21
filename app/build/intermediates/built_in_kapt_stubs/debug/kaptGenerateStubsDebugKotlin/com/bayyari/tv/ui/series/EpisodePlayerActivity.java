package com.bayyari.tv.ui.series;

import android.content.Intent;
import android.os.Bundle;
import android.view.WindowManager;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.bayyari.tv.databinding.ActivityEpisodePlayerBinding;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.WatchHistoryRepository;
import com.bayyari.tv.player.IptvPlayer;
import com.bayyari.tv.player.PlayerService;
import com.bayyari.tv.ui.BaseActivity;
import com.bayyari.tv.util.StreamUrlBuilder;
import com.bayyari.tv.util.NetworkUtils;
import dagger.hilt.android.AndroidEntryPoint;
import javax.inject.Inject;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010&\u001a\u00020\'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0014J\b\u0010*\u001a\u00020\'H\u0014J\b\u0010+\u001a\u00020\'H\u0002J\b\u0010,\u001a\u00020\'H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."}, d2 = {"Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;", "Lcom/bayyari/tv/ui/BaseActivity;", "<init>", "()V", "iptvPlayer", "Lcom/bayyari/tv/player/IptvPlayer;", "getIptvPlayer", "()Lcom/bayyari/tv/player/IptvPlayer;", "setIptvPlayer", "(Lcom/bayyari/tv/player/IptvPlayer;)V", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "getAuthRepository", "()Lcom/bayyari/tv/data/repository/AuthRepository;", "setAuthRepository", "(Lcom/bayyari/tv/data/repository/AuthRepository;)V", "streamUrlBuilder", "Lcom/bayyari/tv/util/StreamUrlBuilder;", "getStreamUrlBuilder", "()Lcom/bayyari/tv/util/StreamUrlBuilder;", "setStreamUrlBuilder", "(Lcom/bayyari/tv/util/StreamUrlBuilder;)V", "watchHistoryRepository", "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;", "getWatchHistoryRepository", "()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;", "setWatchHistoryRepository", "(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V", "networkUtils", "Lcom/bayyari/tv/util/NetworkUtils;", "getNetworkUtils", "()Lcom/bayyari/tv/util/NetworkUtils;", "setNetworkUtils", "(Lcom/bayyari/tv/util/NetworkUtils;)V", "binding", "Lcom/bayyari/tv/databinding/ActivityEpisodePlayerBinding;", "wasPlaying", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "hideSystemUi", "onDestroy", "Companion", "app"})
public final class EpisodePlayerActivity extends com.bayyari.tv.ui.BaseActivity {
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_EPISODE_ID = "extra_episode_id";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_CONTAINER_EXT = "extra_container_ext";
    @javax.inject.Inject()
    public com.bayyari.tv.player.IptvPlayer iptvPlayer;
    @javax.inject.Inject()
    public com.bayyari.tv.data.repository.AuthRepository authRepository;
    @javax.inject.Inject()
    public com.bayyari.tv.util.StreamUrlBuilder streamUrlBuilder;
    @javax.inject.Inject()
    public com.bayyari.tv.data.repository.WatchHistoryRepository watchHistoryRepository;
    @javax.inject.Inject()
    public com.bayyari.tv.util.NetworkUtils networkUtils;
    private com.bayyari.tv.databinding.ActivityEpisodePlayerBinding binding;
    private boolean wasPlaying = true;
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.ui.series.EpisodePlayerActivity.Companion Companion = null;
    
    public EpisodePlayerActivity() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.player.IptvPlayer getIptvPlayer() {
        return null;
    }
    
    public final void setIptvPlayer(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.player.IptvPlayer p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.repository.AuthRepository getAuthRepository() {
        return null;
    }
    
    public final void setAuthRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.StreamUrlBuilder getStreamUrlBuilder() {
        return null;
    }
    
    public final void setStreamUrlBuilder(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.StreamUrlBuilder p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.repository.WatchHistoryRepository getWatchHistoryRepository() {
        return null;
    }
    
    public final void setWatchHistoryRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.WatchHistoryRepository p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.NetworkUtils getNetworkUtils() {
        return null;
    }
    
    public final void setNetworkUtils(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.NetworkUtils p0) {
    }
    
    @java.lang.Override()
    protected void onCreate(@org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
    
    @java.lang.Override()
    protected void onStart() {
    }
    
    private final void hideSystemUi() {
    }
    
    @java.lang.Override()
    protected void onDestroy() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"}, d2 = {"Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$Companion;", "", "<init>", "()V", "EXTRA_EPISODE_ID", "", "EXTRA_CONTAINER_EXT", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}