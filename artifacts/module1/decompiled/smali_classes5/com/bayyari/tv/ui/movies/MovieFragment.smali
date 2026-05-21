.class public final Lcom/bayyari/tv/ui/movies/MovieFragment;
.super Lcom/bayyari/tv/ui/movies/Hilt_MovieFragment;
.source "MovieFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovieFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovieFragment.kt\ncom/bayyari/tv/ui/movies/MovieFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,76:1\n106#2,15:77\n*S KotlinDebug\n*F\n+ 1 MovieFragment.kt\ncom/bayyari/tv/ui/movies/MovieFragment\n*L\n22#1:77,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/movies/MovieFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/movies/MovieViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/movies/MovieViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentMovieBinding;",
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
.field private binding:Lcom/bayyari/tv/databinding/FragmentMovieBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 20
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_movie:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/movies/Hilt_MovieFragment;-><init>(I)V

    .line 22
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 77
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 78
    new-instance v1, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 77
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 79
    const/4 v2, 0x0

    .line 77
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 80
    const/4 v3, 0x0

    .line 77
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 82
    .local v4, "$i$f$viewModels\\1\\22":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 83
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/movies/MovieViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 91
    nop

    .line 83
    new-instance v9, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/movies/MovieFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 22
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\22":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 19
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/movies/MovieFragment;)Lcom/bayyari/tv/ui/movies/MovieViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MovieFragment;

    .line 19
    invoke-direct {p0}, Lcom/bayyari/tv/ui/movies/MovieFragment;->getViewModel()Lcom/bayyari/tv/ui/movies/MovieViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/movies/MovieViewModel;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/movies/MovieViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$0(Lcom/bayyari/tv/ui/movies/MovieFragment;Lcom/bayyari/tv/domain/model/Movie;)Lkotlin/Unit;
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/movies/MovieFragment;
    .param p1, "movie"    # Lcom/bayyari/tv/domain/model/Movie;

    const-string v0, "movie"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 31
    sget v1, Lcom/bayyari/tv/R$id;->action_movie_to_detail:I

    .line 32
    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getStreamId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "streamId"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieFragment;->binding:Lcom/bayyari/tv/databinding/FragmentMovieBinding;

    .line 73
    invoke-super {p0}, Lcom/bayyari/tv/ui/movies/Hilt_MovieFragment;->onDestroyView()V

    .line 74
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentMovieBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieFragment;->binding:Lcom/bayyari/tv/databinding/FragmentMovieBinding;

    .line 27
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieFragment;->binding:Lcom/bayyari/tv/databinding/FragmentMovieBinding;

    if-nez v0, :cond_0

    return-void

    .line 29
    .local v0, "b":Lcom/bayyari/tv/databinding/FragmentMovieBinding;
    :cond_0
    new-instance v1, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

    new-instance v2, Lcom/bayyari/tv/ui/movies/MovieFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/bayyari/tv/ui/movies/MovieFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/movies/MovieFragment;)V

    invoke-direct {v1, v2}, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 35
    .local v1, "adapter":Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;
    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->recyclerMovies:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MovieFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->recyclerMovies:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->searchMovies:Landroidx/appcompat/widget/SearchView;

    new-instance v3, Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$1;

    invoke-direct {v3, p0}, Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/movies/MovieFragment;)V

    check-cast v3, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 50
    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentMovieBinding;->spinnerSort:Landroid/widget/Spinner;

    new-instance v3, Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$2;

    invoke-direct {v3, p0}, Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$2;-><init>(Lcom/bayyari/tv/ui/movies/MovieFragment;)V

    check-cast v3, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MovieFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const-string v3, "getViewLifecycleOwner(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$3;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v4}, Lcom/bayyari/tv/ui/movies/MovieFragment$onViewCreated$3;-><init>(Lcom/bayyari/tv/ui/movies/MovieFragment;Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 68
    invoke-direct {p0}, Lcom/bayyari/tv/ui/movies/MovieFragment;->getViewModel()Lcom/bayyari/tv/ui/movies/MovieViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bayyari/tv/ui/movies/MovieViewModel;->refresh()V

    .line 69
    return-void
.end method
