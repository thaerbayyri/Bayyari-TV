package com.bayyari.tv.data.api.models;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.JsonElement;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\b\u0010\u0010\u0011J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u0092\u0001\u0010,\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u00020\u0006H\u00d6\u0001J\t\u00102\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u001b\u0010\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0013R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001eR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b \u0010\u001e\u00a8\u00063"}, d2 = {"Lcom/bayyari/tv/data/api/models/EpisodeInfo;", "", "movieImage", "", "plot", "durationSecs", "", "duration", "rating", "releaseDate", "season", "tmdbId", "subtitles", "Lcom/google/gson/JsonElement;", "subtitle", "subtitleUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V", "getMovieImage", "()Ljava/lang/String;", "getPlot", "getDurationSecs", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDuration", "getRating", "getReleaseDate", "getSeason", "getTmdbId", "getSubtitles", "()Lcom/google/gson/JsonElement;", "getSubtitle", "getSubtitleUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/bayyari/tv/data/api/models/EpisodeInfo;", "equals", "", "other", "hashCode", "toString", "app"})
public final class EpisodeInfo {
    @com.google.gson.annotations.SerializedName(value = "movie_image")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String movieImage = null;
    @com.google.gson.annotations.SerializedName(value = "plot")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String plot = null;
    @com.google.gson.annotations.SerializedName(value = "duration_secs")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.Integer durationSecs = null;
    @com.google.gson.annotations.SerializedName(value = "duration")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String duration = null;
    @com.google.gson.annotations.SerializedName(value = "rating")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String rating = null;
    @com.google.gson.annotations.SerializedName(value = "releasedate")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String releaseDate = null;
    @com.google.gson.annotations.SerializedName(value = "season")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.Integer season = null;
    @com.google.gson.annotations.SerializedName(value = "tmdb_id")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String tmdbId = null;
    @com.google.gson.annotations.SerializedName(value = "subtitles")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitles = null;
    @com.google.gson.annotations.SerializedName(value = "subtitle")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitle = null;
    @com.google.gson.annotations.SerializedName(value = "subtitle_url")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitleUrl = null;
    
    public EpisodeInfo(@org.jetbrains.annotations.Nullable()
    java.lang.String movieImage, @org.jetbrains.annotations.Nullable()
    java.lang.String plot, @org.jetbrains.annotations.Nullable()
    java.lang.Integer durationSecs, @org.jetbrains.annotations.Nullable()
    java.lang.String duration, @org.jetbrains.annotations.Nullable()
    java.lang.String rating, @org.jetbrains.annotations.Nullable()
    java.lang.String releaseDate, @org.jetbrains.annotations.Nullable()
    java.lang.Integer season, @org.jetbrains.annotations.Nullable()
    java.lang.String tmdbId, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitles, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitle, @org.jetbrains.annotations.Nullable()
    com.google.gson.JsonElement subtitleUrl) {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getMovieImage() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getPlot() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Integer getDurationSecs() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getDuration() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getRating() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getReleaseDate() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Integer getSeason() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getTmdbId() {
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
    public final java.lang.String component2() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Integer component3() {
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
    public final java.lang.Integer component7() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component8() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component9() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.api.models.EpisodeInfo copy(@org.jetbrains.annotations.Nullable()
    java.lang.String movieImage, @org.jetbrains.annotations.Nullable()
    java.lang.String plot, @org.jetbrains.annotations.Nullable()
    java.lang.Integer durationSecs, @org.jetbrains.annotations.Nullable()
    java.lang.String duration, @org.jetbrains.annotations.Nullable()
    java.lang.String rating, @org.jetbrains.annotations.Nullable()
    java.lang.String releaseDate, @org.jetbrains.annotations.Nullable()
    java.lang.Integer season, @org.jetbrains.annotations.Nullable()
    java.lang.String tmdbId, @org.jetbrains.annotations.Nullable()
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