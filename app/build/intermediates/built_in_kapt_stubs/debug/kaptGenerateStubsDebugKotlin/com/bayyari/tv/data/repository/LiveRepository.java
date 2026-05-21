package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.entities.ChannelEntity;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.domain.model.Server;
import com.bayyari.tv.util.M3uParser;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import javax.inject.Inject;
import javax.inject.Singleton;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\b\b\u0010\tJ$\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0016\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0015J \u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0018J$\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u001bJ\f\u0010\u001c\u001a\u00020\r*\u00020\u001dH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"}, d2 = {"Lcom/bayyari/tv/data/repository/LiveRepository;", "", "api", "Lcom/bayyari/tv/data/api/XtreamApiService;", "channelDao", "Lcom/bayyari/tv/data/local/dao/ChannelDao;", "m3uParser", "Lcom/bayyari/tv/util/M3uParser;", "<init>", "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/util/M3uParser;)V", "observeChannels", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/bayyari/tv/domain/model/Channel;", "serverId", "", "categoryId", "", "refresh", "server", "Lcom/bayyari/tv/domain/model/Server;", "(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getChannel", "streamId", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "search", "query", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toDomain", "Lcom/bayyari/tv/data/local/entities/ChannelEntity;", "app"})
public final class LiveRepository {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.api.XtreamApiService api = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.ChannelDao channelDao = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.M3uParser m3uParser = null;
    
    @javax.inject.Inject()
    public LiveRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.api.XtreamApiService api, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.ChannelDao channelDao, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.M3uParser m3uParser) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Channel>> observeChannels(int serverId, @org.jetbrains.annotations.Nullable()
    java.lang.String categoryId) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object refresh(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Integer> $completion) {
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
}