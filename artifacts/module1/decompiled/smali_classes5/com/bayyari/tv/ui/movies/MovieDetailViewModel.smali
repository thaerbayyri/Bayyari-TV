.class public final Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MovieDetailViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "movieRepository",
        "Lcom/bayyari/tv/data/repository/MovieRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;)V",
        "_movie",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "movie",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getMovie",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_detail",
        "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
        "detail",
        "getDetail",
        "load",
        "",
        "streamId",
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
.field private final _detail:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final _movie:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;"
        }
    .end annotation
.end field

.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final detail:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final movie:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;"
        }
    .end annotation
.end field

.field private final movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/MovieRepository;)V
    .locals 2
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movieRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 18
    iput-object p2, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->_movie:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 22
    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->_movie:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->movie:Lkotlinx/coroutines/flow/StateFlow;

    .line 24
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->_detail:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 25
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->_detail:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->detail:Lkotlinx/coroutines/flow/StateFlow;

    .line 16
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    .line 15
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getMovieRepository$p(Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;)Lcom/bayyari/tv/data/repository/MovieRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    .line 15
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    return-object v0
.end method

.method public static final synthetic access$get_detail$p(Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    .line 15
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->_detail:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_movie$p(Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;

    .line 15
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->_movie:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final getDetail()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->detail:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getMovie()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;->movie:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final load(I)V
    .locals 7
    .param p1, "streamId"    # I

    .line 28
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel$load$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel$load$1;-><init>(Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 33
    return-void
.end method
