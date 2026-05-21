.class final Landroidx/media3/session/ConnectedControllersManager;
.super Ljava/lang/Object;
.source "ConnectedControllersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;,
        Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final controllerInfoMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "TT;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerRecords:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final sessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/session/MediaSessionImpl;

    .line 68
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    .line 62
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 74
    return-void
.end method

.method private flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<",
            "TT;>;)V"
        }
    .end annotation

    .line 258
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 259
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-nez v0, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v8, v1

    .line 263
    .local v8, "continueRunning":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_0
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    iget-object v3, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;

    .line 266
    .local v5, "asyncCommand":Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
    if-nez v5, :cond_1

    .line 267
    iput-boolean v1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    .line 268
    return-void

    .line 270
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 271
    .local v6, "commandExecuting":Ljava/util/concurrent/atomic/AtomicBoolean;
    nop

    .line 272
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v3, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    .line 274
    invoke-virtual {p0, v3}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v10

    new-instance v3, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda0;

    move-object v4, p0

    move-object v7, p1

    .end local p1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    .local v7, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    invoke-direct/range {v3 .. v8}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/ConnectedControllersManager;Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 273
    invoke-virtual {v0, v10, v3}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 271
    invoke-static {v9, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 289
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    .end local v5    # "asyncCommand":Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
    .end local v6    # "commandExecuting":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object p1, v7

    goto :goto_0

    .line 291
    .end local v7    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    .restart local p1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :cond_2
    return-void
.end method

.method static synthetic lambda$removeController$0(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .param p0, "sessionImpl"    # Landroidx/media3/session/MediaSessionImpl;
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 147
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onDisconnectedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 151
    return-void
.end method


# virtual methods
.method public addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 5
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p4, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            ")V"
        }
    .end annotation

    .line 81
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    .line 83
    .local v1, "savedInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-nez v1, :cond_0

    .line 84
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    new-instance v3, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    new-instance v4, Landroidx/media3/session/SequencedFutureManager;

    invoke-direct {v4}, Landroidx/media3/session/SequencedFutureManager;-><init>()V

    invoke-direct {v3, p1, v4, p3, p4}, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;-><init>(Ljava/lang/Object;Landroidx/media3/session/SequencedFutureManager;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    invoke-virtual {v2, p2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 92
    .local v2, "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    iput-object p3, v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 93
    iput-object p4, v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 95
    .end local v1    # "savedInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local v2    # "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :goto_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addToCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "asyncCommand"    # Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;

    .line 237
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 239
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-eqz v1, :cond_0

    .line 240
    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    invoke-interface {v2, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :cond_0
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 246
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 248
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    .line 252
    invoke-direct {p0, v1}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V

    .line 253
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0

    .line 254
    return-void

    .line 249
    .restart local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 253
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvailablePlayerCommands(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/common/Player$Commands;
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 113
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 115
    .local v1, "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-eqz v1, :cond_0

    .line 116
    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    monitor-exit v0

    return-object v2

    .line 118
    .end local v1    # "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :cond_0
    monitor-exit v0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectedControllers()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 155
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media3/session/MediaSession$ControllerInfo;"
        }
    .end annotation

    .line 231
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    monitor-exit v0

    return-object v1

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 176
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 178
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 178
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSequencedFutureManager(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media3/session/SequencedFutureManager;"
        }
    .end annotation

    .line 192
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    .line 194
    .local v1, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 195
    .end local v1    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    .local v3, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-eqz v3, :cond_1

    iget-object v2, v3, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    :cond_1
    return-object v2

    .line 195
    .end local v3    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 161
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z
    .locals 3
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "commandCode"    # I

    .line 219
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 221
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 223
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 224
    invoke-virtual {v2, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 223
    :goto_0
    return v2

    .line 221
    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "commandCode"    # I

    .line 210
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 212
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, p2}, Landroidx/media3/session/SessionCommands;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 212
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;

    .line 201
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 203
    .local v1, "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v0, p2}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 203
    .end local v1    # "info":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method synthetic lambda$flushCommandQueue$1$androidx-media3-session-ConnectedControllersManager(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "commandExecuting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "info"    # Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;
    .param p3, "continueRunning"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 280
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0, p2}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V

    goto :goto_0

    .line 284
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    :goto_0
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$flushCommandQueue$2$androidx-media3-session-ConnectedControllersManager(Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3
    .param p1, "asyncCommand"    # Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
    .param p2, "commandExecuting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "info"    # Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;
    .param p4, "continueRunning"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 276
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    nop

    .line 277
    invoke-interface {p1}, Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;->run()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3, p4}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/ConnectedControllersManager;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 288
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 278
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 276
    return-void
.end method

.method public removeController(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 4
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 131
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 133
    .local v1, "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-nez v1, :cond_0

    .line 134
    monitor-exit v0

    return-void

    .line 136
    :cond_0
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    iget-object v3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager;->release()V

    .line 140
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    .line 141
    .local v0, "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    nop

    .line 145
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, p1}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 144
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 152
    return-void

    .line 142
    :cond_2
    :goto_0
    return-void

    .line 137
    .end local v0    # "sessionImpl":Landroidx/media3/session/MediaSessionImpl;
    .end local v1    # "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeController(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    .local p1, "controllerKey":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 124
    .local v0, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Landroidx/media3/session/ConnectedControllersManager;->removeController(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 127
    :cond_0
    return-void
.end method

.method public updateCommandsFromSession(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 2
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p2, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p3, "playerCommands"    # Landroidx/media3/common/Player$Commands;

    .line 102
    .local p0, "this":Landroidx/media3/session/ConnectedControllersManager;, "Landroidx/media3/session/ConnectedControllersManager<TT;>;"
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 104
    .local v1, "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    if-eqz v1, :cond_0

    .line 105
    iput-object p2, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 106
    iput-object p3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 108
    .end local v1    # "record":Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<TT;>;"
    :cond_0
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
