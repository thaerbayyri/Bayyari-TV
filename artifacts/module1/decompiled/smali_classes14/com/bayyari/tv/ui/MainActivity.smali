.class public final Lcom/bayyari/tv/ui/MainActivity;
.super Lcom/bayyari/tv/ui/Hilt_MainActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/MainActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/bayyari/tv/ui/MainActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1#2:137\n295#3,2:138\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/bayyari/tv/ui/MainActivity\n*L\n111#1:138,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020$H\u0002R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R-\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u00160\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "getAuthRepository",
        "()Lcom/bayyari/tv/data/repository/AuthRepository;",
        "setAuthRepository",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;)V",
        "crashReporter",
        "Lcom/bayyari/tv/util/CrashReporter;",
        "getCrashReporter",
        "()Lcom/bayyari/tv/util/CrashReporter;",
        "setCrashReporter",
        "(Lcom/bayyari/tv/util/CrashReporter;)V",
        "binding",
        "Lcom/bayyari/tv/databinding/ActivityMainBinding;",
        "navController",
        "Landroidx/navigation/NavController;",
        "chipDestinations",
        "",
        "Lkotlin/Pair;",
        "",
        "getChipDestinations",
        "()Ljava/util/List;",
        "chipDestinations$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "highlightChip",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "hasActiveServer",
        "",
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
.field public static final Companion:Lcom/bayyari/tv/ui/MainActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field public authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lcom/bayyari/tv/databinding/ActivityMainBinding;

.field private final chipDestinations$delegate:Lkotlin/Lazy;

.field public crashReporter:Lcom/bayyari/tv/util/CrashReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private navController:Landroidx/navigation/NavController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bayyari/tv/ui/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bayyari/tv/ui/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bayyari/tv/ui/MainActivity;->Companion:Lcom/bayyari/tv/ui/MainActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/bayyari/tv/ui/Hilt_MainActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->chipDestinations$delegate:Lkotlin/Lazy;

    .line 24
    return-void
.end method

.method static final chipDestinations_delegate$lambda$0()Ljava/util/List;
    .locals 3

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/Pair;

    sget v1, Lcom/bayyari/tv/R$id;->chipHome:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->homeFragment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    sget v1, Lcom/bayyari/tv/R$id;->chipLive:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->liveFragment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    nop

    .line 37
    sget v1, Lcom/bayyari/tv/R$id;->chipMovies:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->movieFragment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    nop

    .line 38
    sget v1, Lcom/bayyari/tv/R$id;->chipSeries:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->seriesFragment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 35
    nop

    .line 39
    sget v1, Lcom/bayyari/tv/R$id;->chipCatchup:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->catchUpFragment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 35
    nop

    .line 40
    sget v1, Lcom/bayyari/tv/R$id;->chipSettings:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/bayyari/tv/R$id;->settingsFragment:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 35
    nop

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method private final getChipDestinations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->chipDestinations$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final hasActiveServer()Z
    .locals 5

    .line 124
    nop

    .line 125
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/MainActivity;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v1

    .line 127
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "MainActivity"

    const-string v3, "Failed to read active server"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    .line 137
    .local v2, "$this$hasActiveServer_u24lambda_u2410\\1":Lcom/bayyari/tv/ui/MainActivity;
    const/4 v3, 0x0

    .line 128
    .local v3, "$i$a$-runCatching-MainActivity$hasActiveServer$1\\1\\128\\0":I
    invoke-virtual {v2}, Lcom/bayyari/tv/ui/MainActivity;->getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/bayyari/tv/util/CrashReporter;->recordException(Ljava/lang/Throwable;)V

    .end local v2    # "$this$hasActiveServer_u24lambda_u2410\\1":Lcom/bayyari/tv/ui/MainActivity;
    .end local v3    # "$i$a$-runCatching-MainActivity$hasActiveServer$1\\1\\128\\0":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_0
    nop

    .line 130
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return v0
.end method

