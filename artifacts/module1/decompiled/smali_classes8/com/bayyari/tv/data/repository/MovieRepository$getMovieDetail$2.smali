.class final Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MovieRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/data/repository/MovieRepository;->getMovieDetail(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
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
    c = "com.bayyari.tv.data.repository.MovieRepository$getMovieDetail$2"
    f = "MovieRepository.kt"
    i = {}
    l = {
        0x45
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $server:Lcom/bayyari/tv/domain/model/Server;

.field final synthetic $vodId:I

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/data/repository/MovieRepository;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/data/repository/MovieRepository;",
            "Lcom/bayyari/tv/domain/model/Server;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->this$0:Lcom/bayyari/tv/data/repository/MovieRepository;

    iput-object p2, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iput p3, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->$vodId:I

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

    new-instance v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->this$0:Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v2, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    iget v3, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->$vodId:I

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;-><init>(Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/bayyari/tv/data/api/models/MovieDetailResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->this$0:Lcom/bayyari/tv/data/repository/MovieRepository;

    invoke-static {v1}, Lcom/bayyari/tv/data/repository/MovieRepository;->access$getApi$p(Lcom/bayyari/tv/data/repository/MovieRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;

    move-result-object v2

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->$vodId:I

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x1

    iput v1, p0, Lcom/bayyari/tv/data/repository/MovieRepository$getMovieDetail$2;->label:I

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/bayyari/tv/data/api/XtreamApiService$-CC;->getVodInfo$default(Lcom/bayyari/tv/data/api/XtreamApiService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 68
    return-object v0

    .line 69
    :cond_0
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
