package com.bayyari.tv.data.api.models;

import com.google.gson.annotations.SerializedName;
import com.google.gson.JsonElement;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u00ad\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\b\u0016\u0010\u0017J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010%J\u000b\u00108\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u00d4\u0001\u0010=\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0013H\u00c6\u0001\u00a2\u0006\u0002\u0010>J\u0013\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010B\u001a\u00020\u000fH\u00d6\u0001J\t\u0010C\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b \u0010\u0019R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0019R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0019R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010&\u001a\u0004\b$\u0010%R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\'\u0010\u0019R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0019R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b+\u0010*R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b,\u0010*\u00a8\u0006D"}, d2 = {"Lcom/bayyari/tv/data/api/models/MovieInfo;", "", "movieImage", "", "backdropPath", "", "tmdbId", "youtubeTrailer", "genre", "plot", "cast", "rating", "director", "releaseDate", "durationSecs", "", "duration", "country", "subtitles", "Lcom/google/gson/JsonElement;", "subtitle", "subtitleUrl", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V", "getMovieImage", "()Ljava/lang/String;", "getBackdropPath", "()Ljava/util/List;", "getTmdbId", "getYoutubeTrailer", "getGenre", "getPlot", "getCast", "getRating", "getDirector", "getReleaseDate", "getDurationSecs", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDuration", "getCountry", "getSubtitles", "()Lcom/google/gson/JsonElement;", "getSubtitle", "getSubtitleUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "copy", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/bayyari/tv/data/api/models/MovieInfo;", "equals", "", "other", "hashCode", "toString", "app"})
public final class MovieInfo {
    @com.google.gson.annotations.SerializedName(value = "movie_image")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String movieImage = null;
    @com.google.gson.annotations.SerializedName(value = "backdrop_path")
    @org.jetbrains.annotations.Nullable()
    private final java.util.List<java.lang.String> backdropPath = null;
    @com.google.gson.annotations.SerializedName(value = "tmdb_id")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String tmdbId = null;
    @com.google.gson.annotations.SerializedName(value = "youtube_trailer")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String youtubeTrailer = null;
    @com.google.gson.annotations.SerializedName(value = "genre")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String genre = null;
    @com.google.gson.annotations.SerializedName(value = "plot")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String plot = null;
    @com.google.gson.annotations.SerializedName(value = "cast")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String cast = null;
    @com.google.gson.annotations.SerializedName(value = "rating")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String rating = null;
    @com.google.gson.annotations.SerializedName(value = "director")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String director = null;
    @com.google.gson.annotations.SerializedName(value = "releasedate")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String releaseDate = null;
    @com.google.gson.annotations.SerializedName(value = "duration_secs")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.Integer durationSecs = null;
    @com.google.gson.annotations.SerializedName(value = "duration")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String duration = null;
    @com.google.gson.annotations.SerializedName(value = "country")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String country = null;
    @com.google.gson.annotations.SerializedName(value = "subtitles")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitles = null;
    @com.google.gson.annotations.SerializedName(value = "subtitle")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitle = null;
    @com.google.gson.annotations.SerializedName(value = "subtitle_url")
    @org.jetbrains.annotations.Nullable()
    private final com.google.gson.JsonElement subtitleUrl = null;
    
    public MovieInfo(@org.jetbrains.annotations.Nullable()
    java.lang.String movieImage, @org.jetbrains.annotations.Nullable()
    java.util.List<java.lang.String> backdropPath, @org.jetbrains.annotations.Nullable()
    java.lang.String tmdbId, @org.jetbrains.annotations.Nullable()
    java.lang.String youtubeTrailer, @org.jetbrains.annotations.Nullable()
    java.lang.String genre, @org.jetbrains.annotations.Nullable()
    java.lang.String plot, @org.jetbrains.annotations.Nullable()
    java.lang.String cast, @org.jetbrains.annotations.Nullable()
    java.lang.String rating, @org.jetbrains.annotations.Nullable()
    java.lang.String director, @org.jetbrains.annotations.Nullable()
    java.lang.String releaseDate, @org.jetbrains.annotations.Nullable()
    java.lang.Integer durationSecs, @org.jetbrains.annotations.Nullable()
    java.lang.String duration, @org.jetbrains.annotations.Nullable()
    java.lang.String country, @org.jetbrains.annotations.Nullable()
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
    public final java.util.List<java.lang.String> getBackdropPath() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getTmdbId() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getYoutubeTrailer() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getGenre() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getPlot() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getCast() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getRating() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getDirector() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getReleaseDate() {
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
    public final java.lang.String getCountry() {
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
    public final java.lang.String component10() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Integer component11() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component12() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component13() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component14() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component15() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.google.gson.JsonElement component16() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.util.List<java.lang.String> component2() {
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
    public final java.lang.String component8() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component9() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.api.models.MovieInfo copy(@org.jetbrains.annotations.Nullable()
    java.lang.String movieImage, @org.jetbrains.annotations.Nullable()
    java.util.List<java.lang.String> backdropPath, @org.jetbrains.annotations.Nullable()
    java.lang.String tmdbId, @org.jetbrains.annotations.Nullable()
    java.lang.String youtubeTrailer, @org.jetbrains.annotations.Nullable()
    java.lang.String genre, @org.jetbrains.annotations.Nullable()
    java.lang.String plot, @org.jetbrains.annotations.Nullable()
    java.lang.String cast, @org.jetbrains.annotations.Nullable()
    java.lang.String rating, @org.jetbrains.annotations.Nullable()
    java.lang.String director, @org.jetbrains.annotations.Nullable()
    java.lang.String releaseDate, @org.jetbrains.annotations.Nullable()
    java.lang.Integer durationSecs, @org.jetbrains.annotations.Nullable()
    java.lang.String duration, @org.jetbrains.annotations.Nullable()
    java.lang.String country, @org.jetbrains.annotations.Nullable()
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