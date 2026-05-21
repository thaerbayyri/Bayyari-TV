package com.bayyari.tv.util;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * Builds Xtream Codes stream URLs.
 *
 * Live HLS:    {server}/live/{user}/{pass}/{stream_id}.m3u8
 * Live TS:     {server}/live/{user}/{pass}/{stream_id}.ts
 * Movie:       {server}/movie/{user}/{pass}/{vod_id}.{container_ext}
 * Episode:     {server}/series/{user}/{pass}/{episode_id}.{container_ext}
 * Catch-up:    {server}/timeshift/{user}/{pass}/{duration_min}/{YYYY-MM-DD:HH-MM}/{stream_id}.ts
 */
@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001\u001aB\t\b\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J.\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ.\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0005J.\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0005J6\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nJ\u0010\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0002\u00a8\u0006\u001b"}, d2 = {"Lcom/bayyari/tv/util/StreamUrlBuilder;", "", "<init>", "()V", "live", "", "serverUrl", "user", "pass", "streamId", "", "format", "Lcom/bayyari/tv/util/StreamUrlBuilder$LiveFormat;", "movie", "vodId", "containerExt", "episode", "episodeId", "catchUp", "startEpochMs", "", "durationMinutes", "logo", "rawLogo", "encode", "value", "LiveFormat", "app"})
public final class StreamUrlBuilder {
    
    @javax.inject.Inject()
    public StreamUrlBuilder() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String live(@org.jetbrains.annotations.NotNull()
    java.lang.String serverUrl, @org.jetbrains.annotations.NotNull()
    java.lang.String user, @org.jetbrains.annotations.NotNull()
    java.lang.String pass, int streamId, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.StreamUrlBuilder.LiveFormat format) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String movie(@org.jetbrains.annotations.NotNull()
    java.lang.String serverUrl, @org.jetbrains.annotations.NotNull()
    java.lang.String user, @org.jetbrains.annotations.NotNull()
    java.lang.String pass, int vodId, @org.jetbrains.annotations.NotNull()
    java.lang.String containerExt) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String episode(@org.jetbrains.annotations.NotNull()
    java.lang.String serverUrl, @org.jetbrains.annotations.NotNull()
    java.lang.String user, @org.jetbrains.annotations.NotNull()
    java.lang.String pass, int episodeId, @org.jetbrains.annotations.NotNull()
    java.lang.String containerExt) {
        return null;
    }
    
    /**
     * Catch-up timeshift URL. [start] is program start epoch ms, [durationMinutes] is program length.
     */
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String catchUp(@org.jetbrains.annotations.NotNull()
    java.lang.String serverUrl, @org.jetbrains.annotations.NotNull()
    java.lang.String user, @org.jetbrains.annotations.NotNull()
    java.lang.String pass, int streamId, long startEpochMs, int durationMinutes) {
        return null;
    }
    
    /**
     * Xtream channel logo URLs are pre-formed, but normalize empty/null to a safe blank.
     */
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String logo(@org.jetbrains.annotations.Nullable()
    java.lang.String rawLogo) {
        return null;
    }
    
    private final java.lang.String encode(java.lang.String value) {
        return null;
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005\u00a8\u0006\u0006"}, d2 = {"Lcom/bayyari/tv/util/StreamUrlBuilder$LiveFormat;", "", "<init>", "(Ljava/lang/String;I)V", "HLS", "TS", "app"})
    public static enum LiveFormat {
        /*public static final*/ HLS /* = new HLS() */,
        /*public static final*/ TS /* = new TS() */;
        
        LiveFormat() {
        }
        
        @org.jetbrains.annotations.NotNull()
        public static kotlin.enums.EnumEntries<com.bayyari.tv.util.StreamUrlBuilder.LiveFormat> getEntries() {
            return null;
        }
    }
}