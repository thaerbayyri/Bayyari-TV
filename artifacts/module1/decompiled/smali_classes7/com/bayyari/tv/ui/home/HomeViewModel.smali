.class public final Lcom/bayyari/tv/ui/home/HomeViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "HomeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeViewModel.kt\ncom/bayyari/tv/ui/home/HomeViewModel\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,90:1\n189#2:91\n189#2:92\n189#2:98\n189#2:104\n189#2:110\n49#3:93\n51#3:97\n49#3:99\n51#3:103\n49#3:105\n51#3:109\n49#3:111\n51#3:115\n46#4:94\n51#4:96\n46#4:100\n51#4:102\n46#4:106\n51#4:108\n46#4:112\n51#4:114\n105#5:95\n105#5:101\n105#5:107\n105#5:113\n*S KotlinDebug\n*F\n+ 1 HomeViewModel.kt\ncom/bayyari/tv/ui/home/HomeViewModel\n*L\n42#1:91\n46#1:92\n50#1:98\n54#1:104\n59#1:110\n48#1:93\n48#1:97\n52#1:99\n52#1:103\n56#1:105\n56#1:109\n79#1:111\n79#1:115\n48#1:94\n48#1:96\n52#1:100\n52#1:102\n56#1:106\n56#1:108\n79#1:112\n79#1:114\n48#1:95\n52#1:101\n56#1:107\n79#1:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0006\u0010\'\u001a\u00020(R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00130\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u00130\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001bR\u001d\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u00130\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001bR\u0019\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001b\u00a8\u0006)"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/home/HomeViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "liveRepository",
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        "movieRepository",
        "Lcom/bayyari/tv/data/repository/MovieRepository;",
        "seriesRepository",
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
        "watchHistoryDao",
        "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V",
        "serverId",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "continueWatching",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
        "getContinueWatching",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "liveChannels",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "getLiveChannels",
        "()Lkotlinx/coroutines/flow/Flow;",
        "latestMovies",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "getLatestMovies",
        "latestSeries",
        "Lcom/bayyari/tv/domain/model/Series;",
        "getLatestSeries",
        "stats",
        "Lcom/bayyari/tv/ui/home/HomeStats;",
        "getStats",
        "featured",
        "getFeatured",
        "refreshAll",
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
.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final continueWatching:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final featured:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;"
        }
    .end annotation
.end field

.field private final latestMovies:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;"
        }
    .end annotation
.end field

.field private final latestSeries:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;"
        }
    .end annotation
.end field

.field private final liveChannels:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

.field private final movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

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

.field private final stats:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/bayyari/tv/ui/home/HomeStats;",
            ">;"
        }
    .end annotation
.end field

