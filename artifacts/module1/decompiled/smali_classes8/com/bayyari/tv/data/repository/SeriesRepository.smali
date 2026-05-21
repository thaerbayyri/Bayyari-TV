.class public final Lcom/bayyari/tv/data/repository/SeriesRepository;
.super Ljava/lang/Object;
.source "SeriesRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeriesRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeriesRepository.kt\ncom/bayyari/tv/data/repository/SeriesRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n49#2:89\n51#2:93\n46#3:90\n51#3:92\n105#4:91\n1563#5:94\n1634#5,3:95\n1563#5:98\n1634#5,3:99\n*S KotlinDebug\n*F\n+ 1 SeriesRepository.kt\ncom/bayyari/tv/data/repository/SeriesRepository\n*L\n28#1:89\n28#1:93\n28#1:90\n28#1:92\n28#1:91\n63#1:94\n63#1:95,3\n66#1:98\n66#1:99,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0002\u0010\u0013J \u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0016J$\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0016J$\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u001eJ\u000c\u0010\u001f\u001a\u00020\u000b*\u00020 H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
        "",
        "api",
        "Lcom/bayyari/tv/data/api/XtreamApiService;",
        "seriesDao",
        "Lcom/bayyari/tv/data/local/dao/SeriesDao;",
        "<init>",
        "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/SeriesDao;)V",
        "observeSeries",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/bayyari/tv/domain/model/Series;",
        "serverId",
        "",
        "categoryId",
        "",
        "refresh",
        "server",
        "Lcom/bayyari/tv/domain/model/Server;",
        "(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSeries",
        "seriesId",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "latest",
        "limit",
        "search",
        "query",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSeriesInfo",
        "Lcom/bayyari/tv/data/api/models/SeriesInfoDto;",
        "(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toDomain",
        "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
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

.field private final seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/SeriesDao;)V
    .locals 1
    .param p1, "api"    # Lcom/bayyari/tv/data/api/XtreamApiService;
    .param p2, "seriesDao"    # Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/SeriesRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    .line 19
    iput-object p2, p0, Lcom/bayyari/tv/data/repository/SeriesRepository;->seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    .line 17
    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/bayyari/tv/data/repository/SeriesRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/SeriesRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    return-object v0
.end method

.method public static final synthetic access$getSeriesDao$p(Lcom/bayyari/tv/data/repository/SeriesRepository;)Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/SeriesRepository;->seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    return-object v0
.end method

.method public static final synthetic access$toDomain(Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/data/local/entities/SeriesEntity;)Lcom/bayyari/tv/domain/model/Series;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .param p1, "$receiver"    # Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    .line 16
    invoke-direct {p0, p1}, Lcom/bayyari/tv/data/repository/SeriesRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/SeriesEntity;)Lcom/bayyari/tv/domain/model/Series;

    move-result-object v0

    return-object v0
.end method

