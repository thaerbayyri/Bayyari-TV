.class final Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;
.super Landroidx/media3/session/IMediaSessionService$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSessionServiceStub"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mediaSessionManager:Landroidx/media/MediaSessionManager;

.field private final pendingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/IMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionService;)V
    .locals 3
    .param p1, "serviceReference"    # Landroidx/media3/session/MediaSessionService;

    .line 648
    invoke-direct {p0}, Landroidx/media3/session/IMediaSessionService$Stub;-><init>()V

    .line 649
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    .line 650
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 651
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    .line 652
    invoke-static {v0}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->mediaSessionManager:Landroidx/media/MediaSessionManager;

    .line 654
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    .line 655
    return-void
.end method


# virtual methods
.method public connect(Landroidx/media3/session/IMediaController;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "connectionRequestBundle"    # Landroid/os/Bundle;

    .line 660
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    move-object v3, p1

    goto/16 :goto_3

    .line 667
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/media3/session/ConnectionRequest;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v0

    .line 673
    .local v5, "request":Landroidx/media3/session/ConnectionRequest;
    nop

    .line 674
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 676
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 680
    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 681
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 684
    .local v7, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 685
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 686
    .local v9, "token":J
    if-eqz v7, :cond_2

    move v0, v7

    goto :goto_1

    :cond_2
    iget v0, v5, Landroidx/media3/session/ConnectionRequest;->pid:I

    :goto_1
    move v11, v0

    .line 687
    .local v11, "pid":I
    new-instance v4, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v0, v5, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-direct {v4, v0, v11, v8}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 689
    .local v4, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->mediaSessionManager:Landroidx/media/MediaSessionManager;

    invoke-virtual {v0, v4}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v6

    .line 690
    .local v6, "isTrusted":Z
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 692
    :try_start_2
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .local v3, "caller":Landroidx/media3/session/IMediaController;
    :try_start_3
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;Landroidx/media3/session/IMediaController;Landroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 738
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    nop

    .line 740
    return-void

    .line 738
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .end local v3    # "caller":Landroidx/media3/session/IMediaController;
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v3    # "caller":Landroidx/media3/session/IMediaController;
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    throw p1

    .line 668
    .end local v3    # "caller":Landroidx/media3/session/IMediaController;
    .end local v4    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .end local v5    # "request":Landroidx/media3/session/ConnectionRequest;
    .end local v6    # "isTrusted":Z
    .end local v7    # "callingPid":I
    .end local v8    # "uid":I
    .end local v9    # "token":J
    .end local v11    # "pid":I
    .restart local p1    # "caller":Landroidx/media3/session/IMediaController;
    :catch_1
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 671
    .restart local v3    # "caller":Landroidx/media3/session/IMediaController;
    .local p1, "e":Ljava/lang/RuntimeException;
    const-string v0, "MSessionService"

    const-string v1, "Ignoring malformed Bundle for ConnectionRequest"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 672
    return-void

    .line 660
    .end local v3    # "caller":Landroidx/media3/session/IMediaController;
    .local p1, "caller":Landroidx/media3/session/IMediaController;
    :cond_3
    move-object v3, p1

    .line 663
    .end local p1    # "caller":Landroidx/media3/session/IMediaController;
    .restart local v3    # "caller":Landroidx/media3/session/IMediaController;
    :goto_3
    return-void
.end method

.method synthetic lambda$connect$0$androidx-media3-session-MediaSessionService$MediaSessionServiceStub(Landroidx/media3/session/IMediaController;Landroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V
    .locals 11
    .param p1, "caller"    # Landroidx/media3/session/IMediaController;
    .param p2, "remoteUserInfo"    # Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .param p3, "request"    # Landroidx/media3/session/ConnectionRequest;
    .param p4, "isTrusted"    # Z

    .line 694
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 695
    const/4 v1, 0x1

    .line 697
    .local v1, "shouldNotifyDisconnected":Z
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v0

    .line 698
    .local v3, "service":Landroidx/media3/session/MediaSessionService;
    if-nez v3, :cond_1

    .line 727
    if-eqz v1, :cond_0

    .line 729
    :try_start_1
    invoke-interface {p1, v2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 733
    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    :try_start_2
    new-instance v4, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v6, p3, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v7, p3, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    new-instance v9, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-direct {v9, p1}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;)V

    iget-object v10, p3, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, p2

    move v8, p4

    .end local p2    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .end local p4    # "isTrusted":Z
    .local v5, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .local v8, "isTrusted":Z
    :try_start_3
    invoke-direct/range {v4 .. v10}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 712
    .local v4, "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    :try_start_4
    invoke-virtual {v3, v4}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 713
    .local p2, "session":Landroidx/media3/session/MediaSession;
    if-nez p2, :cond_3

    .line 727
    if-eqz v1, :cond_2

    .line 729
    :try_start_5
    invoke-interface {p1, v2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 733
    goto :goto_1

    .line 730
    :catch_1
    move-exception v0

    .line 714
    :cond_2
    :goto_1
    return-void

    .line 717
    :cond_3
    :try_start_6
    invoke-virtual {v3, p2}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 718
    const/4 v1, 0x0

    .line 720
    invoke-virtual {p2, p1, v4}, Landroidx/media3/session/MediaSession;->handleControllerConnectionFromService(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 724
    goto :goto_2

    .line 721
    .end local p2    # "session":Landroidx/media3/session/MediaSession;
    :catch_2
    move-exception v0

    move-object p2, v0

    .line 723
    .local p2, "e":Ljava/lang/Exception;
    :try_start_7
    const-string p4, "MSessionService"

    const-string v0, "Failed to add a session to session service"

    invoke-static {p4, v0, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 727
    .end local v3    # "service":Landroidx/media3/session/MediaSessionService;
    .end local v4    # "controllerInfo":Landroidx/media3/session/MediaSession$ControllerInfo;
    .end local p2    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_4

    .line 729
    :try_start_8
    invoke-interface {p1, v2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 733
    :goto_3
    goto :goto_4

    .line 730
    :catch_3
    move-exception v0

    goto :goto_3

    .line 736
    :cond_4
    :goto_4
    return-void

    .line 727
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_5

    .end local v5    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .end local v8    # "isTrusted":Z
    .local p2, "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .restart local p4    # "isTrusted":Z
    :catchall_1
    move-exception v0

    move-object v5, p2

    move v8, p4

    move-object p2, v0

    .end local p2    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .end local p4    # "isTrusted":Z
    .restart local v5    # "remoteUserInfo":Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .restart local v8    # "isTrusted":Z
    :goto_5
    if-eqz v1, :cond_5

    .line 729
    :try_start_9
    invoke-interface {p1, v2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    .line 733
    goto :goto_6

    .line 730
    :catch_4
    move-exception v0

    .line 735
    :cond_5
    :goto_6
    throw p2
.end method

.method public release()V
    .locals 3

    .line 743
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 744
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 745
    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/IMediaController;

    .line 747
    .local v1, "controller":Landroidx/media3/session/IMediaController;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    goto :goto_1

    .line 748
    :catch_0
    move-exception v2

    .line 751
    .end local v1    # "controller":Landroidx/media3/session/IMediaController;
    :goto_1
    goto :goto_0

    .line 752
    :cond_0
    return-void
.end method
