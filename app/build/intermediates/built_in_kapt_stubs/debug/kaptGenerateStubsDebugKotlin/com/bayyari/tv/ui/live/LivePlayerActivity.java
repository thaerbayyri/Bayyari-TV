package com.bayyari.tv.ui.live;

import android.app.PictureInPictureParams;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Rational;
import android.util.Log;
import android.view.WindowManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import com.bayyari.tv.ui.BaseActivity;
import androidx.media3.ui.AspectRatioFrameLayout;
import com.bayyari.tv.R;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.databinding.ActivityLivePlayerBinding;
import com.bayyari.tv.player.IptvPlayer;
import com.bayyari.tv.player.PlayerService;
import com.bayyari.tv.util.Constants;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.NetworkUtils;
import com.bayyari.tv.util.StreamUrlBuilder;
import dagger.hilt.android.AndroidEntryPoint;
import javax.inject.Inject;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0007\u0018\u0000 K2\u00020\u0001:\u0001KB\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010;H\u0014J\b\u0010<\u001a\u000209H\u0014J\b\u0010=\u001a\u000209H\u0002J\b\u0010>\u001a\u000209H\u0002J\b\u0010?\u001a\u000209H\u0002J\b\u0010@\u001a\u000209H\u0002J\b\u0010A\u001a\u000209H\u0002J\u001e\u0010B\u001a\b\u0012\u0004\u0012\u000204032\u0006\u0010C\u001a\u0002042\u0006\u0010D\u001a\u00020+H\u0002J\u0012\u0010E\u001a\b\u0012\u0004\u0012\u00020403*\u000204H\u0002J\b\u0010F\u001a\u000209H\u0002J\b\u0010G\u001a\u000209H\u0002J\b\u0010H\u001a\u000209H\u0002J\b\u0010I\u001a\u000209H\u0002J\b\u0010J\u001a\u000209H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b&\u0010\'\u001a\u0004\b$\u0010%R\u000e\u0010(\u001a\u00020)X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\b\u0012\u0004\u0012\u00020403X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"}, d2 = {"Lcom/bayyari/tv/ui/live/LivePlayerActivity;", "Lcom/bayyari/tv/ui/BaseActivity;", "<init>", "()V", "iptvPlayer", "Lcom/bayyari/tv/player/IptvPlayer;", "getIptvPlayer", "()Lcom/bayyari/tv/player/IptvPlayer;", "setIptvPlayer", "(Lcom/bayyari/tv/player/IptvPlayer;)V", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "getPrefs", "()Lcom/bayyari/tv/util/EncryptedPrefs;", "setPrefs", "(Lcom/bayyari/tv/util/EncryptedPrefs;)V", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "getAuthRepository", "()Lcom/bayyari/tv/data/repository/AuthRepository;", "setAuthRepository", "(Lcom/bayyari/tv/data/repository/AuthRepository;)V", "streamUrlBuilder", "Lcom/bayyari/tv/util/StreamUrlBuilder;", "getStreamUrlBuilder", "()Lcom/bayyari/tv/util/StreamUrlBuilder;", "setStreamUrlBuilder", "(Lcom/bayyari/tv/util/StreamUrlBuilder;)V", "networkUtils", "Lcom/bayyari/tv/util/NetworkUtils;", "getNetworkUtils", "()Lcom/bayyari/tv/util/NetworkUtils;", "setNetworkUtils", "(Lcom/bayyari/tv/util/NetworkUtils;)V", "viewModel", "Lcom/bayyari/tv/ui/live/LivePlayerViewModel;", "getViewModel", "()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;", "aspectIndex", "", "wasPlaying", "", "hideHandler", "Landroid/os/Handler;", "prepareStartMs", "", "streamCandidates", "", "", "streamCandidateIndex", "playerListener", "Landroidx/media3/common/Player$Listener;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "hideSystemUi", "toggleControls", "toggleAspectRatio", "enterPip", "openExternalPlayer", "buildLiveCandidates", "primaryUrl", "streamId", "swappedLiveExtension", "prepareCurrentCandidate", "toggleEpg", "showAudioTracks", "showSubtitleTracks", "onDestroy", "Companion", "app"})
public final class LivePlayerActivity extends com.bayyari.tv.ui.BaseActivity {
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_STREAM_ID = "extra_stream_id";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_STREAM_URL = "extra_stream_url";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_CHANNEL_NAME = "extra_channel_name";
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "LivePlayerActivity";
    @javax.inject.Inject()
    public com.bayyari.tv.player.IptvPlayer iptvPlayer;
    @javax.inject.Inject()
    public com.bayyari.tv.util.EncryptedPrefs prefs;
    @javax.inject.Inject()
    public com.bayyari.tv.data.repository.AuthRepository authRepository;
    @javax.inject.Inject()
    public com.bayyari.tv.util.StreamUrlBuilder streamUrlBuilder;
    @javax.inject.Inject()
    public com.bayyari.tv.util.NetworkUtils networkUtils;
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy viewModel$delegate = null;
    private com.bayyari.tv.databinding.ActivityLivePlayerBinding binding;
    private int aspectIndex = 0;
    private boolean wasPlaying = true;
    @org.jetbrains.annotations.NotNull()
    private final android.os.Handler hideHandler = null;
    private long prepareStartMs = 0L;
    @org.jetbrains.annotations.NotNull()
    private java.util.List<java.lang.String> streamCandidates;
    private int streamCandidateIndex = 0;
    @org.jetbrains.annotations.Nullable()
    private androidx.media3.common.Player.Listener playerListener;
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.ui.live.LivePlayerActivity.Companion Companion = null;
    
    public LivePlayerActivity() {
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
    public final com.bayyari.tv.util.EncryptedPrefs getPrefs() {
        return null;
    }
    
    public final void setPrefs(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs p0) {
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
    public final com.bayyari.tv.util.NetworkUtils getNetworkUtils() {
        return null;
    }
    
    public final void setNetworkUtils(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.NetworkUtils p0) {
    }
    
    private final com.bayyari.tv.ui.live.LivePlayerViewModel getViewModel() {
        return null;
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
    
    private final void toggleControls() {
    }
    
    private final void toggleAspectRatio() {
    }
    
    private final void enterPip() {
    }
    
    private final void openExternalPlayer() {
    }
    
    private final java.util.List<java.lang.String> buildLiveCandidates(java.lang.String primaryUrl, int streamId) {
        return null;
    }
    
    private final java.util.List<java.lang.String> swappedLiveExtension(java.lang.String $this$swappedLiveExtension) {
        return null;
    }
    
    private final void prepareCurrentCandidate() {
    }
    
    private final void toggleEpg() {
    }
    
    private final void showAudioTracks() {
    }
    
    private final void showSubtitleTracks() {
    }
    
    @java.lang.Override()
    protected void onDestroy() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"}, d2 = {"Lcom/bayyari/tv/ui/live/LivePlayerActivity$Companion;", "", "<init>", "()V", "EXTRA_STREAM_ID", "", "EXTRA_STREAM_URL", "EXTRA_CHANNEL_NAME", "TAG", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}