.class public final Lcom/bayyari/tv/ui/series/SeriesDetailFragment;
.super Lcom/bayyari/tv/ui/series/Hilt_SeriesDetailFragment;
.source "SeriesDetailFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeriesDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeriesDetailFragment.kt\ncom/bayyari/tv/ui/series/SeriesDetailFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,55:1\n106#2,15:56\n*S KotlinDebug\n*F\n+ 1 SeriesDetailFragment.kt\ncom/bayyari/tv/ui/series/SeriesDetailFragment\n*L\n20#1:56,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/series/SeriesDetailFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;",
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
.field private binding:Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 18
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_series_detail:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/series/Hilt_SeriesDetailFragment;-><init>(I)V

    .line 20
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 56
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 57
    new-instance v1, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 56
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 58
    const/4 v2, 0x0

    .line 56
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 59
    const/4 v3, 0x0

    .line 56
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 61
    .local v4, "$i$f$viewModels\\1\\20":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 62
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 70
    nop

    .line 62
    new-instance v9, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 20
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\20":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 17
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;)Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesDetailFragment;

    .line 17
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;)Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesDetailFragment;

    .line 17
    invoke-direct {p0}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->getViewModel()Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$0(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;II)Lkotlin/Unit;
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/series/SeriesDetailFragment;
    .param p1, "$seriesId"    # I
    .param p2, "seasonNumber"    # I

    .line 29
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 30
    sget v1, Lcom/bayyari/tv/R$id;->action_series_to_season:I

    .line 31
    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "seriesId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "seasonNumber"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 33
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

    .line 52
    invoke-super {p0}, Lcom/bayyari/tv/ui/series/Hilt_SeriesDetailFragment;->onDestroyView()V

    .line 53
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

    .line 25
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "seriesId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    .local v0, "seriesId":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->getViewModel()Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->load(I)V

    .line 28
    :cond_1
    new-instance v1, Lcom/bayyari/tv/ui/series/SeasonAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;I)V

    invoke-direct {v1, v2}, Lcom/bayyari/tv/ui/series/SeasonAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .local v1, "seasonAdapter":Lcom/bayyari/tv/ui/series/SeasonAdapter;
    iget-object v2, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;->recyclerSeasons:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    :cond_2
    iget-object v2, p0, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/bayyari/tv/databinding/FragmentSeriesDetailBinding;->recyclerSeasons:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_3

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const-string v3, "getViewLifecycleOwner(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1;

    const/4 v10, 0x0

    invoke-direct {v2, p0, v10}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 45
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$2;

    invoke-direct {v2, p0, v1, v10}, Lcom/bayyari/tv/ui/series/SeriesDetailFragment$onViewCreated$2;-><init>(Lcom/bayyari/tv/ui/series/SeriesDetailFragment;Lcom/bayyari/tv/ui/series/SeasonAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 48
    return-void
.end method
