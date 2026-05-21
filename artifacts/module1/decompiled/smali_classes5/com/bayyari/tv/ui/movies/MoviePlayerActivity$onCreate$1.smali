.class final Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MoviePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.bayyari.tv.ui.movies.MoviePlayerActivity$onCreate$1"
    f = "MoviePlayerActivity.kt"
    i = {}
    l = {
        0x3c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $movieId:I

.field final synthetic $server:Lcom/bayyari/tv/domain/model/Server;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;ILcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;",
            "I",
            "Lcom/bayyari/tv/domain/model/Server;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->this$0:Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;

    iput p2, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->$movieId:I

    iput-object p3, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->$server:Lcom/bayyari/tv/domain/model/Server;

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

    new-instance v0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->this$0:Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;

    iget v2, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->$movieId:I

    iget-object v3, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;-><init>(Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;ILcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->label:I

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

    .line 60
    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->this$0:Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getWatchHistoryRepository()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    move-result-object v1

    iget v2, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->$movieId:I

    iget-object v3, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v3}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->label:I

    const-string v5, "movie"

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;->find(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 59
    return-object v0

    :cond_0
    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    .line 61
    .local v0, "history":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getPositionMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity$onCreate$1;->this$0:Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/movies/MoviePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;->getPositionMs()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayer;->seekTo(J)V

    .line 64
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
