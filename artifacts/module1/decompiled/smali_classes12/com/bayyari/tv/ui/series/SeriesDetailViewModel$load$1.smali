.class final Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SeriesDetailViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->load(I)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeriesDetailViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeriesDetailViewModel.kt\ncom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1563#2:69\n1634#2,3:70\n1193#2,2:73\n1267#2,2:75\n1563#2:77\n1634#2,3:78\n1270#2:81\n*S KotlinDebug\n*F\n+ 1 SeriesDetailViewModel.kt\ncom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1\n*L\n36#1:69\n36#1:70,3\n46#1:73,2\n46#1:75,2\n48#1:77\n48#1:78,3\n46#1:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.bayyari.tv.ui.series.SeriesDetailViewModel$load$1"
    f = "SeriesDetailViewModel.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x22,
        0x23
    }
    m = "invokeSuspend"
    n = {
        "server",
        "server"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $seriesId:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    iput p2, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->$seriesId:I

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

    new-instance v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    iget v2, p0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->$seriesId:I

    invoke-direct {v0, v1, v2, p2}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;-><init>(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/bayyari/tv/domain/model/Server;

    .local v1, "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_1

    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_1
    iget-object v2, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/bayyari/tv/domain/model/Server;

    .local v4, "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    move-object/from16 v5, p1

    goto :goto_0

    .end local v4    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iget-object v2, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    invoke-static {v2}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->access$getAuthRepository$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 34
    .local v2, "server":Lcom/bayyari/tv/domain/model/Server;
    :cond_0
    iget-object v4, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    invoke-static {v4}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->access$get_series$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iget-object v5, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    invoke-static {v5}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->access$getSeriesRepository$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;

    move-result-object v5

    invoke-virtual {v2}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v6

    iget v7, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->$seriesId:I

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->label:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/bayyari/tv/data/repository/SeriesRepository;->getSeries(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 32
    return-object v1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 35
    iget-object v4, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    invoke-static {v4}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->access$getSeriesRepository$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;

    move-result-object v4

    iget v5, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->$seriesId:I

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->label:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/bayyari/tv/data/repository/SeriesRepository;->getSeriesInfo(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_2

    .line 32
    return-object v1

    .line 35
    :cond_2
    move-object v1, v2

    .line 32
    .end local v2    # "server":Lcom/bayyari/tv/domain/model/Server;
    .restart local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :goto_1
    move-object v2, v4

    check-cast v2, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;

    .line 36
    .local v2, "info":Lcom/bayyari/tv/data/api/models/SeriesInfoDto;
    invoke-virtual {v2}, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->getSeasons()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_3
    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 69
    .local v5, "$i$f$map\\1\\36":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination\\2":Ljava/util/Collection;
    move-object v8, v4

    .local v8, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 70
    .local v9, "$i$f$mapTo\\2\\69":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v13, ""

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 71
    .local v11, "item\\2":Ljava/lang/Object;
    move-object v14, v11

    check-cast v14, Lcom/bayyari/tv/data/api/models/SeasonDto;

    .local v14, "it\\3":Lcom/bayyari/tv/data/api/models/SeasonDto;
    const/4 v15, 0x0

    .line 37
    .local v15, "$i$a$-map-SeriesDetailViewModel$load$1$seasons$1\\3\\71\\0":I
    new-instance v3, Lcom/bayyari/tv/domain/model/Season;

    .line 38
    invoke-virtual {v14}, Lcom/bayyari/tv/data/api/models/SeasonDto;->getSeasonNumber()Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v12, v16

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 39
    :goto_3
    invoke-virtual {v14}, Lcom/bayyari/tv/data/api/models/SeasonDto;->getName()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_5

    move-object v7, v13

    goto :goto_4

    :cond_5
    move-object/from16 v7, v17

    .line 40
    :goto_4
    invoke-virtual {v14}, Lcom/bayyari/tv/data/api/models/SeasonDto;->getEpisodeCount()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v17, v1

    move/from16 v1, v16

    goto :goto_5

    :cond_6
    move-object/from16 v17, v1

    const/4 v1, 0x0

    .line 41
    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    .local v17, "server":Lcom/bayyari/tv/domain/model/Server;
    :goto_5
    invoke-virtual {v14}, Lcom/bayyari/tv/data/api/models/SeasonDto;->getCover()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v13, v16

    .line 37
    :goto_6
    invoke-direct {v3, v12, v7, v1, v13}, Lcom/bayyari/tv/domain/model/Season;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 42
    nop

    .line 71
    .end local v14    # "it\\3":Lcom/bayyari/tv/data/api/models/SeasonDto;
    .end local v15    # "$i$a$-map-SeriesDetailViewModel$load$1$seasons$1\\3\\71\\0":I
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    const/4 v3, 0x0

    const/16 v7, 0xa

    goto :goto_2

    .line 72
    .end local v11    # "item\\2":Ljava/lang/Object;
    .end local v17    # "server":Lcom/bayyari/tv/domain/model/Server;
    .restart local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :cond_8
    move-object/from16 v17, v1

    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    .end local v6    # "destination\\2":Ljava/util/Collection;
    .end local v8    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo\\2\\69":I
    .restart local v17    # "server":Lcom/bayyari/tv/domain/model/Server;
    move-object v1, v6

    check-cast v1, Ljava/util/List;

    .line 69
    nop

    .line 36
    .end local v4    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map\\1\\36":I
    nop

    .line 44
    .local v1, "seasons":Ljava/util/List;
    iget-object v3, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    invoke-static {v3}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->access$get_seasons$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v2}, Lcom/bayyari/tv/data/api/models/SeriesInfoDto;->getEpisodes()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 46
    nop

    .local v3, "$this$associate\\4":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 73
    .local v4, "$i$f$associate\\4\\46":I
    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 74
    .local v5, "capacity\\4":I
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    .local v6, "destination\\5":Ljava/util/Map;
    move-object v7, v3

    .local v7, "$this$associateTo\\5":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 75
    .local v8, "$i$f$associateTo\\5\\74":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 76
    .local v10, "element\\5":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/util/Map$Entry;

    const/4 v12, 0x0

    .local v12, "$i$a$-associate-SeriesDetailViewModel$load$1$episodes$1\\6\\76\\0":I
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "seasonKey\\6":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 47
    .local v11, "eps\\6":Ljava/util/List;
    invoke-static {v14}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_8

    :cond_a
    const/4 v15, 0x0

    .line 48
    .local v15, "seasonNumber\\6":I
    :goto_8
    move-object/from16 v19, v1

    .end local v1    # "seasons":Ljava/util/List;
    .local v19, "seasons":Ljava/util/List;
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v2

    .end local v2    # "info":Lcom/bayyari/tv/data/api/models/SeriesInfoDto;
    .local v20, "info":Lcom/bayyari/tv/data/api/models/SeriesInfoDto;
    move-object v2, v11

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\7":Ljava/lang/Iterable;
    const/16 v21, 0x0

    .line 77
    .local v21, "$i$f$map\\7\\48":I
    move-object/from16 v22, v3

    .end local v3    # "$this$associate\\4":Ljava/lang/Iterable;
    .local v22, "$this$associate\\4":Ljava/lang/Iterable;
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v23, v4

    move/from16 v18, v5

    const/16 v4, 0xa

    .end local v4    # "$i$f$associate\\4\\46":I
    .end local v5    # "capacity\\4":I
    .local v18, "capacity\\4":I
    .local v23, "$i$f$associate\\4\\46":I
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination\\8":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo\\8":Ljava/lang/Iterable;
    const/16 v24, 0x0

    .line 78
    .local v24, "$i$f$mapTo\\8\\77":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1d

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .line 79
    .local v26, "item\\8":Ljava/lang/Object;
    move-object/from16 v27, v26

    check-cast v27, Lcom/bayyari/tv/data/api/models/EpisodeDto;

    .local v27, "ep\\9":Lcom/bayyari/tv/data/api/models/EpisodeDto;
    const/16 v28, 0x0

    .line 49
    .local v28, "$i$a$-map-SeriesDetailViewModel$load$1$episodes$1$1\\9\\79\\6":I
    new-instance v29, Lcom/bayyari/tv/domain/model/Episode;

    .line 50
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getId()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_b

    invoke-static/range {v30 .. v30}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    if-eqz v30, :cond_b

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto :goto_a

    :cond_b
    const/16 v30, 0x0

    .line 51
    :goto_a
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getSeason()Ljava/lang/Integer;

    move-result-object v31

    if-eqz v31, :cond_c

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto :goto_b

    :cond_c
    move/from16 v31, v15

    .line 52
    :goto_b
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getEpisodeNum()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v40, v2

    .end local v2    # "$this$map\\7":Ljava/lang/Iterable;
    .local v40, "$this$map\\7":Ljava/lang/Iterable;
    instance-of v2, v4, Ljava/lang/Number;

    if-eqz v2, :cond_d

    check-cast v4, Ljava/lang/Number;

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_d
    move/from16 v32, v2

    goto :goto_10

    .line 53
    :cond_e
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getEpisodeNum()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_f

    check-cast v2, Ljava/lang/String;

    goto :goto_e

    :cond_f
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_10

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_f

    :cond_10
    const/4 v2, 0x0

    .line 52
    :goto_f
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_d

    .line 53
    :cond_11
    const/16 v32, 0x0

    .line 54
    :goto_10
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    move-object/from16 v33, v13

    goto :goto_11

    :cond_12
    move-object/from16 v33, v2

    .line 55
    :goto_11
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getInfo()Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/bayyari/tv/data/api/models/EpisodeInfo;->getPlot()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_13
    const/4 v2, 0x0

    :goto_12
    if-nez v2, :cond_14

    move-object/from16 v34, v13

    goto :goto_13

    :cond_14
    move-object/from16 v34, v2

    .line 56
    :goto_13
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getInfo()Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/bayyari/tv/data/api/models/EpisodeInfo;->getDurationSecs()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v35, v2

    goto :goto_14

    :cond_15
    const/16 v35, 0x0

    .line 57
    :goto_14
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getInfo()Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/bayyari/tv/data/api/models/EpisodeInfo;->getRating()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_16
    const/4 v2, 0x0

    :goto_15
    if-nez v2, :cond_17

    move-object/from16 v36, v13

    goto :goto_16

    :cond_17
    move-object/from16 v36, v2

    .line 58
    :goto_16
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getInfo()Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/bayyari/tv/data/api/models/EpisodeInfo;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_18
    const/4 v2, 0x0

    :goto_17
    if-nez v2, :cond_19

    move-object/from16 v37, v13

    goto :goto_18

    :cond_19
    move-object/from16 v37, v2

    .line 59
    :goto_18
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getContainerExtension()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    move-object/from16 v38, v13

    goto :goto_19

    :cond_1a
    move-object/from16 v38, v2

    .line 60
    :goto_19
    invoke-virtual/range {v27 .. v27}, Lcom/bayyari/tv/data/api/models/EpisodeDto;->getInfo()Lcom/bayyari/tv/data/api/models/EpisodeInfo;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/bayyari/tv/data/api/models/EpisodeInfo;->getMovieImage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_1b
    const/4 v2, 0x0

    :goto_1a
    if-nez v2, :cond_1c

    move-object/from16 v39, v13

    goto :goto_1b

    :cond_1c
    move-object/from16 v39, v2

    .line 49
    :goto_1b
    invoke-direct/range {v29 .. v39}, Lcom/bayyari/tv/domain/model/Episode;-><init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    move-object/from16 v2, v29

    .line 79
    .end local v27    # "ep\\9":Lcom/bayyari/tv/data/api/models/EpisodeDto;
    .end local v28    # "$i$a$-map-SeriesDetailViewModel$load$1$episodes$1$1\\9\\79\\6":I
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v40

    const/16 v4, 0xa

    goto/16 :goto_9

    .line 80
    .end local v26    # "item\\8":Ljava/lang/Object;
    .end local v40    # "$this$map\\7":Ljava/lang/Iterable;
    .restart local v2    # "$this$map\\7":Ljava/lang/Iterable;
    :cond_1d
    move-object/from16 v40, v2

    .end local v2    # "$this$map\\7":Ljava/lang/Iterable;
    .end local v3    # "destination\\8":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\8":Ljava/lang/Iterable;
    .end local v24    # "$i$f$mapTo\\8\\77":I
    .restart local v40    # "$this$map\\7":Ljava/lang/Iterable;
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 77
    nop

    .line 48
    .end local v21    # "$i$f$map\\7\\48":I
    .end local v40    # "$this$map\\7":Ljava/lang/Iterable;
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 62
    .end local v15    # "seasonNumber\\6":I
    nop

    .line 76
    .end local v11    # "eps\\6":Ljava/util/List;
    .end local v12    # "$i$a$-associate-SeriesDetailViewModel$load$1$episodes$1\\6\\76\\0":I
    .end local v14    # "seasonKey\\6":Ljava/lang/String;
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v5, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    move/from16 v4, v23

    goto/16 :goto_7

    .line 81
    .end local v10    # "element\\5":Ljava/lang/Object;
    .end local v18    # "capacity\\4":I
    .end local v19    # "seasons":Ljava/util/List;
    .end local v20    # "info":Lcom/bayyari/tv/data/api/models/SeriesInfoDto;
    .end local v22    # "$this$associate\\4":Ljava/lang/Iterable;
    .end local v23    # "$i$f$associate\\4\\46":I
    .restart local v1    # "seasons":Ljava/util/List;
    .local v2, "info":Lcom/bayyari/tv/data/api/models/SeriesInfoDto;
    .local v3, "$this$associate\\4":Ljava/lang/Iterable;
    .restart local v4    # "$i$f$associate\\4\\46":I
    .local v5, "capacity\\4":I
    :cond_1e
    move-object/from16 v19, v1

    .line 74
    .end local v1    # "seasons":Ljava/util/List;
    .end local v6    # "destination\\5":Ljava/util/Map;
    .end local v7    # "$this$associateTo\\5":Ljava/lang/Iterable;
    .end local v8    # "$i$f$associateTo\\5\\74":I
    .restart local v19    # "seasons":Ljava/util/List;
    nop

    .line 46
    .end local v3    # "$this$associate\\4":Ljava/lang/Iterable;
    .end local v4    # "$i$f$associate\\4\\46":I
    .end local v5    # "capacity\\4":I
    nop

    .line 45
    nop

    .line 64
    .local v6, "episodes":Ljava/util/Map;
    iget-object v1, v0, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;

    invoke-static {v1}, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;->access$get_episodesBySeason$p(Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 65
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
