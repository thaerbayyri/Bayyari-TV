.class final Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TvHomeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/home/TvHomeViewModel;->load()V
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
    c = "com.bayyari.tv.ui.home.TvHomeViewModel$load$1"
    f = "TvHomeViewModel.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4,
        0x5
    }
    l = {
        0x26,
        0x27,
        0x28,
        0x2a,
        0x2b,
        0x2c
    }
    m = "invokeSuspend"
    n = {
        "server",
        "server",
        "server",
        "server",
        "server",
        "server"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/home/TvHomeViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/home/TvHomeViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-direct {v0, v1, p2}, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;-><init>(Lcom/bayyari/tv/ui/home/TvHomeViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 36
    iget v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->label:I

    const/16 v2, 0x1e

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/bayyari/tv/domain/model/Server;

    .local v1, "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto/16 :goto_5

    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_1
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/bayyari/tv/domain/model/Server;

    .local v3, "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p1

    goto/16 :goto_4

    .end local v3    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_2
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/bayyari/tv/domain/model/Server;

    .restart local v3    # "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p1

    goto/16 :goto_3

    .end local v3    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_3
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/bayyari/tv/domain/model/Server;

    .restart local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_2

    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_4
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/bayyari/tv/domain/model/Server;

    .restart local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_5
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/bayyari/tv/domain/model/Server;

    .restart local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v1}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$getAuthRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 38
    .restart local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :cond_0
    iget-object v3, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v3}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$getLiveRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/LiveRepository;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->label:I

    invoke-virtual {v3, v1, v4}, Lcom/bayyari/tv/data/repository/LiveRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 36
    return-object v0

    .line 39
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v3}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$getMovieRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/MovieRepository;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->label:I

    invoke-virtual {v3, v1, v4}, Lcom/bayyari/tv/data/repository/MovieRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    .line 36
    return-object v0

    .line 40
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v3}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$getSeriesRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->label:I

    invoke-virtual {v3, v1, v4}, Lcom/bayyari/tv/data/repository/SeriesRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 36
    return-object v0

    .line 40
    :cond_3
    move-object v3, v1

    .line 42
    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    .restart local v3    # "server":Lcom/bayyari/tv/domain/model/Server;
    :goto_2
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v1}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$get_live$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v4, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v4}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$getLiveRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/LiveRepository;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->label:I

    const-string v7, ""

    invoke-virtual {v4, v5, v7, v6}, Lcom/bayyari/tv/data/repository/LiveRepository;->search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    .line 36
    return-object v0

    .line 42
    :cond_4
    :goto_3
    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v1}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$get_movies$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v4, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v4}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$getMovieRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/MovieRepository;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->label:I

    invoke-virtual {v4, v5, v2, v6}, Lcom/bayyari/tv/data/repository/MovieRepository;->latest(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    .line 36
    return-object v0

    .line 43
    :cond_5
    :goto_4
    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v1}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$get_series$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v4, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/home/TvHomeViewModel;

    invoke-static {v4}, Lcom/bayyari/tv/ui/home/TvHomeViewModel;->access$getSeriesRepository$p(Lcom/bayyari/tv/ui/home/TvHomeViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x6

    iput v7, p0, Lcom/bayyari/tv/ui/home/TvHomeViewModel$load$1;->label:I

    invoke-virtual {v4, v5, v2, v6}, Lcom/bayyari/tv/data/repository/SeriesRepository;->latest(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    .line 36
    return-object v0

    .line 44
    :cond_6
    move-object v0, v1

    move-object v1, v3

    .end local v3    # "server":Lcom/bayyari/tv/domain/model/Server;
    .restart local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    :goto_5
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
