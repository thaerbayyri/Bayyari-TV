.class public final synthetic Landroidx/media3/session/MediaController$Listener$-CC;
.super Ljava/lang/Object;
.source "MediaController.java"


# direct methods
.method public static $default$onAvailableSessionCommandsChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommands;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaController$Listener;
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "commands"    # Landroidx/media3/session/SessionCommands;

    .line 404
    return-void
.end method

.method public static $default$onCustomCommand(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "_this"    # Landroidx/media3/session/MediaController$Listener;
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "command"    # Landroidx/media3/session/SessionCommand;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 424
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onCustomLayoutChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Ljava/util/List;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaController$Listener;
    .param p1, "controller"    # Landroidx/media3/session/MediaController;

    .line 395
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    return-void
.end method

.method public static $default$onDisconnected(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaController$Listener;
    .param p1, "controller"    # Landroidx/media3/session/MediaController;

    .line 360
    return-void
.end method

.method public static $default$onExtrasChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaController$Listener;
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 433
    return-void
.end method

.method public static $default$onSessionActivityChanged(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Landroid/app/PendingIntent;)V
    .locals 0
    .param p0, "_this"    # Landroidx/media3/session/MediaController$Listener;
    .param p1, "controller"    # Landroidx/media3/session/MediaController;
    .param p2, "sessionActivity"    # Landroid/app/PendingIntent;

    .line 444
    return-void
.end method

.method public static $default$onSetCustomLayout(Landroidx/media3/session/MediaController$Listener;Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "_this"    # Landroidx/media3/session/MediaController$Listener;
    .param p1, "controller"    # Landroidx/media3/session/MediaController;

    .line 379
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/session/CommandButton;>;"
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
