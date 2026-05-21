.class public final Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;
.super Lcom/bayyari/tv/ui/movies/Hilt_MoviePlayerActivity;
.source "MoviePlayerActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0014J\u0008\u0010*\u001a\u00020\'H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "iptvPlayer",
        "Lcom/bayyari/tv/player/IptvPlayer;",
        "getIptvPlayer",
        "()Lcom/bayyari/tv/player/IptvPlayer;",
        "setIptvPlayer",
        "(Lcom/bayyari/tv/player/IptvPlayer;)V",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "getAuthRepository",
        "()Lcom/bayyari/tv/data/repository/AuthRepository;",
        "setAuthRepository",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;)V",
        "streamUrlBuilder",
        "Lcom/bayyari/tv/util/StreamUrlBuilder;",
        "getStreamUrlBuilder",
        "()Lcom/bayyari/tv/util/StreamUrlBuilder;",
        "setStreamUrlBuilder",
        "(Lcom/bayyari/tv/util/StreamUrlBuilder;)V",
        "watchHistoryRepository",
        "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;",
        "getWatchHistoryRepository",
        "()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;",
        "setWatchHistoryRepository",
        "(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V",
        "networkUtils",
        "Lcom/bayyari/tv/util/NetworkUtils;",
        "getNetworkUtils",
        "()Lcom/bayyari/tv/util/NetworkUtils;",
        "setNetworkUtils",
        "(Lcom/bayyari/tv/util/NetworkUtils;)V",
        "binding",
        "Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;",
        "wasPlaying",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
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
.field public static final Companion:Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$Companion;

.field public static final EXTRA_MOVIE_ID:Ljava/lang/String; = "extra_movie_id"


# instance fields
.field public authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;

.field public iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public networkUtils:Lcom/bayyari/tv/util/NetworkUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private wasPlaying:Z

.field public watchHistoryRepository:Lcom/bayyari/tv/data/repository/WatchHistoryRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->Companion:Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/bayyari/tv/ui/movies/Hilt_MoviePlayerActivity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->wasPlaying:Z

    .line 20
    return-void
.end method

.method public static final synthetic access$getWasPlaying$p(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;)Z
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;

    .line 20
    iget-boolean v0, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->wasPlaying:Z

    return v0
.end method

.method public static final synthetic access$setWasPlaying$p(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;
    .param p1, "<set-?>"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->wasPlaying:Z

    return-void
.end method


# virtual methods
.method public final getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "iptvPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNetworkUtils()Lcom/bayyari/tv/util/NetworkUtils;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->networkUtils:Lcom/bayyari/tv/util/NetworkUtils;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "networkUtils"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStreamUrlBuilder()Lcom/bayyari/tv/util/StreamUrlBuilder;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "streamUrlBuilder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWatchHistoryRepository()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->watchHistoryRepository:Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "watchHistoryRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/bayyari/tv/ui/movies/Hilt_MoviePlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;

    move-result-object v1

    const-string v2, "inflate(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;

    .line 48
    iget-object v1, v0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;

    const-string v2, "binding"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    const-class v5, Lcom/bayyari/tv/player/PlayerService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 52
    iget-object v1, v0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->binding:Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    iget-object v1, v1, Lcom/bayyari/tv/databinding/ActivityMoviePlayerBinding;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Player;

    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 54
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_movie_id"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 55
    .local v9, "movieId":I
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v1

    .line 56
    .local v1, "server":Lcom/bayyari/tv/domain/model/Server;
    if-eqz v9, :cond_2

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getStreamUrlBuilder()Lcom/bayyari/tv/util/StreamUrlBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v8

    const-string v10, "mp4"

    invoke-virtual/range {v5 .. v10}, Lcom/bayyari/tv/util/StreamUrlBuilder;->movie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v2, v4, v6, v3}, Lcom/bayyari/tv/player/IptvPlayer;->prepare$default(Lcom/bayyari/tv/player/IptvPlayer;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    move-object v4, v0

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v4}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;

    invoke-direct {v4, v0, v9, v1, v3}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;-><init>(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;ILcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)V

    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 67
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$2;

    invoke-direct {v2, v0, v3}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$2;-><init>(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;Lkotlin/coroutines/Continuation;)V

    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 15

    .line 80
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v8

    .line 81
    .local v8, "server":Lcom/bayyari/tv/domain/model/Server;
    if-eqz v8, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v4

    .line 83
    .local v4, "position":J
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v6

    .line 84
    .local v6, "duration":J
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_movie_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 85
    .local v3, "movieId":I
    if-eqz v3, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    .line 86
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onDestroy$1;

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onDestroy$1;-><init>(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;IJJLcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)V

    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function2;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 102
    .end local v3    # "movieId":I
    .end local v4    # "position":J
    .end local v6    # "duration":J
    :cond_0
    invoke-virtual {p0}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bayyari/tv/player/IptvPlayer;->release()V

    .line 103
    invoke-super {p0}, Lcom/bayyari/tv/ui/movies/Hilt_MoviePlayerActivity;->onDestroy()V

    .line 104
    return-void
.end method

.method public final setAuthRepository(Lcom/bayyari/tv/data/repository/AuthRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/AuthRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 31
    return-void
.end method

.method public final setIptvPlayer(Lcom/bayyari/tv/player/IptvPlayer;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/player/IptvPlayer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->iptvPlayer:Lcom/bayyari/tv/player/IptvPlayer;

    .line 28
    return-void
.end method

.method public final setNetworkUtils(Lcom/bayyari/tv/util/NetworkUtils;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/util/NetworkUtils;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->networkUtils:Lcom/bayyari/tv/util/NetworkUtils;

    .line 40
    return-void
.end method

.method public final setStreamUrlBuilder(Lcom/bayyari/tv/util/StreamUrlBuilder;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/util/StreamUrlBuilder;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    .line 34
    return-void
.end method

.method public final setWatchHistoryRepository(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->watchHistoryRepository:Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    .line 37
    return-void
.end method
