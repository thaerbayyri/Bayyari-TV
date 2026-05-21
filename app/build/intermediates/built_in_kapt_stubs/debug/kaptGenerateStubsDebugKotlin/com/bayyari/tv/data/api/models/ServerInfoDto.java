package com.bayyari.tv.data.api.models;

import com.google.gson.annotations.SerializedName;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jn\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\'H\u00d6\u0001J\t\u0010(\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f\u00a8\u0006)"}, d2 = {"Lcom/bayyari/tv/data/api/models/ServerInfoDto;", "", "url", "", "port", "httpsPort", "protocol", "rtmpPort", "timezone", "timestampNow", "", "timeNow", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getPort", "getHttpsPort", "getProtocol", "getRtmpPort", "getTimezone", "getTimestampNow", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getTimeNow", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/bayyari/tv/data/api/models/ServerInfoDto;", "equals", "", "other", "hashCode", "", "toString", "app"})
public final class ServerInfoDto {
    @com.google.gson.annotations.SerializedName(value = "url")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String url = null;
    @com.google.gson.annotations.SerializedName(value = "port")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String port = null;
    @com.google.gson.annotations.SerializedName(value = "https_port")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String httpsPort = null;
    @com.google.gson.annotations.SerializedName(value = "server_protocol")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String protocol = null;
    @com.google.gson.annotations.SerializedName(value = "rtmp_port")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String rtmpPort = null;
    @com.google.gson.annotations.SerializedName(value = "timezone")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String timezone = null;
    @com.google.gson.annotations.SerializedName(value = "timestamp_now")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.Long timestampNow = null;
    @com.google.gson.annotations.SerializedName(value = "time_now")
    @org.jetbrains.annotations.Nullable()
    private final java.lang.String timeNow = null;
    
    public ServerInfoDto(@org.jetbrains.annotations.Nullable()
    java.lang.String url, @org.jetbrains.annotations.Nullable()
    java.lang.String port, @org.jetbrains.annotations.Nullable()
    java.lang.String httpsPort, @org.jetbrains.annotations.Nullable()
    java.lang.String protocol, @org.jetbrains.annotations.Nullable()
    java.lang.String rtmpPort, @org.jetbrains.annotations.Nullable()
    java.lang.String timezone, @org.jetbrains.annotations.Nullable()
    java.lang.Long timestampNow, @org.jetbrains.annotations.Nullable()
    java.lang.String timeNow) {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getUrl() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getPort() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getHttpsPort() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getProtocol() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getRtmpPort() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getTimezone() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Long getTimestampNow() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String getTimeNow() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component1() {
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
    public final java.lang.Long component7() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.String component8() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.api.models.ServerInfoDto copy(@org.jetbrains.annotations.Nullable()
    java.lang.String url, @org.jetbrains.annotations.Nullable()
    java.lang.String port, @org.jetbrains.annotations.Nullable()
    java.lang.String httpsPort, @org.jetbrains.annotations.Nullable()
    java.lang.String protocol, @org.jetbrains.annotations.Nullable()
    java.lang.String rtmpPort, @org.jetbrains.annotations.Nullable()
    java.lang.String timezone, @org.jetbrains.annotations.Nullable()
    java.lang.Long timestampNow, @org.jetbrains.annotations.Nullable()
    java.lang.String timeNow) {
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