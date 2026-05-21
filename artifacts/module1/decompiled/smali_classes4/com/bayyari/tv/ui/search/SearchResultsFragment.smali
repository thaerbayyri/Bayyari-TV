.class public final Lcom/bayyari/tv/ui/search/SearchResultsFragment;
.super Lcom/bayyari/tv/ui/search/Hilt_SearchResultsFragment;
.source "SearchResultsFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchResultsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchResultsFragment.kt\ncom/bayyari/tv/ui/search/SearchResultsFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,72:1\n172#2,9:73\n*S KotlinDebug\n*F\n+ 1 SearchResultsFragment.kt\ncom/bayyari/tv/ui/search/SearchResultsFragment\n*L\n28#1:73,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/search/SearchResultsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/search/SearchViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/search/SearchViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "Companion",
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


# static fields
.field private static final ARG_TAB:Ljava/lang/String; = "tab"

.field public static final Companion:Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;


# instance fields
.field private binding:Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->Companion:Lcom/bayyari/tv/ui/search/SearchResultsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 19
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_search_results:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/search/Hilt_SearchResultsFragment;-><init>(I)V

    .line 28
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 73
    .local v0, "$this$activityViewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 74
    const/4 v1, 0x0

    .line 73
    .local v1, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 75
    const/4 v2, 0x0

    .line 73
    .local v2, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 76
    .local v3, "$i$f$activityViewModels\\1\\28":I
    const-class v4, Lcom/bayyari/tv/ui/search/SearchViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/bayyari/tv/ui/search/SearchResultsFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v5, v0}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lcom/bayyari/tv/ui/search/SearchResultsFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v6, v1, v0}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 79
    nop

    .line 76
    new-instance v7, Lcom/bayyari/tv/ui/search/SearchResultsFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v7, v0}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    .line 81
    nop

    .line 28
    .end local v0    # "$this$activityViewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$activityViewModels\\1\\28":I
    iput-object v4, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 18
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/search/SearchResultsFragment;)Lcom/bayyari/tv/ui/search/SearchViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/search/SearchResultsFragment;

    .line 18
    invoke-direct {p0}, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->getViewModel()Lcom/bayyari/tv/ui/search/SearchViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/search/SearchViewModel;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/search/SearchViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$0(Lcom/bayyari/tv/domain/model/Channel;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$1(Lcom/bayyari/tv/domain/model/Movie;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Lcom/bayyari/tv/domain/model/Movie;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$2(Lcom/bayyari/tv/domain/model/Series;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Lcom/bayyari/tv/domain/model/Series;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;

    .line 69
    invoke-super {p0}, Lcom/bayyari/tv/ui/search/Hilt_SearchResultsFragment;->onDestroyView()V

    .line 70
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    const-string v0, "view"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v8}, Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;

    move-result-object v0

    iput-object v0, v1, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;

    .line 33
    invoke-virtual {v1}, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "tab"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 35
    .local v0, "tab":Ljava/lang/String;
    :cond_1
    iget-object v3, v1, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/bayyari/tv/databinding/FragmentSearchResultsBinding;->recyclerResults:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_2

    move-object v2, v0

    goto/16 :goto_4

    :cond_2
    move-object v9, v3

    .line 36
    .local v9, "recycler":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    new-instance v6, Lcom/bayyari/tv/ui/search/SearchAllAdapter;

    invoke-direct {v6}, Lcom/bayyari/tv/ui/search/SearchAllAdapter;-><init>()V

    .line 39
    .local v6, "allAdapter":Lcom/bayyari/tv/ui/search/SearchAllAdapter;
    new-instance v3, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    new-instance v4, Lcom/bayyari/tv/ui/search/SearchResultsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$$ExternalSyntheticLambda0;-><init>()V

    const/4 v5, 0x2

    invoke-direct {v3, v4, v2, v5, v2}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .local v3, "liveAdapter":Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
    new-instance v4, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/search/SearchResultsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v4, v2}, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .local v4, "movieAdapter":Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;
    new-instance v5, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/search/SearchResultsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v5, v2}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .local v5, "seriesAdapter":Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_3
    :goto_1
    goto :goto_2

    :sswitch_0
    const-string v2, "live"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    move-object v2, v3

    check-cast v2, Landroidx/recyclerview/widget/ListAdapter;

    goto :goto_3

    .line 43
    :sswitch_1
    const-string v2, "series"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 46
    :cond_4
    move-object v2, v5

    check-cast v2, Landroidx/recyclerview/widget/ListAdapter;

    goto :goto_3

    .line 43
    :sswitch_2
    const-string v2, "movies"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 45
    :cond_5
    move-object v2, v4

    check-cast v2, Landroidx/recyclerview/widget/ListAdapter;

    goto :goto_3

    .line 47
    :goto_2
    move-object v2, v6

    check-cast v2, Landroidx/recyclerview/widget/ListAdapter;

    :goto_3
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 43
    invoke-virtual {v9, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    invoke-virtual {v1}, Lcom/bayyari/tv/ui/search/SearchResultsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const-string v7, "getViewLifecycleOwner(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    move-object v2, v0

    .end local v0    # "tab":Ljava/lang/String;
    .local v2, "tab":Ljava/lang/String;
    new-instance v0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/search/SearchResultsFragment;Ljava/lang/String;Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lcom/bayyari/tv/ui/search/SearchAllAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 65
    return-void

    .line 35
    .end local v2    # "tab":Ljava/lang/String;
    .end local v3    # "liveAdapter":Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
    .end local v4    # "movieAdapter":Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;
    .end local v5    # "seriesAdapter":Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;
    .end local v6    # "allAdapter":Lcom/bayyari/tv/ui/search/SearchAllAdapter;
    .end local v9    # "recycler":Landroidx/recyclerview/widget/RecyclerView;
    .restart local v0    # "tab":Ljava/lang/String;
    :cond_6
    move-object v2, v0

    .end local v0    # "tab":Ljava/lang/String;
    .restart local v2    # "tab":Ljava/lang/String;
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3fac58bd -> :sswitch_2
        -0x35fe0189 -> :sswitch_1
        0x32b0ec -> :sswitch_0
    .end sparse-switch
.end method
