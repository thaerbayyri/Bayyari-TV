.class final Landroidx/media3/session/MediaSessionStub;
.super Landroidx/media3/session/IMediaSession$Stub;
.source "MediaSessionStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$SessionTask;,
        Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$Controller2Cb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSessionStub"

.field public static final UNKNOWN_SEQUENCE_NUMBER:I = -0x80000000

.field public static final VERSION_INT:I = 0x2


# instance fields
.field private final connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private nextUniqueTrackGroupIdPrefix:I

.field private final pendingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Landroidx/media/MediaSessionManager;

.field private trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Landroidx/media3/common/TrackGroup;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;

    .line 132
    invoke-direct {p0}, Landroidx/media3/session/IMediaSession$Stub;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 135
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionManager:Landroidx/media/MediaSessionManager;

    .line 136
    new-instance v0, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    .line 139
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    .line 140
    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "commandCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "II",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 349
    .local p4, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "sequenceNumber":I
    .end local p3    # "commandCode":I
    .end local p4    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    .local v1, "caller":Landroidx/media3/session/IMediaController;
    .local v2, "sequenceNumber":I
    .local v4, "commandCode":I
    .local v5, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 351
    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 11
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .param p4, "commandCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "I",
            "Landroidx/media3/session/SessionCommand;",
            "I",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 368
    .local p5, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 372
    .local v1, "token":J
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    move-object v10, v0

    .line 373
    .local v10, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .local v5, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v5, :cond_1

    .line 408
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    return-void

    .line 381
    :cond_1
    nop

    .line 382
    :try_start_1
    invoke-virtual {v10}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda53;

    move-object v4, p0

    move v7, p2

    move-object v6, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda53;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;IILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;)V

    .line 381
    invoke-static {v0, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    nop

    .end local v5    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v10    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    .restart local v10    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    return-void

    .line 408
    .end local v10    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    throw v0
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "I",
            "Landroidx/media3/session/SessionCommand;",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 358
    .local p4, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .end local p2    # "sequenceNumber":I
    .end local p3    # "sessionCommand":Landroidx/media3/session/SessionCommand;
    .end local p4    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    .local v1, "caller":Landroidx/media3/session/IMediaController;
    .local v2, "sequenceNumber":I
    .local v3, "sessionCommand":Landroidx/media3/session/SessionCommand;
    .local v5, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 360
    return-void
.end method

.method private generateUniqueTrackGroupId(Landroidx/media3/common/TrackGroup;)Ljava/lang/String;
    .locals 3
    .param p1, "trackGroup"    # Landroidx/media3/common/TrackGroup;

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/session/MediaSessionStub;->nextUniqueTrackGroupIdPrefix:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/session/MediaSessionStub;->nextUniqueTrackGroupIdPrefix:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;TK;>;",
            "Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;"
        }
    .end annotation

    .line 206
    .local p0, "mediaItemsTask":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Landroidx/media3/common/MediaItem;>;>;TK;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda81;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda81;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)V

    return-object v0
.end method

.method private static handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
            ">;TK;>;",
            "Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;"
        }
    .end annotation

    .line 232
    .local p0, "mediaItemsTask":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;>;TK;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda66;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda66;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)V

    return-object v0
.end method

