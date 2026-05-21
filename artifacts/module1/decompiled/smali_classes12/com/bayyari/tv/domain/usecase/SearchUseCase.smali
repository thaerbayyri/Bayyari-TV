.class public final Lcom/bayyari/tv/domain/usecase/SearchUseCase;
.super Ljava/lang/Object;
.source "SearchUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJB\u0010\n\u001a&\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000c0\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bayyari/tv/domain/usecase/SearchUseCase;",
        "",
        "liveRepository",
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        "movieRepository",
        "Lcom/bayyari/tv/data/repository/MovieRepository;",
        "seriesRepository",
        "Lcom/bayyari/tv/data/repository/SeriesRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V",
        "searchAll",
        "Lkotlin/Triple;",
        "",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "Lcom/bayyari/tv/domain/model/Movie;",
        "Lcom/bayyari/tv/domain/model/Series;",
        "serverId",
        "",
        "query",
        "",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

.field private final movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

.field private final seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V
    .locals 1
    .param p1, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p2, "movieRepository"    # Lcom/bayyari/tv/data/repository/MovieRepository;
    .param p3, "seriesRepository"    # Lcom/bayyari/tv/data/repository/SeriesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "liveRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "movieRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seriesRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 13
    iput-object p2, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    .line 14
    iput-object p3, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    .line 11
    return-void
.end method


# virtual methods
.method public final searchAll(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "serverId"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Triple<",
            "+",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Movie;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Series;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;

    iget v1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;-><init>(Lcom/bayyari/tv/domain/usecase/SearchUseCase;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 16
    iget v3, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->label:I

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
    iget p1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->I$0:I

    iget-object v2, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .local v2, "movies":Ljava/util/List;
    iget-object v3, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .local v3, "live":Ljava/util/List;
    iget-object v4, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$0:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    goto :goto_3

    .end local v2    # "movies":Ljava/util/List;
    .end local v3    # "live":Ljava/util/List;
    :pswitch_1
    iget p1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->I$0:I

    iget-object v3, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .restart local v3    # "live":Ljava/util/List;
    iget-object v4, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$0:Ljava/lang/Object;

    move-object p2, v4

    check-cast p2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_2

    .end local v3    # "live":Ljava/util/List;
    :pswitch_2
    iget p1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->I$0:I

    iget-object v3, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$0:Ljava/lang/Object;

    move-object p2, v3

    check-cast p2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    iget-object v3, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    iput-object p2, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->I$0:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lcom/bayyari/tv/data/repository/LiveRepository;->search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 16
    return-object v2

    :cond_1
    :goto_1
    check-cast v3, Ljava/util/List;

    .line 18
    .restart local v3    # "live":Ljava/util/List;
    iget-object v4, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase;->movieRepository:Lcom/bayyari/tv/data/repository/MovieRepository;

    iput-object p2, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->I$0:I

    const/4 v5, 0x2

    iput v5, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->label:I

    invoke-virtual {v4, p1, p2, v0}, Lcom/bayyari/tv/data/repository/MovieRepository;->search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_2

    .line 16
    return-object v2

    :cond_2
    :goto_2
    check-cast v4, Ljava/util/List;

    .line 19
    .local v4, "movies":Ljava/util/List;
    iget-object v5, p0, Lcom/bayyari/tv/domain/usecase/SearchUseCase;->seriesRepository:Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->L$2:Ljava/lang/Object;

    iput p1, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->I$0:I

    const/4 v6, 0x3

    iput v6, v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase$searchAll$1;->label:I

    invoke-virtual {v5, p1, p2, v0}, Lcom/bayyari/tv/data/repository/SeriesRepository;->search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_3

    .line 16
    return-object v2

    .line 19
    :cond_3
    move-object v2, v4

    .line 16
    .end local v4    # "movies":Ljava/util/List;
    .restart local v2    # "movies":Ljava/util/List;
    :goto_3
    move-object v4, v5

    check-cast v4, Ljava/util/List;

    .line 20
    .local v4, "series":Ljava/util/List;
    new-instance v5, Lkotlin/Triple;

    invoke-direct {v5, v3, v2, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
