package com.bayyari.tv.util;

import com.bayyari.tv.domain.model.Channel;
import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * Streaming M3U / M3U8 parser. Produces [Channel] entries grouped by their `group-title`.
 *
 * Supported attributes on `#EXTINF`:
 * - tvg-id        → epgChannelId
 * - tvg-name      → name (overrides title after comma)
 * - tvg-logo      → streamIcon
 * - group-title   → categoryId / categoryName
 *
 * `#EXTM3U` header attributes supported:
 * - url-tvg       → returned in [ParseResult.epgUrl]
 *
 * Lines beginning with `#` other than `#EXTINF` are treated as headers/comments and skipped.
 */
@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0017\u0018B\t\b\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\bH\u0002J\u001c\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00132\u0006\u0010\u0011\u001a\u00020\bH\u0002J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0015\u001a\u00020\bH\u0002\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0019"}, d2 = {"Lcom/bayyari/tv/util/M3uParser;", "", "<init>", "()V", "parse", "", "Lcom/bayyari/tv/domain/model/Channel;", "content", "", "serverId", "", "parseFull", "Lcom/bayyari/tv/util/M3uParser$ParseResult;", "parseExtInf", "Lcom/bayyari/tv/util/M3uParser$ExtInf;", "line", "findUnquotedComma", "s", "parseAttributes", "", "parseStreamIdFromUrl", "url", "(Ljava/lang/String;)Ljava/lang/Integer;", "ParseResult", "ExtInf", "app"})
public final class M3uParser {
    
    @javax.inject.Inject()
    public M3uParser() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.util.List<com.bayyari.tv.domain.model.Channel> parse(@org.jetbrains.annotations.NotNull()
    java.lang.String content, int serverId) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.M3uParser.ParseResult parseFull(@org.jetbrains.annotations.NotNull()
    java.lang.String content, int serverId) {
        return null;
    }
    
    private final com.bayyari.tv.util.M3uParser.ExtInf parseExtInf(java.lang.String line) {
        return null;
    }
    
    private final int findUnquotedComma(java.lang.String s) {
        return 0;
    }
    
    private final java.util.Map<java.lang.String, java.lang.String> parseAttributes(java.lang.String s) {
        return null;
    }
    
    private final java.lang.Integer parseStreamIdFromUrl(java.lang.String url) {
        return null;
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n\u00a8\u0006\u0019"}, d2 = {"Lcom/bayyari/tv/util/M3uParser$ExtInf;", "", "name", "", "tvgId", "logo", "groupTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getTvgId", "getLogo", "getGroupTitle", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app"})
    static final class ExtInf {
        @org.jetbrains.annotations.NotNull()
        private final java.lang.String name = null;
        @org.jetbrains.annotations.NotNull()
        private final java.lang.String tvgId = null;
        @org.jetbrains.annotations.NotNull()
        private final java.lang.String logo = null;
        @org.jetbrains.annotations.NotNull()
        private final java.lang.String groupTitle = null;
        
        public ExtInf(@org.jetbrains.annotations.NotNull()
        java.lang.String name, @org.jetbrains.annotations.NotNull()
        java.lang.String tvgId, @org.jetbrains.annotations.NotNull()
        java.lang.String logo, @org.jetbrains.annotations.NotNull()
        java.lang.String groupTitle) {
            super();
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String getName() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String getTvgId() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String getLogo() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String getGroupTitle() {
            return null;
        }
        
        public ExtInf() {
            super();
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String component1() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String component2() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String component3() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.lang.String component4() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.util.M3uParser.ExtInf copy(@org.jetbrains.annotations.NotNull()
        java.lang.String name, @org.jetbrains.annotations.NotNull()
        java.lang.String tvgId, @org.jetbrains.annotations.NotNull()
        java.lang.String logo, @org.jetbrains.annotations.NotNull()
        java.lang.String groupTitle) {
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
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J%\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0006H\u00d6\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\u00a8\u0006\u0016"}, d2 = {"Lcom/bayyari/tv/util/M3uParser$ParseResult;", "", "channels", "", "Lcom/bayyari/tv/domain/model/Channel;", "epgUrl", "", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "getChannels", "()Ljava/util/List;", "getEpgUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app"})
    public static final class ParseResult {
        @org.jetbrains.annotations.NotNull()
        private final java.util.List<com.bayyari.tv.domain.model.Channel> channels = null;
        @org.jetbrains.annotations.Nullable()
        private final java.lang.String epgUrl = null;
        
        public ParseResult(@org.jetbrains.annotations.NotNull()
        java.util.List<com.bayyari.tv.domain.model.Channel> channels, @org.jetbrains.annotations.Nullable()
        java.lang.String epgUrl) {
            super();
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<com.bayyari.tv.domain.model.Channel> getChannels() {
            return null;
        }
        
        @org.jetbrains.annotations.Nullable()
        public final java.lang.String getEpgUrl() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final java.util.List<com.bayyari.tv.domain.model.Channel> component1() {
            return null;
        }
        
        @org.jetbrains.annotations.Nullable()
        public final java.lang.String component2() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.util.M3uParser.ParseResult copy(@org.jetbrains.annotations.NotNull()
        java.util.List<com.bayyari.tv.domain.model.Channel> channels, @org.jetbrains.annotations.Nullable()
        java.lang.String epgUrl) {
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