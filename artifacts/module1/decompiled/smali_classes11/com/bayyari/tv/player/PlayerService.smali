.class public final Lcom/bayyari/tv/player/PlayerService;
.super Lcom/bayyari/tv/player/Hilt_PlayerService;
.source "PlayerService.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\rH\u0016J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bayyari/tv/player/PlayerService;",
        "Landroidx/media3/session/MediaSessionService;",
        "<init>",
        "()V",
        "iptvPlayer",
        "Lcom/bayyari/tv/player/IptvPlayer;",
        "getIptvPlayer",
        "()Lcom/bayyari/tv/player/IptvPlayer;",
        "setIptvPlayer",
        "(Lcom/bayyari/tv/player/IptvPlayer;)V",
        "session",
        "Landroidx/media3/session/MediaSession;",
        "onCreate",
        "",
        "onGetSession",
        "controllerInfo",
        "Landroidx/media3/session/MediaSession$ControllerInfo;",
        "onDestroy",
        "onTaskRemoved",
        "rootIntent",
        "Landroid/content/Intent;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private session:Landroidx/media3/session/MediaSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/bayyari/tv/player/Hilt_PlayerService;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public final getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bayyari/tv/player/PlayerService;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "iptvPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 18
    invoke-super {p0}, Lcom/bayyari/tv/player/Hilt_PlayerService;->onCreate()V

    .line 19
    new-instance v0, Landroidx/media3/session/MediaSession$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bayyari/tv/player/PlayerService;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Player;

    invoke-direct {v0, v1, v2}, Landroidx/media3/session/MediaSession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;)V

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$Builder;->build()Landroidx/media3/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/player/PlayerService;->session:Landroidx/media3/session/MediaSession;

    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/bayyari/tv/player/PlayerService;->session:Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_0

    .local v0, "$this$onDestroy_u24lambda_u240\\1":Landroidx/media3/session/MediaSession;
    const/4 v1, 0x0

    .line 26
    .local v1, "$i$a$-run-PlayerService$onDestroy$1\\1\\25\\0":I
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/Player;->release()V

    .line 27
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->release()V

    .line 28
    nop

    .line 25
    .end local v0    # "$this$onDestroy_u24lambda_u240\\1":Landroidx/media3/session/MediaSession;
    .end local v1    # "$i$a$-run-PlayerService$onDestroy$1\\1\\25\\0":I
    nop

    .line 29
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/player/PlayerService;->session:Landroidx/media3/session/MediaSession;

    .line 30
    invoke-super {p0}, Lcom/bayyari/tv/player/Hilt_PlayerService;->onDestroy()V

    .line 31
    return-void
.end method

.method public onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
    .locals 1
    .param p1, "controllerInfo"    # Landroidx/media3/session/MediaSession$ControllerInfo;

    const-string v0, "controllerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/bayyari/tv/player/PlayerService;->session:Landroidx/media3/session/MediaSession;

    return-object v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 34
    invoke-virtual {p0}, Lcom/bayyari/tv/player/PlayerService;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    .line 35
    .local v0, "player":Landroidx/media3/common/Player;
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getMediaItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/bayyari/tv/player/PlayerService;->stopSelf()V

    .line 38
    :cond_1
    invoke-super {p0, p1}, Lcom/bayyari/tv/player/Hilt_PlayerService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public final setIptvPlayer(Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/player/IptvPlayer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/bayyari/tv/player/PlayerService;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 13
    return-void
.end method
