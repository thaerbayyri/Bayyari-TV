.class public final Lcom/bayyari/tv/ui/live/TvLiveFragment;
.super Lcom/bayyari/tv/ui/live/Hilt_TvLiveFragment;
.source "TvLiveFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTvLiveFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TvLiveFragment.kt\ncom/bayyari/tv/ui/live/TvLiveFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n106#2,15:37\n1#3:52\n*S KotlinDebug\n*F\n+ 1 TvLiveFragment.kt\ncom/bayyari/tv/ui/live/TvLiveFragment\n*L\n17#1:37,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/live/TvLiveFragment;",
        "Landroidx/leanback/app/VerticalGridSupportFragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/live/LiveViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/live/LiveViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 15
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/Hilt_TvLiveFragment;-><init>()V

    .line 17
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 37
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 38
    new-instance v1, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 37
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 39
    const/4 v2, 0x0

    .line 37
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 40
    const/4 v3, 0x0

    .line 37
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 42
    .local v4, "$i$f$viewModels\\1\\17":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 43
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/live/LiveViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 51
    nop

    .line 43
    new-instance v9, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/live/TvLiveFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 17
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\17":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/live/TvLiveFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 14
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/live/TvLiveFragment;)Lcom/bayyari/tv/ui/live/LiveViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/TvLiveFragment;

    .line 14
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/TvLiveFragment;->getViewModel()Lcom/bayyari/tv/ui/live/LiveViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/live/LiveViewModel;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/TvLiveFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/live/LiveViewModel;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 20
    invoke-super {p0, p1}, Lcom/bayyari/tv/ui/live/Hilt_TvLiveFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>()V

    move-object v1, v0

    .line 52
    .local v1, "$this$onActivityCreated_u24lambda_u240\\1":Landroidx/leanback/widget/VerticalGridPresenter;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-apply-TvLiveFragment$onActivityCreated$presenter$1\\1\\21\\0":I
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/VerticalGridPresenter;->setNumberOfColumns(I)V

    .line 22
    .end local v1    # "$this$onActivityCreated_u24lambda_u240\\1":Landroidx/leanback/widget/VerticalGridPresenter;
    .end local v2    # "$i$a$-apply-TvLiveFragment$onActivityCreated$presenter$1\\1\\21\\0":I
    .local v0, "presenter":Landroidx/leanback/widget/VerticalGridPresenter;
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/live/TvLiveFragment;->setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V

    .line 24
    new-instance v1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/home/MediaCardPresenter;

    invoke-direct {v2}, Lcom/bayyari/tv/ui/home/MediaCardPresenter;-><init>()V

    check-cast v2, Landroidx/leanback/widget/Presenter;

    invoke-direct {v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 25
    .local v1, "adapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    move-object v2, v1

    check-cast v2, Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {p0, v2}, Lcom/bayyari/tv/ui/live/TvLiveFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 27
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/TvLiveFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const-string v3, "getViewLifecycleOwner(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/bayyari/tv/ui/live/TvLiveFragment$onActivityCreated$1;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v4}, Lcom/bayyari/tv/ui/live/TvLiveFragment$onActivityCreated$1;-><init>(Lcom/bayyari/tv/ui/live/TvLiveFragment;Landroidx/leanback/widget/ArrayObjectAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 33
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/TvLiveFragment;->getViewModel()Lcom/bayyari/tv/ui/live/LiveViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bayyari/tv/ui/live/LiveViewModel;->refresh()V

    .line 34
    return-void
.end method
