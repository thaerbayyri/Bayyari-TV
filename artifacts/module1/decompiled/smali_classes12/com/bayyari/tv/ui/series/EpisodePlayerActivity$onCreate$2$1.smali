.class final Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpisodePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "connected",
        ""
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
    c = "com.bayyari.tv.ui.series.EpisodePlayerActivity$onCreate$2$1"
    f = "EpisodePlayerActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

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

    new-instance v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    invoke-direct {v0, v1, p2}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;-><init>(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->Z$0:Z

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v1, p2

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0, v1}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "$result"    # Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->Z$0:Z

    .local v0, "connected":Z
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 70
    iget v1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    nop

    .line 74
    iget-object v1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    .line 71
    if-nez v0, :cond_0

    .line 72
    iget-object v2, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    invoke-virtual {v2}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bayyari/tv/player/IptvPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->access$setWasPlaying$p(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;Z)V

    .line 73
    iget-object v1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/player/IptvPlayer;->pause()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v1}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->access$getWasPlaying$p(Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity$onCreate$2$1;->this$0:Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/series/EpisodePlayerActivity;->getIptvPlayer()Lcom/bayyari/tv/player/IptvPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/player/IptvPlayer;->play()V

    .line 77
    :cond_1
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
