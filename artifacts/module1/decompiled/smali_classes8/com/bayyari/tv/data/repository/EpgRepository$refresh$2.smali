.class final Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpgRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/repository/EpgRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEpgRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpgRepository.kt\ncom/bayyari/tv/data/repository/EpgRepository$refresh$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1617#2,9:98\n1869#2:107\n1870#2:109\n1626#2:110\n1563#2:111\n1634#2,3:112\n1#3:108\n*S KotlinDebug\n*F\n+ 1 EpgRepository.kt\ncom/bayyari/tv/data/repository/EpgRepository$refresh$2\n*L\n31#1:98,9\n31#1:107\n31#1:109\n31#1:110\n47#1:111\n47#1:112,3\n31#1:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
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
    c = "com.bayyari.tv.data.repository.EpgRepository$refresh$2"
    f = "EpgRepository.kt"
    i = {
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x1e,
        0x2d,
        0x2e
    }
    m = "invokeSuspend"
    n = {
        "response",
        "listings",
        "response",
        "listings"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $server:Lcom/bayyari/tv/domain/model/Server;

.field final synthetic $streamId:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/data/repository/EpgRepository;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            "Lcom/bayyari/tv/domain/model/Server;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    iput-object p2, p0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iput p3, p0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$streamId:I

    iput p4, p0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$limit:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iget v3, p0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$streamId:I

    iget v4, p0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$limit:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;-><init>(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "listings":Ljava/util/List;
    iget-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/bayyari/tv/data/api/models/EpgResponse;

    .local v2, "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .end local v1    # "listings":Ljava/util/List;
    .end local v2    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    :pswitch_1
    iget-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .local v2, "listings":Ljava/util/List;
    iget-object v3, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/bayyari/tv/data/api/models/EpgResponse;

    .local v3, "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v33, v3

    goto/16 :goto_6

    .end local v2    # "listings":Ljava/util/List;
    .end local v3    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-static {v2}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$getApi$p(Lcom/bayyari/tv/data/repository/EpgRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v4

    iget-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$streamId:I

    iget v8, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$limit:I

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v3, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->label:I

    const/4 v9, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lcom/bayyari/tv/data/api/XtreamApiService$-CC;->getShortEpg$default(Lcom/bayyari/tv/data/api/XtreamApiService;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 29
    return-object v1

    :cond_0
    :goto_0
    check-cast v2, Lcom/bayyari/tv/data/api/models/EpgResponse;

    .line 31
    .local v2, "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    invoke-virtual {v2}, Lcom/bayyari/tv/data/api/models/EpgResponse;->getListings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_1
    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$mapNotNull\\1":Ljava/lang/Iterable;
    iget-object v5, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    iget v9, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$streamId:I

    iget-object v6, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    const/16 v20, 0x0

    .line 98
    .local v20, "$i$f$mapNotNull\\1\\31":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination\\2":Ljava/util/Collection;
    move-object/from16 v21, v4

    .local v21, "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    const/16 v22, 0x0

    .line 106
    .local v22, "$i$f$mapNotNullTo\\2\\98":I
    move-object/from16 v23, v21

    .local v23, "$this$forEach\\3":Ljava/lang/Iterable;
    const/16 v24, 0x0

    .line 107
    .local v24, "$i$f$forEach\\3\\106":I
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .local v26, "element\\3":Ljava/lang/Object;
    move-object/from16 v27, v26

    .local v27, "element\\4":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 106
    .local v28, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\4\\107\\2":I
    move-object/from16 v29, v27

    check-cast v29, Lcom/bayyari/tv/data/api/models/EpgListingDto;

    .local v29, "dto\\6":Lcom/bayyari/tv/data/api/models/EpgListingDto;
    const/16 v30, 0x0

    .line 32
    .local v30, "$i$a$-mapNotNull-EpgRepository$refresh$2$listings$1\\6\\106\\0":I
    invoke-virtual/range {v29 .. v29}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getStartTimestamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getStart()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v8, v10}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$parseTimestamp(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    .line 33
    .local v31, "startMs\\6":Ljava/lang/Long;
    invoke-virtual/range {v29 .. v29}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getStopTimestamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getEnd()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v8, v10}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$parseTimestamp(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v32

    .line 34
    .local v32, "endMs\\6":Ljava/lang/Long;
    if-eqz v31, :cond_5

    if-nez v32, :cond_2

    move-object/from16 v33, v2

    move-object v2, v6

    move-object v3, v7

    goto :goto_4

    .line 35
    :cond_2
    move-object v8, v6

    new-instance v6, Lcom/bayyari/tv/data/local/entities/EpgEntity;

    .line 36
    nop

    .line 37
    invoke-virtual {v8}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v10

    .line 38
    invoke-virtual/range {v29 .. v29}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$decodeBase64(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-virtual/range {v29 .. v29}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$decodeBase64(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 40
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 41
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 42
    invoke-virtual/range {v29 .. v29}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getHasArchive()Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v33, v2

    move/from16 v2, v17

    goto :goto_2

    :cond_3
    move-object/from16 v33, v2

    move/from16 v2, v18

    .end local v2    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    .local v33, "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    :goto_2
    if-ne v2, v3, :cond_4

    move/from16 v17, v3

    goto :goto_3

    :cond_4
    move/from16 v17, v18

    .line 35
    :goto_3
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v34, v7

    move-object v2, v8

    .end local v7    # "destination\\2":Ljava/util/Collection;
    .local v34, "destination\\2":Ljava/util/Collection;
    const-wide/16 v7, 0x0

    move-object/from16 v3, v34

    .end local v34    # "destination\\2":Ljava/util/Collection;
    .local v3, "destination\\2":Ljava/util/Collection;
    invoke-direct/range {v6 .. v19}, Lcom/bayyari/tv/data/local/entities/EpgEntity;-><init>(JIILjava/lang/String;Ljava/lang/String;JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    goto :goto_5

    .line 34
    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v33    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    .restart local v2    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    .restart local v7    # "destination\\2":Ljava/util/Collection;
    :cond_5
    move-object/from16 v33, v2

    move-object v2, v6

    move-object v3, v7

    .end local v2    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    .end local v7    # "destination\\2":Ljava/util/Collection;
    .restart local v3    # "destination\\2":Ljava/util/Collection;
    .restart local v33    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    :goto_4
    const/4 v6, 0x0

    .line 106
    .end local v29    # "dto\\6":Lcom/bayyari/tv/data/api/models/EpgListingDto;
    .end local v30    # "$i$a$-mapNotNull-EpgRepository$refresh$2$listings$1\\6\\106\\0":I
    .end local v31    # "startMs\\6":Ljava/lang/Long;
    .end local v32    # "endMs\\6":Ljava/lang/Long;
    :goto_5
    if-eqz v6, :cond_6

    .line 108
    .local v6, "it\\4":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 106
    .local v7, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\5\\108\\4":I
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v6    # "it\\4":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\5\\108\\4":I
    .end local v27    # "element\\4":Ljava/lang/Object;
    .end local v28    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\4\\107\\2":I
    :cond_6
    move-object v6, v2

    move-object v7, v3

    move-object/from16 v2, v33

    const/4 v3, 0x1

    .end local v26    # "element\\3":Ljava/lang/Object;
    goto/16 :goto_1

    .line 109
    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v33    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    .restart local v2    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    .local v7, "destination\\2":Ljava/util/Collection;
    :cond_7
    move-object/from16 v33, v2

    move-object v3, v7

    .line 110
    .end local v2    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    .end local v7    # "destination\\2":Ljava/util/Collection;
    .end local v23    # "$this$forEach\\3":Ljava/lang/Iterable;
    .end local v24    # "$i$f$forEach\\3\\106":I
    .restart local v3    # "destination\\2":Ljava/util/Collection;
    .restart local v33    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    nop

    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v21    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    .end local v22    # "$i$f$mapNotNullTo\\2\\98":I
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 98
    nop

    .line 31
    .end local v4    # "$this$mapNotNull\\1":Ljava/lang/Iterable;
    .end local v20    # "$i$f$mapNotNull\\1\\31":I
    nop

    .line 45
    .local v2, "listings":Ljava/util/List;
    iget-object v3, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-static {v3}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$getEpgDao$p(Lcom/bayyari/tv/data/repository/EpgRepository;)Lcom/bayyari/tv/data/local/dao/EpgDao;

    move-result-object v3

    iget-object v4, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v4}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v4

    iget v5, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->$streamId:I

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static/range {v33 .. v33}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->label:I

    invoke-interface {v3, v4, v5, v6}, Lcom/bayyari/tv/data/local/dao/EpgDao;->clearForStream(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    .line 29
    return-object v1

    .line 46
    :cond_8
    :goto_6
    iget-object v3, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-static {v3}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$getEpgDao$p(Lcom/bayyari/tv/data/repository/EpgRepository;)Lcom/bayyari/tv/data/local/dao/EpgDao;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static/range {v33 .. v33}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->label:I

    invoke-interface {v3, v2, v4}, Lcom/bayyari/tv/data/local/dao/EpgDao;->upsertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    .line 29
    return-object v1

    .line 46
    :cond_9
    move-object v1, v2

    move-object/from16 v2, v33

    .line 47
    .end local v33    # "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    .restart local v1    # "listings":Ljava/util/List;
    .local v2, "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    :goto_7
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map\\7":Ljava/lang/Iterable;
    iget-object v4, v0, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    const/4 v5, 0x0

    .line 111
    .local v5, "$i$f$map\\7\\47":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination\\8":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$mapTo\\8":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 112
    .local v8, "$i$f$mapTo\\8\\111":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 113
    .local v10, "item\\8":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lcom/bayyari/tv/data/local/entities/EpgEntity;

    .local v11, "it\\9":Lcom/bayyari/tv/data/local/entities/EpgEntity;
    const/4 v12, 0x0

    .line 47
    .local v12, "$i$a$-map-EpgRepository$refresh$2$1\\9\\113\\0":I
    invoke-static {v4, v11}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$toDomain(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/data/local/entities/EpgEntity;)Lcom/bayyari/tv/domain/model/EpgProgram;

    move-result-object v11

    .line 113
    .end local v11    # "it\\9":Lcom/bayyari/tv/data/local/entities/EpgEntity;
    .end local v12    # "$i$a$-map-EpgRepository$refresh$2$1\\9\\113\\0":I
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 114
    .end local v10    # "item\\8":Ljava/lang/Object;
    :cond_a
    nop

    .end local v6    # "destination\\8":Ljava/util/Collection;
    .end local v7    # "$this$mapTo\\8":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo\\8\\111":I
    move-object v4, v6

    check-cast v4, Ljava/util/List;

    .line 111
    nop

    .line 47
    .end local v3    # "$this$map\\7":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map\\7\\47":I
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
