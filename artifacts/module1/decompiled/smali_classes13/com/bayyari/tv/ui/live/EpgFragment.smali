.class public final Lcom/bayyari/tv/ui/live/EpgFragment;
.super Lcom/bayyari/tv/ui/live/Hilt_EpgFragment;
.source "EpgFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0013H\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/live/EpgFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "getAuthRepository",
        "()Lcom/bayyari/tv/data/repository/AuthRepository;",
        "setAuthRepository",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;)V",
        "epgRepository",
        "Lcom/bayyari/tv/data/repository/EpgRepository;",
        "getEpgRepository",
        "()Lcom/bayyari/tv/data/repository/EpgRepository;",
        "setEpgRepository",
        "(Lcom/bayyari/tv/data/repository/EpgRepository;)V",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentEpgBinding;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
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
.field public authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lcom/bayyari/tv/databinding/FragmentEpgBinding;

.field public epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_epg:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/live/Hilt_EpgFragment;-><init>(I)V

    .line 15
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/bayyari/tv/ui/live/EpgFragment;)Lcom/bayyari/tv/databinding/FragmentEpgBinding;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/EpgFragment;

    .line 15
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->binding:Lcom/bayyari/tv/databinding/FragmentEpgBinding;

    return-object v0
.end method


# virtual methods
.method public final getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEpgRepository()Lcom/bayyari/tv/data/repository/EpgRepository;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "epgRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->binding:Lcom/bayyari/tv/databinding/FragmentEpgBinding;

    .line 39
    invoke-super {p0}, Lcom/bayyari/tv/ui/live/Hilt_EpgFragment;->onDestroyView()V

    .line 40
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentEpgBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentEpgBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->binding:Lcom/bayyari/tv/databinding/FragmentEpgBinding;

    .line 28
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/EpgFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "streamId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    .local v0, "streamId":I
    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/EpgFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/live/EpgFragment;ILkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 35
    return-void
.end method

.method public final setAuthRepository(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 19
    return-void
.end method

.method public final setEpgRepository(Lcom/bayyari/tv/data/repository/EpgRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/EpgRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/EpgFragment;->epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;

    .line 22
    return-void
.end method
