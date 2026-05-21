.class final Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpisodePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->onDestroy()V
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
    c = "com.bayyari.tv.ui.series.EpisodePlayerActivity$onDestroy$1"
    f = "EpisodePlayerActivity.kt"
    i = {}
    l = {
        0x59
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic $episodeId:I

.field final synthetic $position:J

.field final synthetic $server:Lcom/bayyari/tv/domain/model/Server;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;IJJLcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;",
            "IJJ",
            "Lcom/bayyari/tv/domain/model/Server;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    iput p2, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$episodeId:I

    iput-wide p3, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$position:J

    iput-wide p5, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$duration:J

    iput-object p7, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$server:Lcom/bayyari/tv/domain/model/Server;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    iget v2, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$episodeId:I

    iget-wide v3, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$position:J

    iget-wide v5, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$duration:J

    iget-object v7, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$server:Lcom/bayyari/tv/domain/model/Server;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;-><init>(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;IJJLcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 88
    iget v2, v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    iget-object v2, v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    invoke-virtual {v2}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->getWatchHistoryRepository()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    move-result-object v2

    .line 90
    new-instance v3, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    .line 91
    iget v5, v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$episodeId:I

    .line 92
    nop

    .line 93
    iget-wide v7, v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$position:J

    .line 94
    iget-wide v9, v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$duration:J

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 96
    iget-object v4, v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->$server:Lcom/bayyari/tv/domain/model/Server;

    invoke-virtual {v4}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v13

    .line 97
    nop

    .line 98
    nop

    .line 90
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v4, 0x0

    const-string v6, "episode"

    const-string v14, ""

    const-string v15, ""

    invoke-direct/range {v3 .. v17}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;-><init>(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 89
    const/4 v5, 0x1

    iput v5, v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onDestroy$1;->label:I

    invoke-virtual {v2, v3, v4}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;->save(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 88
    return-object v1

    .line 101
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
