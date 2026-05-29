package com.bayyari.tv.data.api.models;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.JsonElement;

/**
 * Response shape for `action=get_series_info`. The `episodes` field is unusual: the upstream
 * API returns a JSON object keyed by season number, e.g. {"1": [...], "2": [...]}, which we
 * deserialize as a Map.
 */
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0003\u0018\u00010\b\u00a2\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u001d\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0003\u0018\u00010\bH\u00c6\u0003JE\u0010\u0016\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u001c\b\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0003\u0018\u00010\bH\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\tH\u00d6\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R*\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0003\u0018\u00010\b8\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012\u00a8\u0006\u001d"}, d2 = {"Lcom/bayyari/tv/data/api/models/SeriesInfoDto;", "", "seasons", "", "Lcom/bayyari/tv/data/api/models/SeasonDto;", "info", "Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;", "episodes", "", "", "Lcom/bayyari/tv/data/api/models/EpisodeDto;", "<init>", "(Ljava/util/List;Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;Ljava/util/Map;)V", "getSeasons", "()Ljava/util/List;", "getInfo", "()Lcom/bayyari/tv/data/api/models/SeriesInfoBlock;", "getEpisodes", "()Ljava/util/Map;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app"})
public final class SeriesInfoDto {
    @com.google.gson.annotations.SerializedName(value = "seasons")
    @org.jetbrains.annotations.Nullable()
    private final java.util.List<com.bayyari.tv.data.api.models.SeasonDto> seasons = null;
    @com.google.gson.annotations.SerializedName(value = "info")
    @org.jetbrains.annotations.Nullable()
    private final com.bayyari.tv.data.api.models.SeriesInfoBlock info = null;
    @com.google.gson.annotations.SerializedName(value = "episodes")
    @org.jetbrains.annotations.Nullable()
    private final java.util.Map<java.lang.String, java.util.List<com.bayyari.tv.data.api.models.EpisodeDto>> episodes = null;
    
    public SeriesInfoDto(@org.jetbrains.annotations.Nullable()
    java.util.List<com.bayyari.tv.data.api.models.SeasonDto> seasons, @org.jetbrains.annotations.Nullable()
    com.bayyari.tv.data.api.models.SeriesInfoBlock info, @org.jetbrains.annotations.Nullable()
    java.util.Map<java.lang.String, ? extends java.util.List<com.bayyari.tv.data.api.models.EpisodeDto>> episodes) {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.util.List<com.bayyari.tv.data.api.models.SeasonDto> getSeasons() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.bayyari.tv.data.api.models.SeriesInfoBlock getInfo() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.util.Map<java.lang.String, java.util.List<com.bayyari.tv.data.api.models.EpisodeDto>> getEpisodes() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.util.List<com.bayyari.tv.data.api.models.SeasonDto> component1() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.bayyari.tv.data.api.models.SeriesInfoBlock component2() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.util.Map<java.lang.String, java.util.List<com.bayyari.tv.data.api.models.EpisodeDto>> component3() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.api.models.SeriesInfoDto copy(@org.jetbrains.annotations.Nullable()
    java.util.List<com.bayyari.tv.data.api.models.SeasonDto> seasons, @org.jetbrains.annotations.Nullable()
    com.bayyari.tv.data.api.models.SeriesInfoBlock info, @org.jetbrains.annotations.Nullable()
    java.util.Map<java.lang.String, ? extends java.util.List<com.bayyari.tv.data.api.models.EpisodeDto>> episodes) {
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