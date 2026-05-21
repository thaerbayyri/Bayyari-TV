.class Landroidx/media3/session/MediaControllerStub;
.super Landroidx/media3/session/IMediaController$Stub;
.source "MediaControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerStub$ControllerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaControllerStub"

.field public static final VERSION_INT:I = 0x3


# instance fields
.field private final controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaControllerImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 1
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 45
    invoke-direct {p0}, Landroidx/media3/session/IMediaController$Stub;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method

.method private dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/media3/session/MediaControllerImplBase;",
            ">(",
            "Landroidx/media3/session/MediaControllerStub$ControllerTask<",
            "TT;>;)V"
        }
    .end annotation

    .line 334
    .local p1, "task":Landroidx/media3/session/MediaControllerStub$ControllerTask;, "Landroidx/media3/session/MediaControllerStub$ControllerTask<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 336
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaControllerImplBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .local v2, "controller":Landroidx/media3/session/MediaControllerImplBase;
    if-nez v2, :cond_0

    .line 352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    return-void

    .line 340
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    .line 341
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda15;

    invoke-direct {v4, v2, p1}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    nop

    .end local v2    # "controller":Landroidx/media3/session/MediaControllerImplBase;
    .end local v3    # "handler":Landroid/os/Handler;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    throw v2
.end method

