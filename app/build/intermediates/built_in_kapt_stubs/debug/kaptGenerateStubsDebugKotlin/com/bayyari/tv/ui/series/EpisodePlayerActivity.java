package com.bayyari.tv.ui.series;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.media3.common.Player;
import androidx.media3.ui.AspectRatioFrameLayout;
import com.bayyari.tv.R;
import com.bayyari.tv.databinding.ActivityEpisodePlayerBinding;
import com.bayyari.tv.databinding.DialogTranslationTracksBinding;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.WatchHistoryRepository;
import com.bayyari.tv.domain.model.WatchEntry;
import com.bayyari.tv.domain.model.SubtitleTrack;
import com.bayyari.tv.player.IptvPlayer;
import com.bayyari.tv.player.PlayerService;
import com.bayyari.tv.player.TrackSelector;
import com.bayyari.tv.ui.BaseActivity;
import com.bayyari.tv.util.Constants;
import com.bayyari.tv.util.StreamUrlBuilder;
import com.bayyari.tv.util.NetworkUtils;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import dagger.hilt.android.AndroidEntryPoint;
import javax.inject.Inject;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 H2\u00020\u0001:\u0001HB\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000104H\u0014J\b\u00105\u001a\u000202H\u0014J\b\u00106\u001a\u000202H\u0002J\b\u00107\u001a\u000202H\u0002J\b\u00108\u001a\u000202H\u0002J\b\u00109\u001a\u000202H\u0002J\b\u0010:\u001a\u000202H\u0002J\b\u0010;\u001a\u000202H\u0002J\b\u0010<\u001a\u000202H\u0002J\u0016\u0010=\u001a\u0002022\f\u0010>\u001a\b\u0012\u0004\u0012\u00020)0+H\u0002J&\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020%2\f\u0010D\u001a\b\u0012\u0004\u0012\u0002020EH\u0002J\u000e\u0010F\u001a\b\u0012\u0004\u0012\u00020,0+H\u0002J\b\u0010G\u001a\u000202H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020,0+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"}, d2 = {"Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;", "Lcom/bayyari/tv/ui/BaseActivity;", "<init>", "()V", "iptvPlayer", "Lcom/bayyari/tv/player/IptvPlayer;", "getIptvPlayer", "()Lcom/bayyari/tv/player/IptvPlayer;", "setIptvPlayer", "(Lcom/bayyari/tv/player/IptvPlayer;)V", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "getAuthRepository", "()Lcom/bayyari/tv/data/repository/AuthRepository;", "setAuthRepository", "(Lcom/bayyari/tv/data/repository/AuthRepository;)V", "streamUrlBuilder", "Lcom/bayyari/tv/util/StreamUrlBuilder;", "getStreamUrlBuilder", "()Lcom/bayyari/tv/util/StreamUrlBuilder;", "setStreamUrlBuilder", "(Lcom/bayyari/tv/util/StreamUrlBuilder;)V", "watchHistoryRepository", "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;", "getWatchHistoryRepository", "()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;", "setWatchHistoryRepository", "(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V", "networkUtils", "Lcom/bayyari/tv/util/NetworkUtils;", "getNetworkUtils", "()Lcom/bayyari/tv/util/NetworkUtils;", "setNetworkUtils", "(Lcom/bayyari/tv/util/NetworkUtils;)V", "binding", "Lcom/bayyari/tv/databinding/ActivityEpisodePlayerBinding;", "wasPlaying", "", "aspectIndex", "", "selectedSubtitle", "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;", "externalSubtitles", "", "Lcom/bayyari/tv/domain/model/SubtitleTrack;", "playerListener", "Landroidx/media3/common/Player$Listener;", "controlsHandler", "Landroid/os/Handler;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "hideSystemUi", "showControls", "hideControls", "showControlsTemporarily", "toggleAspectRatio", "showAudioTracks", "showSubtitleTracks", "showTranslationSheet", "tracks", "buildTrackOption", "Landroid/widget/TextView;", "label", "", "isActive", "onClick", "Lkotlin/Function0;", "subtitleTracksFromIntent", "onDestroy", "Companion", "app"})
public final class EpisodePlayerActivity extends com.bayyari.tv.ui.BaseActivity {
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_EPISODE_ID = "extra_episode_id";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_CONTAINER_EXT = "extra_container_ext";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_SUBTITLE_URLS = "extra_subtitle_urls";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_SUBTITLE_LABELS = "extra_subtitle_labels";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_SUBTITLE_LANGS = "extra_subtitle_langs";
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
    private int aspectIndex = 0;
    @org.jetbrains.annotations.Nullable()
    private com.bayyari.tv.player.TrackSelector.TrackInfo selectedSubtitle;
    @org.jetbrains.annotations.NotNull()
    private java.util.List<com.bayyari.tv.domain.model.SubtitleTrack> externalSubtitles;
    @org.jetbrains.annotations.Nullable()
    private androidx.media3.common.Player.Listener playerListener;
    @org.jetbrains.annotations.NotNull()
    private final android.os.Handler controlsHandler = null;
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
    
    private final void showControls() {
    }
    
    private final void hideControls() {
    }
    
    private final void showControlsTemporarily() {
    }
    
    private final void toggleAspectRatio() {
    }
    
    private final void showAudioTracks() {
    }
    
    private final void showSubtitleTracks() {
    }
    
    private final void showTranslationSheet(java.util.List<com.bayyari.tv.player.TrackSelector.TrackInfo> tracks) {
    }
    
    private final android.widget.TextView buildTrackOption(java.lang.String label, boolean isActive, kotlin.jvm.functions.Function0<kotlin.Unit> onClick) {
        return null;
    }
    
    private final java.util.List<com.bayyari.tv.domain.model.SubtitleTrack> subtitleTracksFromIntent() {
        return null;
    }
    
    @java.lang.Override()
    protected void onDestroy() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"}, d2 = {"Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$Companion;", "", "<init>", "()V", "EXTRA_EPISODE_ID", "", "EXTRA_CONTAINER_EXT", "EXTRA_SUBTITLE_URLS", "EXTRA_SUBTITLE_LABELS", "EXTRA_SUBTITLE_LANGS", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}