.method private final highlightChip(Landroidx/navigation/NavDestination;)V
    .locals 9
    .param p1, "destination"    # Landroidx/navigation/NavDestination;

    .line 111
    invoke-direct {p0}, Lcom/bayyari/tv/ui/MainActivity;->getChipDestinations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 138
    .local v1, "$i$f$firstOrNull\\1\\111":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element\\1":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Lkotlin/Pair;

    .local v5, "it\\2":Lkotlin/Pair;
    const/4 v6, 0x0

    .line 111
    .local v6, "$i$a$-firstOrNull-MainActivity$highlightChip$activeChipId$1\\2\\138\\0":I
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 138
    .end local v5    # "it\\2":Lkotlin/Pair;
    .end local v6    # "$i$a$-firstOrNull-MainActivity$highlightChip$activeChipId$1\\2\\138\\0":I
    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    .line 139
    .end local v3    # "element\\1":Ljava/lang/Object;
    :cond_2
    move-object v3, v4

    .line 111
    .end local v0    # "$this$firstOrNull\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull\\1\\111":I
    :goto_1
    check-cast v3, Lkotlin/Pair;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 112
    .local v4, "activeChipId":Ljava/lang/Integer;
    :cond_3
    invoke-direct {p0}, Lcom/bayyari/tv/ui/MainActivity;->getChipDestinations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 113
    .local v1, "chipId":I
    invoke-virtual {p0, v1}, Lcom/bayyari/tv/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, "chip":Landroid/widget/TextView;
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 115
    sget v3, Lcom/bayyari/tv/R$drawable;->bg_navchip_active:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 116
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    sget v5, Lcom/bayyari/tv/R$color;->colorPrimary:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 118
    :cond_5
    :goto_3
    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    sget v5, Lcom/bayyari/tv/R$color;->colorTextSecondary:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .end local v1    # "chipId":I
    .end local v2    # "chip":Landroid/widget/TextView;
    goto :goto_2

    .line 122
    :cond_6
    return-void
.end method

.method static final onCreate$lambda$2(Lcom/bayyari/tv/ui/MainActivity;ILandroid/view/View;)V
    .locals 4
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/MainActivity;
    .param p1, "$destId"    # I
    .param p2, "it"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const-string v2, "navController"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_3

    .line 73
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 75
    :cond_3
    return-void
.end method

