package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.local.dao.WatchHistoryDao;
import com.bayyari.tv.data.local.entities.WatchHistoryEntity;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import javax.inject.Inject;
import javax.inject.Singleton;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\u000fJ(\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"}, d2 = {"Lcom/bayyari/tv/data/repository/WatchHistoryRepository;", "", "dao", "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;", "<init>", "(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V", "observeAll", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;", "serverId", "", "save", "", "entity", "(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "find", "contentId", "contentType", "", "(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"})
public final class WatchHistoryRepository {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.WatchHistoryDao dao = null;
    
    @javax.inject.Inject()
    public WatchHistoryRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.WatchHistoryDao dao) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.data.local.entities.WatchHistoryEntity>> observeAll(int serverId) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object save(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.entities.WatchHistoryEntity entity, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object find(int contentId, @org.jetbrains.annotations.NotNull()
    java.lang.String contentType, int serverId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.local.entities.WatchHistoryEntity> $completion) {
        return null;
    }
}