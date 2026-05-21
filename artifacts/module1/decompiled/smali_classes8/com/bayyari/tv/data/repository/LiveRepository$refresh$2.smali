.class final Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LiveRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/repository/LiveRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nLiveRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveRepository.kt\ncom/bayyari/tv/data/repository/LiveRepository$refresh$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1563#2:108\n1634#2,3:109\n1193#2,2:113\n1267#2,4:115\n1563#2:119\n1634#2,3:120\n1#3:112\n*S KotlinDebug\n*F\n+ 1 LiveRepository.kt\ncom/bayyari/tv/data/repository/LiveRepository$refresh$2\n*L\n37#1:108\n37#1:109,3\n61#1:113,2\n61#1:115,4\n67#1:119\n67#1:120,3\n*E\n"
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
    c = "com.bayyari.tv.data.repository.LiveRepository$refresh$2"
    f = "LiveRepository.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6
    }
    l = {
        0x22,
        0x34,
        0x35,
        0x38,
        0x3e,
        0x52,
        0x53
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "$this$withContext",
        "response",
        "content",
        "channels",
        "entities",
        "$this$withContext",
        "response",
        "content",
        "channels",
        "entities",
        "$this$withContext",
        "$this$invokeSuspend_u24lambda_u241\\4",
        "$i$a$-runCatching-LiveRepository$refresh$2$categories$1\\4\\56\\0",
        "$this$withContext",
        "categories",
        "categoryMap",
        "$this$invokeSuspend_u24lambda_u244\\9",
        "$i$a$-runCatching-LiveRepository$refresh$2$channels$1\\9\\62\\0",
        "$this$withContext",
        "categories",
        "categoryMap",
        "channels",
        "entities",
        "$this$withContext",
        "categories",
        "categoryMap",
        "channels",
        "entities"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $server:Lcom/bayyari/tv/domain/model/Server;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/data/repository/LiveRepository;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/repository/LiveRepository;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Server;",
            "Lcom/bayyari/tv/data/repository/LiveRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iput-object p2, p0, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

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

    new-instance v0, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-direct {v0, v1, v2, p2}, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;-><init>(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/repository/LiveRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .local v7, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 32
    iget v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->label:I

    const-string v9, "LiveRepository"

    const/16 v10, 0xa

    const-string v11, ""

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "entities":Ljava/util/List;
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "channels":Ljava/util/List;
    iget-object v2, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .local v2, "categoryMap":Ljava/util/Map;
    iget-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .local v3, "categories":Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15

    .end local v0    # "entities":Ljava/util/List;
    .end local v1    # "channels":Ljava/util/List;
    .end local v2    # "categoryMap":Ljava/util/Map;
    .end local v3    # "categories":Ljava/util/List;
    :pswitch_1
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .restart local v0    # "entities":Ljava/util/List;
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .restart local v1    # "channels":Ljava/util/List;
    iget-object v2, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .restart local v2    # "categoryMap":Ljava/util/Map;
    iget-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .restart local v3    # "categories":Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14

    .end local v0    # "entities":Ljava/util/List;
    .end local v1    # "channels":Ljava/util/List;
    .end local v2    # "categoryMap":Ljava/util/Map;
    .end local v3    # "categories":Ljava/util/List;
    :pswitch_2
    iget v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->I$0:I

    .local v0, "$i$a$-runCatching-LiveRepository$refresh$2$channels$1\\9\\62\\0":I
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .local v1, "$this$invokeSuspend_u24lambda_u244\\9":Lkotlinx/coroutines/CoroutineScope;
    iget-object v2, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .restart local v2    # "categoryMap":Ljava/util/Map;
    iget-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .restart local v3    # "categories":Ljava/util/List;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v14, v0

    move-object/from16 v0, p1

    goto/16 :goto_b

    .line 62
    .end local v0    # "$i$a$-runCatching-LiveRepository$refresh$2$channels$1\\9\\62\\0":I
    .end local v1    # "$this$invokeSuspend_u24lambda_u244\\9":Lkotlinx/coroutines/CoroutineScope;
    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 32
    .end local v2    # "categoryMap":Ljava/util/Map;
    .end local v3    # "categories":Ljava/util/List;
    :pswitch_3
    iget v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->I$0:I

    .local v0, "$i$a$-runCatching-LiveRepository$refresh$2$categories$1\\4\\56\\0":I
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .local v1, "$this$invokeSuspend_u24lambda_u241\\4":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v13, v0

    move-object/from16 v0, p1

    goto/16 :goto_6

    .line 56
    .end local v0    # "$i$a$-runCatching-LiveRepository$refresh$2$categories$1\\4\\56\\0":I
    .end local v1    # "$this$invokeSuspend_u24lambda_u241\\4":Lkotlinx/coroutines/CoroutineScope;
    :catchall_1
    move-exception v0

    goto/16 :goto_7

    .line 32
    :pswitch_4
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "entities":Ljava/util/List;
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "channels":Ljava/util/List;
    iget-object v2, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "content":Ljava/lang/String;
    iget-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lretrofit2/Response;

    .local v3, "response":Lretrofit2/Response;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v0    # "entities":Ljava/util/List;
    .end local v1    # "channels":Ljava/util/List;
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "response":Lretrofit2/Response;
    :pswitch_5
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .restart local v0    # "entities":Ljava/util/List;
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .restart local v1    # "channels":Ljava/util/List;
    iget-object v2, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "content":Ljava/lang/String;
    iget-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    check-cast v3, Lretrofit2/Response;

    .restart local v3    # "response":Lretrofit2/Response;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v0    # "entities":Ljava/util/List;
    .end local v1    # "channels":Ljava/util/List;
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "response":Lretrofit2/Response;
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->isM3uOnly()Z

    move-result v0

    .line 56
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 33
    if-eqz v0, :cond_6

    .line 34
    invoke-static {v1}, Lcom/bayyari/tv/data/repository/LiveRepository;->access$getApi$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v0

    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v2, v4

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->label:I

    invoke-interface {v0, v1, v2}, Lcom/bayyari/tv/data/api/XtreamApiService;->fetchRaw(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_0

    .line 32
    return-object v8

    :cond_0
    :goto_0
    check-cast v0, Lretrofit2/Response;

    .line 35
    .local v0, "response":Lretrofit2/Response;
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/ResponseBody;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v11, v1

    .line 36
    .local v11, "content":Ljava/lang/String;
    :goto_2
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {v1}, Lcom/bayyari/tv/data/repository/LiveRepository;->access$getM3uParser$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/util/M3uParser;

    move-result-object v1

    iget-object v2, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lcom/bayyari/tv/util/M3uParser;->parse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 37
    .restart local v1    # "channels":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 108
    .local v3, "$i$f$map\\1\\37":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination\\2":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 109
    .local v9, "$i$f$mapTo\\2\\108":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 110
    .local v12, "item\\2":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lcom/bayyari/tv/domain/model/Channel;

    .local v13, "channel\\3":Lcom/bayyari/tv/domain/model/Channel;
    const/4 v14, 0x0

    .line 38
    .local v14, "$i$a$-map-LiveRepository$refresh$2$entities$1\\3\\110\\0":I
    new-instance v15, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    .line 39
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getStreamId()I

    move-result v16

    .line 40
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getName()Ljava/lang/String;

    move-result-object v17

    .line 41
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getStreamIcon()Ljava/lang/String;

    move-result-object v18

    .line 42
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getCategoryId()Ljava/lang/String;

    move-result-object v19

    .line 43
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getCategoryName()Ljava/lang/String;

    move-result-object v20

    .line 44
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getTvArchive()I

    move-result v21

    .line 45
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getTvArchiveDuration()I

    move-result v22

    .line 46
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getEpgChannelId()Ljava/lang/String;

    move-result-object v23

    .line 47
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getAddedEpochSeconds()J

    move-result-wide v24

    .line 48
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getServerId()I

    move-result v26

    .line 49
    invoke-virtual {v13}, Lcom/bayyari/tv/domain/model/Channel;->getDirectStreamUrl()Ljava/lang/String;

    move-result-object v27

    .line 38
    invoke-direct/range {v15 .. v27}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JILjava/lang/String;)V

    .line 50
    nop

    .line 110
    .end local v13    # "channel\\3":Lcom/bayyari/tv/domain/model/Channel;
    .end local v14    # "$i$a$-map-LiveRepository$refresh$2$entities$1\\3\\110\\0":I
    invoke-interface {v5, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 111
    .end local v12    # "item\\2":Ljava/lang/Object;
    :cond_3
    nop

    .end local v5    # "destination\\2":Ljava/util/Collection;
    .end local v6    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo\\2\\108":I
    check-cast v5, Ljava/util/List;

    .line 108
    nop

    .line 37
    .end local v2    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\1\\37":I
    nop

    .line 52
    .local v5, "entities":Ljava/util/List;
    iget-object v2, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {v2}, Lcom/bayyari/tv/data/repository/LiveRepository;->access$getChannelDao$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/local/dao/ChannelDao;

    move-result-object v2

    iget-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v3}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v3

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    iput-object v5, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$4:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->label:I

    invoke-interface {v2, v3, v6}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->clearForServer(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_4

    .line 32
    return-object v8

    .line 52
    :cond_4
    move-object v3, v0

    move-object v0, v5

    move-object v2, v11

    .line 53
    .end local v5    # "entities":Ljava/util/List;
    .end local v11    # "content":Ljava/lang/String;
    .local v0, "entities":Ljava/util/List;
    .local v2, "content":Ljava/lang/String;
    .local v3, "response":Lretrofit2/Response;
    :goto_4
    iget-object v5, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {v5}, Lcom/bayyari/tv/data/repository/LiveRepository;->access$getChannelDao$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/local/dao/ChannelDao;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$4:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->label:I

    invoke-interface {v5, v0, v6}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->upsertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_5

    .line 32
    return-object v8

    .line 54
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 56
    .end local v0    # "entities":Ljava/util/List;
    .end local v1    # "channels":Ljava/util/List;
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "response":Lretrofit2/Response;
    :cond_6
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v12, v7

    .line 112
    .local v12, "$this$invokeSuspend_u24lambda_u241\\4":Lkotlinx/coroutines/CoroutineScope;
    const/4 v13, 0x0

    .line 56
    .local v13, "$i$a$-runCatching-LiveRepository$refresh$2$categories$1\\4\\56\\0":I
    invoke-static {v1}, Lcom/bayyari/tv/data/repository/LiveRepository;->access$getApi$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v2

    iput-object v7, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    iput v13, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->I$0:I

    const/4 v3, 0x4

    iput v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bayyari/tv/data/api/XtreamApiService$-CC;->getLiveCategories$default(Lcom/bayyari/tv/data/api/XtreamApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_7

    .line 32
    return-object v8

    .line 56
    :cond_7
    move-object v1, v12

    .end local v12    # "$this$invokeSuspend_u24lambda_u241\\4":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "$this$invokeSuspend_u24lambda_u241\\4":Lkotlinx/coroutines/CoroutineScope;
    :goto_6
    check-cast v0, Ljava/util/List;

    .end local v1    # "$this$invokeSuspend_u24lambda_u241\\4":Lkotlinx/coroutines/CoroutineScope;
    .end local v13    # "$i$a$-runCatching-LiveRepository$refresh$2$categories$1\\4\\56\\0":I
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :goto_7
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_9

    .local v1, "it\\5":Ljava/lang/Throwable;
    :cond_8
    const/4 v0, 0x0

    .line 58
    .local v0, "$i$a$-getOrElse-LiveRepository$refresh$2$categories$2\\5\\57\\0":I
    const-string v2, "getLiveCategories failed"

    invoke-static {v9, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 57
    .end local v0    # "$i$a$-getOrElse-LiveRepository$refresh$2$categories$2\\5\\57\\0":I
    .end local v1    # "it\\5":Ljava/lang/Throwable;
    nop

    :goto_9
    check-cast v0, Ljava/util/List;

    .line 56
    move-object v12, v0

    .line 61
    .local v12, "categories":Ljava/util/List;
    move-object v0, v12

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$associate\\6":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 113
    .local v1, "$i$f$associate\\6\\61":I
    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 114
    .local v2, "capacity\\6":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination\\7":Ljava/util/Map;
    move-object v5, v0

    .local v5, "$this$associateTo\\7":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 115
    .local v6, "$i$f$associateTo\\7\\114":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 116
    .local v14, "element\\7":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lcom/bayyari/tv/data/api/models/CategoryDto;

    .local v15, "it\\8":Lcom/bayyari/tv/data/api/models/CategoryDto;
    const/16 v16, 0x0

    .line 61
    .local v16, "$i$a$-associate-LiveRepository$refresh$2$categoryMap$1\\8\\116\\0":I
    invoke-virtual {v15}, Lcom/bayyari/tv/data/api/models/CategoryDto;->getCategoryId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v0

    .end local v0    # "$this$associate\\6":Ljava/lang/Iterable;
    .local v18, "$this$associate\\6":Ljava/lang/Iterable;
    invoke-virtual {v15}, Lcom/bayyari/tv/data/api/models/CategoryDto;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 116
    .end local v15    # "it\\8":Lcom/bayyari/tv/data/api/models/CategoryDto;
    .end local v16    # "$i$a$-associate-LiveRepository$refresh$2$categoryMap$1\\8\\116\\0":I
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    const/16 v10, 0xa

    goto :goto_a

    .line 118
    .end local v14    # "element\\7":Ljava/lang/Object;
    .end local v18    # "$this$associate\\6":Ljava/lang/Iterable;
    .restart local v0    # "$this$associate\\6":Ljava/lang/Iterable;
    :cond_9
    move-object/from16 v18, v0

    .line 114
    .end local v0    # "$this$associate\\6":Ljava/lang/Iterable;
    .end local v3    # "destination\\7":Ljava/util/Map;
    .end local v5    # "$this$associateTo\\7":Ljava/lang/Iterable;
    .end local v6    # "$i$f$associateTo\\7\\114":I
    .restart local v18    # "$this$associate\\6":Ljava/lang/Iterable;
    nop

    .line 61
    .end local v1    # "$i$f$associate\\6\\61":I
    .end local v2    # "capacity\\6":I
    .end local v18    # "$this$associate\\6":Ljava/lang/Iterable;
    move-object v10, v3

    .line 62
    .local v10, "categoryMap":Ljava/util/Map;
    iget-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v13, v7

    .line 112
    .local v13, "$this$invokeSuspend_u24lambda_u244\\9":Lkotlinx/coroutines/CoroutineScope;
    const/4 v14, 0x0

    .line 62
    .local v14, "$i$a$-runCatching-LiveRepository$refresh$2$channels$1\\9\\62\\0":I
    invoke-static {v0}, Lcom/bayyari/tv/data/repository/LiveRepository;->access$getApi$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    iput v14, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->I$0:I

    const/4 v3, 0x5

    iput v3, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/bayyari/tv/data/api/XtreamApiService$-CC;->getLiveStreams$default(Lcom/bayyari/tv/data/api/XtreamApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v8, :cond_a

    .line 32
    return-object v8

    .line 62
    :cond_a
    move-object v2, v10

    move-object v3, v12

    move-object v1, v13

    .end local v10    # "categoryMap":Ljava/util/Map;
    .end local v12    # "categories":Ljava/util/List;
    .end local v13    # "$this$invokeSuspend_u24lambda_u244\\9":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "$this$invokeSuspend_u24lambda_u244\\9":Lkotlinx/coroutines/CoroutineScope;
    .local v2, "categoryMap":Ljava/util/Map;
    .local v3, "categories":Ljava/util/List;
    :goto_b
    :try_start_4
    check-cast v0, Ljava/util/List;

    .end local v1    # "$this$invokeSuspend_u24lambda_u244\\9":Lkotlinx/coroutines/CoroutineScope;
    .end local v14    # "$i$a$-runCatching-LiveRepository$refresh$2$channels$1\\9\\62\\0":I
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_d

    .end local v2    # "categoryMap":Ljava/util/Map;
    .end local v3    # "categories":Ljava/util/List;
    .restart local v10    # "categoryMap":Ljava/util/Map;
    .restart local v12    # "categories":Ljava/util/List;
    :catchall_2
    move-exception v0

    move-object v2, v10

    move-object v3, v12

    .end local v10    # "categoryMap":Ljava/util/Map;
    .end local v12    # "categories":Ljava/util/List;
    .restart local v2    # "categoryMap":Ljava/util/Map;
    .restart local v3    # "categories":Ljava/util/List;
    :goto_c
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :goto_d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_16

    check-cast v0, Ljava/util/List;

    .line 62
    nop

    .line 67
    .local v0, "channels":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map\\11":Ljava/lang/Iterable;
    iget-object v6, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    const/4 v9, 0x0

    .line 119
    .local v9, "$i$f$map\\11\\67":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v1, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination\\12":Ljava/util/Collection;
    move-object v12, v1

    .local v12, "$this$mapTo\\12":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 120
    .local v13, "$i$f$mapTo\\12\\119":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 121
    .local v15, "item\\12":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Lcom/bayyari/tv/data/api/models/LiveStreamDto;

    .local v16, "dto\\13":Lcom/bayyari/tv/data/api/models/LiveStreamDto;
    const/16 v17, 0x0

    .line 68
    .local v17, "$i$a$-map-LiveRepository$refresh$2$entities$2\\13\\121\\0":I
    new-instance v18, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    .line 69
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getStreamId()I

    move-result v19

    .line 70
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getName()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_b

    move-object/from16 v20, v11

    .line 71
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getStreamIcon()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_c

    move-object/from16 v21, v11

    .line 72
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getCategoryId()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_d

    move-object/from16 v22, v11

    .line 73
    :cond_d
    const/16 v31, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_e

    move-object/from16 v23, v11

    goto :goto_f

    :cond_e
    move-object/from16 v23, v5

    .line 74
    :goto_f
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getTvArchive()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v24, v5

    goto :goto_10

    :cond_f
    move/from16 v24, v31

    .line 75
    :goto_10
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getTvArchiveDuration()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v25, v5

    goto :goto_11

    :cond_10
    move/from16 v25, v31

    .line 76
    :goto_11
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getEpgChannelId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    move-object/from16 v26, v11

    goto :goto_12

    :cond_11
    move-object/from16 v26, v5

    .line 77
    :goto_12
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getAdded()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-static {v5}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    goto :goto_13

    :cond_12
    const-wide/16 v27, 0x0

    .line 78
    :goto_13
    invoke-virtual {v6}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v29

    .line 79
    invoke-virtual/range {v16 .. v16}, Lcom/bayyari/tv/data/api/models/LiveStreamDto;->getDirectSource()Ljava/lang/String;

    move-result-object v30

    .line 68
    invoke-direct/range {v18 .. v30}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JILjava/lang/String;)V

    .line 80
    move-object/from16 v5, v18

    .line 121
    .end local v16    # "dto\\13":Lcom/bayyari/tv/data/api/models/LiveStreamDto;
    .end local v17    # "$i$a$-map-LiveRepository$refresh$2$entities$2\\13\\121\\0":I
    invoke-interface {v10, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 122
    .end local v15    # "item\\12":Ljava/lang/Object;
    :cond_13
    nop

    .end local v10    # "destination\\12":Ljava/util/Collection;
    .end local v12    # "$this$mapTo\\12":Ljava/lang/Iterable;
    .end local v13    # "$i$f$mapTo\\12\\119":I
    move-object v5, v10

    check-cast v5, Ljava/util/List;

    .line 119
    nop

    .line 67
    .end local v1    # "$this$map\\11":Ljava/lang/Iterable;
    .end local v9    # "$i$f$map\\11\\67":I
    nop

    .line 82
    .local v5, "entities":Ljava/util/List;
    iget-object v1, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {v1}, Lcom/bayyari/tv/data/repository/LiveRepository;->access$getChannelDao$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/local/dao/ChannelDao;

    move-result-object v1

    iget-object v6, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v6}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v6

    move-object v9, v4

    check-cast v9, Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    iput-object v5, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$4:Ljava/lang/Object;

    const/4 v10, 0x6

    iput v10, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->label:I

    invoke-interface {v1, v6, v9}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->clearForServer(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_14

    .line 32
    return-object v8

    .line 82
    :cond_14
    move-object v1, v0

    move-object v0, v5

    .line 83
    .end local v5    # "entities":Ljava/util/List;
    .local v0, "entities":Ljava/util/List;
    .local v1, "channels":Ljava/util/List;
    :goto_14
    iget-object v5, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->this$0:Lcom/bayyari/tv/data/repository/LiveRepository;

    invoke-static {v5}, Lcom/bayyari/tv/data/repository/LiveRepository;->access$getChannelDao$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/local/dao/ChannelDao;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$2:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->L$4:Ljava/lang/Object;

    const/4 v9, 0x7

    iput v9, v4, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;->label:I

    invoke-interface {v5, v0, v6}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->upsertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_15

    .line 32
    return-object v8

    .line 84
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 63
    .end local v0    # "entities":Ljava/util/List;
    .end local v1    # "channels":Ljava/util/List;
    :cond_16
    const/16 v31, 0x0

    .local v1, "it\\10":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 64
    .local v0, "$i$a$-getOrElse-LiveRepository$refresh$2$channels$2\\10\\63\\0":I
    const-string v5, "getLiveStreams failed"

    invoke-static {v9, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
