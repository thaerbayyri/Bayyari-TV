package com.bayyari.tv.data.api.models;

import com.google.gson.annotations.SerializedName;
import com.google.gson.JsonElement;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bk\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\f\u00a2\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0012J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\fH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\fH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\fH\u00c6\u0003J\u0086\u0001\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\fH\u00c6\u0001\u00a2\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010.\u001a\u00020\u0003H\u00d6\u0001J\t\u0010/\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001c\u00a8\u00060"}, d2 = {"Lcom/bayyari/tv/data/api/models/MovieDataDto;", "", "streamId", "", "name", "", "added", "categoryId", "containerExtension", "customSid", "directSource", "subtitles", "Lcom/google/gson/JsonElement;", "subtitle", "subtitleUrl", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V", "getStreamId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "getAdded", "getCategoryId", "getContainerExtension", "getCustomSid", "getDirectSource", "getSubtitles", "()Lcom/google/gson/JsonElement;", "getSubtitle", "getSubtitleUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/bayyari/tv/data/api/models/MovieDataDto;", "equals", "", "other", "hashCode", "toString", "app"})
public final class MovieDataDto {
    @com.google.gson.annotations.SerializedName(value = "stream_id")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.Integer streamId = null;
    @com.google.gson.annotations.SerializedName(value = "name")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String name = null;
    @com.google.gson.annotations.SerializedName(value = "added")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String added = null;
    @com.google.gson.annotations.SerializedName(value = "category_id")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String categoryId = null;
    @com.google.gson.annotations.SerializedName(value = "container_extension")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String containerExtension = null;
    @com.google.gson.annotations.SerializedName(value = "custom_sid")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String customSid = null;
    @com.google.gson.annotations.SerializedName(value = "direct_source")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String directSource = null;
    @com.google.gson.annotations.SerializedName(value = "subtitles")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitles = null;
    @com.google.gson.annotations.SerializedName(value = "subtitle")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitle = null;
    @com.google.gson.annotations.SerializedName(value = "subtitle_url")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitleUrl = null;
    
    public MovieDataDto(@org.jetbrains.annotations.Nullable()
    java.lang.Integer streamId, @org.jetbrains.annotations.Nullable()
    java.lang.String name, @org.jetbrains.annotations.Nullable()
    java.lang.String added, @org.jetbrains.annotations.Nullable()
    java.lang.String categoryId, @org.jetbrains.annotations.Nullable()
    java.lang.String containerExtension, @org.jetbrains.annotations.Nullable()
    java.lang.String customSid, @org.jetbrains.annotations.Nullable()
    java.lang.String directSource, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitles, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitle, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitleUrl) {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Integer getStreamId() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getName() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getAdded() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getCategoryId() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getContainerExtension() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getCustomSid() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getDirectSource() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement getSubtitles() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement getSubtitle() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement getSubtitleUrl() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Integer component1() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component10() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component2() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component3() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component4() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component5() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component6() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component7() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component8() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component9() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.api.models.MovieDataDto copy(@org.jetbrains.annotations.Nullable()
    java.lang.Integer streamId, @org.jetbrains.annotations.Nullable()
    java.lang.String name, @org.jetbrains.annotations.Nullable()
    java.lang.String added, @org.jetbrains.annotations.Nullable()
    java.lang.String categoryId, @org.jetbrains.annotations.Nullable()
    java.lang.String containerExtension, @org.jetbrains.annotations.Nullable()
    java.lang.String customSid, @org.jetbrains.annotations.Nullable()
    java.lang.String directSource, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitles, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitle, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitleUrl) {
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