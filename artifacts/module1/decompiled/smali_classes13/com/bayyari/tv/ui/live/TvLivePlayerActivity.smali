.class public final Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;
.super Lcom/bayyari/tv/ui/live/Hilt_TvLivePlayerActivity;
.source "TvLivePlayerActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTvLivePlayerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TvLivePlayerActivity.kt\ncom/bayyari/tv/ui/live/TvLivePlayerActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,50:1\n75#2,13:51\n*S KotlinDebug\n*F\n+ 1 TvLivePlayerActivity.kt\ncom/bayyari/tv/ui/live/TvLivePlayerActivity\n*L\n21#1:51,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0013H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "iptvPlayer",
        "Lcom/bayyari/tv/player/IptvPlayer;",
        "getIptvPlayer",
        "()Lcom/bayyari/tv/player/IptvPlayer;",
        "setIptvPlayer",
        "(Lcom/bayyari/tv/player/IptvPlayer;)V",
        "viewModel",
        "Lcom/bayyari/tv/ui/live/LivePlayerViewModel;",
        "getViewModel",
        "()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
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
.field private binding:Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;

.field public iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 16
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/Hilt_TvLivePlayerActivity;-><init>()V

    .line 21
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 51
    .local v0, "$this$viewModels_u24default\\1":Landroidx/activity/ComponentActivity;
    nop

    .line 52
    const/4 v1, 0x0

    .line 51
    .local v1, "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    nop

    .line 53
    const/4 v2, 0x0

    .line 51
    .local v2, "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 55
    .local v3, "$i$f$viewModels\\1\\21":I
    new-instance v4, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v4, v0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 59
    .local v4, "factoryPromise\\1":Lkotlin/jvm/functions/Function0;
    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    const-class v6, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 61
    new-instance v7, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v7, v0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 62
    nop

    .line 63
    new-instance v8, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity$special$$inlined$viewModels$default$3;

    invoke-direct {v8, v1, v0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 59
    invoke-direct {v5, v6, v7, v4, v8}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v5, Lkotlin/Lazy;

    .line 21
    .end local v0    # "$this$viewModels_u24default\\1":Landroidx/activity/ComponentActivity;
    .end local v1    # "extrasProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v2    # "factoryProducer\\1":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$viewModels\\1\\21":I
    .end local v4    # "factoryPromise\\1":Lkotlin/jvm/functions/Function0;
    iput-object v5, p0, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 15
    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;)Lcom/bayyari/tv/ui/live/LivePlayerViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;

    .line 15
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->getViewModel()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v0

    return-object v0
.end method

.method private final getViewModel()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    return-object v0
.end method


# virtual methods
.method public final getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "iptvPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Lcom/bayyari/tv/ui/live/Hilt_TvLivePlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;

    .line 27
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->setContentView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/bayyari/tv/databinding/ActivityTvLivePlayerBinding;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 32
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_stream_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, "streamId":I
    if-eqz v0, :cond_2

    .line 34
    invoke-direct {p0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->getViewModel()Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->load(I)V

    .line 36
    :cond_2
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity$onCreate$1;

    invoke-direct {v1, p0, v2}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity$onCreate$1;-><init>(Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->release()V

    .line 47
    invoke-super {p0}, Lcom/bayyari/tv/ui/live/Hilt_TvLivePlayerActivity;->onDestroy()V

    .line 48
    return-void
.end method

.method public final setIptvPlayer(Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/player/IptvPlayer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/TvLivePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 19
    return-void
.end method
