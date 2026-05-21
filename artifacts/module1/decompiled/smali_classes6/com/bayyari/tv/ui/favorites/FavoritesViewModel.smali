.class public final Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FavoritesViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/favorites/FavoritesViewModel$FavoriteItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0016B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "favoriteDao",
        "Lcom/bayyari/tv/data/local/dao/FavoriteDao;",
        "liveRepository",
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        "movieRepository",
        "Lcom/bayyari/tv/data/repository/MovieRepository;",
        "seriesRepository",
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V",
        "serverId",
        "",
        "favorites",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel$FavoriteItem;",
        "getFavorites",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "FavoriteItem",
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
.field private final favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

.field private final favorites:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel$FavoriteItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

.field private final movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

.field private final seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

.field private final serverId:I


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/local/dao/FavoriteDao;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V
    .locals 9
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "favoriteDao"    # Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .param p3, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p4, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .param p5, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movieRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    .line 21
    iput-object p3, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 22
    iput-object p4, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    .line 23
    iput-object p5, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 28
    invoke-virtual {p1}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->serverId:I

    .line 49
    nop

    .line 30
    iget v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->serverId:I

    if-nez v0, :cond_1

    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    iget v1, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->serverId:I

    invoke-interface {v0, v1}, Lcom/bayyari/tv/data/local/dao/FavoriteDao;->observeAll(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel$favorites$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel$favorites$1;-><init>(Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 49
    :goto_1
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->favorites:Lkotlinx/coroutines/flow/StateFlow;

    .line 18
    return-void
.end method

.method public static final synthetic access$getLiveRepository$p(Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;)Lcom/bayyari/tv/data/repository/LiveRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    .line 17
    iget-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    return-object v0
.end method

.method public static final synthetic access$getMovieRepository$p(Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;)Lcom/bayyari/tv/data/repository/MovieRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    .line 17
    iget-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    return-object v0
.end method

.method public static final synthetic access$getSeriesRepository$p(Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    .line 17
    iget-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    return-object v0
.end method

.method public static final synthetic access$getServerId$p(Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;)I
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;

    .line 17
    iget v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->serverId:I

    return v0
.end method


# virtual methods
.method public final getFavorites()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel$FavoriteItem;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;->favorites:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
