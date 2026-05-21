package com.bayyari.tv.data.local.dao;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;
import com.bayyari.tv.data.local.entities.WatchHistoryEntity;
import kotlinx.coroutines.flow.Flow;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\t0\b2\u0006\u0010\n\u001a\u00020\u000bH\'J$\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\t0\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\'J(\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u00a7@\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u00a7@\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014\u00c0\u0006\u0003"}, d2 = {"Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;", "", "upsert", "", "item", "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;", "(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "observeAll", "Lkotlinx/coroutines/flow/Flow;", "", "serverId", "", "observeByType", "contentType", "", "find", "contentId", "(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clear", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"})
@androidx.room.Dao()
public abstract interface WatchHistoryDao {
    
    @androidx.room.Insert(onConflict = 1)
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object upsert(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.entities.WatchHistoryEntity item, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "SELECT * FROM watch_history WHERE serverId = :serverId ORDER BY watchedAt DESC")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.data.local.entities.WatchHistoryEntity>> observeAll(int serverId);
    
    @androidx.room.Query(value = "SELECT * FROM watch_history WHERE contentType = :contentType AND serverId = :serverId ORDER BY watchedAt DESC")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.data.local.entities.WatchHistoryEntity>> observeByType(int serverId, @org.jetbrains.annotations.NotNull()
    java.lang.String contentType);
    
    @androidx.room.Query(value = "SELECT * FROM watch_history WHERE contentId = :contentId AND contentType = :contentType AND serverId = :serverId LIMIT 1")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object find(int contentId, @org.jetbrains.annotations.NotNull()
    java.lang.String contentType, int serverId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.local.entities.WatchHistoryEntity> $completion);
    
    @androidx.room.Query(value = "DELETE FROM watch_history WHERE serverId = :serverId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object clear(int serverId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
}