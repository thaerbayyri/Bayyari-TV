.class public final Lcom/bayyari/tv/data/repository/MovieRepository;
.super Ljava/lang/Object;
.source "MovieRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovieRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovieRepository.kt\ncom/bayyari/tv/data/repository/MovieRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n49#2:85\n51#2:89\n46#3:86\n51#3:88\n105#4:87\n1563#5:90\n1634#5,3:91\n1563#5:94\n1634#5,3:95\n*S KotlinDebug\n*F\n+ 1 MovieRepository.kt\ncom/bayyari/tv/data/repository/MovieRepository\n*L\n28#1:85\n28#1:89\n28#1:86\n28#1:88\n28#1:87\n62#1:90\n62#1:91,3\n65#1:94\n65#1:95,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013J \u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0016J$\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0016J$\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u001fJ\u000c\u0010 \u001a\u00020\u000b*\u00020!H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/bayyari/tv/data/repository/MovieRepository;",
        "",
        "api",
        "Lcom/bayyari/tv/data/api/XtreamApiService;",
        "movieDao",
        "Lcom/bayyari/tv/data/local/dao/MovieDao;",
        "<init>",
        "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/MovieDao;)V",
        "observeMovies",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "serverId",
        "",
        "categoryId",
        "",
        "refresh",
        "server",
        "Lcom/bayyari/tv/domain/model/Server;",
        "(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMovie",
        "streamId",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "latest",
        "limit",
        "search",
        "query",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMovieDetail",
        "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
        "vodId",
        "(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toDomain",
        "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
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
.field private final api:Lcom/bayyari/tv/data/api/XtreamApiService;

.field private final movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/MovieDao;)V
    .locals 1
    .param p1, "api"    # Lcom/bayyari/tv/data/api/XtreamApiService;
    .param p2, "movieDao"    # Lcom/bayyari/tv/data/local/dao/MovieDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movieDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/MovieRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    .line 19
    iput-object p2, p0, Lcom/bayyari/tv/data/repository/MovieRepository;->movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    .line 17
    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/MovieRepository;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/MovieRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    return-object v0
.end method

.method public static final synthetic access$getMovieDao$p(Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/data/local/dao/MovieDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/MovieRepository;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/MovieRepository;->movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    return-object v0
.end method

.method public static final synthetic access$toDomain(Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/local/entities/MovieEntity;)Lcom/bayyari/tv/domain/model/Movie;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .param p1, "$receiver"    # Lcom/bayyari/tv/data/local/entities/MovieEntity;

    .line 16
    invoke-direct {p0, p1}, Lcom/bayyari/tv/data/repository/MovieRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/MovieEntity;)Lcom/bayyari/tv/domain/model/Movie;

    move-result-object v0

    return-object v0
.end method

