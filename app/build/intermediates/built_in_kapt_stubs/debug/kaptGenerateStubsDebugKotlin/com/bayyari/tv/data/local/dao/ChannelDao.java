package com.bayyari.tv.data.local.dao;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;
import androidx.room.Transaction;
import com.bayyari.tv.data.local.entities.ChannelEntity;
import kotlinx.coroutines.flow.Flow;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u00a7@\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u00a7@\u00a2\u0006\u0002\u0010\rJ$\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0097@\u00a2\u0006\u0002\u0010\u0010J\u001c\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00122\u0006\u0010\u000b\u001a\u00020\fH\'J$\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00122\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015H\'J \u0010\u0016\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\fH\u00a7@\u00a2\u0006\u0002\u0010\u0018J$\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0015H\u00a7@\u00a2\u0006\u0002\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\fH\u00a7@\u00a2\u0006\u0002\u0010\rJ\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u00122\u0006\u0010\u000b\u001a\u00020\fH\'\u00a8\u0006\u001e"}, d2 = {"Lcom/bayyari/tv/data/local/dao/ChannelDao;", "", "<init>", "()V", "upsertAll", "", "channels", "", "Lcom/bayyari/tv/data/local/entities/ChannelEntity;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearForServer", "serverId", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "replaceAllForServer", "entities", "(ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "observeAll", "Lkotlinx/coroutines/flow/Flow;", "observeByCategory", "categoryId", "", "findById", "streamId", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "search", "query", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "count", "observeCount", "app"})
@androidx.room.Dao()
public abstract class ChannelDao {
    
    public ChannelDao() {
        super();
    }
    
    @androidx.room.Insert(onConflict = 1)
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object upsertAll(@org.jetbrains.annotations.NotNull()
    java.util.List<com.bayyari.tv.data.local.entities.ChannelEntity> channels, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    @androidx.room.Query(value = "DELETE FROM channels WHERE serverId = :serverId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object clearForServer(int serverId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion);
    
    /**
     * Atomically replaces all channels for a server — UI never sees an empty state.
     */
    @androidx.room.Transaction()
    @org.jetbrains.annotations.Nullable()
    public java.lang.Object replaceAllForServer(int serverId, @org.jetbrains.annotations.NotNull()
    java.util.List<com.bayyari.tv.data.local.entities.ChannelEntity> entities, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super kotlin.Unit> $completion) {
        return null;
    }
    
    @androidx.room.Query(value = "SELECT * FROM channels WHERE serverId = :serverId ORDER BY name COLLATE NOCASE ASC")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.data.local.entities.ChannelEntity>> observeAll(int serverId);
    
    @androidx.room.Query(value = "SELECT * FROM channels WHERE serverId = :serverId AND categoryId = :categoryId ORDER BY name COLLATE NOCASE ASC")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.data.local.entities.ChannelEntity>> observeByCategory(int serverId, @org.jetbrains.annotations.NotNull()
    java.lang.String categoryId);
    
    @androidx.room.Query(value = "SELECT * FROM channels WHERE serverId = :serverId AND streamId = :streamId LIMIT 1")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object findById(int serverId, int streamId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.data.local.entities.ChannelEntity> $completion);
    
    @androidx.room.Query(value = "SELECT * FROM channels WHERE serverId = :serverId AND name LIKE \'%\' || :query || \'%\' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object search(int serverId, @org.jetbrains.annotations.NotNull()
    java.lang.String query, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.data.local.entities.ChannelEntity>> $completion);
    
    @androidx.room.Query(value = "SELECT COUNT(*) FROM channels WHERE serverId = :serverId")
    @org.jetbrains.annotations.Nullable()
    public abstract java.lang.Object count(int serverId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.lang.Integer> $completion);
    
    @androidx.room.Query(value = "SELECT COUNT(*) FROM channels WHERE serverId = :serverId")
    @org.jetbrains.annotations.NotNull()
    public abstract kotlinx.coroutines.flow.Flow<java.lang.Integer> observeCount(int serverId);
}