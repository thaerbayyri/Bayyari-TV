.class public abstract Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;
.super Landroidx/leanback/app/BrowseSupportFragment;
.source "Hilt_TvHomeFragment.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private componentContext:Landroid/content/ContextWrapper;

.field private volatile componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

.field private final componentManagerLock:Ljava/lang/Object;

.field private disableGetContextFix:Z

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->disableGetContextFix:Z

    .line 34
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentManagerLock:Ljava/lang/Object;

    .line 36
    iput-boolean v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->injected:Z

    return-void
.end method

.method private initializeComponentContext()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentContext:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0}, Landroidx/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentContext:Landroid/content/ContextWrapper;

    .line 61
    invoke-super {p0}, Landroidx/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/FragmentGetContextFix;->isFragmentGetContextFixDisabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->disableGetContextFix:Z

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 97
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v0

    return-object v0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 1

    .line 87
    new-instance v0, Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 68
    invoke-super {p0}, Landroidx/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->disableGetContextFix:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->initializeComponentContext()V

    .line 72
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentContext:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 111
    invoke-super {p0}, Landroidx/leanback/app/BrowseSupportFragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;->getFragmentFactory(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method protected inject()V
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->injected:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->injected:Z

    .line 105
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/home/TvHomeFragment_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/ui/home/TvHomeFragment;

    invoke-interface {v0, v1}, Lcom/bayyari/tv/ui/home/TvHomeFragment_GeneratedInjector;->injectTvHomeFragment(Lcom/bayyari/tv/ui/home/TvHomeFragment;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentContext:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->componentContext:Landroid/content/ContextWrapper;

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->findActivity(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ldagger/hilt/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->initializeComponentContext()V

    .line 54
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->inject()V

    .line 55
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->initializeComponentContext()V

    .line 43
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->inject()V

    .line 44
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1
.end method
