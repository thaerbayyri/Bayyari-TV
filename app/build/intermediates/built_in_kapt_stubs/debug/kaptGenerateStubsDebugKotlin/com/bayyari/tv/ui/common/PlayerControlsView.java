package com.bayyari.tv.ui.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.bayyari.tv.databinding.ViewPlayerControlsBinding;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b!\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020.J\u000e\u00101\u001a\u00020\f2\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u00020\f2\u0006\u00105\u001a\u000203J\u0006\u00106\u001a\u00020\fR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\"\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\"\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010\u0010R\"\u0010 \u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010\u0010R\"\u0010#\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u000e\"\u0004\b%\u0010\u0010R\"\u0010&\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\'\u0010\u000e\"\u0004\b(\u0010\u0010R\"\u0010)\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u000e\"\u0004\b+\u0010\u0010\u00a8\u00067"}, d2 = {"Lcom/bayyari/tv/ui/common/PlayerControlsView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "binding", "Lcom/bayyari/tv/databinding/ViewPlayerControlsBinding;", "onPlayPause", "Lkotlin/Function0;", "", "getOnPlayPause", "()Lkotlin/jvm/functions/Function0;", "setOnPlayPause", "(Lkotlin/jvm/functions/Function0;)V", "onNext", "getOnNext", "setOnNext", "onPrev", "getOnPrev", "setOnPrev", "onPip", "getOnPip", "setOnPip", "onExternal", "getOnExternal", "setOnExternal", "onAudioTracks", "getOnAudioTracks", "setOnAudioTracks", "onSubtitleTracks", "getOnSubtitleTracks", "setOnSubtitleTracks", "onAspectRatio", "getOnAspectRatio", "setOnAspectRatio", "onLock", "getOnLock", "setOnLock", "onEpg", "getOnEpg", "setOnEpg", "setTitle", "title", "", "setSubtitle", "subtitle", "setTitleVisible", "visible", "", "setPlayState", "isPlaying", "setMovieMode", "app"})
public final class PlayerControlsView extends android.widget.FrameLayout {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.databinding.ViewPlayerControlsBinding binding = null;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onPlayPause;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onNext;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onPrev;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onPip;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onExternal;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onAudioTracks;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onSubtitleTracks;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onAspectRatio;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onLock;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function0<kotlin.Unit> onEpg;
    
    @kotlin.jvm.JvmOverloads()
    public PlayerControlsView(@org.jetbrains.annotations.NotNull()
    android.content.Context context) {
        super(null);
    }
    
    @kotlin.jvm.JvmOverloads()
    public PlayerControlsView(@org.jetbrains.annotations.NotNull()
    android.content.Context context, @org.jetbrains.annotations.Nullable()
    android.util.AttributeSet attrs) {
        super(null);
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnPlayPause() {
        return null;
    }
    
    public final void setOnPlayPause(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnNext() {
        return null;
    }
    
    public final void setOnNext(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnPrev() {
        return null;
    }
    
    public final void setOnPrev(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnPip() {
        return null;
    }
    
    public final void setOnPip(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnExternal() {
        return null;
    }
    
    public final void setOnExternal(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnAudioTracks() {
        return null;
    }
    
    public final void setOnAudioTracks(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnSubtitleTracks() {
        return null;
    }
    
    public final void setOnSubtitleTracks(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnAspectRatio() {
        return null;
    }
    
    public final void setOnAspectRatio(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnLock() {
        return null;
    }
    
    public final void setOnLock(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final kotlin.jvm.functions.Function0<kotlin.Unit> getOnEpg() {
        return null;
    }
    
    public final void setOnEpg(@org.jetbrains.annotations.Nullable()
    kotlin.jvm.functions.Function0<kotlin.Unit> p0) {
    }
    
    public final void setTitle(@org.jetbrains.annotations.NotNull()
    java.lang.String title) {
    }
    
    public final void setSubtitle(@org.jetbrains.annotations.NotNull()
    java.lang.String subtitle) {
    }
    
    public final void setTitleVisible(boolean visible) {
    }
    
    public final void setPlayState(boolean isPlaying) {
    }
    
    public final void setMovieMode() {
    }
}