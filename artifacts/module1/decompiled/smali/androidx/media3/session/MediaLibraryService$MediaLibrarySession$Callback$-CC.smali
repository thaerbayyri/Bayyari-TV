.class public final synthetic Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback$-CC;
.super Ljava/lang/Object;
.source "MediaLibraryService.java"


# direct methods
.method public static $default$onGetChildren(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 219
    const/4 v0, -0x6

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onGetItem(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "mediaId"    # Ljava/lang/String;

    .line 185
    const/4 v0, -0x6

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onGetLibraryRoot(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 162
    const/4 v0, -0x6

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onGetSearchResult(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "pageSize"    # I
    .param p6, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 385
    const/4 v0, -0x6

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onSearch(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 347
    const/4 v0, -0x6

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onSubscribe(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "_this"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 265
    nop

    .line 266
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetItem(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1, p3, p4}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 265
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onUnsubscribe(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "_this"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;
    .param p1, "session"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p3, "parentId"    # Ljava/lang/String;

    .line 315
    invoke-static {}, Landroidx/media3/session/LibraryResult;->ofVoid()Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onSubscribe$0(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/LibraryResult;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "browser"    # Landroidx/media3/session/MediaSession$ControllerInfo;
    .param p1, "session"    # Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "params"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p4, "result"    # Landroidx/media3/session/LibraryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    iget v0, p4, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-nez v0, :cond_2

    iget-object v0, p4, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p4, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p4, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    .line 271
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerVersion()I

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const v0, 0x7fffffff

    invoke-virtual {p1, p0, p2, v0, p3}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;->notifyChildrenChanged(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 286
    :cond_1
    invoke-static {}, Landroidx/media3/session/LibraryResult;->ofVoid()Landroidx/media3/session/LibraryResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 275
    :cond_2
    :goto_0
    iget v0, p4, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-eqz v0, :cond_3

    .line 276
    iget v0, p4, Landroidx/media3/session/LibraryResult;->resultCode:I

    goto :goto_1

    .line 277
    :cond_3
    const/4 v0, -0x3

    .line 274
    :goto_1
    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