.method private static handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(TK;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "I",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;TK;>;",
            "Landroidx/media3/common/util/Consumer<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 418
    .local p0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    .local p3, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<TT;>;TK;>;"
    .local p4, "futureResultHandler":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Lcom/google/common/util/concurrent/ListenableFuture<TT;>;>;"
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 422
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 423
    .local v1, "outputFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v1, p4, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/util/Consumer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 436
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 423
    invoke-interface {v0, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 437
    return-object v1
.end method

.method static synthetic lambda$addMediaItem$34(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1164
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addMediaItem$35(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "playerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "mediaItems"    # Ljava/util/List;

    .line 1166
    invoke-virtual {p0, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$addMediaItemWithIndex$36(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1192
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addMediaItems$38(Ljava/util/List;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItems"    # Ljava/util/List;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1222
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addMediaItems$39(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "playerWrapper"    # Landroidx/media3/session/PlayerWrapper;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "items"    # Ljava/util/List;

    .line 1223
    invoke-virtual {p0, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$addMediaItemsWithIndex$40(Ljava/util/List;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItems"    # Ljava/util/List;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1251
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$decreaseDeviceVolume$58(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1583
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume()V

    return-void
.end method

.method static synthetic lambda$decreaseDeviceVolumeWithFlags$59(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "flags"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1596
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$getChildren$68(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "page"    # I
    .param p2, "pageSize"    # I
    .param p3, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p5, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p6, "sequenceNum"    # I

    .line 1795
    move v1, p2

    move-object p2, p0

    move-object p0, p4

    move p4, v1

    move-object v1, p3

    move p3, p1

    move-object p1, p5

    move-object p5, v1

    .local p0, "librarySessionImpl":Landroidx/media3/session/MediaLibrarySessionImpl;
    .local p1, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local p2, "parentId":Ljava/lang/String;
    .local p3, "page":I
    .local p4, "pageSize":I
    .local p5, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getItem$67(Ljava/lang/String;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1755
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetItemOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getLibraryRoot$66(Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p1, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1736
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetLibraryRootOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getSearchResult$70(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "page"    # I
    .param p2, "pageSize"    # I
    .param p3, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p5, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p6, "sequenceNum"    # I

    .line 1866
    move v1, p2

    move-object p2, p0

    move-object p0, p4

    move p4, v1

    move-object v1, p3

    move p3, p1

    move-object p1, p5

    move-object p5, v1

    .local p0, "librarySessionImpl":Landroidx/media3/session/MediaLibrarySessionImpl;
    .local p1, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local p2, "query":Ljava/lang/String;
    .local p3, "page":I
    .local p4, "pageSize":I
    .local p5, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetSearchResultOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$4(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "mediaItems"    # Ljava/util/List;

    .line 219
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    nop

    .line 221
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 220
    invoke-interface {p1, v0, p2, p3}, Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V

    .line 223
    :cond_0
    return-void
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$5(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
    .param p3, "mediaItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    nop

    .line 215
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda79;

    invoke-direct {v1, p0, p2, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda79;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V

    .line 216
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/SessionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 214
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$6(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "mediaItemsTask"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNumber"    # I

    .line 207
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/16 v1, -0x64

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    nop

    .line 212
    invoke-interface {p0, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda27;

    invoke-direct {v1, p2, p3, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)V

    .line 211
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$7(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 1
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;
    .param p2, "mediaItemsWithStartPosition"    # Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    .line 245
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    nop

    .line 247
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 246
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    .line 249
    :cond_0
    return-void
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$8(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;
    .param p3, "mediaItemsWithStartPosition"    # Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    nop

    .line 241
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda42;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    .line 242
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/SessionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 240
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$9(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "mediaItemsTask"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "mediaItemPlayerTask"    # Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNumber"    # I

    .line 233
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/16 v1, -0x64

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 237
    :cond_0
    nop

    .line 238
    invoke-interface {p0, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda20;

    invoke-direct {v1, p2, p3, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)V

    .line 237
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleSessionTaskWhenReady$16(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/util/Consumer;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "outputFuture"    # Lcom/google/common/util/concurrent/SettableFuture;
    .param p2, "futureResultHandler"    # Landroidx/media3/common/util/Consumer;
    .param p3, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 425
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 427
    return-void

    .line 430
    :cond_0
    :try_start_0
    invoke-interface {p2, p3}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 431
    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    .line 433
    .local v0, "error":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 435
    .end local v0    # "error":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static synthetic lambda$increaseDeviceVolume$56(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1557
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume()V

    return-void
.end method

.method static synthetic lambda$increaseDeviceVolumeWithFlags$57(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "flags"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1570
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$moveMediaItem$44(IILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "currentIndex"    # I
    .param p1, "newIndex"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1310
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->moveMediaItem(II)V

    return-void
.end method

.method static synthetic lambda$moveMediaItems$45(IIILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1327
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/PlayerWrapper;->moveMediaItems(III)V

    return-void
.end method

.method static synthetic lambda$onCustomCommand$24(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "command"    # Landroidx/media3/session/SessionCommand;
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 875
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$queueSessionTaskWithPlayerCommandForControllerInfo$12(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 0
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 332
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$queueSessionTaskWithPlayerCommandForControllerInfo$13(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 336
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic lambda$replaceMediaItem$46(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1353
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$replaceMediaItems$48(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaItems"    # Lcom/google/common/collect/ImmutableList;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1393
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$search$69(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p2, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 1826
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSearchOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$seekTo$22(JLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "positionMs"    # J
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 794
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->seekTo(J)V

    return-void
.end method

.method static synthetic lambda$seekToDefaultPosition$20(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 766
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition()V

    return-void
.end method

.method static synthetic lambda$sendLibraryResultWhenReady$10(Landroidx/media3/session/MediaSession$ControllerInfo;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "sequenceNumber"    # I
    .param p2, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 275
    const-string v0, "MediaSessionStub"

    :try_start_0
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/LibraryResult;

    const-string v2, "LibraryResult must not be null"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/LibraryResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    goto :goto_1

    .line 279
    .end local v1    # "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "Library operation failed"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    const/4 v0, -0x1

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    move-object v1, v0

    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    goto :goto_2

    .line 276
    .end local v0    # "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 277
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string v2, "Library operation cancelled"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v1

    .line 282
    .local v1, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<TV;>;"
    :goto_1
    nop

    .line 283
    :goto_2
    invoke-static {p0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/LibraryResult;)V

    .line 284
    return-void
.end method

.method static synthetic lambda$sendLibraryResultWhenReady$11(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 267
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaSessionStub;->handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendSessionResultSuccess$0(Landroidx/media3/common/util/Consumer;Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .param p0, "task"    # Landroidx/media3/common/util/Consumer;
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 158
    invoke-interface {p0, p1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sendSessionResultSuccess$1(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 164
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 168
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 170
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendSessionResultWhenReady$2(Landroidx/media3/session/MediaSession$ControllerInfo;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "sequenceNumber"    # I
    .param p2, "future"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 186
    const-string v0, "MediaSessionStub"

    :try_start_0
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionResult;

    const-string v2, "SessionResult must not be null"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "result":Landroidx/media3/session/SessionResult;
    goto :goto_2

    .line 190
    .end local v1    # "result":Landroidx/media3/session/SessionResult;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 191
    .local v1, "exception":Ljava/lang/Exception;
    :goto_0
    const-string v2, "Session operation failed"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    new-instance v0, Landroidx/media3/session/SessionResult;

    .line 194
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_0

    .line 195
    const/4 v2, -0x6

    goto :goto_1

    .line 196
    :cond_0
    const/4 v2, -0x1

    :goto_1
    invoke-direct {v0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    move-object v1, v0

    .local v0, "result":Landroidx/media3/session/SessionResult;
    goto :goto_3

    .line 187
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 188
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string v2, "Session operation cancelled"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    move-object v1, v0

    .line 197
    .local v1, "result":Landroidx/media3/session/SessionResult;
    :goto_2
    nop

    .line 198
    :goto_3
    invoke-static {p0, p1, v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 199
    return-void
.end method

.method static synthetic lambda$sendSessionResultWhenReady$3(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNumber"    # I

    .line 178
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda78;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda78;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaSessionStub;->handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setAudioAttributes$62(Landroidx/media3/common/AudioAttributes;ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "attributes"    # Landroidx/media3/common/AudioAttributes;
    .param p1, "handleAudioFocus"    # Z
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1646
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    return-void
.end method

.method static synthetic lambda$setDeviceMuted$60(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "muted"    # Z
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1609
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    return-void
.end method

.method static synthetic lambda$setDeviceMutedWithFlags$61(ZILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "muted"    # Z
    .param p1, "flags"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1622
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    return-void
.end method

.method static synthetic lambda$setDeviceVolume$54(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "volume"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1531
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$setDeviceVolumeWithFlags$55(IILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "volume"    # I
    .param p1, "flags"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1544
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(II)V

    return-void
.end method

.method static synthetic lambda$setMediaItemWithResetPosition$30(Landroidx/media3/common/MediaItem;ZLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "resetPosition"    # Z
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 1024
    nop

    .line 1026
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1027
    if-eqz p1, :cond_0

    .line 1028
    const/4 v0, -0x1

    move v3, v0

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v0

    move v3, v0

    .line 1030
    :goto_0
    if-eqz p1, :cond_1

    .line 1031
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v0

    goto :goto_1

    .line 1032
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    move-wide v4, v0

    .line 1024
    :goto_1
    move-object v0, p2

    move-object v1, p3

    .end local p2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local p3    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .local v1, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    return-object p2
.end method

.method static synthetic lambda$setMediaItemWithStartPosition$29(Landroidx/media3/common/MediaItem;JLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "startPositionMs"    # J
    .param p3, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p4, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p5, "sequenceNum"    # I

    .line 993
    nop

    .line 995
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 993
    const/4 v3, 0x0

    move-wide v4, p1

    move-object v0, p3

    move-object v1, p4

    .end local p1    # "startPositionMs":J
    .end local p3    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local p4    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .local v1, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v4, "startPositionMs":J
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$setMediaItemsWithResetPosition$31(Ljava/util/List;ZLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p0, "mediaItemList"    # Ljava/util/List;
    .param p1, "resetPosition"    # Z
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 1070
    nop

    .line 1073
    if-eqz p1, :cond_0

    .line 1074
    const/4 v0, -0x1

    move v4, v0

    goto :goto_0

    .line 1075
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v0

    move v4, v0

    .line 1076
    :goto_0
    if-eqz p1, :cond_1

    .line 1077
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v0

    goto :goto_1

    .line 1078
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    move-wide v5, v0

    .line 1070
    :goto_1
    move-object v3, p0

    move-object v1, p2

    move-object v2, p3

    .end local p0    # "mediaItemList":Ljava/util/List;
    .end local p2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local p3    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v1, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .local v2, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v3, "mediaItemList":Ljava/util/List;
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setMediaItemsWithStartIndex$32(Ljava/util/List;IJLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p0, "mediaItemList"    # Ljava/util/List;
    .param p1, "startIndex"    # I
    .param p2, "startPositionMs"    # J
    .param p4, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p5, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p6, "sequenceNum"    # I

    .line 1110
    nop

    .line 1113
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1114
    invoke-virtual {p4}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v1

    move v5, v1

    goto :goto_0

    .line 1115
    :cond_0
    move v5, p1

    .line 1116
    :goto_0
    if-ne p1, v0, :cond_1

    .line 1117
    invoke-virtual {p4}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_1

    .line 1118
    :cond_1
    move-wide v6, p2

    .line 1110
    :goto_1
    move-object v4, p0

    move-object v2, p4

    move-object v3, p5

    .end local p0    # "mediaItemList":Ljava/util/List;
    .end local p4    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local p5    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v2, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .local v3, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v4, "mediaItemList":Ljava/util/List;
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setPlayWhenReady$63(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "playWhenReady"    # Z
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1659
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlayWhenReady(Z)V

    return-void
.end method

.method static synthetic lambda$setPlaybackParameters$28(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 960
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$setPlaybackSpeed$27(FLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "speed"    # F
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 938
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic lambda$setPlaylistMetadata$33(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1141
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$setRating$26(Landroidx/media3/common/Rating;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "rating"    # Landroidx/media3/common/Rating;
    .param p1, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 926
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setRatingWithMediaId$25(Ljava/lang/String;Landroidx/media3/common/Rating;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "rating"    # Landroidx/media3/common/Rating;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 904
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setRepeatMode$50(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "repeatMode"    # I
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1480
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic lambda$setShuffleModeEnabled$51(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "shuffleModeEnabled"    # Z
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1493
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$setVideoSurface$52(Landroid/view/Surface;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1506
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic lambda$setVolume$53(FLandroidx/media3/session/PlayerWrapper;)V
    .locals 0
    .param p0, "volume"    # F
    .param p1, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1518
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setVolume(F)V

    return-void
.end method

.method static synthetic lambda$subscribe$71(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p2, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "sequenceNum"    # I

    .line 1897
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$unsubscribe$72(Ljava/lang/String;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "librarySessionImpl"    # Landroidx/media3/session/MediaLibrarySessionImpl;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sequenceNum"    # I

    .line 1916
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onUnsubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "mediaItemIndex"    # I

    .line 442
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 443
    invoke-virtual {v1, p1, v0}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 445
    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v0

    add-int/2addr v0, p3

    return v0

    .line 451
    :cond_0
    return p3
.end method

.method private queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "II",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 292
    .local p4, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 293
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0, v0, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 297
    :cond_0
    return-void
.end method

.method private queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 10
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I
    .param p3, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "II",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 304
    .local p4, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 308
    .local v1, "token":J
    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    move-object v8, v0

    .line 309
    .local v8, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, p1

    move v7, p2

    move v6, p3

    move-object v9, p4

    goto :goto_0

    .line 312
    :cond_0
    nop

    .line 313
    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda55;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    move v6, p3

    move-object v9, p4

    .end local p1    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local p2    # "sequenceNumber":I
    .end local p3    # "command":I
    .end local p4    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    .local v5, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v6, "command":I
    .local v7, "sequenceNumber":I
    .local v9, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    :try_start_1
    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda55;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 312
    invoke-static {v0, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    nop

    .end local v8    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    nop

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 309
    .end local v5    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v6    # "command":I
    .end local v7    # "sequenceNumber":I
    .end local v9    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    .restart local v8    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    .restart local p1    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .restart local p2    # "sequenceNumber":I
    .restart local p3    # "command":I
    .restart local p4    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    :cond_1
    move-object v5, p1

    move v7, p2

    move v6, p3

    move-object v9, p4

    .line 340
    .end local p1    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local p2    # "sequenceNumber":I
    .end local p3    # "command":I
    .end local p4    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    .restart local v5    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .restart local v6    # "command":I
    .restart local v7    # "sequenceNumber":I
    .restart local v9    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    return-void

    .line 340
    .end local v5    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v6    # "command":I
    .end local v7    # "sequenceNumber":I
    .end local v8    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;, "TK;"
    .end local v9    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    .restart local p1    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .restart local p2    # "sequenceNumber":I
    .restart local p3    # "command":I
    .restart local p4    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    :catchall_1
    move-exception v0

    move-object v5, p1

    move v7, p2

    move v6, p3

    move-object v9, p4

    move-object p1, v0

    .end local p1    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local p2    # "sequenceNumber":I
    .end local p3    # "command":I
    .end local p4    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    .restart local v5    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .restart local v6    # "command":I
    .restart local v7    # "sequenceNumber":I
    .restart local v9    # "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;TK;>;"
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    throw p1
.end method

.method private static sendLibraryResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/LibraryResult;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "I",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)V"
        }
    .end annotation

    .line 257
    .local p2, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onLibraryResult(ILandroidx/media3/session/LibraryResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send result to browser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionStub"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "K:",
            "Landroidx/media3/session/MediaLibrarySessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;>;TK;>;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 266
    .local p0, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/LibraryResult<TV;>;>;TK;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda71;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda71;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-object v0
.end method

.method private static sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "sequenceNumber"    # I
    .param p2, "result"    # Landroidx/media3/session/SessionResult;

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onSessionResult(ILandroidx/media3/session/SessionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send result to controller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionStub"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/session/PlayerWrapper;",
            ">;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 158
    .local p0, "task":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/session/PlayerWrapper;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda70;-><init>(Landroidx/media3/common/util/Consumer;)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    return-object v0
.end method

.method private static sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .param p0, "task"    # Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)V

    return-object v0
.end method

.method private static sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 177
    .local p0, "task":Landroidx/media3/session/MediaSessionStub$SessionTask;, "Landroidx/media3/session/MediaSessionStub$SessionTask<Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media3/session/SessionResult;>;TK;>;"
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda72;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda72;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-object v0
.end method

.method private updateOverridesUsingUniqueTrackGroupIds(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 7
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 1955
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    return-object p1

    .line 1958
    :cond_0
    nop

    .line 1959
    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    .line 1960
    .local v0, "updateTrackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters$Builder;
    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackSelectionOverride;

    .line 1961
    .local v2, "override":Landroidx/media3/common/TrackSelectionOverride;
    iget-object v3, v2, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 1962
    .local v3, "trackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v4, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v4

    iget-object v5, v3, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/TrackGroup;

    .line 1963
    .local v4, "originalTrackGroup":Landroidx/media3/common/TrackGroup;
    if-eqz v4, :cond_1

    iget-object v5, v2, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v5, v5, Landroidx/media3/common/TrackGroup;->length:I

    iget v6, v4, Landroidx/media3/common/TrackGroup;->length:I

    if-ne v5, v6, :cond_1

    .line 1965
    new-instance v5, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v6, v2, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v5, v4, v6}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_1

    .line 1968
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 1970
    .end local v2    # "override":Landroidx/media3/common/TrackSelectionOverride;
    .end local v3    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v4    # "originalTrackGroup":Landroidx/media3/common/TrackGroup;
    :goto_1
    goto :goto_0

    .line 1971
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;

    .line 1147
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1152
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1157
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda60;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda60;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda61;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda61;-><init>()V

    .line 1162
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1161
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1157
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1167
    return-void

    .line 1153
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1155
    return-void

    .line 1148
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemBundle"    # Landroid/os/Bundle;

    .line 1175
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1180
    :cond_0
    :try_start_0
    invoke-static {p4}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1185
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1190
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1189
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1185
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1196
    return-void

    .line 1181
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1183
    return-void

    .line 1176
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemsRetriever"    # Landroid/os/IBinder;

    .line 1203
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;-><init>()V

    .line 1210
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1209
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    .local v0, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1215
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda58;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda58;-><init>(Ljava/util/List;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda59;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda59;-><init>()V

    .line 1220
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1219
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1215
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1224
    return-void

    .line 1211
    .end local v0    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1213
    return-void

    .line 1204
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemsRetriever"    # Landroid/os/IBinder;

    .line 1232
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;-><init>()V

    .line 1239
    invoke-static {p4}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1238
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    .local v0, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1244
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda38;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda38;-><init>(Ljava/util/List;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1249
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1248
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1244
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1255
    return-void

    .line 1240
    .end local v0    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    return-void

    .line 1233
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public clearMediaItems(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1290
    if-nez p1, :cond_0

    .line 1291
    return-void

    .line 1293
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda83;-><init>()V

    .line 1297
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1293
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1298
    return-void
.end method

.method public connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "connectionRequestBundle"    # Landroid/os/Bundle;

    .line 604
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 609
    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroidx/media3/session/ConnectionRequest;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 613
    .local v3, "request":Landroidx/media3/session/ConnectionRequest;
    nop

    .line 614
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 615
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 616
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 619
    .local v6, "token":J
    if-eqz v5, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    iget v0, v3, Landroidx/media3/session/ConnectionRequest;->pid:I

    :goto_0
    move v8, v0

    .line 622
    .local v8, "pid":I
    :try_start_1
    new-instance v0, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v9, v3, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-direct {v0, v9, v8, v4}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    move-object v11, v0

    .line 624
    .local v11, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    new-instance v10, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v12, v3, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v13, v3, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    iget-object v0, v1, Landroidx/media3/session/MediaSessionStub;->sessionManager:Landroidx/media/MediaSessionManager;

    .line 629
    invoke-virtual {v0, v11}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v14

    new-instance v15, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-direct {v15, v2}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;)V

    iget-object v0, v3, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    .line 632
    .local v10, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {v1, v2, v10}, Landroidx/media3/session/MediaSessionStub;->connect(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    .end local v10    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v11    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    nop

    .line 636
    return-void

    .line 634
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    throw v0

    .line 610
    .end local v3    # "request":Landroidx/media3/session/ConnectionRequest;
    .end local v4    # "uid":I
    .end local v5    # "callingPid":I
    .end local v6    # "token":J
    .end local v8    # "pid":I
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "MediaSessionStub"

    const-string v4, "Ignoring malformed Bundle for ConnectionRequest"

    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    return-void

    .line 605
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_1
    return-void
.end method

.method public connect(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 456
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 459
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 460
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    nop

    .line 471
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, v0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/IMediaController;)V

    .line 470
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 569
    return-void

    .line 462
    :cond_2
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_1

    .line 463
    :catch_0
    move-exception v1

    .line 467
    :goto_1
    return-void

    .line 457
    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :cond_3
    :goto_2
    return-void
.end method

.method public decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1576
    if-nez p1, :cond_0

    .line 1577
    return-void

    .line 1579
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda5;-><init>()V

    .line 1583
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1579
    const/16 v1, 0x1a

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1584
    return-void
.end method

.method public decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "flags"    # I

    .line 1589
    if-nez p1, :cond_0

    .line 1590
    return-void

    .line 1592
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1596
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1592
    const/16 v1, 0x22

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1597
    return-void
.end method

.method public flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    .locals 6
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;

    .line 1664
    if-nez p1, :cond_0

    .line 1665
    return-void

    .line 1667
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1669
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionImpl;

    .line 1670
    .local v2, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1673
    :cond_1
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    .line 1674
    .local v3, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v3, :cond_2

    .line 1675
    nop

    .line 1676
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda43;

    invoke-direct {v5, p0, v3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1675
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    .end local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local v3    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1681
    nop

    .line 1682
    return-void

    .line 1680
    .restart local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1671
    return-void

    .line 1680
    .end local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1681
    throw v2
.end method

.method generateAndCacheUniqueTrackGroupIds(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 11
    .param p1, "playerInfo"    # Landroidx/media3/session/PlayerInfo;

    .line 1920
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1921
    .local v0, "trackGroups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/Tracks$Group;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 1922
    .local v1, "updatedTrackGroups":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Tracks$Group;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v2

    .line 1923
    .local v2, "updatedTrackGroupIdMap":Lcom/google/common/collect/ImmutableBiMap$Builder;, "Lcom/google/common/collect/ImmutableBiMap$Builder<Landroidx/media3/common/TrackGroup;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1924
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Tracks$Group;

    .line 1925
    .local v4, "trackGroup":Landroidx/media3/common/Tracks$Group;
    invoke-virtual {v4}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v5

    .line 1926
    .local v5, "mediaTrackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v6, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1927
    .local v6, "uniqueId":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1928
    invoke-direct {p0, v5}, Landroidx/media3/session/MediaSessionStub;->generateUniqueTrackGroupId(Landroidx/media3/common/TrackGroup;)Ljava/lang/String;

    move-result-object v6

    .line 1930
    :cond_0
    invoke-virtual {v2, v5, v6}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 1931
    invoke-virtual {v4, v6}, Landroidx/media3/common/Tracks$Group;->copyWithId(Ljava/lang/String;)Landroidx/media3/common/Tracks$Group;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1923
    .end local v4    # "trackGroup":Landroidx/media3/common/Tracks$Group;
    .end local v5    # "mediaTrackGroup":Landroidx/media3/common/TrackGroup;
    .end local v6    # "uniqueId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1933
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    .line 1934
    new-instance v3, Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Landroidx/media3/session/PlayerInfo;->copyWithCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    .line 1935
    iget-object v3, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v3, v3, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1936
    return-object p1

    .line 1938
    :cond_2
    iget-object v3, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 1939
    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    .line 1940
    .local v3, "updatedTrackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters$Builder;
    iget-object v4, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v4, v4, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/TrackSelectionOverride;

    .line 1941
    .local v5, "override":Landroidx/media3/common/TrackSelectionOverride;
    iget-object v6, v5, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 1942
    .local v6, "trackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v7, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v7, v6}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1943
    .local v7, "uniqueId":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1944
    new-instance v8, Landroidx/media3/common/TrackSelectionOverride;

    .line 1945
    invoke-virtual {v6, v7}, Landroidx/media3/common/TrackGroup;->copyWithId(Ljava/lang/String;)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    iget-object v10, v5, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v8, v9, v10}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    .line 1944
    invoke-virtual {v3, v8}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_2

    .line 1947
    :cond_3
    invoke-virtual {v3, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 1949
    .end local v5    # "override":Landroidx/media3/common/TrackSelectionOverride;
    .end local v6    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v7    # "uniqueId":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 1950
    :cond_4
    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/session/PlayerInfo;->copyWithTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    return-object v4
.end method

.method public getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1766
    if-nez p1, :cond_0

    .line 1767
    return-void

    .line 1769
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 1770
    const-string v0, "getChildren(): Ignoring empty parentId"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    return-void

    .line 1773
    :cond_1
    if-gez p4, :cond_2

    .line 1774
    const-string v0, "getChildren(): Ignoring negative page"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    return-void

    .line 1777
    :cond_2
    const/4 v0, 0x1

    if-ge p5, v0, :cond_3

    .line 1778
    const-string v0, "getChildren(): Ignoring pageSize less than 1"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    return-void

    .line 1784
    :cond_3
    if-nez p6, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {p6}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1788
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1789
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p3, p4, p5, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1793
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1789
    const v2, 0xc353

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1797
    return-void

    .line 1785
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1786
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1787
    return-void
.end method

.method public getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    return-object v0
.end method

.method public getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaId"    # Ljava/lang/String;

    .line 1742
    if-nez p1, :cond_0

    .line 1743
    return-void

    .line 1745
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1746
    const-string v0, "MediaSessionStub"

    const-string v1, "getItem(): Ignoring empty mediaId"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    return-void

    .line 1749
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda49;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda49;-><init>(Ljava/lang/String;)V

    .line 1753
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1749
    const v1, 0xc354

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1756
    return-void
.end method

.method public getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1719
    if-nez p1, :cond_0

    .line 1720
    return-void

    .line 1725
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p3}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1730
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda68;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda68;-><init>(Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1734
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1730
    const v2, 0xc350

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1737
    return-void

    .line 1726
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1728
    return-void
.end method

.method public getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1837
    if-nez p1, :cond_0

    .line 1838
    return-void

    .line 1840
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 1841
    const-string v0, "getSearchResult(): Ignoring empty query"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    return-void

    .line 1844
    :cond_1
    if-gez p4, :cond_2

    .line 1845
    const-string v0, "getSearchResult(): Ignoring negative page"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    return-void

    .line 1848
    :cond_2
    const/4 v0, 0x1

    if-ge p5, v0, :cond_3

    .line 1849
    const-string v0, "getSearchResult(): Ignoring pageSize less than 1"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    return-void

    .line 1855
    :cond_3
    if-nez p6, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {p6}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1860
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda62;

    invoke-direct {v1, p3, p4, p5, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda62;-><init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1864
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1860
    const v2, 0xc356

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1868
    return-void

    .line 1856
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1858
    return-void
.end method

.method public increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1550
    if-nez p1, :cond_0

    .line 1551
    return-void

    .line 1553
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda29;-><init>()V

    .line 1557
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1553
    const/16 v1, 0x1a

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1558
    return-void
.end method

.method public increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "flags"    # I

    .line 1563
    if-nez p1, :cond_0

    .line 1564
    return-void

    .line 1566
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda41;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda41;-><init>(I)V

    .line 1570
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1566
    const/16 v1, 0x22

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1571
    return-void
.end method

.method synthetic lambda$addMediaItemWithIndex$37$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "mediaItems"    # Ljava/util/List;

    .line 1194
    nop

    .line 1195
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 1194
    invoke-virtual {p2, v0, p4}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$addMediaItemsWithIndex$41$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "items"    # Ljava/util/List;

    .line 1253
    nop

    .line 1254
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 1253
    invoke-virtual {p2, v0, p4}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$connect$17$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/IMediaController;)V
    .locals 21
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p3, "caller"    # Landroidx/media3/session/IMediaController;

    .line 473
    move-object/from16 v3, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const/4 v15, 0x0

    .line 475
    .local v15, "connected":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v3, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v13}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_1

    .line 559
    if-nez v15, :cond_0

    .line 561
    :try_start_1
    invoke-interface {v14, v1}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 565
    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    nop

    .line 480
    :try_start_2
    invoke-virtual {v12}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    .line 481
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v2, v0

    .line 482
    .local v2, "callbackBinder":Landroid/os/IBinder;
    nop

    .line 483
    invoke-virtual {v13, v12}, Landroidx/media3/session/MediaSessionImpl;->onConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0

    move-object v4, v0

    .line 487
    .local v4, "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    iget-boolean v0, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v0, :cond_3

    :try_start_3
    invoke-virtual {v12}, Landroidx/media3/session/MediaSession$ControllerInfo;->isTrusted()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 559
    if-nez v15, :cond_2

    .line 561
    :try_start_4
    invoke-interface {v14, v1}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 565
    goto :goto_1

    .line 562
    :catch_1
    move-exception v0

    .line 488
    :cond_2
    :goto_1
    return-void

    .line 559
    .end local v2    # "callbackBinder":Landroid/os/IBinder;
    .end local v4    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    :catchall_0
    move-exception v0

    move/from16 v18, v15

    move v15, v1

    move-object v1, v0

    goto/16 :goto_b

    .line 490
    .restart local v2    # "callbackBinder":Landroid/os/IBinder;
    .restart local v4    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    :cond_3
    :try_start_5
    iget-boolean v0, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v0, :cond_4

    .line 492
    :try_start_6
    sget-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    sget-object v5, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    .line 493
    invoke-static {v0, v5}, Landroidx/media3/session/MediaSession$ConnectionResult;->accept(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v0

    .line 497
    :cond_4
    :try_start_7
    iget-object v0, v3, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, v12}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const-string v5, "MediaSessionStub"

    if-eqz v0, :cond_5

    .line 498
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has sent connection request multiple times"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 505
    :cond_5
    :try_start_9
    iget-object v0, v3, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    iget-object v6, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v7, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, v2, v12, v6, v7}, Landroidx/media3/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    .line 510
    iget-object v0, v3, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 511
    invoke-virtual {v0, v12}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v16, v0

    .line 512
    .local v16, "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    if-nez v16, :cond_7

    .line 513
    :try_start_a
    const-string v0, "Ignoring connection request from unknown controller info"

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 559
    if-nez v15, :cond_6

    .line 561
    :try_start_b
    invoke-interface {v14, v1}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    .line 565
    goto :goto_2

    .line 562
    :catch_2
    move-exception v0

    .line 514
    :cond_6
    :goto_2
    return-void

    .line 519
    :cond_7
    :try_start_c
    invoke-virtual {v13}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    move-object/from16 v17, v0

    .line 520
    .local v17, "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    invoke-virtual/range {v17 .. v17}, Landroidx/media3/session/PlayerWrapper;->createPlayerInfoForBundling()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 521
    .local v0, "playerInfo":Landroidx/media3/session/PlayerInfo;
    invoke-virtual {v3, v0}, Landroidx/media3/session/MediaSessionStub;->generateAndCacheUniqueTrackGroupIds(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v11

    .line 522
    .end local v0    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .local v11, "playerInfo":Landroidx/media3/session/PlayerInfo;
    new-instance v0, Landroidx/media3/session/ConnectionState;

    .line 527
    invoke-virtual {v13}, Landroidx/media3/session/MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v5

    .line 528
    iget-object v6, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->customLayout:Lcom/google/common/collect/ImmutableList;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v6, :cond_8

    .line 529
    :try_start_d
    iget-object v6, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->customLayout:Lcom/google/common/collect/ImmutableList;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 530
    :cond_8
    :try_start_e
    invoke-virtual {v13}, Landroidx/media3/session/MediaSessionImpl;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    :goto_3
    move-object v7, v5

    move-object v5, v6

    iget-object v6, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    move-object v8, v7

    iget-object v7, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 533
    move-object v9, v8

    invoke-virtual/range {v17 .. v17}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v8

    .line 534
    invoke-virtual {v13}, Landroidx/media3/session/MediaSessionImpl;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/media3/session/SessionToken;->getExtras()Landroid/os/Bundle;

    move-result-object v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 535
    :try_start_f
    iget-object v1, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->sessionExtras:Landroid/os/Bundle;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v1, :cond_9

    .line 536
    :try_start_10
    iget-object v1, v4, Landroidx/media3/session/MediaSession$ConnectionResult;->sessionExtras:Landroid/os/Bundle;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_4

    .line 559
    .end local v2    # "callbackBinder":Landroid/os/IBinder;
    .end local v4    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .end local v11    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v16    # "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    .end local v17    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    :catchall_1
    move-exception v0

    move-object v1, v0

    move/from16 v18, v15

    const/4 v15, 0x0

    goto/16 :goto_b

    .line 537
    .restart local v2    # "callbackBinder":Landroid/os/IBinder;
    .restart local v4    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .restart local v11    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .restart local v16    # "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    .restart local v17    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    :cond_9
    :try_start_11
    invoke-virtual {v13}, Landroidx/media3/session/MediaSessionImpl;->getSessionExtras()Landroid/os/Bundle;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :goto_4
    move-object/from16 v19, v4

    move-object v4, v9

    move-object v9, v10

    move-object v10, v1

    .end local v4    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .local v19, "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    const v1, 0x3bc895d4

    move-object/from16 v20, v2

    .end local v2    # "callbackBinder":Landroid/os/IBinder;
    .local v20, "callbackBinder":Landroid/os/IBinder;
    const/4 v2, 0x2

    move/from16 v18, v15

    const/4 v15, 0x0

    .end local v15    # "connected":Z
    .local v18, "connected":Z
    :try_start_12
    invoke-direct/range {v0 .. v11}, Landroidx/media3/session/ConnectionState;-><init>(IILandroidx/media3/session/IMediaSession;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/session/PlayerInfo;)V

    move-object v1, v0

    .line 542
    .local v1, "state":Landroidx/media3/session/ConnectionState;
    invoke-virtual {v13}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v0, :cond_b

    .line 559
    if-nez v18, :cond_a

    .line 561
    :try_start_13
    invoke-interface {v14, v15}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_3

    .line 565
    goto :goto_5

    .line 562
    :catch_3
    move-exception v0

    .line 543
    :cond_a
    :goto_5
    return-void

    .line 546
    :cond_b
    nop

    .line 547
    :try_start_14
    invoke-virtual/range {v16 .. v16}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v0

    .line 548
    instance-of v2, v14, Landroidx/media3/session/MediaControllerStub;

    if-eqz v2, :cond_c

    .line 549
    invoke-virtual {v1}, Landroidx/media3/session/ConnectionState;->toBundleInProcess()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_6

    .line 550
    :cond_c
    invoke-virtual {v12}, Landroidx/media3/session/MediaSession$ControllerInfo;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/session/ConnectionState;->toBundleForRemoteProcess(I)Landroid/os/Bundle;

    move-result-object v2

    .line 546
    :goto_6
    invoke-interface {v14, v0, v2}, Landroidx/media3/session/IMediaController;->onConnected(ILandroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 551
    const/4 v0, 0x1

    .line 554
    .end local v18    # "connected":Z
    .local v0, "connected":Z
    move/from16 v18, v0

    goto :goto_7

    .line 552
    .end local v0    # "connected":Z
    .restart local v18    # "connected":Z
    :catch_4
    move-exception v0

    .line 555
    :goto_7
    if-eqz v18, :cond_d

    .line 556
    :try_start_15
    invoke-virtual {v13, v12}, Landroidx/media3/session/MediaSessionImpl;->onPostConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 559
    .end local v1    # "state":Landroidx/media3/session/ConnectionState;
    .end local v11    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v16    # "sequencedFutureManager":Landroidx/media3/session/SequencedFutureManager;
    .end local v17    # "playerWrapper":Landroidx/media3/session/PlayerWrapper;
    .end local v19    # "connectionResult":Landroidx/media3/session/MediaSession$ConnectionResult;
    .end local v20    # "callbackBinder":Landroid/os/IBinder;
    :cond_d
    if-nez v18, :cond_e

    .line 561
    :try_start_16
    invoke-interface {v14, v15}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_5

    .line 565
    :goto_8
    goto :goto_9

    .line 562
    :catch_5
    move-exception v0

    goto :goto_8

    .line 568
    :cond_e
    :goto_9
    return-void

    .line 559
    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_b

    .end local v18    # "connected":Z
    .restart local v15    # "connected":Z
    :catchall_3
    move-exception v0

    move/from16 v18, v15

    const/4 v15, 0x0

    goto :goto_a

    :catchall_4
    move-exception v0

    move/from16 v18, v15

    move v15, v1

    :goto_a
    move-object v1, v0

    .end local v15    # "connected":Z
    .restart local v18    # "connected":Z
    :goto_b
    if-nez v18, :cond_f

    .line 561
    :try_start_17
    invoke-interface {v14, v15}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_6

    .line 565
    goto :goto_c

    .line 562
    :catch_6
    move-exception v0

    .line 567
    :cond_f
    :goto_c
    throw v1
.end method

.method synthetic lambda$dispatchSessionTaskWithSessionCommand$15$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;IILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionCommand"    # Landroidx/media3/session/SessionCommand;
    .param p3, "sequenceNumber"    # I
    .param p4, "commandCode"    # I
    .param p5, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;
    .param p6, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;

    .line 384
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    return-void

    .line 387
    :cond_0
    nop

    .line 397
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 387
    const/4 v1, -0x4

    if-eqz p2, :cond_1

    .line 388
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    new-instance v0, Landroidx/media3/session/SessionResult;

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 394
    return-void

    .line 397
    :cond_1
    invoke-virtual {v0, p1, p4}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    new-instance v0, Landroidx/media3/session/SessionResult;

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 402
    return-void

    .line 405
    :cond_2
    invoke-interface {p5, p6, p1, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method synthetic lambda$flushCommandQueue$64$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1677
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void
.end method

.method synthetic lambda$playForControllerInfo$19$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 723
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 724
    .local v0, "impl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->handleMediaControllerPlayRequest(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 728
    return-void

    .line 725
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$queueSessionTaskWithPlayerCommandForControllerInfo$14$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "command"    # I
    .param p3, "sequenceNumber"    # I
    .param p4, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p5, "task"    # Landroidx/media3/session/MediaSessionStub$SessionTask;

    .line 315
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 320
    return-void

    .line 323
    :cond_0
    invoke-virtual {p4, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->onPlayerCommandRequestOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;I)I

    move-result v0

    .line 324
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 326
    new-instance v1, Landroidx/media3/session/SessionResult;

    invoke-direct {v1, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 327
    return-void

    .line 329
    :cond_1
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_2

    .line 330
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda44;

    invoke-direct {v1, p5, p4, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda44;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 331
    invoke-virtual {p4, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda45;

    invoke-direct {v2, p5, p4, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda45;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-virtual {v1, p1, v2}, Landroidx/media3/session/ConnectedControllersManager;->addToCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V

    .line 338
    :goto_0
    return-void
.end method

.method synthetic lambda$release$18$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/IMediaController;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;

    .line 671
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->removeController(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$removeMediaItem$42$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1268
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->removeMediaItem(I)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$43$androidx-media3-session-MediaSessionStub(IILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p4, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1283
    nop

    .line 1284
    invoke-direct {p0, p4, p3, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 1285
    invoke-direct {p0, p4, p3, p2}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v1

    .line 1283
    invoke-virtual {p3, v0, v1}, Landroidx/media3/session/PlayerWrapper;->removeMediaItems(II)V

    return-void
.end method

.method synthetic lambda$replaceMediaItem$47$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "mediaItems"    # Ljava/util/List;

    .line 1355
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1356
    nop

    .line 1357
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 1356
    invoke-virtual {p2, v0, v1}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItem(ILandroidx/media3/common/MediaItem;)V

    goto :goto_0

    .line 1359
    :cond_0
    nop

    .line 1360
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 1361
    invoke-direct {p0, p3, p2, v1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v1

    .line 1359
    invoke-virtual {p2, v0, v1, p4}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItems(IILjava/util/List;)V

    .line 1364
    :goto_0
    return-void
.end method

.method synthetic lambda$replaceMediaItems$49$androidx-media3-session-MediaSessionStub(IILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p4, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p5, "items"    # Ljava/util/List;

    .line 1395
    nop

    .line 1396
    invoke-direct {p0, p4, p3, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 1397
    invoke-direct {p0, p4, p3, p2}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v1

    .line 1395
    invoke-virtual {p3, v0, v1, p5}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItems(IILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$seekToDefaultPositionWithMediaItemIndex$21$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "mediaItemIndex"    # I
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p3, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 781
    nop

    .line 782
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 781
    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition(I)V

    return-void
.end method

.method synthetic lambda$seekToWithMediaItemIndex$23$androidx-media3-session-MediaSessionStub(IJLandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p1, "mediaItemIndex"    # I
    .param p2, "positionMs"    # J
    .param p4, "player"    # Landroidx/media3/session/PlayerWrapper;
    .param p5, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 809
    nop

    .line 810
    invoke-direct {p0, p5, p4, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    .line 809
    invoke-virtual {p4, v0, p2, p3}, Landroidx/media3/session/PlayerWrapper;->seekTo(IJ)V

    return-void
.end method

.method synthetic lambda$setTrackSelectionParameters$65$androidx-media3-session-MediaSessionStub(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/session/PlayerWrapper;)V
    .locals 1
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "player"    # Landroidx/media3/session/PlayerWrapper;

    .line 1706
    nop

    .line 1707
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionStub;->updateOverridesUsingUniqueTrackGroupIds(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    .line 1708
    .local v0, "updatedParameters":Landroidx/media3/common/TrackSelectionParameters;
    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1709
    return-void
.end method

.method public moveMediaItem(Landroidx/media3/session/IMediaController;III)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "currentIndex"    # I
    .param p4, "newIndex"    # I

    .line 1303
    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-gez p4, :cond_0

    goto :goto_0

    .line 1306
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda77;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda77;-><init>(II)V

    .line 1310
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1306
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1311
    return-void

    .line 1304
    :cond_1
    :goto_0
    return-void
.end method

.method public moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .param p5, "newIndex"    # I

    .line 1320
    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-lt p4, p3, :cond_1

    if-gez p5, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda47;

    invoke-direct {v0, p3, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda47;-><init>(III)V

    .line 1327
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1323
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1328
    return-void

    .line 1321
    :cond_1
    :goto_0
    return-void
.end method

.method public onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "sessionResultBundle"    # Landroid/os/Bundle;

    .line 680
    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/session/SessionResult;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .local v0, "result":Landroidx/media3/session/SessionResult;
    nop

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 693
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 694
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    .local v3, "manager":Landroidx/media3/session/SequencedFutureManager;
    if-nez v3, :cond_1

    .line 700
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    return-void

    .line 698
    :cond_1
    :try_start_2
    invoke-virtual {v3, p2, v0}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 700
    .end local v3    # "manager":Landroidx/media3/session/SequencedFutureManager;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 701
    nop

    .line 702
    return-void

    .line 700
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 701
    throw v3

    .line 686
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    .end local v1    # "token":J
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for SessionResult"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 688
    return-void

    .line 681
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method public onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "commandBundle"    # Landroid/os/Bundle;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 859
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/session/SessionCommand;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    .local v0, "command":Landroidx/media3/session/SessionCommand;
    nop

    .line 869
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    .line 873
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 869
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 876
    return-void

    .line 865
    .end local v0    # "command":Landroidx/media3/session/SessionCommand;
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 867
    return-void

    .line 860
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public pause(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 733
    if-nez p1, :cond_0

    .line 734
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 738
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->pauseForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 741
    :cond_1
    return-void
.end method

.method public pauseForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 744
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda23;-><init>()V

    .line 745
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 744
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 746
    return-void
.end method

.method public play(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 706
    if-nez p1, :cond_0

    .line 707
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 711
    .local v0, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->playForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 714
    :cond_1
    return-void
.end method

.method public playForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 717
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 721
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 717
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 729
    return-void
.end method

.method public prepare(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 750
    if-nez p1, :cond_0

    .line 751
    return-void

    .line 753
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda69;-><init>()V

    .line 754
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 753
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 755
    return-void
.end method

.method public release()V
    .locals 6

    .line 572
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 573
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/MediaSession$ControllerInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 574
    .local v2, "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v4

    .line 575
    .local v4, "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    if-eqz v4, :cond_0

    .line 577
    :try_start_0
    invoke-interface {v4, v3}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    goto :goto_1

    .line 578
    :catch_0
    move-exception v3

    .line 582
    .end local v2    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v4    # "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    :cond_0
    :goto_1
    goto :goto_0

    .line 583
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 584
    .restart local v2    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v4

    .line 585
    .restart local v4    # "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    if-eqz v4, :cond_2

    .line 587
    :try_start_1
    invoke-interface {v4, v3}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    goto :goto_3

    .line 588
    :catch_1
    move-exception v5

    .line 592
    .end local v2    # "controller":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v4    # "cb":Landroidx/media3/session/MediaSession$ControllerCb;
    :cond_2
    :goto_3
    goto :goto_2

    .line 593
    :cond_3
    return-void
.end method

.method public release(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 660
    if-nez p1, :cond_0

    .line 661
    return-void

    .line 663
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 665
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionImpl;

    .line 666
    .local v2, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 669
    :cond_1
    nop

    .line 670
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/IMediaController;)V

    .line 669
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    nop

    .end local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    nop

    .line 675
    return-void

    .line 673
    .restart local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    return-void

    .line 673
    .end local v2    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    throw v2
.end method

.method public removeMediaItem(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "index"    # I

    .line 1259
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1262
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1266
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1262
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1269
    return-void

    .line 1260
    :cond_1
    :goto_0
    return-void
.end method

.method public removeMediaItems(Landroidx/media3/session/IMediaController;III)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I

    .line 1274
    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    .line 1277
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    .line 1281
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1277
    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1286
    return-void

    .line 1275
    :cond_1
    :goto_0
    return-void
.end method

.method public replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "index"    # I
    .param p4, "mediaItemBundle"    # Landroid/os/Bundle;

    .line 1336
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    :try_start_0
    invoke-static {p4}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1346
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda30;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1351
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1350
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1346
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1365
    return-void

    .line 1342
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 1343
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1344
    return-void

    .line 1337
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .param p5, "mediaItemsRetriever"    # Landroid/os/IBinder;

    .line 1374
    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    if-ltz p3, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    .line 1379
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;-><init>()V

    .line 1381
    invoke-static {p5}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1380
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    .local v0, "mediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1386
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda16;-><init>(Lcom/google/common/collect/ImmutableList;)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    .line 1391
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1390
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1386
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1399
    return-void

    .line 1382
    .end local v0    # "mediaItems":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1384
    return-void

    .line 1375
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1805
    if-nez p1, :cond_0

    .line 1806
    return-void

    .line 1808
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 1809
    const-string/jumbo v0, "search(): Ignoring empty query"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    return-void

    .line 1815
    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p4}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1820
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda84;

    invoke-direct {v1, p3, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda84;-><init>(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1824
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1820
    const v2, 0xc355

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1827
    return-void

    .line 1816
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1818
    return-void
.end method

.method public seekBack(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 815
    if-nez p1, :cond_0

    .line 816
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 820
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->seekBackForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 823
    :cond_1
    return-void
.end method

.method public seekBackForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 826
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda32;-><init>()V

    .line 830
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 826
    const/16 v1, 0xb

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 831
    return-void
.end method

.method public seekForward(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 835
    if-nez p1, :cond_0

    .line 836
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 840
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 841
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->seekForwardForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 843
    :cond_1
    return-void
.end method

.method public seekForwardForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 846
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda50;-><init>()V

    .line 850
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 846
    const/16 v1, 0xc

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 851
    return-void
.end method

.method public seekTo(Landroidx/media3/session/IMediaController;IJ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "positionMs"    # J

    .line 787
    if-nez p1, :cond_0

    .line 788
    return-void

    .line 790
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda82;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda82;-><init>(J)V

    .line 794
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 790
    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 795
    return-void
.end method

.method public seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 759
    if-nez p1, :cond_0

    .line 760
    return-void

    .line 762
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda6;-><init>()V

    .line 766
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 762
    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 767
    return-void
.end method

.method public seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemIndex"    # I

    .line 772
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 779
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 775
    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 783
    return-void

    .line 773
    :cond_1
    :goto_0
    return-void
.end method

.method public seekToNext(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1447
    if-nez p1, :cond_0

    .line 1448
    return-void

    .line 1451
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 1452
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 1453
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->seekToNextForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 1455
    :cond_1
    return-void
.end method

.method public seekToNextForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 1458
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda51;-><init>()V

    .line 1462
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1458
    const/16 v1, 0x9

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1463
    return-void
.end method

.method public seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1415
    if-nez p1, :cond_0

    .line 1416
    return-void

    .line 1418
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda28;-><init>()V

    .line 1422
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1418
    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1423
    return-void
.end method

.method public seekToPrevious(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1427
    if-nez p1, :cond_0

    .line 1428
    return-void

    .line 1431
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 1432
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 1433
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->seekToPreviousForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 1435
    :cond_1
    return-void
.end method

.method public seekToPreviousForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 1438
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda37;-><init>()V

    .line 1442
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1438
    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1443
    return-void
.end method

.method public seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 1403
    if-nez p1, :cond_0

    .line 1404
    return-void

    .line 1406
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda46;-><init>()V

    .line 1410
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1406
    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1411
    return-void
.end method

.method public seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemIndex"    # I
    .param p4, "positionMs"    # J

    .line 800
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p3, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/session/MediaSessionStub;IJ)V

    .line 807
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 803
    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 811
    return-void

    .line 801
    :cond_1
    :goto_0
    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "audioAttributes"    # Landroid/os/Bundle;
    .param p4, "handleAudioFocus"    # Z

    .line 1631
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1636
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/AudioAttributes;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AudioAttributes;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    .local v0, "attributes":Landroidx/media3/common/AudioAttributes;
    nop

    .line 1641
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda57;

    invoke-direct {v1, v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda57;-><init>(Landroidx/media3/common/AudioAttributes;Z)V

    .line 1645
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1641
    const/16 v2, 0x23

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1647
    return-void

    .line 1637
    .end local v0    # "attributes":Landroidx/media3/common/AudioAttributes;
    :catch_0
    move-exception v0

    .line 1638
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for AudioAttributes"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1639
    return-void

    .line 1632
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "muted"    # Z

    .line 1602
    if-nez p1, :cond_0

    .line 1603
    return-void

    .line 1605
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda33;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda33;-><init>(Z)V

    .line 1609
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1605
    const/16 v1, 0x1a

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1610
    return-void
.end method

.method public setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "muted"    # Z
    .param p4, "flags"    # I

    .line 1615
    if-nez p1, :cond_0

    .line 1616
    return-void

    .line 1618
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda73;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda73;-><init>(ZI)V

    .line 1622
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1618
    const/16 v1, 0x22

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1623
    return-void
.end method

.method public setDeviceVolume(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "volume"    # I

    .line 1524
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1527
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda80;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda80;-><init>(I)V

    .line 1531
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1527
    const/16 v1, 0x19

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1532
    return-void

    .line 1525
    :cond_1
    :goto_0
    return-void
.end method

.method public setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "volume"    # I
    .param p4, "flags"    # I

    .line 1537
    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1540
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda54;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda54;-><init>(II)V

    .line 1544
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1540
    const/16 v1, 0x21

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1545
    return-void

    .line 1538
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;

    .line 966
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    .line 968
    return-void
.end method

.method public setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .param p4, "resetPosition"    # Z

    .line 1007
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 1017
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda36;

    invoke-direct {v1, v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/common/MediaItem;Z)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;-><init>()V

    .line 1022
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1021
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1017
    const/16 v2, 0x1f

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1034
    return-void

    .line 1013
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1015
    return-void

    .line 1008
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemBundle"    # Landroid/os/Bundle;
    .param p4, "startPositionMs"    # J

    .line 976
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    .local v0, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 986
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda75;

    invoke-direct {v1, v0, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda75;-><init>(Landroidx/media3/common/MediaItem;J)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;-><init>()V

    .line 991
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 990
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 986
    const/16 v2, 0x1f

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 999
    return-void

    .line 982
    .end local v0    # "mediaItem":Landroidx/media3/common/MediaItem;
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 984
    return-void

    .line 977
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemsRetriever"    # Landroid/os/IBinder;

    .line 1041
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    .line 1043
    return-void
.end method

.method public setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemsRetriever"    # Landroid/os/IBinder;
    .param p4, "resetPosition"    # Z

    .line 1051
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;-><init>()V

    .line 1058
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1057
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    .local v0, "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1063
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;Z)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;-><init>()V

    .line 1068
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1067
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1063
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1080
    return-void

    .line 1059
    .end local v0    # "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1061
    return-void

    .line 1052
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaItemsRetriever"    # Landroid/os/IBinder;
    .param p4, "startIndex"    # I
    .param p5, "startPositionMs"    # J

    .line 1089
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    if-gez p4, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;-><init>()V

    .line 1098
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1097
    invoke-static {v0, v1}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .local v0, "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1103
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda48;

    invoke-direct {v1, v0, p4, p5, p6}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda48;-><init>(Ljava/util/List;IJ)V

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;-><init>()V

    .line 1108
    invoke-static {v1, v2}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1107
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1103
    const/16 v2, 0x14

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1120
    return-void

    .line 1099
    .end local v0    # "mediaItemList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaItem"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1101
    return-void

    .line 1092
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "playWhenReady"    # Z

    .line 1652
    if-nez p1, :cond_0

    .line 1653
    return-void

    .line 1655
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda19;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda19;-><init>(Z)V

    .line 1659
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1655
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1660
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "playbackParametersBundle"    # Landroid/os/Bundle;

    .line 946
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/PlaybackParameters;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .local v0, "playbackParameters":Landroidx/media3/common/PlaybackParameters;
    nop

    .line 956
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda35;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda35;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    .line 960
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 956
    const/16 v2, 0xd

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 961
    return-void

    .line 952
    .end local v0    # "playbackParameters":Landroidx/media3/common/PlaybackParameters;
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for PlaybackParameters"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 954
    return-void

    .line 947
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "speed"    # F

    .line 931
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda21;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda21;-><init>(F)V

    .line 938
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 934
    const/16 v1, 0xd

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 939
    return-void

    .line 932
    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "playlistMetadataBundle"    # Landroid/os/Bundle;

    .line 1127
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1132
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/MediaMetadata;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    .local v0, "playlistMetadata":Landroidx/media3/common/MediaMetadata;
    nop

    .line 1137
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda74;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda74;-><init>(Landroidx/media3/common/MediaMetadata;)V

    .line 1141
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1137
    const/16 v2, 0x13

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1142
    return-void

    .line 1133
    .end local v0    # "playlistMetadata":Landroidx/media3/common/MediaMetadata;
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for MediaMetadata"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1135
    return-void

    .line 1128
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "ratingBundle"    # Landroid/os/Bundle;

    .line 910
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/Rating;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    .local v0, "rating":Landroidx/media3/common/Rating;
    nop

    .line 920
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/common/Rating;)V

    .line 924
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 920
    const v2, 0x9c4a

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 927
    return-void

    .line 916
    .end local v0    # "rating":Landroidx/media3/common/Rating;
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for Rating"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 918
    return-void

    .line 911
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "ratingBundle"    # Landroid/os/Bundle;

    .line 884
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 887
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 888
    const-string/jumbo v0, "setRatingWithMediaId(): Ignoring empty mediaId"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void

    .line 893
    :cond_1
    :try_start_0
    invoke-static {p4}, Landroidx/media3/common/Rating;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    .local v0, "rating":Landroidx/media3/common/Rating;
    nop

    .line 898
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda52;

    invoke-direct {v1, p3, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda52;-><init>(Ljava/lang/String;Landroidx/media3/common/Rating;)V

    .line 902
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 898
    const v2, 0x9c4a

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 905
    return-void

    .line 894
    .end local v0    # "rating":Landroidx/media3/common/Rating;
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for Rating"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 896
    return-void

    .line 885
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method public setRepeatMode(Landroidx/media3/session/IMediaController;II)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "repeatMode"    # I

    .line 1468
    if-nez p1, :cond_0

    .line 1469
    return-void

    .line 1471
    :cond_0
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 1474
    return-void

    .line 1476
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda56;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda56;-><init>(I)V

    .line 1480
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1476
    const/16 v1, 0xf

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1481
    return-void
.end method

.method public setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 1486
    if-nez p1, :cond_0

    .line 1487
    return-void

    .line 1489
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda64;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda64;-><init>(Z)V

    .line 1493
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1489
    const/16 v1, 0xe

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1494
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "trackSelectionParametersBundle"    # Landroid/os/Bundle;

    .line 1689
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1694
    :cond_0
    nop

    .line 1695
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/TrackSelectionParameters;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    .local v0, "trackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters;
    nop

    .line 1700
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1704
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1700
    const/16 v2, 0x1d

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1710
    return-void

    .line 1696
    .end local v0    # "trackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters;
    :catch_0
    move-exception v0

    .line 1697
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaSessionStub"

    const-string v2, "Ignoring malformed Bundle for TrackSelectionParameters"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1698
    return-void

    .line 1690
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "surface"    # Landroid/view/Surface;

    .line 1499
    if-nez p1, :cond_0

    .line 1500
    return-void

    .line 1502
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda67;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda67;-><init>(Landroid/view/Surface;)V

    .line 1506
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1502
    const/16 v1, 0x1b

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1507
    return-void
.end method

.method public setVolume(Landroidx/media3/session/IMediaController;IF)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "volume"    # F

    .line 1511
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1514
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda63;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda63;-><init>(F)V

    .line 1518
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1514
    const/16 v1, 0x18

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1519
    return-void

    .line 1512
    :cond_1
    :goto_0
    return-void
.end method

.method public stop(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I

    .line 640
    if-nez p1, :cond_0

    .line 641
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 645
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub;->stopForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 648
    :cond_1
    return-void
.end method

.method public stopForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sequenceNumber"    # I

    .line 651
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda65;-><init>()V

    .line 655
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 651
    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommandForControllerInfo(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 656
    return-void
.end method

.method public subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 1876
    if-nez p1, :cond_0

    .line 1877
    return-void

    .line 1879
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    .line 1880
    const-string/jumbo v0, "subscribe(): Ignoring empty parentId"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    return-void

    .line 1886
    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p4}, Landroidx/media3/session/MediaLibraryService$LibraryParams;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 1891
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda76;

    invoke-direct {v1, p3, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda76;-><init>(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1895
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v1

    .line 1891
    const v2, 0xc351

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1898
    return-void

    .line 1887
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 1888
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1889
    return-void
.end method

.method public unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "sequenceNumber"    # I
    .param p3, "parentId"    # Ljava/lang/String;

    .line 1903
    if-nez p1, :cond_0

    .line 1904
    return-void

    .line 1906
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1907
    const-string v0, "MediaSessionStub"

    const-string/jumbo v1, "unsubscribe(): Ignoring empty parentId"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    return-void

    .line 1910
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda13;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    .line 1914
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    .line 1910
    const v1, 0xc352

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 1917
    return-void
.end method
