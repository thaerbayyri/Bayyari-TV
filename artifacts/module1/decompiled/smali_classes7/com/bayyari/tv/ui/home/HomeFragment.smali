.class public final Lcom/bayyari/tv/ui/home/HomeFragment;
.super Lcom/bayyari/tv/ui/home/Hilt_HomeFragment;
.source "HomeFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeFragment.kt\ncom/bayyari/tv/ui/home/HomeFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n106#2,15:160\n1869#3,2:175\n1#4:177\n*S KotlinDebug\n*F\n+ 1 HomeFragment.kt\ncom/bayyari/tv/ui/home/HomeFragment\n*L\n29#1:160,15\n43#1:175,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0019H\u0002J\u0008\u0010\u001d\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/home/HomeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/bayyari/tv/ui/home/HomeViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/home/HomeViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/FragmentHomeBinding;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "bindHero",
        "movie",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "openMovieDetail",
        "openMoviePlayer",
        "safeNavigate",
        "destId",
        "",
        "formatCount",
        "",
        "n",
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
.field private binding:Lcom/bayyari/tv/databinding/FragmentHomeBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 27
    sget v0, Lcom/bayyari/tv/R$layout;->fragment_home:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/home/Hilt_HomeFragment;-><init>(I)V

    .line 29
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 160
    .local v0, "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    nop

    .line 161
    new-instance v1, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 160
    .local v1, "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 162
    const/4 v2, 0x0

    .line 160
    .local v2, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 163
    const/4 v3, 0x0

    .line 160
    .local v3, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 165
    .local v4, "$i$f$viewModels\\1\\29":I
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v6, v1}, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v6}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    .line 166
    .local v5, "owner$delegate\\1":Lkotlin/Lazy;
    const-class v6, Lcom/bayyari/tv/ui/home/HomeViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-instance v7, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v7, v5}, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v8, v2, v5}, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 174
    nop

    .line 166
    new-instance v9, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v9, v0, v5}, Lcom/bayyari/tv/ui/home/HomeFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 29
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/fragment/app/Fragment;
    .end local v1    # "ownerProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$f$viewModels\\1\\29":I
    .end local v5    # "owner$delegate\\1":Lkotlin/Lazy;
    iput-object v0, p0, Lcom/bayyari/tv/ui/home/HomeFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 26
    return-void
.end method

.method public static final synthetic access$bindHero(Lcom/bayyari/tv/ui/home/HomeFragment;Lcom/bayyari/tv/domain/model/Movie;)V
    .locals 0
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p1, "movie"    # Lcom/bayyari/tv/domain/model/Movie;

    .line 26
    invoke-direct {p0, p1}, Lcom/bayyari/tv/ui/home/HomeFragment;->bindHero(Lcom/bayyari/tv/domain/model/Movie;)V

    return-void
.end method

