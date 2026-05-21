.class public final Lcom/bayyari/tv/ui/movies/MovieDetailFragment;
.super Lcom/bayyari/tv/ui/movies/Hilt_MovieDetailFragment;
.source "MovieDetailFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovieDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovieDetailFragment.kt\ncom/bayyari/tv/ui/movies/MovieDetailFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,51:1\n106#2,15:52\n*S KotlinDebug\n*F\n+ 1 MovieDetailFragment.kt\ncom/bayyari/tv/ui/movies/MovieDetailFragment\n*L\n18#1:52,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/movies/MovieDetailFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;",
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
.field private binding:Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 16
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_movie_detail:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/movies/Hilt_MovieDetailFragment;-><init>(I)V

    .line 18
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 52
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 53
    new-instance v1, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 52
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 54
    const/4 v2, 0x0

    .line 52
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 55
    const/4 v3, 0x0

    .line 52
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 57
    .local v4, "$i$f$viewModels\\1\\18":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 58
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 66
    nop

    .line 58
    new-instance v9, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 18
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\18":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 15
    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/bayyari/tv/ui/movies/MovieDetailFragment;)Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MovieDetailFragment;

    .line 15
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/movies/MovieDetailFragment;)Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MovieDetailFragment;

    .line 15
    invoke-direct {p0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->getViewModel()Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$1(Lcom/bayyari/tv/ui/movies/MovieDetailFragment;ILandroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/movies/MovieDetailFragment;
    .param p1, "$streamId"    # I
    .param p2, "it"    # Landroid/view/View;

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$onViewCreated_u24lambda_u241_u24lambda_u240\\1":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 28
    .local v2, "$i$a$-apply-MovieDetailFragment$onViewCreated$1$1\\1\\27\\0":I
    const-string v3, "extra_movie_id"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    nop

    .line 27
    .end local v1    # "$this$onViewCreated_u24lambda_u241_u24lambda_u240\\1":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-MovieDetailFragment$onViewCreated$1$1\\1\\27\\0":I
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

    .line 48
    invoke-super {p0}, Lcom/bayyari/tv/ui/movies/Hilt_MovieDetailFragment;->onDestroyView()V

    .line 49
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

    .line 23
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "streamId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 24
    .local v0, "streamId":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->getViewModel()Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->load(I)V

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->binding:Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentMovieDetailBinding;->buttonPlay:Landroid/widget/Button;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/movies/MovieDetailFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$onViewCreated$2;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$onViewCreated$2;-><init>(Lcom/bayyari/tv/ui/movies/MovieDetailFragment;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 39
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$onViewCreated$3;

    invoke-direct {v1, p0, v9}, Lcom/bayyari/tv/ui/movies/MovieDetailFragment$onViewCreated$3;-><init>(Lcom/bayyari/tv/ui/movies/MovieDetailFragment;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 44
    return-void
.end method
