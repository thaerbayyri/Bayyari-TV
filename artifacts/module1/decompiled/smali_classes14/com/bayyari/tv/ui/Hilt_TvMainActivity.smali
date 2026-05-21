.class public abstract Lcom/bayyari/tv/ui/Hilt_TvMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Hilt_TvMainActivity.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private volatile componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

.field private final componentManagerLock:Ljava/lang/Object;

.field private injected:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManagerLock:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->injected:Z

    .line 31
    invoke-direct {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->_initHiltInternal()V

    .line 32
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "contentLayoutId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentLayoutId"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManagerLock:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->injected:Z

    .line 36
    invoke-direct {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->_initHiltInternal()V

    .line 37
    return-void
.end method

.method private _initHiltInternal()V
    .locals 1

    .line 40
    new-instance v0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity$1;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity$1;-><init>(Lcom/bayyari/tv/ui/Hilt_TvMainActivity;)V

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 46
    return-void
.end method

.method private initSavedStateHandleHolders()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->initSavedStateHandleHolders()V

    .line 50
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v0

    return-object v0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 1

    .line 71
    new-instance v0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 95
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;->getActivityFactory(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method protected inject()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->injected:Z

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->injected:Z

    .line 89
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/TvMainActivity_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/ui/TvMainActivity;

    invoke-interface {v0, v1}, Lcom/bayyari/tv/ui/TvMainActivity_GeneratedInjector;->injectTvMainActivity(Lcom/bayyari/tv/ui/TvMainActivity;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->initSavedStateHandleHolders()V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 62
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/Hilt_TvMainActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->clearSavedStateHandleHolders()V

    .line 63
    return-void
.end method
