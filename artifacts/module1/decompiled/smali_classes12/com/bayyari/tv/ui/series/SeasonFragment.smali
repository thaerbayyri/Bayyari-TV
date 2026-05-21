.class public final Lcom/bayyari/tv/ui/series/SeasonFragment;
.super Lcom/bayyari/tv/ui/series/Hilt_SeasonFragment;
.source "SeasonFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeasonFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeasonFragment.kt\ncom/bayyari/tv/ui/series/SeasonFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,50:1\n106#2,15:51\n*S KotlinDebug\n*F\n+ 1 SeasonFragment.kt\ncom/bayyari/tv/ui/series/SeasonFragment\n*L\n20#1:51,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/series/SeasonFragment;",
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
        "Lcom/bayyari/tv/databinding/FragmentSeasonBinding;",
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
.field private binding:Lcom/bayyari/tv/databinding/FragmentSeasonBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 18
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_season:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/series/Hilt_SeasonFragment;-><init>(I)V

    .line 20
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 51
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 52
    new-instance v1, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 51
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 53
    const/4 v2, 0x0

    .line 51
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 54
    const/4 v3, 0x0

    .line 51
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 56
    .local v4, "$i$f$viewModels\\1\\20":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 57
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 65
    nop

    .line 57
    new-instance v9, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/series/SeasonFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

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
    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeasonFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 17
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/series/SeasonFragment;)Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeasonFragment;

    .line 17
    invoke-direct {p0}, Lcom/bayyari/tv/ui/series/SeasonFragment;->getViewModel()Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeasonFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$1(Lcom/bayyari/tv/ui/series/SeasonFragment;Lcom/bayyari/tv/domain/model/Episode;)Lkotlin/Unit;
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/series/SeasonFragment;
    .param p1, "episode"    # Lcom/bayyari/tv/domain/model/Episode;

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeasonFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$onViewCreated_u24lambda_u241_u24lambda_u240\\1":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 31
    .local v2, "$i$a$-apply-SeasonFragment$onViewCreated$adapter$1$1\\1\\30\\0":I
    const-string v3, "extra_episode_id"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Episode;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v3, "extra_container_ext"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Episode;->getContainerExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    nop

    .line 30
    .end local v1    # "$this$onViewCreated_u24lambda_u241_u24lambda_u240\\1":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-SeasonFragment$onViewCreated$adapter$1$1\\1\\30\\0":I
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/series/SeasonFragment;->startActivity(Landroid/content/Intent;)V

    .line 34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeasonFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeasonBinding;

    .line 47
    invoke-super {p0}, Lcom/bayyari/tv/ui/series/Hilt_SeasonFragment;->onDestroyView()V

    .line 48
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentSeasonBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentSeasonBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeasonFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeasonBinding;

    .line 25
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeasonFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "seriesId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 26
    .local v0, "seriesId":I
    :goto_0
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeasonFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "seasonNumber"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 27
    .local v1, "seasonNumber":I
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bayyari/tv/ui/series/SeasonFragment;->getViewModel()Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->load(I)V

    .line 29
    :cond_2
    new-instance v2, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;

    new-instance v3, Lcom/bayyari/tv/ui/series/SeasonFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/bayyari/tv/ui/series/SeasonFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/series/SeasonFragment;)V

    invoke-direct {v2, v3}, Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 35
    .local v2, "adapter":Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;
    iget-object v3, p0, Lcom/bayyari/tv/ui/series/SeasonFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeasonBinding;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/bayyari/tv/databinding/FragmentSeasonBinding;->recyclerEpisodes:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeasonFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/ui/series/SeasonFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSeasonBinding;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/bayyari/tv/databinding/FragmentSeasonBinding;->recyclerEpisodes:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_4

    move-object v4, v2

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    :cond_4
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/series/SeasonFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    const-string v4, "getViewLifecycleOwner(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/bayyari/tv/ui/series/SeasonFragment$onViewCreated$1;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v1, v5}, Lcom/bayyari/tv/ui/series/SeasonFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/series/SeasonFragment;Lcom/bayyari/tv/ui/common/adapter/EpisodeAdapter;ILkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 43
    return-void
.end method
