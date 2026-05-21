.class public final Lcom/bayyari/tv/ui/home/TvHomeViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "TvHomeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000e0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u000e0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/home/TvHomeViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "liveRepository",
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        "movieRepository",
        "Lcom/bayyari/tv/data/repository/MovieRepository;",
        "seriesRepository",
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V",
        "_live",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "live",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getLive",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_movies",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "movies",
        "getMovies",
        "_series",
        "Lcom/bayyari/tv/domain/model/Series;",
        "series",
        "getSeries",
        "load",
        "",
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
.field private final _live:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _movies:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _series:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;"
        }
    .end annotation
.end field

.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final live:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

.field private final movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

.field private final movies:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;"
        }
    .end annotation
.end field

.field private final series:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;"
        }
    .end annotation
.end field

.field private final seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V
    .locals 1
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p3, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .param p4, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movieRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 21
    iput-object p2, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 22
    iput-object p3, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    .line 23
    iput-object p4, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_live:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 27
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_live:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->live:Lkotlinx/coroutines/flow/StateFlow;

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_movies:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_movies:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->movies:Lkotlinx/coroutines/flow/StateFlow;

    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_series:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_series:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->series:Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getLiveRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/LiveRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    return-object v0
.end method

.method public static final synthetic access$getMovieRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/MovieRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    return-object v0
.end method

.method public static final synthetic access$getSeriesRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    return-object v0
.end method

.method public static final synthetic access$get_live$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_live:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_movies$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_movies:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_series$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->_series:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final getLive()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->live:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getMovies()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->movies:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getSeries()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->series:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final load()V
    .locals 7

    .line 36
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;-><init>(Lcom/bayyari/tv/ui/home/TvHomeViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 46
    return-void
.end method