.method static final onCreate$lambda$3(Lcom/bayyari/tv/ui/MainActivity;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/MainActivity;
    .param p2, "destination"    # Landroidx/navigation/NavDestination;

    const-string p3, "<unused var>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "destination"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p2}, Lcom/bayyari/tv/ui/MainActivity;->highlightChip(Landroidx/navigation/NavDestination;)V

    .line 80
    return-void
.end method

.method static final onCreate$lambda$4(Lcom/bayyari/tv/ui/MainActivity;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const-string v2, "navController"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    sget v4, Lcom/bayyari/tv/R$id;->searchFragment:I

    if-ne v0, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_3

    .line 85
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    sget v0, Lcom/bayyari/tv/R$id;->searchFragment:I

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 87
    :cond_3
    return-void
.end method

.method static final onCreate$lambda$5(Lcom/bayyari/tv/ui/MainActivity;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const-string v2, "navController"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    sget v4, Lcom/bayyari/tv/R$id;->favoritesFragment:I

    if-ne v0, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_3

    .line 90
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    sget v0, Lcom/bayyari/tv/R$id;->favoritesFragment:I

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 92
    :cond_3
    return-void
.end method

.method static final onCreate$lambda$6(Lcom/bayyari/tv/ui/MainActivity;Landroid/view/View;)V
    .locals 5
    .param p0, "this$0"    # Lcom/bayyari/tv/ui/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    const/4 v1, 0x0

    const-string v2, "navController"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    sget v4, Lcom/bayyari/tv/R$id;->settingsFragment:I

    if-ne v0, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_3

    .line 95
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    sget v0, Lcom/bayyari/tv/R$id;->settingsFragment:I

    invoke-virtual {v1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 97
    :cond_3
    return-void
.end method


# virtual methods
.method public final getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->crashReporter:Lcom/bayyari/tv/util/CrashReporter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "crashReporter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Lcom/bayyari/tv/ui/Hilt_MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lcom/bayyari/tv/ui/MainActivity;->hasActiveServer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/bayyari/tv/ui/auth/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/MainActivity;->finish()V

    .line 50
    return-void

    .line 53
    :cond_0
    nop

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/bayyari/tv/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ActivityMainBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->binding:Lcom/bayyari/tv/databinding/ActivityMainBinding;

    .line 55
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity;->binding:Lcom/bayyari/tv/databinding/ActivityMainBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/MainActivity;->setContentView(Landroid/view/View;)V

    .line 57
    if-nez p1, :cond_2

    .line 58
    sget-object v0, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    sget v3, Lcom/bayyari/tv/R$navigation;->nav_graph:I

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v2}, Landroidx/navigation/fragment/NavHostFragment$Companion;->create$default(Landroidx/navigation/fragment/NavHostFragment$Companion;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    move-object v3, v0

    .local v3, "host\\1":Landroidx/navigation/fragment/NavHostFragment;
    const/4 v4, 0x0

    .line 59
    .local v4, "$i$a$-also-MainActivity$onCreate$navHost$1\\1\\58\\0":I
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 60
    sget v6, Lcom/bayyari/tv/R$id;->nav_host_fragment:I

    move-object v7, v3

    check-cast v7, Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 61
    move-object v6, v3

    check-cast v6, Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 63
    nop

    .line 58
    .end local v3    # "host\\1":Landroidx/navigation/fragment/NavHostFragment;
    .end local v4    # "$i$a$-also-MainActivity$onCreate$navHost$1\\1\\58\\0":I
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v3, Lcom/bayyari/tv/R$id;->nav_host_fragment:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 57
    :goto_0
    nop

    .line 67
    .local v0, "navHost":Landroidx/navigation/fragment/NavHostFragment;
    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v3

    iput-object v3, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    .line 70
    invoke-direct {p0}, Lcom/bayyari/tv/ui/MainActivity;->getChipDestinations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .local v5, "chipId":I
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 71
    .local v4, "destId":I
    invoke-virtual {p0, v5}, Lcom/bayyari/tv/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4}, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/ui/MainActivity;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v4    # "destId":I
    .end local v5    # "chipId":I
    goto :goto_1

    .line 78
    :cond_3
    iget-object v3, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "navController"

    if-nez v3, :cond_4

    :try_start_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    new-instance v5, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/ui/MainActivity;)V

    invoke-virtual {v3, v5}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 83
    iget-object v3, p0, Lcom/bayyari/tv/ui/MainActivity;->binding:Lcom/bayyari/tv/databinding/ActivityMainBinding;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityMainBinding;->iconSearch:Landroid/widget/ImageView;

    new-instance v5, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/bayyari/tv/ui/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v3, p0, Lcom/bayyari/tv/ui/MainActivity;->binding:Lcom/bayyari/tv/databinding/ActivityMainBinding;

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    iget-object v3, v3, Lcom/bayyari/tv/databinding/ActivityMainBinding;->iconBell:Landroid/widget/ImageView;

    new-instance v5, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/bayyari/tv/ui/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v3, p0, Lcom/bayyari/tv/ui/MainActivity;->binding:Lcom/bayyari/tv/databinding/ActivityMainBinding;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    iget-object v1, v3, Lcom/bayyari/tv/databinding/ActivityMainBinding;->avatar:Landroid/widget/TextView;

    new-instance v3, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/bayyari/tv/ui/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/bayyari/tv/ui/MainActivity;->navController:Landroidx/navigation/NavController;

    if-nez v1, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v2, v1

    :goto_2
    invoke-virtual {v2}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 137
    .local v1, "it\\2":Landroidx/navigation/NavDestination;
    const/4 v2, 0x0

    .line 100
    .local v2, "$i$a$-let-MainActivity$onCreate$6\\2\\100\\0":I
    invoke-direct {p0, v1}, Lcom/bayyari/tv/ui/MainActivity;->highlightChip(Landroidx/navigation/NavDestination;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "it\\2":Landroidx/navigation/NavDestination;
    .end local v2    # "$i$a$-let-MainActivity$onCreate$6\\2\\100\\0":I
    goto :goto_4

    .end local v0    # "navHost":Landroidx/navigation/fragment/NavHostFragment;
    :cond_9
    goto :goto_4

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "MainActivity"

    const-string v2, "MainActivity setup failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :try_start_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    .line 137
    .local v1, "$this$onCreate_u24lambda_u248\\3":Lcom/bayyari/tv/ui/MainActivity;
    const/4 v2, 0x0

    .line 103
    .local v2, "$i$a$-runCatching-MainActivity$onCreate$7\\3\\103\\0":I
    invoke-virtual {v1}, Lcom/bayyari/tv/ui/MainActivity;->getCrashReporter()Lcom/bayyari/tv/util/CrashReporter;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/bayyari/tv/util/CrashReporter;->recordException(Ljava/lang/Throwable;)V

    .end local v1    # "$this$onCreate_u24lambda_u248\\3":Lcom/bayyari/tv/ui/MainActivity;
    .end local v2    # "$i$a$-runCatching-MainActivity$onCreate$7\\3\\103\\0":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_3
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/bayyari/tv/ui/auth/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/bayyari/tv/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/MainActivity;->finish()V

    .line 107
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    return-void
.end method

.method public final setAuthRepository(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/bayyari/tv/ui/MainActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-void
.end method

.method public final setCrashReporter(Lcom/bayyari/tv/util/CrashReporter;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/util/CrashReporter;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/bayyari/tv/ui/MainActivity;->crashReporter:Lcom/bayyari/tv/util/CrashReporter;

    return-void
.end method
