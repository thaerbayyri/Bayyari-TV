.class public abstract Lcom/bayyari/tv/player/Hilt_PlayerService;
.super Landroidx/media3/session/MediaSessionService;
.source "Hilt_PlayerService.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private volatile componentManager:Ldagger/hilt/android/internal/managers/ServiceComponentManager;

.field private final componentManagerLock:Ljava/lang/Object;

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->componentManagerLock:Ljava/lang/Object;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->injected:Z

    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ServiceComponentManager;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->componentManager:Ldagger/hilt/android/internal/managers/ServiceComponentManager;

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->componentManager:Ldagger/hilt/android/internal/managers/ServiceComponentManager;

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/bayyari/tv/player/Hilt_PlayerService;->createComponentManager()Ldagger/hilt/android/internal/managers/ServiceComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->componentManager:Ldagger/hilt/android/internal/managers/ServiceComponentManager;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->componentManager:Ldagger/hilt/android/internal/managers/ServiceComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/bayyari/tv/player/Hilt_PlayerService;->componentManager()Ldagger/hilt/android/internal/managers/ServiceComponentManager;

    move-result-object v0

    return-object v0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/ServiceComponentManager;
    .locals 1

    .line 31
    new-instance v0, Ldagger/hilt/android/internal/managers/ServiceComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/ServiceComponentManager;-><init>(Landroid/app/Service;)V

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/bayyari/tv/player/Hilt_PlayerService;->componentManager()Ldagger/hilt/android/internal/managers/ServiceComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ServiceComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected inject()V
    .locals 2

    .line 47
    iget-boolean v0, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->injected:Z

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bayyari/tv/player/Hilt_PlayerService;->injected:Z

    .line 49
    invoke-virtual {p0}, Lcom/bayyari/tv/player/Hilt_PlayerService;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/PlayerService_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/player/PlayerService;

    invoke-interface {v0, v1}, Lcom/bayyari/tv/player/PlayerService_GeneratedInjector;->injectPlayerService(Lcom/bayyari/tv/player/PlayerService;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/bayyari/tv/player/Hilt_PlayerService;->inject()V

    .line 27
    invoke-super {p0}, Landroidx/media3/session/MediaSessionService;->onCreate()V

    .line 28
    return-void
.end method