.method private final toDomain(Lcom/bayyari/tv/data/local/entities/MovieEntity;)Lcom/bayyari/tv/domain/model/Movie;
    .locals 13
    .param p1, "$this$toDomain"    # Lcom/bayyari/tv/data/local/entities/MovieEntity;

    .line 72
    new-instance v0, Lcom/bayyari/tv/domain/model/Movie;

    .line 73
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getStreamId()I

    move-result v1

    .line 74
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getStreamIcon()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getRating()D

    move-result-wide v5

    .line 78
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getRating5Based()D

    move-result-wide v7

    .line 79
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getAdded()J

    move-result-wide v9

    .line 80
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getContainerExtension()Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/MovieEntity;->getServerId()I

    move-result v12

    .line 72
    invoke-direct/range {v0 .. v12}, Lcom/bayyari/tv/domain/model/Movie;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public final getMovie(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "streamId"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;

    iget v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;-><init>(Lcom/bayyari/tv/data/repository/MovieRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 58
    iget v3, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget p2, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->I$1:I

    iget p1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->I$0:I

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    iget-object v3, p0, Lcom/bayyari/tv/data/repository/MovieRepository;->movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    iput p1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->I$0:I

    iput p2, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->I$1:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovie$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lcom/bayyari/tv/data/local/dao/MovieDao;->findById(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 58
    return-object v2

    .line 59
    :cond_1
    :goto_1
    check-cast v3, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/bayyari/tv/data/repository/MovieRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/MovieEntity;)Lcom/bayyari/tv/domain/model/Movie;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMovieDetail(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;
    .param p2, "vodId"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Server;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;-><init>(Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final latest(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1, "serverId"    # I
    .param p2, "limit"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;

    iget v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;-><init>(Lcom/bayyari/tv/data/repository/MovieRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 61
    iget v3, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget p2, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->I$1:I

    iget p1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->I$0:I

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    iget-object v3, p0, Lcom/bayyari/tv/data/repository/MovieRepository;->movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    iput p1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->I$0:I

    iput p2, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->I$1:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/data/repository/MovieRepository$latest$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lcom/bayyari/tv/data/local/dao/MovieDao;->latest(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 61
    return-object v2

    :cond_1
    :goto_1
    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 90
    .local v3, "$i$f$map\\1\\62":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination\\2":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 91
    .local v6, "$i$f$mapTo\\2\\90":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 92
    .local v8, "item\\2":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    .local v9, "it\\3":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    const/4 v10, 0x0

    .line 62
    .local v10, "$i$a$-map-MovieRepository$latest$2\\3\\92\\0":I
    invoke-direct {p0, v9}, Lcom/bayyari/tv/data/repository/MovieRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/MovieEntity;)Lcom/bayyari/tv/domain/model/Movie;

    move-result-object v9

    .line 92
    .end local v9    # "it\\3":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    .end local v10    # "$i$a$-map-MovieRepository$latest$2\\3\\92\\0":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 93
    .end local v8    # "item\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination\\2":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo\\2\\90":I
    check-cast v4, Ljava/util/List;

    .line 90
    nop

    .line 62
    .end local v2    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\1\\62":I
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final observeMovies(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p1, "serverId"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;"
        }
    .end annotation

    .line 23
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository;->movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    .line 23
    if-eqz v0, :cond_2

    .line 24
    invoke-interface {v1, p1}, Lcom/bayyari/tv/data/local/dao/MovieDao;->observeAll(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto :goto_2

    .line 26
    :cond_2
    invoke-interface {v1, p1, p2}, Lcom/bayyari/tv/data/local/dao/MovieDao;->observeByCategory(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 23
    :goto_2
    nop

    .line 28
    .local v0, "flow":Lkotlinx/coroutines/flow/Flow;
    move-object v1, v0

    .local v1, "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 85
    .local v2, "$i$f$map\\1\\28":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 86
    .local v4, "$i$f$unsafeTransform\\2\\85":I
    const/4 v5, 0x0

    .line 87
    .local v5, "$i$f$unsafeFlow\\3\\86":I
    new-instance v6, Lcom/bayyari/tv/data/repository/MovieRepository$observeMovies$$inlined$map$1;

    invoke-direct {v6, v3, p0}, Lcom/bayyari/tv/data/repository/MovieRepository$observeMovies$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/bayyari/tv/data/repository/MovieRepository;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 88
    .end local v5    # "$i$f$unsafeFlow\\3\\86":I
    nop

    .line 89
    .end local v3    # "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform\\2\\85":I
    nop

    .line 28
    .end local v1    # "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map\\1\\28":I
    return-object v6
.end method

.method public final refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Server;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;-><init>(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/repository/MovieRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public final search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1, "serverId"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;

    iget v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;-><init>(Lcom/bayyari/tv/data/repository/MovieRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 64
    iget v3, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget p1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->I$0:I

    iget-object v2, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->L$0:Ljava/lang/Object;

    move-object p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object v3, p0, Lcom/bayyari/tv/data/repository/MovieRepository;->movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->I$0:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/data/repository/MovieRepository$search$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lcom/bayyari/tv/data/local/dao/MovieDao;->search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 64
    return-object v2

    :cond_1
    :goto_1
    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 94
    .local v3, "$i$f$map\\1\\65":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination\\2":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 95
    .local v6, "$i$f$mapTo\\2\\94":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 96
    .local v8, "item\\2":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    .local v9, "it\\3":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    const/4 v10, 0x0

    .line 65
    .local v10, "$i$a$-map-MovieRepository$search$2\\3\\96\\0":I
    invoke-direct {p0, v9}, Lcom/bayyari/tv/data/repository/MovieRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/MovieEntity;)Lcom/bayyari/tv/domain/model/Movie;

    move-result-object v9

    .line 96
    .end local v9    # "it\\3":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    .end local v10    # "$i$a$-map-MovieRepository$search$2\\3\\96\\0":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    .end local v8    # "item\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination\\2":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo\\2\\94":I
    check-cast v4, Ljava/util/List;

    .line 94
    nop

    .line 65
    .end local v2    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\1\\65":I
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
