.class final Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EpgFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/live/EpgFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "com.bayyari.tv.ui.live.EpgFragment$onViewCreated$1"
    f = "EpgFragment.kt"
    i = {
        0x0
    }
    l = {
        0x20
    }
    m = "invokeSuspend"
    n = {
        "server"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $streamId:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/live/EpgFragment;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/live/EpgFragment;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/live/EpgFragment;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->this$0:Lcom/bayyari/tv/ui/live/EpgFragment;

    iput p2, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->$streamId:I

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

    new-instance v0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->this$0:Lcom/bayyari/tv/ui/live/EpgFragment;

    iget v2, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->$streamId:I

    invoke-direct {v0, v1, v2, p2}, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;-><init>(Lcom/bayyari/tv/ui/live/EpgFragment;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget v1, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/bayyari/tv/domain/model/Server;

    .local v0, "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    .end local v0    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->this$0:Lcom/bayyari/tv/ui/live/EpgFragment;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/live/EpgFragment;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    move-object v2, v1

    .line 32
    .local v2, "server":Lcom/bayyari/tv/domain/model/Server;
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->this$0:Lcom/bayyari/tv/ui/live/EpgFragment;

    invoke-virtual {v1}, Lcom/bayyari/tv/ui/live/EpgFragment;->getEpgRepository()Lcom/bayyari/tv/data/repository/EpgRepository;

    move-result-object v1

    iget v3, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->$streamId:I

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->label:I

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/bayyari/tv/data/repository/EpgRepository;->refresh$default(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 30
    return-object v0

    .line 32
    :cond_1
    move-object v0, v2

    .line 30
    .end local v2    # "server":Lcom/bayyari/tv/domain/model/Server;
    .restart local v0    # "server":Lcom/bayyari/tv/domain/model/Server;
    :goto_0
    check-cast v1, Ljava/util/List;

    .line 33
    .local v1, "epg":Ljava/util/List;
    iget-object v2, p0, Lcom/bayyari/tv/ui/live/EpgFragment$onViewCreated$1;->this$0:Lcom/bayyari/tv/ui/live/EpgFragment;

    invoke-static {v2}, Lcom/bayyari/tv/ui/live/EpgFragment;->access$getBinding$p(Lcom/bayyari/tv/ui/live/EpgFragment;)Lcom/bayyari/tv/databinding/FragmentEpgBinding;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/bayyari/tv/databinding/FragmentEpgBinding;->epgOverlay:Lcom/bayyari/tv/ui/common/EpgOverlayView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/bayyari/tv/ui/common/EpgOverlayView;->submit(Ljava/util/List;)V

    .line 34
    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