.method private final toDomain(Lcom/bayyari/tv/data/local/entities/SeriesEntity;)Lcom/bayyari/tv/domain/model/Series;
    .locals 14
    .param p1, "$this$toDomain"    # Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    .line 73
    new-instance v0, Lcom/bayyari/tv/domain/model/Series;

    .line 74
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getSeriesId()I

    move-result v1

    .line 75
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCover()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getPlot()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCast()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getDirector()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getGenre()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getReleaseDate()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getLastModified()J

    move-result-wide v9

    .line 83
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getRating()Ljava/lang/String;

    move-result-object v11

    .line 84
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v12

    .line 85
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;->getServerId()I

    move-result v13

    .line 73
    invoke-direct/range {v0 .. v13}, Lcom/bayyari/tv/domain/model/Series;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public final getSeries(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "seriesId"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;

    iget v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;-><init>(Lcom/bayyari/tv/data/repository/SeriesRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 59
    iget v3, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->label:I

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
    iget p2, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->I$1:I

    iget p1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->I$0:I

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object v3, p0, Lcom/bayyari/tv/data/repository/SeriesRepository;->seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    iput p1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->I$0:I

    iput p2, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->I$1:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeries$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lcom/bayyari/tv/data/local/dao/SeriesDao;->findById(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 59
    return-object v2

    .line 60
    :cond_1
    :goto_1
    check-cast v3, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/bayyari/tv/data/repository/SeriesRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/SeriesEntity;)Lcom/bayyari/tv/domain/model/Series;

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

.method public final getSeriesInfo(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;
    .param p2, "seriesId"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Server;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/api/models/SeriesInfoDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeriesInfo$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/bayyari/tv/data/repository/SeriesRepository$getSeriesInfo$2;-><init>(Lcom/bayyari/tv/data/repository/SeriesRepository;Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 71
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
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;

    iget v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;-><init>(Lcom/bayyari/tv/data/repository/SeriesRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 62
    iget v3, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->label:I

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
    iget p2, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->I$1:I

    iget p1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->I$0:I

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    iget-object v3, p0, Lcom/bayyari/tv/data/repository/SeriesRepository;->seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    iput p1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->I$0:I

    iput p2, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->I$1:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$latest$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lcom/bayyari/tv/data/local/dao/SeriesDao;->latest(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 62
    return-object v2

    :cond_1
    :goto_1
    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 94
    .local v3, "$i$f$map\\1\\63":I
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

    check-cast v9, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    .local v9, "it\\3":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    const/4 v10, 0x0

    .line 63
    .local v10, "$i$a$-map-SeriesRepository$latest$2\\3\\96\\0":I
    invoke-direct {p0, v9}, Lcom/bayyari/tv/data/repository/SeriesRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/SeriesEntity;)Lcom/bayyari/tv/domain/model/Series;

    move-result-object v9

    .line 96
    .end local v9    # "it\\3":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    .end local v10    # "$i$a$-map-SeriesRepository$latest$2\\3\\96\\0":I
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

    .line 63
    .end local v2    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\1\\63":I
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final observeSeries(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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
            "Lcom/bayyari/tv/domain/model/Series;",
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
    iget-object v1, p0, Lcom/bayyari/tv/data/repository/SeriesRepository;->seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    .line 23
    if-eqz v0, :cond_2

    .line 24
    invoke-interface {v1, p1}, Lcom/bayyari/tv/data/local/dao/SeriesDao;->observeAll(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto :goto_2

    .line 26
    :cond_2
    invoke-interface {v1, p1, p2}, Lcom/bayyari/tv/data/local/dao/SeriesDao;->observeByCategory(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 23
    :goto_2
    nop

    .line 28
    .local v0, "flow":Lkotlinx/coroutines/flow/Flow;
    move-object v1, v0

    .local v1, "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 89
    .local v2, "$i$f$map\\1\\28":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 90
    .local v4, "$i$f$unsafeTransform\\2\\89":I
    const/4 v5, 0x0

    .line 91
    .local v5, "$i$f$unsafeFlow\\3\\90":I
    new-instance v6, Lcom/bayyari/tv/data/repository/SeriesRepository$observeSeries$$inlined$map$1;

    invoke-direct {v6, v3, p0}, Lcom/bayyari/tv/data/repository/SeriesRepository$observeSeries$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/bayyari/tv/data/repository/SeriesRepository;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 92
    .end local v5    # "$i$f$unsafeFlow\\3\\90":I
    nop

    .line 93
    .end local v3    # "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform\\2\\89":I
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

    new-instance v1, Lcom/bayyari/tv/data/repository/SeriesRepository$refresh$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/bayyari/tv/data/repository/SeriesRepository$refresh$2;-><init>(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/repository/SeriesRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 57
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
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;

    iget v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;-><init>(Lcom/bayyari/tv/data/repository/SeriesRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 65
    iget v3, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->label:I

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
    iget p1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->I$0:I

    iget-object v2, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->L$0:Ljava/lang/Object;

    move-object p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    iget-object v3, p0, Lcom/bayyari/tv/data/repository/SeriesRepository;->seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->I$0:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/data/repository/SeriesRepository$search$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lcom/bayyari/tv/data/local/dao/SeriesDao;->search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 65
    return-object v2

    :cond_1
    :goto_1
    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 98
    .local v3, "$i$f$map\\1\\66":I
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

    .line 99
    .local v6, "$i$f$mapTo\\2\\98":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 100
    .local v8, "item\\2":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    .local v9, "it\\3":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    const/4 v10, 0x0

    .line 66
    .local v10, "$i$a$-map-SeriesRepository$search$2\\3\\100\\0":I
    invoke-direct {p0, v9}, Lcom/bayyari/tv/data/repository/SeriesRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/SeriesEntity;)Lcom/bayyari/tv/domain/model/Series;

    move-result-object v9

    .line 100
    .end local v9    # "it\\3":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    .end local v10    # "$i$a$-map-SeriesRepository$search$2\\3\\100\\0":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    .end local v8    # "item\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination\\2":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo\\2\\98":I
    check-cast v4, Ljava/util/List;

    .line 98
    nop

    .line 66
    .end local v2    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\1\\66":I
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
