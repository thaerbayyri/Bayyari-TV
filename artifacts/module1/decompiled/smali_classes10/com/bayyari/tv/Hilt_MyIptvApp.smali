.class public abstract Lcom/bayyari/tv/Hilt_MyIptvApp;
.super Landroid/app/Application;
.source "Hilt_MyIptvApp.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private final componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bayyari/tv/Hilt_MyIptvApp;->injected:Z

    .line 21
    new-instance v0, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    new-instance v1, Lcom/bayyari/tv/Hilt_MyIptvApp$1;

    invoke-direct {v1, p0}, Lcom/bayyari/tv/Hilt_MyIptvApp$1;-><init>(Lcom/bayyari/tv/Hilt_MyIptvApp;)V

    invoke-direct {v0, v1}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;-><init>(Ldagger/hilt/android/internal/managers/ComponentSupplier;)V

    iput-object v0, p0, Lcom/bayyari/tv/Hilt_MyIptvApp;->componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/Hilt_MyIptvApp;->componentManager:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/bayyari/tv/Hilt_MyIptvApp;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/bayyari/tv/Hilt_MyIptvApp;->componentManager()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hiltInternalInject()V
    .locals 2

    .line 47
    iget-boolean v0, p0, Lcom/bayyari/tv/Hilt_MyIptvApp;->injected:Z

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bayyari/tv/Hilt_MyIptvApp;->injected:Z

    .line 51
    invoke-virtual {p0}, Lcom/bayyari/tv/Hilt_MyIptvApp;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/MyIptvApp_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/MyIptvApp;

    invoke-interface {v0, v1}, Lcom/bayyari/tv/MyIptvApp_GeneratedInjector;->injectMyIptvApp(Lcom/bayyari/tv/MyIptvApp;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/bayyari/tv/Hilt_MyIptvApp;->hiltInternalInject()V

    .line 43
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 44
    return-void
.end method
