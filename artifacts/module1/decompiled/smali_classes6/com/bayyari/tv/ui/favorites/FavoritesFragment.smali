.class public final Lcom/bayyari/tv/ui/favorites/FavoritesFragment;
.super Lcom/bayyari/tv/ui/favorites/Hilt_FavoritesFragment;
.source "FavoritesFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFavoritesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FavoritesFragment.kt\ncom/bayyari/tv/ui/favorites/FavoritesFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,37:1\n106#2,15:38\n*S KotlinDebug\n*F\n+ 1 FavoritesFragment.kt\ncom/bayyari/tv/ui/favorites/FavoritesFragment\n*L\n18#1:38,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/favorites/FavoritesFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;",
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
.field private binding:Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 16
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_favorites:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/favorites/Hilt_FavoritesFragment;-><init>(I)V

    .line 18
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 38
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 39
    new-instance v1, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 38
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 40
    const/4 v2, 0x0

    .line 38
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 41
    const/4 v3, 0x0

    .line 38
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 43
    .local v4, "$i$f$viewModels\\1\\18":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 44
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 52
    nop

    .line 44
    new-instance v9, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

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
    iput-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 15
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/favorites/FavoritesFragment;)Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/favorites/FavoritesFragment;

    .line 15
    invoke-direct {p0}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->getViewModel()Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    return-object v0
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->binding:Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;

    .line 34
    invoke-super {p0}, Lcom/bayyari/tv/ui/favorites/Hilt_FavoritesFragment;->onDestroyView()V

    .line 35
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->binding:Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;

    .line 23
    new-instance v0, Lcom/bayyari/tv/ui/favorites/FavoriteAdapter;

    invoke-direct {v0}, Lcom/bayyari/tv/ui/favorites/FavoriteAdapter;-><init>()V

    .line 24
    .local v0, "adapter":Lcom/bayyari/tv/ui/favorites/FavoriteAdapter;
    iget-object v1, p0, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->binding:Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;->recyclerFavorites:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->binding:Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;->recyclerFavorites:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$onViewCreated$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Lcom/bayyari/tv/ui/favorites/FavoritesFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/favorites/FavoritesFragment;Lcom/bayyari/tv/ui/favorites/FavoriteAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 30
    return-void
.end method
