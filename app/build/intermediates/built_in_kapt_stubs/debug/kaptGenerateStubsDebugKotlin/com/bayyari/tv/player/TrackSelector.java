package com.bayyari.tv.player;

import androidx.media3.common.C;
import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u001e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\rH\u0002J(\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a8\u0006\u0014"}, d2 = {"Lcom/bayyari/tv/player/TrackSelector;", "", "<init>", "()V", "audioTracks", "", "Lcom/bayyari/tv/player/TrackSelector$TrackInfo;", "selector", "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;", "subtitleTracks", "applyAudioTrack", "", "groupIndex", "", "trackIndex", "applySubtitleTrack", "extractTracks", "trackType", "applySelection", "TrackInfo", "app"})
public final class TrackSelector {
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.player.TrackSelector INSTANCE = null;
    
    private TrackSelector() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.util.List<com.bayyari.tv.player.TrackSelector.TrackInfo> audioTracks(@org.jetbrains.annotations.NotNull()
    androidx.media3.exoplayer.trackselection.DefaultTrackSelector selector) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.util.List<com.bayyari.tv.player.TrackSelector.TrackInfo> subtitleTracks(@org.jetbrains.annotations.NotNull()
    androidx.media3.exoplayer.trackselection.DefaultTrackSelector selector) {
        return null;
    }
    
    public final void applyAudioTrack(@org.jetbrains.annotations.NotNull()
    androidx.media3.exoplayer.trackselection.DefaultTrackSelector selector, int groupIndex, int trackIndex) {
    }
    
    public final void applySubtitleTrack(@org.jetbrains.annotations.NotNull()
    androidx.media3.exoplayer.trackselection.DefaultTrackSelector selector, int groupIndex, int trackIndex) {
    }
    
    private final java.util.List<com.bayyari.tv.player.TrackSelector.TrackInfo> extractTracks(androidx.media3.exoplayer.trackselection.DefaultTrackSelector selector, int trackType) {
        return null;
    }
    
    private final void applySelection(androidx.media3.exoplayer.trackselection.DefaultTrackSelector selector, int trackType, int groupIndex, int trackIndex) {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r\u00a8\u0006\u0017"}, d2 = {"Lcom/bayyari/tv/player/TrackSelector$TrackInfo;", "", "groupIndex", "", "trackIndex", "label", "", "<init>", "(IILjava/lang/String;)V", "getGroupIndex", "()I", "getTrackIndex", "getLabel", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app"})
    public static final class TrackInfo {
        private final int groupIndex = 0;
        private final int trackIndex = 0;
        @org.jetbrains.annotations.NotNull()
        private final java.lang.String label = null;
        
        public TrackInfo(int groupIndex, int trackIndex, @org.jetbrains.annotations.NotNull()
        java.lang.String label) {
            super();
        }
        
        public final int getGroupIndex() {
            return 0;
        }
        
        public final int getTrackIndex() {
            return 0;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String getLabel() {
            return null;
        }
        
        public final int component1() {
            return 0;
        }
        
        public final int component2() {
            return 0;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String component3() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.player.TrackSelector.TrackInfo copy(int groupIndex, int trackIndex, @org.jetbrains.annotations.NotNull()
        java.lang.String label) {
            return null;
        }
        
        @java.lang.Override()
        public boolean equals(@org.jetbrains.annotations.Nullable()
        java.lang.Object other) {
            return false;
        }
        
        @java.lang.Override()
        public int hashCode() {
            return 0;
        }
        
        @java.lang.Override()
        @org.jetbrains.annotations.NotNull()
        public java.lang.String toString() {
            return null;
        }
    }
}