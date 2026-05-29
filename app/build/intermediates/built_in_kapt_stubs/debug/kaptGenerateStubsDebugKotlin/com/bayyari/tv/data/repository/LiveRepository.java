package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.entities.ChannelEntity;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.domain.model.Server;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;
import javax.inject.Singleton;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\n2\b\b\u0002\u0010\u0011\u001a\u00020\u000bJ\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\u00132\u0006\u0010\u0010\u001a\u00020\nJ$\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00150\u00132\u0006\u0010\u0010\u001a\u00020\n2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J \u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u0011\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001bH\u0086@\u00a2\u0006\u0002\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001bH\u0082@\u00a2\u0006\u0002\u0010\u001eJ \u0010 \u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010!\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\"J$\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010%J\f\u0010&\u001a\u00020\u0016*\u00020\'H\u0002J\u001a\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00182\b\u0010+\u001a\u0004\u0018\u00010,H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"}, d2 = {"Lcom/bayyari/tv/data/repository/LiveRepository;", "", "api", "Lcom/bayyari/tv/data/api/XtreamApiService;", "channelDao", "Lcom/bayyari/tv/data/local/dao/ChannelDao;", "<init>", "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/ChannelDao;)V", "lastRefreshMsByServer", "Ljava/util/concurrent/ConcurrentHashMap;", "", "", "refreshMutex", "Lkotlinx/coroutines/sync/Mutex;", "isStale", "", "serverId", "thresholdMs", "observeChannelCount", "Lkotlinx/coroutines/flow/Flow;", "observeChannels", "", "Lcom/bayyari/tv/domain/model/Channel;", "categoryId", "", "refreshIfStale", "server", "Lcom/bayyari/tv/domain/model/Server;", "(Lcom/bayyari/tv/domain/model/Server;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refresh", "(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshLocked", "getChannel", "streamId", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "search", "query", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toDomain", "Lcom/bayyari/tv/data/local/entities/ChannelEntity;", "safeLogWarning", "", "message", "throwable", "", "app"})
public final class LiveRepository {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.api.XtreamApiService api = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.ChannelDao channelDao = null;
    @org.jetbrains.annotations.NotNull()
    private final java.util.concurrent.ConcurrentHashMap<java.lang.Integer, java.lang.Long> lastRefreshMsByServer = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.sync.Mutex refreshMutex = null;
    
    @javax.inject.Inject()
    public LiveRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.api.XtreamApiService api, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.ChannelDao channelDao) {
        super();
    }
    
    public final boolean isStale(int serverId, long thresholdMs) {
        return false;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.lang.Integer> observeChannelCount(int serverId) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Channel>> observeChannels(int serverId, @org.jetbrains.annotations.Nullable()
    java.lang.String categoryId) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object refreshIfStale(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server, long thresholdMs, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Integer> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object refresh(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Integer> $completion) {
        return null;
    }
    
    private final java.lang.Object refreshLocked(com.bayyari.tv.domain.model.Server server, kotlin.coroutines.Continuation<? super java.lang.Integer> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object getChannel(int serverId, int streamId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.domain.model.Channel> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object search(int serverId, @org.jetbrains.annotations.NotNull()
    java.lang.String query, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.domain.model.Channel>> $completion) {
        return null;
    }
    
    private final com.bayyari.tv.domain.model.Channel toDomain(com.bayyari.tv.data.local.entities.ChannelEntity $this$toDomain) {
        return null;
    }
    
    private final void safeLogWarning(java.lang.String message, java.lang.Throwable throwable) {
    }
}