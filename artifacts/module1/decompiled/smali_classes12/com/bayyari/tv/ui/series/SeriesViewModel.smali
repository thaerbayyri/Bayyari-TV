.class public final Lcom/bayyari/tv/ui/series/SeriesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SeriesViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeriesViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeriesViewModel.kt\ncom/bayyari/tv/ui/series/SeriesViewModel\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,41:1\n189#2:42\n*S KotlinDebug\n*F\n+ 1 SeriesViewModel.kt\ncom/bayyari/tv/ui/series/SeriesViewModel\n*L\n26#1:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/series/SeriesViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "seriesRepository",
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V",
        "serverId",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "query",
        "",
        "series",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lcom/bayyari/tv/domain/model/Series;",
        "getSeries",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "refresh",
        "",
        "setQuery",
        "value",
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
.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final query:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
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

.field private final serverId:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V
    .locals 9
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 20
    iput-object p2, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 23
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-virtual {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 24
    const-string v0, ""

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->query:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 30
    nop

    .line 26
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .local v0, "$this$flatMapLatest\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 42
    .local v1, "$i$f$flatMapLatest\\1\\26":I
    new-instance v2, Lcom/bayyari/tv/ui/series/SeriesViewModel$special$$inlined$flatMapLatest$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/bayyari/tv/ui/series/SeriesViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/bayyari/tv/ui/series/SeriesViewModel;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 28
    .end local v0    # "$this$flatMapLatest\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$flatMapLatest\\1\\26":I
    iget-object v1, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->query:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lcom/bayyari/tv/ui/series/SeriesViewModel$series$2;

    invoke-direct {v2, v3}, Lcom/bayyari/tv/ui/series/SeriesViewModel$series$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 30
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

    iput-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->series:Lkotlinx/coroutines/flow/StateFlow;

    .line 18
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/series/SeriesViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesViewModel;

    .line 17
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getSeriesRepository$p(Lcom/bayyari/tv/ui/series/SeriesViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/series/SeriesViewModel;

    .line 17
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    return-object v0
.end method


# virtual methods
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

    .line 26
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->series:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final refresh()V
    .locals 7

    .line 33
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/series/SeriesViewModel$refresh$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/bayyari/tv/ui/series/SeriesViewModel$refresh$1;-><init>(Lcom/bayyari/tv/ui/series/SeriesViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 37
    return-void
.end method

.method public final setQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/bayyari/tv/ui/series/SeriesViewModel;->query:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
