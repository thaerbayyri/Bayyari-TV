.class final Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IptvPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/player/IptvPlayer;->scheduleRetry(Landroidx/media3/common/PlaybackException;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.bayyari.tv.player.IptvPlayer$scheduleRetry$1"
    f = "IptvPlayer.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x5a
    }
    m = "invokeSuspend"
    n = {
        "attempt",
        "backoff"
    }
    s = {
        "I$0",
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $error:Landroidx/media3/common/PlaybackException;

.field final synthetic $onFinalError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/media3/common/PlaybackException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/player/IptvPlayer;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/player/IptvPlayer;Lkotlin/jvm/functions/Function1;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/player/IptvPlayer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/media3/common/PlaybackException;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->this$0:Lcom/bayyari/tv/player/IptvPlayer;

    iput-object p2, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->$onFinalError:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->$error:Landroidx/media3/common/PlaybackException;

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

    new-instance v0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;

    iget-object v1, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->this$0:Lcom/bayyari/tv/player/IptvPlayer;

    iget-object v2, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->$onFinalError:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->$error:Landroidx/media3/common/PlaybackException;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;-><init>(Lcom/bayyari/tv/player/IptvPlayer;Lkotlin/jvm/functions/Function1;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget v1, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local p0    # "this":Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;
    :pswitch_0
    iget-wide v4, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->J$0:J

    .local v4, "backoff":J
    iget v1, p0, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->I$0:I

    .local v1, "attempt":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v5, v4

    move-object v4, p0

    goto :goto_0

    .end local v1    # "attempt":I
    .end local v4    # "backoff":J
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    const/4 v1, 0x0

    move-object v4, p0

    .line 88
    .end local p0    # "this":Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;
    .restart local v1    # "attempt":I
    .local v4, "this":Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;
    :cond_0
    if-ge v1, v3, :cond_2

    .line 89
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v1

    const-wide/16 v7, 0x320

    mul-long/2addr v5, v7

    .line 90
    .local v5, "backoff":J
    move-object v7, v4

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v1, v4, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->I$0:I

    iput-wide v5, v4, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->J$0:J

    iput v2, v4, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->label:I

    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_1

    .line 86
    return-object v0

    .line 91
    :cond_1
    :goto_0
    iget-object v7, v4, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->this$0:Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {v7}, Lcom/bayyari/tv/player/IptvPlayer;->access$getPlayer$p(Lcom/bayyari/tv/player/IptvPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v7

    invoke-interface {v7}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    .line 92
    add-int/2addr v1, v2

    .line 93
    iget-object v7, v4, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->this$0:Lcom/bayyari/tv/player/IptvPlayer;

    invoke-static {v7}, Lcom/bayyari/tv/player/IptvPlayer;->access$getPlayer$p(Lcom/bayyari/tv/player/IptvPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v7

    invoke-interface {v7}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v7

    if-ne v7, v3, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 95
    .end local v5    # "backoff":J
    :cond_2
    iget-object v0, v4, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->$onFinalError:Lkotlin/jvm/functions/Function1;

    iget-object v2, v4, Lcom/bayyari/tv/player/IptvPlayer$scheduleRetry$1;->$error:Landroidx/media3/common/PlaybackException;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
