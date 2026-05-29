package com.bayyari.tv.player;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.OptIn;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.MediaItem.LiveConfiguration;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import com.bayyari.tv.domain.model.SubtitleTrack;
import com.bayyari.tv.util.Constants;
import com.bayyari.tv.util.SubtitleTrackExtractor;
import kotlinx.coroutines.Dispatchers;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Singleton;
import dagger.hilt.android.qualifiers.ApplicationContext;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u001a\u001a\u00020\u000bJ(\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\r2\u000e\b\u0002\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 J\u0006\u0010\"\u001a\u00020\u0015J\u0006\u0010#\u001a\u00020\u0015J\u0006\u0010$\u001a\u00020\u0015J\u000e\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\'J\u0016\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020*J\u0016\u0010,\u001a\u00020\u00152\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020*J\u0006\u0010-\u001a\u00020\u0015J\f\u0010.\u001a\b\u0012\u0004\u0012\u00020/0 J\f\u00100\u001a\b\u0012\u0004\u0012\u00020/0 J\u001a\u00101\u001a\u00020\u00152\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013J$\u00103\u001a\u00020\u00152\u0006\u00104\u001a\u00020\u00142\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0002J\b\u00105\u001a\u00020\u000bH\u0002J\b\u00106\u001a\u00020\u000bH\u0002J\u0012\u00107\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u00108\u001a\u000209H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"}, d2 = {"Lcom/bayyari/tv/player/IptvPlayer;", "", "appContext", "Landroid/content/Context;", "loadControl", "Landroidx/media3/exoplayer/LoadControl;", "<init>", "(Landroid/content/Context;Landroidx/media3/exoplayer/LoadControl;)V", "trackSelector", "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;", "player", "Landroidx/media3/exoplayer/ExoPlayer;", "released", "", "playerScope", "Lkotlinx/coroutines/CoroutineScope;", "retryJob", "Lkotlinx/coroutines/Job;", "retryCallback", "Lkotlin/Function1;", "Landroidx/media3/common/PlaybackException;", "", "retryListener", "Landroidx/media3/common/Player$Listener;", "lastMediaItem", "Landroidx/media3/common/MediaItem;", "getPlayer", "prepare", "url", "", "playWhenReady", "subtitles", "", "Lcom/bayyari/tv/domain/model/SubtitleTrack;", "release", "pause", "play", "setPlaybackSpeed", "speed", "", "setAudioTrack", "groupIndex", "", "trackIndex", "setSubtitleTrack", "clearSubtitleTrack", "audioTracks", "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;", "subtitleTracks", "addRetryListener", "onFinalError", "scheduleRetry", "error", "ensurePlayer", "createPlayer", "detectMimeType", "buildMediaSourceFactory", "Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;", "app"})
@androidx.annotation.OptIn(markerClass = {androidx.media3.common.util.UnstableApi.class})
public final class IptvPlayer {
    @org.jetbrains.annotations.NotNull()
    private final android.content.Context appContext = null;
    @org.jetbrains.annotations.NotNull()
    private final androidx.media3.exoplayer.LoadControl loadControl = null;
    @org.jetbrains.annotations.NotNull()
    private androidx.media3.exoplayer.trackselection.DefaultTrackSelector trackSelector;
    @org.jetbrains.annotations.NotNull()
    private androidx.media3.exoplayer.ExoPlayer player;
    private boolean released = false;
    @org.jetbrains.annotations.NotNull()
    private kotlinx.coroutines.CoroutineScope playerScope;
    @org.jetbrains.annotations.Nullable()
    private kotlinx.coroutines.Job retryJob;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function1<? super androidx.media3.common.PlaybackException, kotlin.Unit> retryCallback;
    @org.jetbrains.annotations.Nullable()
    private androidx.media3.common.Player.Listener retryListener;
    @org.jetbrains.annotations.Nullable()
    private androidx.media3.common.MediaItem lastMediaItem;
    
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
    java.lang.String url, boolean playWhenReady, @org.jetbrains.annotations.NotNull()
    java.util.List<com.bayyari.tv.domain.model.SubtitleTrack> subtitles) {
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
    
    public final void clearSubtitleTrack() {
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
    
    private final androidx.media3.exoplayer.ExoPlayer ensurePlayer() {
        return null;
    }
    
    private final androidx.media3.exoplayer.ExoPlayer createPlayer() {
        return null;
    }
    
    private final java.lang.String detectMimeType(java.lang.String url) {
        return null;
    }
    
    private final androidx.media3.exoplayer.source.DefaultMediaSourceFactory buildMediaSourceFactory() {
        return null;
    }
}