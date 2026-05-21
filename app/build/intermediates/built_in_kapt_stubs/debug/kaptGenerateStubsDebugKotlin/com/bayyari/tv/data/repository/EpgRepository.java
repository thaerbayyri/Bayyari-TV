package com.bayyari.tv.data.repository;

import android.util.Base64;
import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.entities.EpgEntity;
import com.bayyari.tv.domain.model.EpgProgram;
import com.bayyari.tv.domain.model.Server;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import javax.inject.Inject;
import javax.inject.Singleton;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ.\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0013J$\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0015J\f\u0010\u0016\u001a\u00020\u000b*\u00020\u0017H\u0002J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002J#\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00192\b\u0010\u001e\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "}, d2 = {"Lcom/bayyari/tv/data/repository/EpgRepository;", "", "api", "Lcom/bayyari/tv/data/api/XtreamApiService;", "epgDao", "Lcom/bayyari/tv/data/local/dao/EpgDao;", "<init>", "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/EpgDao;)V", "observeEpg", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/bayyari/tv/domain/model/EpgProgram;", "serverId", "", "streamId", "refresh", "server", "Lcom/bayyari/tv/domain/model/Server;", "limit", "(Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCatchUp", "(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toDomain", "Lcom/bayyari/tv/data/local/entities/EpgEntity;", "decodeBase64", "", "raw", "parseTimestamp", "", "epochSeconds", "dateTime", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;", "app"})
public final class EpgRepository {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.api.XtreamApiService api = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.local.dao.EpgDao epgDao = null;
    
    @javax.inject.Inject()
    public EpgRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.api.XtreamApiService api, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.EpgDao epgDao) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.EpgProgram>> observeEpg(int serverId, int streamId) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object refresh(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server, int streamId, int limit, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.domain.model.EpgProgram>> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object getCatchUp(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server, int streamId, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super java.util.List<com.bayyari.tv.domain.model.EpgProgram>> $completion) {
        return null;
    }
    
    private final com.bayyari.tv.domain.model.EpgProgram toDomain(com.bayyari.tv.data.local.entities.EpgEntity $this$toDomain) {
        return null;
    }
    
    private final java.lang.String decodeBase64(java.lang.String raw) {
        return null;
    }
    
    private final java.lang.Long parseTimestamp(java.lang.String epochSeconds, java.lang.String dateTime) {
        return null;
    }
}