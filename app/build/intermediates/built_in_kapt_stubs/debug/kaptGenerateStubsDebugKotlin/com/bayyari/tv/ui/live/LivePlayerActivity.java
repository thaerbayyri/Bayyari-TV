package com.bayyari.tv.ui.live;

import android.app.PictureInPictureParams;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Rational;
import android.view.WindowManager;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.bayyari.tv.ui.BaseActivity;
import androidx.media3.ui.AspectRatioFrameLayout;
import com.bayyari.tv.R;
import com.bayyari.tv.databinding.ActivityLivePlayerBinding;
import com.bayyari.tv.player.IptvPlayer;
import com.bayyari.tv.player.PlayerService;
import com.bayyari.tv.util.Constants;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.NetworkUtils;
import dagger.hilt.android.AndroidEntryPoint;
import javax.inject.Inject;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\'H\u0014J\b\u0010(\u001a\u00020%H\u0014J\b\u0010)\u001a\u00020%H\u0002J\b\u0010*\u001a\u00020%H\u0002J\b\u0010+\u001a\u00020%H\u0002J\b\u0010,\u001a\u00020%H\u0002J\b\u0010-\u001a\u00020%H\u0002J\b\u0010.\u001a\u00020%H\u0002J\b\u0010/\u001a\u00020%H\u0002J\b\u00100\u001a\u00020%H\u0002J\b\u00101\u001a\u00020%H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"}, d2 = {"Lcom/bayyari/tv/ui/live/LivePlayerActivity;", "Lcom/bayyari/tv/ui/BaseActivity;", "<init>", "()V", "iptvPlayer", "Lcom/bayyari/tv/player/IptvPlayer;", "getIptvPlayer", "()Lcom/bayyari/tv/player/IptvPlayer;", "setIptvPlayer", "(Lcom/bayyari/tv/player/IptvPlayer;)V", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "getPrefs", "()Lcom/bayyari/tv/util/EncryptedPrefs;", "setPrefs", "(Lcom/bayyari/tv/util/EncryptedPrefs;)V", "networkUtils", "Lcom/bayyari/tv/util/NetworkUtils;", "getNetworkUtils", "()Lcom/bayyari/tv/util/NetworkUtils;", "setNetworkUtils", "(Lcom/bayyari/tv/util/NetworkUtils;)V", "viewModel", "Lcom/bayyari/tv/ui/live/LivePlayerViewModel;", "getViewModel", "()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/bayyari/tv/databinding/ActivityLivePlayerBinding;", "aspectIndex", "", "wasPlaying", "", "hideHandler", "Landroid/os/Handler;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "hideSystemUi", "toggleControls", "toggleAspectRatio", "enterPip", "openExternalPlayer", "toggleEpg", "showAudioTracks", "showSubtitleTracks", "onDestroy", "Companion", "app"})
public final class LivePlayerActivity extends com.bayyari.tv.ui.BaseActivity {
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_STREAM_ID = "extra_stream_id";
    @javax.inject.Inject()
    public com.bayyari.tv.player.IptvPlayer iptvPlayer;
    @javax.inject.Inject()
    public com.bayyari.tv.util.EncryptedPrefs prefs;
    @javax.inject.Inject()
    public com.bayyari.tv.util.NetworkUtils networkUtils;
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy viewModel$delegate = null;
    private com.bayyari.tv.databinding.ActivityLivePlayerBinding binding;
    private int aspectIndex = 0;
    private boolean wasPlaying = true;
    @org.jetbrains.annotations.NotNull()
    private final android.os.Handler hideHandler = null;
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
    
    private final void toggleEpg() {
    }
    
    private final void showAudioTracks() {
    }
    
    private final void showSubtitleTracks() {
    }
    
    @java.lang.Override()
    protected void onDestroy() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"}, d2 = {"Lcom/bayyari/tv/ui/live/LivePlayerActivity$Companion;", "", "<init>", "()V", "EXTRA_STREAM_ID", "", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}