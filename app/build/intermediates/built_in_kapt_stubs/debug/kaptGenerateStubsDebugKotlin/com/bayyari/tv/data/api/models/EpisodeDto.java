package com.bayyari.tv.data.api.models;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.JsonElement;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u007f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\b\u0012\u0010\u0013J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\bH\u00c6\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001dJ\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u009e\u0001\u00102\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001\u00a2\u0006\u0002\u00103J\u0013\u00104\u001a\u0002052\b\u00106\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00107\u001a\u00020\nH\u00d6\u0001J\t\u00108\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0015R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b%\u0010#\u00a8\u00069"}, d2 = {"Lcom/bayyari/tv/data/api/models/EpisodeDto;", "", "id", "", "episodeNum", "title", "containerExtension", "info", "Lcom/bayyari/tv/data/api/models/EpisodeInfo;", "season", "", "customSid", "added", "directSource", "subtitles", "Lcom/google/gson/JsonElement;", "subtitle", "subtitleUrl", "<init>", "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V", "getId", "()Ljava/lang/String;", "getEpisodeNum", "()Ljava/lang/Object;", "getTitle", "getContainerExtension", "getInfo", "()Lcom/bayyari/tv/data/api/models/EpisodeInfo;", "getSeason", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCustomSid", "getAdded", "getDirectSource", "getSubtitles", "()Lcom/google/gson/JsonElement;", "getSubtitle", "getSubtitleUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/data/api/models/EpisodeInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/bayyari/tv/data/api/models/EpisodeDto;", "equals", "", "other", "hashCode", "toString", "app"})
public final class EpisodeDto {
    @com.google.gson.annotations.SerializedName(value = "id")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String id = null;
    @com.google.gson.annotations.SerializedName(value = "episode_num")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.Object episodeNum = null;
    @com.google.gson.annotations.SerializedName(value = "title")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String title = null;
    @com.google.gson.annotations.SerializedName(value = "container_extension")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String containerExtension = null;
    @com.google.gson.annotations.SerializedName(value = "info")
    @org.jetbrains.annotations.Nullable()
    private final com.bayyari.tv.data.api.models.EpisodeInfo info = null;
    @com.google.gson.annotations.SerializedName(value = "season")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.Integer season = null;
    @com.google.gson.annotations.SerializedName(value = "custom_sid")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String customSid = null;
    @com.google.gson.annotations.SerializedName(value = "added")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String added = null;
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
    
    public EpisodeDto(@org.jetbrains.annotations.Nullable()
    java.lang.String id, @org.jetbrains.annotations.Nullable()
    java.lang.Object episodeNum, @org.jetbrains.annotations.Nullable()
    java.lang.String title, @org.jetbrains.annotations.Nullable()
    java.lang.String containerExtension, @org.jetbrains.annotations.Nullable()
    com.bayyari.tv.data.api.models.EpisodeInfo info, @org.jetbrains.annotations.Nullable()
    java.lang.Integer season, @org.jetbrains.annotations.Nullable()
    java.lang.String customSid, @org.jetbrains.annotations.Nullable()
    java.lang.String added, @org.jetbrains.annotations.Nullable()
    java.lang.String directSource, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitles, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitle, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitleUrl) {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getId() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object getEpisodeNum() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getTitle() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getContainerExtension() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.bayyari.tv.data.api.models.EpisodeInfo getInfo() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Integer getSeason() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getCustomSid() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getAdded() {
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
    public final java.lang.String component1() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component10() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component11() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component12() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object component2() {
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
    public final com.bayyari.tv.data.api.models.EpisodeInfo component5() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Integer component6() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component7() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component8() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component9() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.api.models.EpisodeDto copy(@org.jetbrains.annotations.Nullable()
    java.lang.String id, @org.jetbrains.annotations.Nullable()
    java.lang.Object episodeNum, @org.jetbrains.annotations.Nullable()
    java.lang.String title, @org.jetbrains.annotations.Nullable()
    java.lang.String containerExtension, @org.jetbrains.annotations.Nullable()
    com.bayyari.tv.data.api.models.EpisodeInfo info, @org.jetbrains.annotations.Nullable()
    java.lang.Integer season, @org.jetbrains.annotations.Nullable()
    java.lang.String customSid, @org.jetbrains.annotations.Nullable()
    java.lang.String added, @org.jetbrains.annotations.Nullable()
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