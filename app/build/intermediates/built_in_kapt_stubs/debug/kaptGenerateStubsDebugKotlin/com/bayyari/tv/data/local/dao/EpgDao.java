package com.bayyari.tv.data.local.dao;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;
import com.bayyari.tv.data.local.entities.EpgEntity;
import kotlinx.coroutines.flow.Flow;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u00a7@\u00a2\u0006\u0002\u0010\fJ\u0016\u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u00a7@\u00a2\u0006\u0002\u0010\u000eJ$\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\'J4\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u00a7@\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016\u00c0\u0006\u0003"}, d2 = {"Lcom/bayyari/tv/data/local/dao/EpgDao;", "", "upsertAll", "", "items", "", "Lcom/bayyari/tv/data/local/entities/EpgEntity;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearForStream", "serverId", "", "streamId", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearForServer", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "observeForStream", "Lkotlinx/coroutines/flow/Flow;", "getForRange", "startMs", "", "endMs", "(IIJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"})
@androidx.room.Dao()
public abstract interface EpgDao {
    
    @androidx.room.Insert(onConflict = 1)
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object upsertAll(@org.jetbrains.annotations.NotNull()
    java.util.List<com.bayyari.tv.data.local.entities.EpgEntity> items, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "DELETE FROM epg WHERE serverId = :serverId AND streamId = :streamId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object clearForStream(int serverId, int streamId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "DELETE FROM epg WHERE serverId = :serverId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object clearForServer(int serverId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "SELECT * FROM epg WHERE serverId = :serverId AND streamId = :streamId ORDER BY startMs ASC")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.data.local.entities.EpgEntity>> observeForStream(int serverId, int streamId);
    
    @androidx.room.Query(value = "SELECT * FROM epg WHERE serverId = :serverId AND streamId = :streamId AND startMs <= :endMs AND endMs >= :startMs ORDER BY startMs ASC")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object getForRange(int serverId, int streamId, long startMs, long endMs, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.local.entities.EpgEntity>> $completion);
}