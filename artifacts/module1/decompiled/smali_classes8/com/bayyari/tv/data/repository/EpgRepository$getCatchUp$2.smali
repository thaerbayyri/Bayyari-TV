.class final Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpgRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/repository/EpgRepository;->getCatchUp(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nEpgRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpgRepository.kt\ncom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1617#2,9:98\n1869#2:107\n1870#2:109\n1626#2:110\n1#3:108\n*S KotlinDebug\n*F\n+ 1 EpgRepository.kt\ncom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2\n*L\n53#1:98,9\n53#1:107\n53#1:109\n53#1:110\n53#1:108\n*E\n"
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
    c = "com.bayyari.tv.data.repository.EpgRepository$getCatchUp$2"
    f = "EpgRepository.kt"
    i = {}
    l = {
        0x34
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $server:Lcom/bayyari/tv/domain/model/Server;

.field final synthetic $streamId:I

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/data/repository/EpgRepository;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/data/repository/EpgRepository;",
            "Lcom/bayyari/tv/domain/model/Server;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    iput-object p2, p0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iput p3, p0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->$streamId:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iget v3, p0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->$streamId:I

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;-><init>(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iget-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-static {v2}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$getApi$p(Lcom/bayyari/tv/data/repository/EpgRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v4

    iget-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->$streamId:I

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput v3, v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->label:I

    const/4 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/bayyari/tv/data/api/XtreamApiService$-CC;->getSimpleDataTable$default(Lcom/bayyari/tv/data/api/XtreamApiService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 51
    return-object v1

    :cond_0
    :goto_0
    move-object v1, v2

    check-cast v1, Lcom/bayyari/tv/data/api/models/EpgResponse;

    .line 53
    .local v1, "response":Lcom/bayyari/tv/data/api/models/EpgResponse;
    invoke-virtual {v1}, Lcom/bayyari/tv/data/api/models/EpgResponse;->getListings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_1
    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapNotNull\\1":Ljava/lang/Iterable;
    iget-object v4, v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->this$0:Lcom/bayyari/tv/data/repository/EpgRepository;

    iget v6, v0, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;->$streamId:I

    const/4 v14, 0x0

    .line 98
    .local v14, "$i$f$mapNotNull\\1\\53":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v5

    check-cast v15, Ljava/util/Collection;

    .local v15, "destination\\2":Ljava/util/Collection;
    move-object/from16 v16, v2

    .local v16, "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 106
    .local v17, "$i$f$mapNotNullTo\\2\\98":I
    move-object/from16 v18, v16

    .local v18, "$this$forEach\\3":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 107
    .local v19, "$i$f$forEach\\3\\106":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "element\\3":Ljava/lang/Object;
    move-object/from16 v22, v21

    .local v22, "element\\4":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 106
    .local v23, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\4\\107\\2":I
    move-object/from16 v24, v22

    check-cast v24, Lcom/bayyari/tv/data/api/models/EpgListingDto;

    .local v24, "dto\\6":Lcom/bayyari/tv/data/api/models/EpgListingDto;
    const/16 v25, 0x0

    .line 54
    .local v25, "$i$a$-mapNotNull-EpgRepository$getCatchUp$2$1\\6\\106\\0":I
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getStartTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getStart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$parseTimestamp(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 55
    .local v26, "startMs\\6":Ljava/lang/Long;
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getStopTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getEnd()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$parseTimestamp(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 56
    .local v27, "endMs\\6":Ljava/lang/Long;
    const/4 v5, 0x0

    if-eqz v26, :cond_5

    if-nez v27, :cond_2

    goto :goto_3

    .line 57
    :cond_2
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getHasArchive()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eq v7, v3, :cond_4

    goto :goto_3

    .line 58
    :cond_4
    new-instance v5, Lcom/bayyari/tv/domain/model/EpgProgram;

    .line 59
    nop

    .line 60
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$decodeBase64(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual/range {v24 .. v24}, Lcom/bayyari/tv/data/api/models/EpgListingDto;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/bayyari/tv/data/repository/EpgRepository;->access$decodeBase64(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 63
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 64
    nop

    .line 58
    const/4 v13, 0x1

    invoke-direct/range {v5 .. v13}, Lcom/bayyari/tv/domain/model/EpgProgram;-><init>(ILjava/lang/String;Ljava/lang/String;JJZ)V

    .line 65
    nop

    .line 106
    .end local v24    # "dto\\6":Lcom/bayyari/tv/data/api/models/EpgListingDto;
    .end local v25    # "$i$a$-mapNotNull-EpgRepository$getCatchUp$2$1\\6\\106\\0":I
    .end local v26    # "startMs\\6":Ljava/lang/Long;
    .end local v27    # "endMs\\6":Ljava/lang/Long;
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 108
    .local v5, "it\\4":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 106
    .local v7, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\5\\108\\4":I
    invoke-interface {v15, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v5    # "it\\4":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\5\\108\\4":I
    .end local v22    # "element\\4":Ljava/lang/Object;
    .end local v23    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\4\\107\\2":I
    :cond_6
    nop

    .end local v21    # "element\\3":Ljava/lang/Object;
    goto :goto_1

    .line 109
    :cond_7
    nop

    .line 110
    .end local v18    # "$this$forEach\\3":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEach\\3\\106":I
    nop

    .end local v15    # "destination\\2":Ljava/util/Collection;
    .end local v16    # "$this$mapNotNullTo\\2":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapNotNullTo\\2\\98":I
    move-object v3, v15

    check-cast v3, Ljava/util/List;

    .line 98
    nop

    .line 66
    .end local v2    # "$this$mapNotNull\\1":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapNotNull\\1\\53":I
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