.method static synthetic lambda$dispatchControllerTaskOnHandler$12(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerStub$ControllerTask;)V
    .locals 1
    .param p0, "controller"    # Landroidx/media3/session/MediaControllerImplBase;
    .param p1, "task"    # Landroidx/media3/session/MediaControllerStub$ControllerTask;

    .line 344
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    return-void

    .line 348
    :cond_0
    move-object v0, p0

    .line 349
    .local v0, "castedController":Landroidx/media3/session/MediaControllerImplBase;, "TT;"
    invoke-interface {p1, v0}, Landroidx/media3/session/MediaControllerStub$ControllerTask;->run(Landroidx/media3/session/MediaControllerImplBase;)V

    .line 350
    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChangedFromPlayer$4(Landroidx/media3/common/Player$Commands;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "commandsFromPlayer"    # Landroidx/media3/common/Player$Commands;
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 162
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onAvailableCommandsChangedFromPlayer(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChangedFromSession$3(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "sessionCommands"    # Landroidx/media3/session/SessionCommands;
    .param p1, "playerCommands"    # Landroidx/media3/common/Player$Commands;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 146
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onAvailableCommandsChangedFromSession(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onChildrenChanged$11(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaBrowserImplBase;)V
    .locals 0
    .param p0, "parentId"    # Ljava/lang/String;
    .param p1, "itemCount"    # I
    .param p2, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p3, "browser"    # Landroidx/media3/session/MediaBrowserImplBase;

    .line 311
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplBase;->notifyChildrenChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method static synthetic lambda$onConnected$0(Landroidx/media3/session/ConnectionState;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "connectionState"    # Landroidx/media3/session/ConnectionState;
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 98
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onConnected(Landroidx/media3/session/ConnectionState;)V

    return-void
.end method

.method static synthetic lambda$onCustomCommand$5(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "seq"    # I
    .param p1, "command"    # Landroidx/media3/session/SessionCommand;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 178
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->onCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$1(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 3
    .param p0, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 105
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaController;)V

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onExtrasChanged$9(Landroid/os/Bundle;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 254
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onPeriodicSessionPositionInfoChanged$7(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "sessionPositionInfo"    # Landroidx/media3/session/SessionPositionInfo;
    .param p1, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 206
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->notifyPeriodicSessionPositionInfoChanged(Landroidx/media3/session/SessionPositionInfo;)V

    return-void
.end method

.method static synthetic lambda$onPlayerInfoChangedWithExclusions$8(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "playerInfo"    # Landroidx/media3/session/PlayerInfo;
    .param p1, "bundlingExclusions"    # Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 245
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onPlayerInfoChanged(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V

    return-void
.end method

.method static synthetic lambda$onSearchResultChanged$10(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaBrowserImplBase;)V
    .locals 0
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "itemCount"    # I
    .param p2, "libraryParams"    # Landroidx/media3/session/MediaLibraryService$LibraryParams;
    .param p3, "browser"    # Landroidx/media3/session/MediaBrowserImplBase;

    .line 287
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplBase;->notifySearchResultChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method static synthetic lambda$onSessionActivityChanged$6(ILandroid/app/PendingIntent;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "seq"    # I
    .param p1, "sessionActivity"    # Landroid/app/PendingIntent;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 189
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onSetSessionActivity(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic lambda$onSetCustomLayout$2(ILjava/util/List;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0
    .param p0, "seq"    # I
    .param p1, "layout"    # Ljava/util/List;
    .param p2, "controller"    # Landroidx/media3/session/MediaControllerImplBase;

    .line 121
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onSetCustomLayout(ILjava/util/List;)V

    return-void
.end method

.method private setControllerFutureResult(ILjava/lang/Object;)V
    .locals 3
    .param p1, "sequenceNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 320
    .local p2, "futureResult":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 322
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaControllerImplBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .local v2, "controller":Landroidx/media3/session/MediaControllerImplBase;
    if-nez v2, :cond_0

    .line 328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    return-void

    .line 326
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->setFutureResult(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v2    # "controller":Landroidx/media3/session/MediaControllerImplBase;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    throw v2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 315
    iget-object v0, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 316
    return-void
.end method

.method public onAvailableCommandsChangedFromPlayer(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "commandsBundle"    # Landroid/os/Bundle;

    .line 151
    if-nez p2, :cond_0

    .line 152
    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/common/Player$Commands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v0, "commandsFromPlayer":Landroidx/media3/common/Player$Commands;
    nop

    .line 161
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/common/Player$Commands;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 163
    return-void

    .line 157
    .end local v0    # "commandsFromPlayer":Landroidx/media3/common/Player$Commands;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for Commands"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public onAvailableCommandsChangedFromSession(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "sessionCommandsBundle"    # Landroid/os/Bundle;
    .param p3, "playerCommandsBundle"    # Landroid/os/Bundle;

    .line 127
    const-string v0, "MediaControllerStub"

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionCommands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommands;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .local v1, "sessionCommands":Landroidx/media3/session/SessionCommands;
    nop

    .line 139
    :try_start_1
    invoke-static {p3}, Landroidx/media3/common/Player$Commands;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$Commands;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .local v0, "playerCommands":Landroidx/media3/common/Player$Commands;
    nop

    .line 144
    new-instance v2, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    invoke-direct {p0, v2}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 147
    return-void

    .line 140
    .end local v0    # "playerCommands":Landroidx/media3/common/Player$Commands;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Ignoring malformed Bundle for Commands"

    invoke-static {v0, v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void

    .line 133
    .end local v1    # "sessionCommands":Landroidx/media3/session/SessionCommands;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for SessionCommands"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void

    .line 128
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "libraryParamsBundle"    # Landroid/os/Bundle;

    .line 293
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaControllerStub"

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "onChildrenChanged(): Ignoring empty parentId"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void

    .line 297
    :cond_0
    if-gez p3, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildrenChanged(): Ignoring negative itemCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void

    .line 304
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

    .line 308
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 309
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p3, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 312
    return-void

    .line 305
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    return-void
.end method

.method public onConnected(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "connectionResultBundle"    # Landroid/os/Bundle;

    .line 87
    if-nez p2, :cond_0

    .line 88
    return-void

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/ConnectionState;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v0, "connectionState":Landroidx/media3/session/ConnectionState;
    nop

    .line 98
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/ConnectionState;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 99
    return-void

    .line 93
    .end local v0    # "connectionState":Landroidx/media3/session/ConnectionState;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Malformed Bundle for ConnectionResult. Disconnected from the session."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerStub;->onDisconnected(I)V

    .line 96
    return-void
.end method

.method public onCustomCommand(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "commandBundle"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 167
    const-string v0, "MediaControllerStub"

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionCommand;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v0, "command":Landroidx/media3/session/SessionCommand;
    nop

    .line 178
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, v0, p3}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda5;-><init>(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 179
    return-void

    .line 174
    .end local v0    # "command":Landroidx/media3/session/SessionCommand;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    return-void

    .line 168
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    const-string v1, "Ignoring custom command with null args."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onDisconnected(I)V
    .locals 1
    .param p1, "seq"    # I

    .line 103
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 106
    return-void
.end method

.method public onExtrasChanged(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 250
    if-nez p2, :cond_0

    .line 251
    const-string v0, "MediaControllerStub"

    const-string v1, "Ignoring null Bundle for extras"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void

    .line 254
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 255
    return-void
.end method

.method public onLibraryResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "sequenceNum"    # I
    .param p2, "libraryResultBundle"    # Landroid/os/Bundle;

    .line 69
    if-nez p2, :cond_0

    .line 70
    return-void

    .line 74
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/LibraryResult;->fromUnknownBundle(Landroid/os/Bundle;)Landroidx/media3/session/LibraryResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v0, "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    nop

    .line 82
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerStub;->setControllerFutureResult(ILjava/lang/Object;)V

    .line 83
    return-void

    .line 75
    .end local v0    # "result":Landroidx/media3/session/LibraryResult;, "Landroidx/media3/session/LibraryResult<*>;"
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for LibraryResult"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public onPeriodicSessionPositionInfoChanged(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "sessionPositionInfoBundle"    # Landroid/os/Bundle;

    .line 195
    if-nez p2, :cond_0

    .line 196
    return-void

    .line 200
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionPositionInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionPositionInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .local v0, "sessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    nop

    .line 205
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/SessionPositionInfo;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 207
    return-void

    .line 201
    .end local v0    # "sessionPositionInfo":Landroidx/media3/session/SessionPositionInfo;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for SessionPositionInfo"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    return-void
.end method

.method public onPlayerInfoChanged(ILandroid/os/Bundle;Z)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "playerInfoBundle"    # Landroid/os/Bundle;
    .param p3, "isTimelineExcluded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    new-instance v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    .line 220
    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 216
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/session/MediaControllerStub;->onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 221
    return-void
.end method

.method public onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "playerInfoBundle"    # Landroid/os/Bundle;
    .param p3, "playerInfoExclusions"    # Landroid/os/Bundle;

    .line 227
    const-string v0, "MediaControllerStub"

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/PlayerInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .local v1, "playerInfo":Landroidx/media3/session/PlayerInfo;
    nop

    .line 239
    :try_start_1
    invoke-static {p3}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    .local v0, "bundlingExclusions":Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    nop

    .line 244
    new-instance v2, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V

    invoke-direct {p0, v2}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 246
    return-void

    .line 240
    .end local v0    # "bundlingExclusions":Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Ignoring malformed Bundle for BundlingExclusions"

    invoke-static {v0, v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    return-void

    .line 233
    .end local v1    # "playerInfo":Landroidx/media3/session/PlayerInfo;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for PlayerInfo"

    invoke-static {v0, v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    return-void

    .line 228
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onRenderedFirstFrame(I)V
    .locals 1
    .param p1, "seq"    # I

    .line 259
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 260
    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "libraryParamsBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 269
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaControllerStub"

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "onSearchResultChanged(): Ignoring empty query"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 273
    :cond_0
    if-gez p3, :cond_1

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchResultChanged(): Ignoring negative itemCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void

    .line 280
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

    .line 284
    .local v0, "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :goto_0
    nop

    .line 285
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2, p3, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 288
    return-void

    .line 281
    .end local v0    # "libraryParams":Landroidx/media3/session/MediaLibraryService$LibraryParams;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    return-void
.end method

.method public onSessionActivityChanged(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    if-nez p2, :cond_0

    .line 185
    const-string v0, "MediaControllerStub"

    const-string v1, "Ignoring null session activity intent"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void

    .line 188
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda4;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 190
    return-void
.end method

.method public onSessionResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "sequenceNum"    # I
    .param p2, "sessionResultBundle"    # Landroid/os/Bundle;

    .line 51
    if-nez p2, :cond_0

    .line 52
    return-void

    .line 56
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/SessionResult;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "result":Landroidx/media3/session/SessionResult;
    nop

    .line 64
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerStub;->setControllerFutureResult(ILjava/lang/Object;)V

    .line 65
    return-void

    .line 57
    .end local v0    # "result":Landroidx/media3/session/SessionResult;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for SessionResult"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public onSetCustomLayout(ILjava/util/List;)V
    .locals 3
    .param p1, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p2, "commandButtonBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p2, :cond_0

    .line 111
    return-void

    .line 115
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda9;-><init>()V

    .line 116
    invoke-static {v0, p2}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v0, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    nop

    .line 121
    new-instance v1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, v0}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda10;-><init>(ILjava/util/List;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    .line 122
    return-void

    .line 117
    .end local v0    # "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MediaControllerStub"

    const-string v2, "Ignoring malformed Bundle for CommandButton"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method
