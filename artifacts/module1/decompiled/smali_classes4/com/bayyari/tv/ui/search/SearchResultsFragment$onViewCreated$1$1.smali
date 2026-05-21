.class final Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchResultsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchResultsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchResultsFragment.kt\ncom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1563#2:73\n1634#2,3:74\n1563#2:77\n1634#2,3:78\n1563#2:81\n1634#2,3:82\n*S KotlinDebug\n*F\n+ 1 SearchResultsFragment.kt\ncom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1\n*L\n57#1:73\n57#1:74,3\n58#1:77\n58#1:78,3\n59#1:81\n59#1:82,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;"
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
    c = "com.bayyari.tv.ui.search.SearchResultsFragment$onViewCreated$1$1"
    f = "SearchResultsFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $allAdapter:Lcom/bayyari/tv/ui/search/SearchAllAdapter;

.field final synthetic $liveAdapter:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

.field final synthetic $movieAdapter:Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

.field final synthetic $seriesAdapter:Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

.field final synthetic $tab:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lcom/bayyari/tv/ui/search/SearchAllAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;",
            "Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;",
            "Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;",
            "Lcom/bayyari/tv/ui/search/SearchAllAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$tab:Ljava/lang/String;

    iput-object p2, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$liveAdapter:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    iput-object p3, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$movieAdapter:Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

    iput-object p4, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$seriesAdapter:Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

    iput-object p5, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$allAdapter:Lcom/bayyari/tv/ui/search/SearchAllAdapter;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$tab:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$liveAdapter:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    iget-object v3, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$movieAdapter:Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

    iget-object v4, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$seriesAdapter:Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

    iget-object v5, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$allAdapter:Lcom/bayyari/tv/ui/search/SearchAllAdapter;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;-><init>(Ljava/lang/String;Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;Lcom/bayyari/tv/ui/search/SearchAllAdapter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->invoke(Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;

    .local v0, "result":Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 51
    iget v1, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$tab:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v2, "live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$liveAdapter:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->getLive()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;->submitList(Ljava/util/List;)V

    goto/16 :goto_5

    .line 52
    :sswitch_1
    const-string v2, "series"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$seriesAdapter:Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->getSeries()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bayyari/tv/ui/common/adapter/SeriesAdapter;->submitList(Ljava/util/List;)V

    goto/16 :goto_5

    .line 52
    :sswitch_2
    const-string v2, "movies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$movieAdapter:Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;

    invoke-virtual {v0}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->getMovies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bayyari/tv/ui/common/adapter/MovieAdapter;->submitList(Ljava/util/List;)V

    goto/16 :goto_5

    .line 57
    :goto_1
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->getLive()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$f$map\\1\\57":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination\\2":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 74
    .local v6, "$i$f$mapTo\\2\\73":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 75
    .local v8, "item\\2":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/bayyari/tv/domain/model/Channel;

    .local v9, "it\\3":Lcom/bayyari/tv/domain/model/Channel;
    const/4 v10, 0x0

    .line 57
    .local v10, "$i$a$-map-SearchResultsFragment$onViewCreated$1$1$items$1\\3\\75\\0":I
    new-instance v11, Lcom/bayyari/tv/ui/search/SearchItem$Live;

    invoke-virtual {v9}, Lcom/bayyari/tv/domain/model/Channel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/bayyari/tv/ui/search/SearchItem$Live;-><init>(Ljava/lang/String;)V

    .line 75
    .end local v9    # "it\\3":Lcom/bayyari/tv/domain/model/Channel;
    .end local v10    # "$i$a$-map-SearchResultsFragment$onViewCreated$1$1$items$1\\3\\75\\0":I
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    .end local v8    # "item\\2":Ljava/lang/Object;
    :cond_3
    nop

    .end local v3    # "destination\\2":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo\\2\\73":I
    check-cast v3, Ljava/util/List;

    .line 73
    nop

    .end local v1    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map\\1\\57":I
    check-cast v3, Ljava/util/Collection;

    .line 58
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->getMovies()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map\\4":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$f$map\\4\\58":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination\\5":Ljava/util/Collection;
    move-object v6, v1

    .local v6, "$this$mapTo\\5":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 78
    .local v7, "$i$f$mapTo\\5\\77":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 79
    .local v9, "item\\5":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/bayyari/tv/domain/model/Movie;

    .local v10, "it\\6":Lcom/bayyari/tv/domain/model/Movie;
    const/4 v11, 0x0

    .line 58
    .local v11, "$i$a$-map-SearchResultsFragment$onViewCreated$1$1$items$2\\6\\79\\0":I
    new-instance v12, Lcom/bayyari/tv/ui/search/SearchItem$Movie;

    invoke-virtual {v10}, Lcom/bayyari/tv/domain/model/Movie;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/bayyari/tv/ui/search/SearchItem$Movie;-><init>(Ljava/lang/String;)V

    .line 79
    .end local v10    # "it\\6":Lcom/bayyari/tv/domain/model/Movie;
    .end local v11    # "$i$a$-map-SearchResultsFragment$onViewCreated$1$1$items$2\\6\\79\\0":I
    invoke-interface {v5, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 80
    .end local v9    # "item\\5":Ljava/lang/Object;
    :cond_4
    nop

    .end local v5    # "destination\\5":Ljava/util/Collection;
    .end local v6    # "$this$mapTo\\5":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo\\5\\77":I
    check-cast v5, Ljava/util/List;

    .line 77
    nop

    .end local v1    # "$this$map\\4":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map\\4\\58":I
    check-cast v5, Ljava/lang/Iterable;

    .line 57
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 59
    invoke-virtual {v0}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;->getSeries()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\7":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 81
    .local v3, "$i$f$map\\7\\59":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v5

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination\\8":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo\\8":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 82
    .local v6, "$i$f$mapTo\\8\\81":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 83
    .local v8, "item\\8":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/bayyari/tv/domain/model/Series;

    .local v9, "it\\9":Lcom/bayyari/tv/domain/model/Series;
    const/4 v10, 0x0

    .line 59
    .local v10, "$i$a$-map-SearchResultsFragment$onViewCreated$1$1$items$3\\9\\83\\0":I
    new-instance v11, Lcom/bayyari/tv/ui/search/SearchItem$Series;

    invoke-virtual {v9}, Lcom/bayyari/tv/domain/model/Series;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/bayyari/tv/ui/search/SearchItem$Series;-><init>(Ljava/lang/String;)V

    .line 83
    .end local v9    # "it\\9":Lcom/bayyari/tv/domain/model/Series;
    .end local v10    # "$i$a$-map-SearchResultsFragment$onViewCreated$1$1$items$3\\9\\83\\0":I
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 84
    .end local v8    # "item\\8":Ljava/lang/Object;
    :cond_5
    nop

    .end local v4    # "destination\\8":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\8":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo\\8\\81":I
    check-cast v4, Ljava/util/List;

    .line 81
    nop

    .end local v2    # "$this$map\\7":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\7\\59":I
    check-cast v4, Ljava/lang/Iterable;

    .line 57
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "items":Ljava/util/List;
    iget-object v2, p0, Lcom/bayyari/tv/ui/search/SearchResultsFragment$onViewCreated$1$1;->$allAdapter:Lcom/bayyari/tv/ui/search/SearchAllAdapter;

    invoke-virtual {v2, v1}, Lcom/bayyari/tv/ui/search/SearchAllAdapter;->submitList(Ljava/util/List;)V

    .line 63
    .end local v1    # "items":Ljava/util/List;
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3fac58bd -> :sswitch_2
        -0x35fe0189 -> :sswitch_1
        0x32b0ec -> :sswitch_0
    .end sparse-switch
.end method
