.class public final Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SeriesDetailViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR&\u0010\u0014\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00100\u00150\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R)\u0010\u0018\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00100\u00150\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "seriesRepository",
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V",
        "_series",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/bayyari/tv/domain/model/Series;",
        "series",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getSeries",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_seasons",
        "",
        "Lcom/bayyari/tv/domain/model/Season;",
        "seasons",
        "getSeasons",
        "_episodesBySeason",
        "",
        "",
        "Lcom/bayyari/tv/domain/model/Episode;",
        "episodesBySeason",
        "getEpisodesBySeason",
        "load",
        "",
        "seriesId",
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
.field private final _episodesBySeason:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Episode;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final _seasons:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Season;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _series:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;"
        }
    .end annotation
.end field

.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final episodesBySeason:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Episode;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final seasons:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Season;",
            ">;>;"
        }
    .end annotation
.end field

.field private final series:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;"
        }
    .end annotation
.end field

.field private final seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V
    .locals 1
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 19
    iput-object p2, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_series:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 23
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_series:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->series:Lkotlinx/coroutines/flow/StateFlow;

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_seasons:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 26
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_seasons:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->seasons:Lkotlinx/coroutines/flow/StateFlow;

    .line 28
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_episodesBySeason:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_episodesBySeason:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->episodesBySeason:Lkotlinx/coroutines/flow/StateFlow;

    .line 17
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getSeriesRepository$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    return-object v0
.end method

.method public static final synthetic access$get_episodesBySeason$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_episodesBySeason:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_seasons$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_seasons:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_series$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->_series:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final getEpisodesBySeason()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Episode;",
            ">;>;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->episodesBySeason:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getSeasons()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Season;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->seasons:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getSeries()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->series:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final load(I)V
    .locals 7
    .param p1, "seriesId"    # I

    .line 32
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;-><init>(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 66
    return-void
.end method
