.class public final Lcom/bayyari/tv/ui/home/TvHomeFragment;
.super Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;
.source "TvHomeFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTvHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TvHomeFragment.kt\ncom/bayyari/tv/ui/home/TvHomeFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,58:1\n106#2,15:59\n*S KotlinDebug\n*F\n+ 1 TvHomeFragment.kt\ncom/bayyari/tv/ui/home/TvHomeFragment\n*L\n19#1:59,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/home/TvHomeFragment;",
        "Landroidx/leanback/app/BrowseSupportFragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/home/TvHomeViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/home/TvHomeViewModel;",
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

    .line 17
    invoke-direct {p0}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;-><init>()V

    .line 19
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 59
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 60
    new-instance v1, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 59
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 61
    const/4 v2, 0x0

    .line 59
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 62
    const/4 v3, 0x0

    .line 59
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 64
    .local v4, "$i$f$viewModels\\1\\19":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 65
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 73
    nop

    .line 65
    new-instance v9, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/home/TvHomeFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 19
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\19":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 16
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/home/TvHomeFragment;)Lcom/bayyari/tv/ui/home/TvHomeViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/TvHomeFragment;

    .line 16
    invoke-direct {p0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getViewModel()Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/home/TvHomeViewModel;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Lcom/bayyari/tv/ui/home/Hilt_TvHomeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/bayyari/tv/R$string;->app_name:I

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->setHeadersState(I)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->setHeadersTransitionOnBackEnabled(Z)V

    .line 27
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroidx/leanback/widget/ListRowPresenter;

    invoke-direct {v1}, Landroidx/leanback/widget/ListRowPresenter;-><init>()V

    check-cast v1, Landroidx/leanback/widget/Presenter;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 28
    .local v0, "rowsAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    move-object v1, v0

    check-cast v1, Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {p0, v1}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 30
    new-instance v1, Lcom/bayyari/tv/ui/home/MediaCardPresenter;

    invoke-direct {v1}, Lcom/bayyari/tv/ui/home/MediaCardPresenter;-><init>()V

    .line 31
    .local v1, "presenter":Lcom/bayyari/tv/ui/home/MediaCardPresenter;
    new-instance v2, Landroidx/leanback/widget/ArrayObjectAdapter;

    move-object v3, v1

    check-cast v3, Landroidx/leanback/widget/Presenter;

    invoke-direct {v2, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 32
    .local v2, "liveAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v3, Landroidx/leanback/widget/ArrayObjectAdapter;

    move-object v4, v1

    check-cast v4, Landroidx/leanback/widget/Presenter;

    invoke-direct {v3, v4}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 33
    .local v3, "movieAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v4, Landroidx/leanback/widget/ArrayObjectAdapter;

    move-object v5, v1

    check-cast v5, Landroidx/leanback/widget/Presenter;

    invoke-direct {v4, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 35
    .local v4, "seriesAdapter":Landroidx/leanback/widget/ArrayObjectAdapter;
    new-instance v5, Landroidx/leanback/widget/ListRow;

    new-instance v6, Landroidx/leanback/widget/HeaderItem;

    sget v7, Lcom/bayyari/tv/R$string;->home_live_now:I

    invoke-virtual {p0, v7}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-direct {v6, v8, v9, v7}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    move-object v7, v2

    check-cast v7, Landroidx/leanback/widget/ObjectAdapter;

    invoke-direct {v5, v6, v7}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 36
    new-instance v5, Landroidx/leanback/widget/ListRow;

    new-instance v6, Landroidx/leanback/widget/HeaderItem;

    sget v7, Lcom/bayyari/tv/R$string;->home_latest_movies:I

    invoke-virtual {p0, v7}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1

    invoke-direct {v6, v8, v9, v7}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    move-object v7, v3

    check-cast v7, Landroidx/leanback/widget/ObjectAdapter;

    invoke-direct {v5, v6, v7}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 37
    new-instance v5, Landroidx/leanback/widget/ListRow;

    new-instance v6, Landroidx/leanback/widget/HeaderItem;

    sget v7, Lcom/bayyari/tv/R$string;->home_latest_series:I

    invoke-virtual {p0, v7}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x2

    invoke-direct {v6, v8, v9, v7}, Landroidx/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    move-object v7, v4

    check-cast v7, Landroidx/leanback/widget/ObjectAdapter;

    invoke-direct {v5, v6, v7}, Landroidx/leanback/widget/ListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    const-string v6, "getViewLifecycleOwner(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/TvHomeFragment$onActivityCreated$1;

    const/4 v13, 0x0

    invoke-direct {v5, p0, v2, v13}, Lcom/bayyari/tv/ui/home/TvHomeFragment$onActivityCreated$1;-><init>(Lcom/bayyari/tv/ui/home/TvHomeFragment;Landroidx/leanback/widget/ArrayObjectAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 44
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/TvHomeFragment$onActivityCreated$2;

    invoke-direct {v5, p0, v3, v13}, Lcom/bayyari/tv/ui/home/TvHomeFragment$onActivityCreated$2;-><init>(Lcom/bayyari/tv/ui/home/TvHomeFragment;Landroidx/leanback/widget/ArrayObjectAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 49
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/TvHomeFragment$onActivityCreated$3;

    invoke-direct {v5, p0, v4, v13}, Lcom/bayyari/tv/ui/home/TvHomeFragment$onActivityCreated$3;-><init>(Lcom/bayyari/tv/ui/home/TvHomeFragment;Landroidx/leanback/widget/ArrayObjectAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 55
    invoke-direct {p0}, Lcom/bayyari/tv/ui/home/TvHomeFragment;->getViewModel()Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->load()V

    .line 56
    return-void
.end method