.method public static final synthetic access$formatCount(Lcom/bayyari/tv/ui/home/HomeFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p1, "n"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/bayyari/tv/ui/home/HomeFragment;->formatCount(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/home/HomeFragment;)Lcom/bayyari/tv/ui/home/HomeViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/HomeFragment;

    .line 26
    invoke-direct {p0}, Lcom/bayyari/tv/ui/home/HomeFragment;->getViewModel()Lcom/bayyari/tv/ui/home/HomeViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final bindHero(Lcom/bayyari/tv/domain/model/Movie;)V
    .locals 11
    .param p1, "movie"    # Lcom/bayyari/tv/domain/model/Movie;

    .line 114
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeFragment;->binding:Lcom/bayyari/tv/databinding/FragmentHomeBinding;

    if-nez v0, :cond_0

    return-void

    .line 115
    .local v0, "b":Lcom/bayyari/tv/databinding/FragmentHomeBinding;
    :cond_0
    iget-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "Welcome to BAYYARI-TV"

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 117
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getRating5Based()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 177
    .local v7, "it\\1":D
    const/4 v9, 0x0

    .line 117
    .local v9, "$i$a$-takeIf-HomeFragment$bindHero$ratingValue$1\\1\\117\\0":I
    cmpl-double v10, v7, v4

    if-lez v10, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v1

    .end local v7    # "it\\1":D
    .end local v9    # "$i$a$-takeIf-HomeFragment$bindHero$ratingValue$1\\1\\117\\0":I
    :goto_1
    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    if-nez v6, :cond_9

    .line 118
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getRating()D

    move-result-wide v6

    goto :goto_3

    :cond_5
    move-wide v6, v4

    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 177
    .local v7, "it\\2":D
    const/4 v9, 0x0

    .line 118
    .local v9, "$i$a$-takeIf-HomeFragment$bindHero$ratingValue$2\\2\\118\\0":I
    cmpl-double v10, v7, v4

    if-lez v10, :cond_6

    move v7, v3

    goto :goto_4

    :cond_6
    move v7, v1

    .end local v7    # "it\\2":D
    .end local v9    # "$i$a$-takeIf-HomeFragment$bindHero$ratingValue$2\\2\\118\\0":I
    :goto_4
    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v2

    :goto_5
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_6

    :cond_8
    move-object v6, v2

    .line 117
    :cond_9
    :goto_6
    nop

    .line 119
    .local v6, "ratingValue":Ljava/lang/Double;
    iget-object v7, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroRating:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v4, v8, v4

    if-lez v4, :cond_a

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v6, v4, v1

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.1f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    const-string v1, "\u2014"

    :goto_7
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroMeta:Landroid/widget/TextView;

    const-string v3, "M3U \u00b7 HLS \u00b7 4K HDR"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getPoster()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 122
    iget-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroBackdrop:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getPoster()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroBackdrop:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object v1

    .line 121
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_8

    .line 124
    :cond_b
    iget-object v1, v0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroBackdrop:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :goto_8
    return-void
.end method

.method private final formatCount(I)Ljava/lang/String;
    .locals 8
    .param p1, "n"    # I

    .line 147
    nop

    .line 148
    const v0, 0xf4240

    const-string v1, "format(...)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p1, v0, :cond_0

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    int-to-double v4, p1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.1fM+"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    int-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.1fk+"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    if-lez p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "0"

    .line 152
    :goto_0
    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/home/HomeViewModel;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/home/HomeViewModel;

    return-object v0
.end method

.method static final onViewCreated$lambda$1(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;)Lkotlin/Unit;
    .locals 1
    .param p0, "it"    # Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$10(Landroid/view/View;)V
    .locals 0
    .param p0, "it"    # Landroid/view/View;

    .line 79
    return-void
.end method

.method static final onViewCreated$lambda$12(Lcom/bayyari/tv/databinding/FragmentHomeBinding;Lcom/bayyari/tv/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "$b"    # Lcom/bayyari/tv/databinding/FragmentHomeBinding;
    .param p1, "this$0"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p2, "it"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->heroTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/bayyari/tv/domain/model/Movie;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bayyari/tv/domain/model/Movie;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 177
    .local v0, "it\\1":Lcom/bayyari/tv/domain/model/Movie;
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$a$-let-HomeFragment$onViewCreated$6$1\\1\\83\\0":I
    invoke-direct {p1, v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->openMoviePlayer(Lcom/bayyari/tv/domain/model/Movie;)V

    .line 84
    .end local v0    # "it\\1":Lcom/bayyari/tv/domain/model/Movie;
    .end local v1    # "$i$a$-let-HomeFragment$onViewCreated$6$1\\1\\83\\0":I
    :cond_1
    return-void
.end method

.method static final onViewCreated$lambda$13(Landroid/view/View;)V
    .locals 0
    .param p0, "it"    # Landroid/view/View;

    .line 85
    return-void
.end method

.method static final onViewCreated$lambda$3(Lcom/bayyari/tv/ui/home/HomeFragment;Lcom/bayyari/tv/domain/model/Channel;)Lkotlin/Unit;
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p1, "ch"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "ch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bayyari/tv/ui/live/LivePlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$onViewCreated_u24lambda_u243_u24lambda_u242\\1":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 53
    .local v2, "$i$a$-apply-HomeFragment$onViewCreated$liveAdapter$1$1\\1\\52\\0":I
    const-string v3, "extra_stream_id"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getStreamId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    nop

    .line 52
    .end local v1    # "$this$onViewCreated_u24lambda_u243_u24lambda_u242\\1":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-HomeFragment$onViewCreated$liveAdapter$1$1\\1\\52\\0":I
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 55
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$4(Lcom/bayyari/tv/ui/home/HomeFragment;Lcom/bayyari/tv/domain/model/Movie;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p1, "movie"    # Lcom/bayyari/tv/domain/model/Movie;

    const-string v0, "movie"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/bayyari/tv/ui/home/HomeFragment;->openMovieDetail(Lcom/bayyari/tv/domain/model/Movie;)V

    .line 58
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$6(Lcom/bayyari/tv/ui/home/HomeFragment;Lcom/bayyari/tv/domain/model/Series;)Lkotlin/Unit;
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p1, "series"    # Lcom/bayyari/tv/domain/model/Series;

    const-string v0, "series"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 61
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 177
    .local v1, "$this$onViewCreated_u24lambda_u246_u24lambda_u245\\1":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-apply-HomeFragment$onViewCreated$seriesAdapter$1$args$1\\1\\61\\0":I
    const-string v3, "seriesId"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Series;->getSeriesId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .end local v1    # "$this$onViewCreated_u24lambda_u246_u24lambda_u245\\1":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-HomeFragment$onViewCreated$seriesAdapter$1$args$1\\1\\61\\0":I
    .local v0, "args":Landroid/os/Bundle;
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->seriesDetailFragment:I

    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$7(Lcom/bayyari/tv/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 76
    sget v0, Lcom/bayyari/tv/R$id;->liveFragment:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->safeNavigate(I)V

    return-void
.end method

.method static final onViewCreated$lambda$8(Lcom/bayyari/tv/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 77
    sget v0, Lcom/bayyari/tv/R$id;->movieFragment:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->safeNavigate(I)V

    return-void
.end method

.method static final onViewCreated$lambda$9(Lcom/bayyari/tv/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/home/HomeFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 78
    sget v0, Lcom/bayyari/tv/R$id;->seriesFragment:I

    invoke-direct {p0, v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->safeNavigate(I)V

    return-void
.end method

.method private final openMovieDetail(Lcom/bayyari/tv/domain/model/Movie;)V
    .locals 5
    .param p1, "movie"    # Lcom/bayyari/tv/domain/model/Movie;

    .line 129
    nop

    .line 130
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 177
    .local v1, "$this$openMovieDetail_u24lambda_u2416\\1":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$a$-apply-HomeFragment$openMovieDetail$args$1\\1\\130\\0":I
    const-string v3, "movieId"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getStreamId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    .end local v1    # "$this$openMovieDetail_u24lambda_u2416\\1":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-HomeFragment$openMovieDetail$args$1\\1\\130\\0":I
    .local v0, "args":Landroid/os/Bundle;
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->movieDetailFragment:I

    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    .local v0, "<unused var>":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Lcom/bayyari/tv/ui/home/HomeFragment;->openMoviePlayer(Lcom/bayyari/tv/domain/model/Movie;)V

    .line 135
    .end local v0    # "<unused var>":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private final openMoviePlayer(Lcom/bayyari/tv/domain/model/Movie;)V
    .locals 5
    .param p1, "movie"    # Lcom/bayyari/tv/domain/model/Movie;

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$openMoviePlayer_u24lambda_u2417\\1":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$a$-apply-HomeFragment$openMoviePlayer$1\\1\\138\\0":I
    const-string v3, "extra_movie_id"

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Movie;->getStreamId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    nop

    .line 138
    .end local v1    # "$this$openMoviePlayer_u24lambda_u2417\\1":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-HomeFragment$openMoviePlayer$1\\1\\138\\0":I
    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method private final safeNavigate(I)V
    .locals 3
    .param p1, "destId"    # I

    .line 144
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/bayyari/tv/ui/home/HomeFragment;

    .line 177
    .local v0, "$this$safeNavigate_u24lambda_u2418\\1":Lcom/bayyari/tv/ui/home/HomeFragment;
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-runCatching-HomeFragment$safeNavigate$1\\1\\144\\0":I
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/navigation/NavController;->navigate(I)V

    .end local v0    # "$this$safeNavigate_u24lambda_u2418\\1":Lcom/bayyari/tv/ui/home/HomeFragment;
    .end local v1    # "$i$a$-runCatching-HomeFragment$safeNavigate$1\\1\\144\\0":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :goto_0
    return-void
.end method


# virtual methods
.method public onDestroyView()V
    .locals 1

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/HomeFragment;->binding:Lcom/bayyari/tv/databinding/FragmentHomeBinding;

    .line 156
    invoke-super {p0}, Lcom/bayyari/tv/ui/home/Hilt_HomeFragment;->onDestroyView()V

    .line 157
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {v2}, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/FragmentHomeBinding;

    move-result-object v1

    iput-object v1, v0, Lcom/bayyari/tv/ui/home/HomeFragment;->binding:Lcom/bayyari/tv/databinding/FragmentHomeBinding;

    .line 34
    iget-object v1, v0, Lcom/bayyari/tv/ui/home/HomeFragment;->binding:Lcom/bayyari/tv/databinding/FragmentHomeBinding;

    if-nez v1, :cond_0

    return-void

    .line 38
    .local v1, "b":Lcom/bayyari/tv/databinding/FragmentHomeBinding;
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Lkotlin/Pair;

    iget-object v4, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->statChannels:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    invoke-virtual {v4}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    move-result-object v4

    const-string v5, "Channels"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 39
    iget-object v4, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->statMovies:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    invoke-virtual {v4}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    move-result-object v4

    const-string v6, "Movies"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 38
    nop

    .line 40
    iget-object v4, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->statSeries:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    invoke-virtual {v4}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    move-result-object v4

    const-string v6, "Series"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 38
    nop

    .line 41
    iget-object v4, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->statQuality:Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    invoke-virtual {v4}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->bind(Landroid/view/View;)Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    move-result-object v4

    const-string v7, "Quality"

    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    .line 38
    nop

    .line 37
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 43
    .local v3, "statBindings":Ljava/util/List;
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$forEach\\1":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 175
    .local v8, "$i$f$forEach\\1\\43":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element\\1":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlin/Pair;

    const/4 v12, 0x0

    .local v12, "$i$a$-forEach-HomeFragment$onViewCreated$1\\2\\175\\0":I
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v13

    const-string v14, "component1(...)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    .local v13, "cell\\2":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 43
    .local v11, "label\\2":Ljava/lang/String;
    iget-object v14, v13, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->statLabel:Landroid/widget/TextView;

    move-object v15, v11

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .end local v11    # "label\\2":Ljava/lang/String;
    .end local v12    # "$i$a$-forEach-HomeFragment$onViewCreated$1\\2\\175\\0":I
    .end local v13    # "cell\\2":Lcom/bayyari/tv/databinding/IncludeStatCellBinding;
    nop

    .end local v10    # "element\\1":Ljava/lang/Object;
    goto :goto_0

    .line 176
    :cond_1
    nop

    .line 44
    .end local v4    # "$this$forEach\\1":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach\\1\\43":I
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    iget-object v4, v4, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->statValue:Landroid/widget/TextView;

    const-string v8, "4K / FHD"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;

    iget-object v4, v4, Lcom/bayyari/tv/databinding/IncludeStatCellBinding;->statValue:Landroid/widget/TextView;

    .line 46
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/bayyari/tv/R$color;->colorPrimary:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 45
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    new-instance v4, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;

    new-instance v7, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v4, v7}, Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .local v4, "continueAdapter":Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;
    new-instance v7, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    new-instance v8, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;)V

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v6, v9}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .local v7, "liveAdapter":Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;
    new-instance v6, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

    new-instance v8, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;)V

    invoke-direct {v6, v8}, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .local v6, "movieAdapter":Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;
    new-instance v8, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

    new-instance v10, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda3;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;)V

    invoke-direct {v8, v10}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .local v8, "seriesAdapter":Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;
    iget-object v10, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerContinue:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v11, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v10, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerContinue:Landroidx/recyclerview/widget/RecyclerView;

    move-object v11, v4

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object v10, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerLive:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v11, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 69
    iget-object v10, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerLive:Landroidx/recyclerview/widget/RecyclerView;

    move-object v11, v7

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object v10, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerMovies:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v11, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    iget-object v10, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerMovies:Landroidx/recyclerview/widget/RecyclerView;

    move-object v11, v6

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    iget-object v10, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerSeries:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v11, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v5, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->recyclerSeries:Landroidx/recyclerview/widget/RecyclerView;

    move-object v10, v8

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object v5, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->seeAllLive:Landroid/widget/TextView;

    new-instance v10, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda4;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v5, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->seeAllMovies:Landroid/widget/TextView;

    new-instance v10, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda5;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v5, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->seeAllSeries:Landroid/widget/TextView;

    new-instance v10, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda6;

    invoke-direct {v10, v0}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda6;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v5, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->seeAllContinue:Landroid/widget/TextView;

    new-instance v10, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda7;

    invoke-direct {v10}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v5, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->buttonHeroPlay:Lcom/google/android/material/button/MaterialButton;

    new-instance v10, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda8;

    invoke-direct {v10, v1, v0}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda8;-><init>(Lcom/bayyari/tv/databinding/FragmentHomeBinding;Lcom/bayyari/tv/ui/home/HomeFragment;)V

    invoke-virtual {v5, v10}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v5, v1, Lcom/bayyari/tv/databinding/FragmentHomeBinding;->buttonHeroAdd:Lcom/google/android/material/button/MaterialButton;

    new-instance v10, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda9;

    invoke-direct {v10}, Lcom/bayyari/tv/ui/home/HomeFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v5, v10}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    const-string v10, "getViewLifecycleOwner(...)"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$8;

    invoke-direct {v5, v0, v4, v9}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$8;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;Lcom/bayyari/tv/ui/common/adapter/ContinueWatchingAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 90
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$9;

    invoke-direct {v5, v0, v7, v9}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$9;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 93
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$10;

    invoke-direct {v5, v0, v6, v9}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$10;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 96
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$11;

    invoke-direct {v5, v0, v8, v9}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$11;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 99
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12;

    invoke-direct {v5, v0, v3, v9}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$12;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 106
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$13;

    invoke-direct {v5, v0, v9}, Lcom/bayyari/tv/ui/home/HomeFragment$onViewCreated$13;-><init>(Lcom/bayyari/tv/ui/home/HomeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 110
    invoke-direct {v0}, Lcom/bayyari/tv/ui/home/HomeFragment;->getViewModel()Lcom/bayyari/tv/ui/home/HomeViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bayyari/tv/ui/home/HomeViewModel;->refreshAll()V

    .line 111
    return-void
.end method
