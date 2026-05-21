.class public final synthetic Landroidx/media3/session/MediaSession$Callback$-CC;
.super Ljava/lang/Object;
.source "MediaSession.java"


# direct methods
.method public static $default$onAddMediaItems(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1387
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 1388
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v2, :cond_0

    .line 1389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1391
    .end local v1    # "mediaItem":Landroidx/media3/common/MediaItem;
    :cond_0
    goto :goto_0

    .line 1392
    :cond_1
    invoke-static {p3}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onConnect(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1217
    new-instance v0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    invoke-direct {v0, p1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;-><init>(Landroidx/media3/session/MediaSession;)V

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->build()Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onCustomCommand(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "customCommand"    # Landroidx/media3/session/SessionCommand;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 1331
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onDisconnected(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1243
    return-void
.end method

.method public static $default$onMediaButtonEvent(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 1522
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$onPlaybackResumption(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1496
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onPlayerCommandRequest(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;I)I
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "playerCommand"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1253
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$onPostConnect(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 1231
    return-void
.end method

.method public static $default$onSetMediaItems(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "mediaSession"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p4, "startIndex"    # I
    .param p5, "startPositionMs"    # J

    .line 1469
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    nop

    .line 1470
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSession$Callback;->onAddMediaItems(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSession$Callback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4, p5, p6}, Landroidx/media3/session/MediaSession$Callback$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 1469
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onSetRating(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "rating"    # Landroidx/media3/common/Rating;

    .line 1298
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onSetRating(Landroidx/media3/session/MediaSession$Callback;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "_this"    # Landroidx/media3/session/MediaSession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaSession;
    .param p2, "controller"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "rating"    # Landroidx/media3/common/Rating;

    .line 1276
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onSetMediaItems$0(IJLjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "startIndex"    # I
    .param p1, "startPositionMs"    # J
    .param p3, "mediaItemList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1472
    new-instance v0, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    invoke-direct {v0, p3, p0, p1, p2}, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;-><init>(Ljava/util/List;IJ)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