.field private final watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V
    .locals 17
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p3, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .param p4, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .param p5, "watchHistoryDao"    # Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "authRepository"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "liveRepository"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "movieRepository"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "seriesRepository"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "watchHistoryDao"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 33
    iput-object v1, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 34
    iput-object v2, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 35
    iput-object v3, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    .line 36
    iput-object v4, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 37
    iput-object v5, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    .line 40
    iget-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-virtual {v6}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 44
    nop

    .line 42
    iget-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .local v6, "$this$flatMapLatest\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 91
    .local v7, "$i$f$flatMapLatest\\1\\42":I
    new-instance v8, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$1;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v0}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/bayyari/tv/ui/home/HomeViewModel;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    .line 44
    .end local v6    # "$this$flatMapLatest\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$flatMapLatest\\1\\42":I
    move-object v7, v0

    check-cast v7, Landroidx/lifecycle/ViewModel;

    invoke-static {v7}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    sget-object v10, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const-wide/16 v11, 0x1388

    const-wide/16 v13, 0x0

    invoke-static/range {v10 .. v16}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v6, v7, v8, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->continueWatching:Lkotlinx/coroutines/flow/StateFlow;

    .line 48
    nop

    .line 46
    iget-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .local v6, "$this$flatMapLatest\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 92
    .local v7, "$i$f$flatMapLatest\\2\\46":I
    new-instance v8, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$2;

    invoke-direct {v8, v9, v0}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/bayyari/tv/ui/home/HomeViewModel;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    .line 48
    .end local v6    # "$this$flatMapLatest\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$flatMapLatest\\2\\46":I
    nop

    .local v6, "$this$map\\3":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$f$map\\3\\48":I
    move-object v8, v6

    .local v8, "$this$unsafeTransform\\4":Lkotlinx/coroutines/flow/Flow;
    const/4 v10, 0x0

    .line 94
    .local v10, "$i$f$unsafeTransform\\4\\93":I
    const/4 v11, 0x0

    .line 95
    .local v11, "$i$f$unsafeFlow\\5\\94":I
    new-instance v12, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$map$1;

    invoke-direct {v12, v8}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v12, Lkotlinx/coroutines/flow/Flow;

    .line 96
    .end local v11    # "$i$f$unsafeFlow\\5\\94":I
    nop

    .line 97
    .end local v8    # "$this$unsafeTransform\\4":Lkotlinx/coroutines/flow/Flow;
    .end local v10    # "$i$f$unsafeTransform\\4\\93":I
    nop

    .line 48
    .end local v6    # "$this$map\\3":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$map\\3\\48":I
    iput-object v12, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->liveChannels:Lkotlinx/coroutines/flow/Flow;

    .line 52
    nop

    .line 50
    iget-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .local v6, "$this$flatMapLatest\\6":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 98
    .local v7, "$i$f$flatMapLatest\\6\\50":I
    new-instance v8, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$3;

    invoke-direct {v8, v9, v0}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/bayyari/tv/ui/home/HomeViewModel;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    .line 52
    .end local v6    # "$this$flatMapLatest\\6":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$flatMapLatest\\6\\50":I
    nop

    .local v6, "$this$map\\7":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 99
    .local v7, "$i$f$map\\7\\52":I
    move-object v8, v6

    .local v8, "$this$unsafeTransform\\8":Lkotlinx/coroutines/flow/Flow;
    const/4 v10, 0x0

    .line 100
    .local v10, "$i$f$unsafeTransform\\8\\99":I
    const/4 v11, 0x0

    .line 101
    .local v11, "$i$f$unsafeFlow\\9\\100":I
    new-instance v12, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$map$2;

    invoke-direct {v12, v8}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v12, Lkotlinx/coroutines/flow/Flow;

    .line 102
    .end local v11    # "$i$f$unsafeFlow\\9\\100":I
    nop

    .line 103
    .end local v8    # "$this$unsafeTransform\\8":Lkotlinx/coroutines/flow/Flow;
    .end local v10    # "$i$f$unsafeTransform\\8\\99":I
    nop

    .line 52
    .end local v6    # "$this$map\\7":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$map\\7\\52":I
    iput-object v12, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->latestMovies:Lkotlinx/coroutines/flow/Flow;

    .line 56
    nop

    .line 54
    iget-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .local v6, "$this$flatMapLatest\\10":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 104
    .local v7, "$i$f$flatMapLatest\\10\\54":I
    new-instance v8, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$4;

    invoke-direct {v8, v9, v0}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/bayyari/tv/ui/home/HomeViewModel;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    .line 56
    .end local v6    # "$this$flatMapLatest\\10":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$flatMapLatest\\10\\54":I
    nop

    .local v6, "$this$map\\11":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 105
    .local v7, "$i$f$map\\11\\56":I
    move-object v8, v6

    .local v8, "$this$unsafeTransform\\12":Lkotlinx/coroutines/flow/Flow;
    const/4 v10, 0x0

    .line 106
    .local v10, "$i$f$unsafeTransform\\12\\105":I
    const/4 v11, 0x0

    .line 107
    .local v11, "$i$f$unsafeFlow\\13\\106":I
    new-instance v12, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$map$3;

    invoke-direct {v12, v8}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v12, Lkotlinx/coroutines/flow/Flow;

    .line 108
    .end local v11    # "$i$f$unsafeFlow\\13\\106":I
    nop

    .line 109
    .end local v8    # "$this$unsafeTransform\\12":Lkotlinx/coroutines/flow/Flow;
    .end local v10    # "$i$f$unsafeTransform\\12\\105":I
    nop

    .line 56
    .end local v6    # "$this$map\\11":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$map\\11\\56":I
    iput-object v12, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->latestSeries:Lkotlinx/coroutines/flow/Flow;

    .line 59
    iget-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .local v6, "$this$flatMapLatest\\14":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 110
    .local v7, "$i$f$flatMapLatest\\14\\59":I
    new-instance v8, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$5;

    invoke-direct {v8, v9, v0}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$flatMapLatest$5;-><init>(Lkotlin/coroutines/Continuation;Lcom/bayyari/tv/ui/home/HomeViewModel;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    .line 59
    .end local v6    # "$this$flatMapLatest\\14":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$flatMapLatest\\14\\59":I
    iput-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->stats:Lkotlinx/coroutines/flow/Flow;

    .line 79
    iget-object v6, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->latestMovies:Lkotlinx/coroutines/flow/Flow;

    .local v6, "$this$map\\15":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 111
    .local v7, "$i$f$map\\15\\79":I
    move-object v8, v6

    .local v8, "$this$unsafeTransform\\16":Lkotlinx/coroutines/flow/Flow;
    const/4 v9, 0x0

    .line 112
    .local v9, "$i$f$unsafeTransform\\16\\111":I
    const/4 v10, 0x0

    .line 113
    .local v10, "$i$f$unsafeFlow\\17\\112":I
    new-instance v11, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$map$4;

    invoke-direct {v11, v8}, Lcom/bayyari/tv/ui/home/HomeViewModel$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    .line 114
    .end local v10    # "$i$f$unsafeFlow\\17\\112":I
    nop

    .line 115
    .end local v8    # "$this$unsafeTransform\\16":Lkotlinx/coroutines/flow/Flow;
    .end local v9    # "$i$f$unsafeTransform\\16\\111":I
    nop

    .line 79
    .end local v6    # "$this$map\\15":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$map\\15\\79":I
    iput-object v11, v0, Lcom/bayyari/tv/ui/home/HomeViewModel;->featured:Lkotlinx/coroutines/flow/Flow;

    .line 32
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/HomeViewModel;

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getLiveRepository$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/repository/LiveRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/HomeViewModel;

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    return-object v0
.end method

.method public static final synthetic access$getMovieRepository$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/repository/MovieRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/HomeViewModel;

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    return-object v0
.end method

.method public static final synthetic access$getSeriesRepository$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/HomeViewModel;

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    return-object v0
.end method

.method public static final synthetic access$getWatchHistoryDao$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/home/HomeViewModel;

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    return-object v0
.end method


# virtual methods
.method public final getContinueWatching()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            ">;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->continueWatching:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getFeatured()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->featured:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getLatestMovies()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->latestMovies:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getLatestSeries()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->latestSeries:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getLiveChannels()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->liveChannels:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getStats()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/bayyari/tv/ui/home/HomeStats;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel;->stats:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final refreshAll()V
    .locals 7

    .line 82
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;-><init>(Lcom/bayyari/tv/ui/home/HomeViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 88
    return-void
.end method
