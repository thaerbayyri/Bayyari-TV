.class public final Lcom/bayyari/tv/ui/search/SearchFragment;
.super Lcom/bayyari/tv/ui/search/Hilt_SearchFragment;
.source "SearchFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchFragment.kt\ncom/bayyari/tv/ui/search/SearchFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,59:1\n172#2,9:60\n*S KotlinDebug\n*F\n+ 1 SearchFragment.kt\ncom/bayyari/tv/ui/search/SearchFragment\n*L\n16#1:60,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/search/SearchFragment;",
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
        "Lcom/bayyari/tv/databinding/FragmentSearchBinding;",
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
.field private binding:Lcom/bayyari/tv/databinding/FragmentSearchBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 14
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_search:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/search/Hilt_SearchFragment;-><init>(I)V

    .line 16
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 60
    .local v0, "$this$activityViewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 61
    const/4 v1, 0x0

    .line 60
    .local v1, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 62
    const/4 v2, 0x0

    .line 60
    .local v2, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 63
    .local v3, "$i$f$activityViewModels\\1\\16":I
    const-class v4, Lcom/bayyari/tv/ui/search/SearchViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-instance v5, Lcom/bayyari/tv/ui/search/SearchFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v5, v0}, Lcom/bayyari/tv/ui/search/SearchFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lcom/bayyari/tv/ui/search/SearchFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v6, v1, v0}, Lcom/bayyari/tv/ui/search/SearchFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 66
    nop

    .line 63
    new-instance v7, Lcom/bayyari/tv/ui/search/SearchFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v7, v0}, Lcom/bayyari/tv/ui/search/SearchFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, v5, v6, v7}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    .line 68
    nop

    .line 16
    .end local v0    # "$this$activityViewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$activityViewModels\\1\\16":I
    iput-object v4, p0, Lcom/bayyari/tv/ui/search/SearchFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 13
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/search/SearchFragment;)Lcom/bayyari/tv/ui/search/SearchViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/search/SearchFragment;

    .line 13
    invoke-direct {p0}, Lcom/bayyari/tv/ui/search/SearchFragment;->getViewModel()Lcom/bayyari/tv/ui/search/SearchViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/search/SearchViewModel;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/search/SearchViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$0(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1
    .param p0, "$tabs"    # Ljava/util/List;
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 39
    return-void
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/search/SearchFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSearchBinding;

    .line 56
    invoke-super {p0}, Lcom/bayyari/tv/ui/search/Hilt_SearchFragment;->onDestroyView()V

    .line 57
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/bayyari/tv/databinding/FragmentSearchBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentSearchBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/search/SearchFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSearchBinding;

    .line 21
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchFragment;->binding:Lcom/bayyari/tv/databinding/FragmentSearchBinding;

    if-nez v0, :cond_0

    return-void

    .line 24
    .local v0, "b":Lcom/bayyari/tv/databinding/FragmentSearchBinding;
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/Pair;

    sget v2, Lcom/bayyari/tv/R$string;->search_tab_all:I

    invoke-virtual {p0, v2}, Lcom/bayyari/tv/ui/search/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 25
    sget v2, Lcom/bayyari/tv/R$string;->nav_live:I

    invoke-virtual {p0, v2}, Lcom/bayyari/tv/ui/search/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "live"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 24
    nop

    .line 26
    sget v2, Lcom/bayyari/tv/R$string;->nav_movies:I

    invoke-virtual {p0, v2}, Lcom/bayyari/tv/ui/search/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "movies"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 24
    nop

    .line 27
    sget v2, Lcom/bayyari/tv/R$string;->nav_series:I

    invoke-virtual {p0, v2}, Lcom/bayyari/tv/ui/search/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "series"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 24
    nop

    .line 23
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 30
    .local v1, "tabs":Ljava/util/List;
    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentSearchBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/bayyari/tv/ui/search/SearchFragment$onViewCreated$1;

    invoke-direct {v3, p0, v1}, Lcom/bayyari/tv/ui/search/SearchFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/search/SearchFragment;Ljava/util/List;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v3, v0, Lcom/bayyari/tv/databinding/FragmentSearchBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v0, Lcom/bayyari/tv/databinding/FragmentSearchBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    new-instance v5, Lcom/bayyari/tv/ui/search/SearchFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/bayyari/tv/ui/search/SearchFragment$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 37
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 41
    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentSearchBinding;->searchAll:Landroidx/appcompat/widget/SearchView;

    new-instance v3, Lcom/bayyari/tv/ui/search/SearchFragment$onViewCreated$3;

    invoke-direct {v3, p0}, Lcom/bayyari/tv/ui/search/SearchFragment$onViewCreated$3;-><init>(Lcom/bayyari/tv/ui/search/SearchFragment;)V

    check-cast v3, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 52
    return-void
.end method
