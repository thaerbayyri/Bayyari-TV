package com.bayyari.tv.player;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.rtsp.RtspMediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import com.bayyari.tv.util.Constants;
import kotlinx.coroutines.Dispatchers;
import javax.inject.Inject;
import javax.inject.Singleton;
import dagger.hilt.android.qualifiers.ApplicationContext;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u000bJ\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0012J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fJ\u0016\u0010!\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fJ\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#J\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#J\u001a\u0010&\u001a\u00020\u00122\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00120(J$\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020)2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00120(H\u0002J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."}, d2 = {"Lcom/bayyari/tv/player/IptvPlayer;", "", "appContext", "Landroid/content/Context;", "loadControl", "Landroidx/media3/exoplayer/LoadControl;", "<init>", "(Landroid/content/Context;Landroidx/media3/exoplayer/LoadControl;)V", "trackSelector", "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;", "player", "Landroidx/media3/exoplayer/ExoPlayer;", "mainHandler", "Landroid/os/Handler;", "retryJob", "Lkotlinx/coroutines/Job;", "getPlayer", "prepare", "", "url", "", "playWhenReady", "", "release", "pause", "play", "setPlaybackSpeed", "speed", "", "setAudioTrack", "groupIndex", "", "trackIndex", "setSubtitleTrack", "audioTracks", "", "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;", "subtitleTracks", "addRetryListener", "onFinalError", "Lkotlin/Function1;", "Landroidx/media3/common/PlaybackException;", "scheduleRetry", "error", "buildMediaSource", "Landroidx/media3/exoplayer/source/MediaSource;", "app"})
public final class IptvPlayer {
    @org.jetbrains.annotations.NotNull()
    private final android.content.Context appContext = null;
    @org.jetbrains.annotations.NotNull()
    private final androidx.media3.exoplayer.LoadControl loadControl = null;
    @org.jetbrains.annotations.NotNull()
    private final androidx.media3.exoplayer.trackselection.DefaultTrackSelector trackSelector = null;
    @org.jetbrains.annotations.NotNull()
    private final androidx.media3.exoplayer.ExoPlayer player = null;
    @org.jetbrains.annotations.NotNull()
    private final android.os.Handler mainHandler = null;
    @org.jetbrains.annotations.Nullable()
    private kotlinx.coroutines.Job retryJob;
    
    @javax.inject.Inject()
    public IptvPlayer(@dagger.hilt.android.qualifiers.ApplicationContext()
    @org.jetbrains.annotations.NotNull()
    android.content.Context appContext, @org.jetbrains.annotations.NotNull()
    androidx.media3.exoplayer.LoadControl loadControl) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final androidx.media3.exoplayer.ExoPlayer getPlayer() {
        return null;
    }
    
    public final void prepare(@org.jetbrains.annotations.NotNull()
    java.lang.String url, boolean playWhenReady) {
    }
    
    public final void release() {
    }
    
    public final void pause() {
    }
    
    public final void play() {
    }
    
    public final void setPlaybackSpeed(float speed) {
    }
    
    public final void setAudioTrack(int groupIndex, int trackIndex) {
    }
    
    public final void setSubtitleTrack(int groupIndex, int trackIndex) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.util.List<com.bayyari.tv.player.TrackSelector.TrackInfo> audioTracks() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.util.List<com.bayyari.tv.player.TrackSelector.TrackInfo> subtitleTracks() {
        return null;
    }
    
    public final void addRetryListener(@org.jetbrains.annotations.NotNull()
    kotlin.jvm.functions.Function1<? super androidx.media3.common.PlaybackException, kotlin.Unit> onFinalError) {
    }
    
    private final void scheduleRetry(androidx.media3.common.PlaybackException error, kotlin.jvm.functions.Function1<? super androidx.media3.common.PlaybackException, kotlin.Unit> onFinalError) {
    }
    
    private final androidx.media3.exoplayer.source.MediaSource buildMediaSource(java.lang.String url) {
        return null;
    }
}