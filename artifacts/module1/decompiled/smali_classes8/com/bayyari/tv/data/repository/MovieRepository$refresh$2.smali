.class final Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MovieRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/repository/MovieRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMovieRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MovieRepository.kt\ncom/bayyari/tv/data/repository/MovieRepository$refresh$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1#2:85\n1563#3:86\n1634#3,3:87\n*S KotlinDebug\n*F\n+ 1 MovieRepository.kt\ncom/bayyari/tv/data/repository/MovieRepository$refresh$2\n*L\n40#1:86\n40#1:87,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.bayyari.tv.data.repository.MovieRepository$refresh$2"
    f = "MovieRepository.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x23,
        0x35,
        0x36
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "$this$invokeSuspend_u24lambda_u240\\1",
        "$i$a$-runCatching-MovieRepository$refresh$2$movies$1\\1\\35\\0",
        "$this$withContext",
        "movies",
        "entities",
        "$this$withContext",
        "movies",
        "entities"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $server:Lcom/bayyari/tv/domain/model/Server;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/data/repository/MovieRepository;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/repository/MovieRepository;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Server;",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iput-object p2, p0, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/MovieRepository;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-direct {v0, v1, v2, p2}, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;-><init>(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/repository/MovieRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$0:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .local v7, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 31
    iget v0, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->label:I

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "entities":Ljava/util/List;
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "movies":Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    .end local v0    # "entities":Ljava/util/List;
    .end local v1    # "movies":Ljava/util/List;
    :pswitch_1
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .restart local v0    # "entities":Ljava/util/List;
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .restart local v1    # "movies":Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .end local v0    # "entities":Ljava/util/List;
    .end local v1    # "movies":Ljava/util/List;
    :pswitch_2
    iget v0, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->I$0:I

    .local v0, "$i$a$-runCatching-MovieRepository$refresh$2$movies$1\\1\\35\\0":I
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .local v1, "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v0

    move-object/from16 v0, p1

    goto :goto_0

    .line 35
    .end local v0    # "$i$a$-runCatching-MovieRepository$refresh$2$movies$1\\1\\35\\0":I
    .end local v1    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 31
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->isM3uOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v1, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v10, v7

    .line 85
    .local v10, "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    const/4 v11, 0x0

    .line 35
    .local v11, "$i$a$-runCatching-MovieRepository$refresh$2$movies$1\\1\\35\\0":I
    invoke-static {v0}, Lcom/bayyari/tv/data/repository/MovieRepository;->access$getApi$p(Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$1:Ljava/lang/Object;

    iput v11, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->I$0:I

    const/4 v3, 0x1

    iput v3, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bayyari/tv/data/api/XtreamApiService$-CC;->getVodStreams$default(Lcom/bayyari/tv/data/api/XtreamApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1

    .line 31
    return-object v8

    .line 35
    :cond_1
    move-object v1, v10

    .end local v10    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    .restart local v1    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    :goto_0
    check-cast v0, Ljava/util/List;

    .end local v1    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    .end local v11    # "$i$a$-runCatching-MovieRepository$refresh$2$movies$1\\1\\35\\0":I
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_c

    check-cast v0, Ljava/util/List;

    .line 35
    nop

    .line 40
    .local v0, "movies":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map\\3":Ljava/lang/Iterable;
    iget-object v2, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    const/4 v3, 0x0

    .line 86
    .local v3, "$i$f$map\\3\\40":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination\\4":Ljava/util/Collection;
    move-object v6, v1

    .local v6, "$this$mapTo\\4":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 87
    .local v9, "$i$f$mapTo\\4\\86":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 88
    .local v11, "item\\4":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/bayyari/tv/data/api/models/MovieDto;

    .local v12, "dto\\5":Lcom/bayyari/tv/data/api/models/MovieDto;
    const/4 v13, 0x0

    .line 41
    .local v13, "$i$a$-map-MovieRepository$refresh$2$entities$1\\5\\88\\0":I
    new-instance v14, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    .line 42
    invoke-virtual {v12}, Lcom/bayyari/tv/data/api/models/MovieDto;->getStreamId()I

    move-result v15

    .line 43
    invoke-virtual {v12}, Lcom/bayyari/tv/data/api/models/MovieDto;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    if-nez v16, :cond_2

    move-object/from16 v16, v17

    .line 44
    :cond_2
    invoke-virtual {v12}, Lcom/bayyari/tv/data/api/models/MovieDto;->getStreamIcon()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_3

    move-object/from16 v18, v17

    .line 45
    :cond_3
    invoke-virtual {v12}, Lcom/bayyari/tv/data/api/models/MovieDto;->getCategoryId()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_4

    move-object/from16 v19, v17

    .line 46
    :cond_4
    invoke-virtual {v12}, Lcom/bayyari/tv/data/api/models/MovieDto;->getRating()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v21, 0x0

    if-eqz v20, :cond_5

    invoke-static/range {v20 .. v20}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    goto :goto_4

    :cond_5
    move-wide/from16 v23, v21

    .line 47
    :goto_4
    invoke-virtual {v12}, Lcom/bayyari/tv/data/api/models/MovieDto;->getRating5Based()Ljava/lang/Double;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    .line 48
    :cond_6
    invoke-virtual {v12}, Lcom/bayyari/tv/data/api/models/MovieDto;->getAdded()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_7

    invoke-static/range {v20 .. v20}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto :goto_5

    :cond_7
    const-wide/16 v25, 0x0

    .line 49
    :goto_5
    invoke-virtual {v12}, Lcom/bayyari/tv/data/api/models/MovieDto;->getContainerExtension()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_8

    goto :goto_6

    :cond_8
    move-object/from16 v17, v20

    .line 50
    :goto_6
    move-wide/from16 v27, v25

    move-object/from16 v25, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-wide/from16 v19, v23

    move-wide/from16 v23, v27

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v26

    .line 41
    invoke-direct/range {v14 .. v26}, Lcom/bayyari/tv/data/local/entities/MovieEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V

    .line 51
    nop

    .line 88
    .end local v12    # "dto\\5":Lcom/bayyari/tv/data/api/models/MovieDto;
    .end local v13    # "$i$a$-map-MovieRepository$refresh$2$entities$1\\5\\88\\0":I
    invoke-interface {v5, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 89
    .end local v11    # "item\\4":Ljava/lang/Object;
    :cond_9
    nop

    .end local v5    # "destination\\4":Ljava/util/Collection;
    .end local v6    # "$this$mapTo\\4":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo\\4\\86":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 86
    nop

    .line 40
    .end local v1    # "$this$map\\3":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\3\\40":I
    nop

    .line 53
    .local v2, "entities":Ljava/util/List;
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-static {v1}, Lcom/bayyari/tv/data/repository/MovieRepository;->access$getMovieDao$p(Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/data/local/dao/MovieDao;

    move-result-object v1

    iget-object v3, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v3}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v3

    move-object v5, v4

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->label:I

    invoke-interface {v1, v3, v5}, Lcom/bayyari/tv/data/local/dao/MovieDao;->clearForServer(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_a

    .line 31
    return-object v8

    .line 53
    :cond_a
    move-object v1, v0

    move-object v0, v2

    .line 54
    .end local v2    # "entities":Ljava/util/List;
    .local v0, "entities":Ljava/util/List;
    .local v1, "movies":Ljava/util/List;
    :goto_7
    iget-object v2, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-static {v2}, Lcom/bayyari/tv/data/repository/MovieRepository;->access$getMovieDao$p(Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/data/local/dao/MovieDao;

    move-result-object v2

    move-object v3, v4

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->L$2:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v4, Lcom/bayyari/tv/data/repository/MovieRepository$refresh$2;->label:I

    invoke-interface {v2, v0, v3}, Lcom/bayyari/tv/data/local/dao/MovieDao;->upsertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_b

    .line 31
    return-object v8

    .line 55
    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 36
    .end local v0    # "entities":Ljava/util/List;
    .local v1, "it\\2":Ljava/lang/Throwable;
    :cond_c
    const/4 v0, 0x0

    .line 37
    .local v0, "$i$a$-getOrElse-MovieRepository$refresh$2$movies$2\\2\\36\\0":I
    const-string v2, "MovieRepository"

    const-string v3, "getVodStreams failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
