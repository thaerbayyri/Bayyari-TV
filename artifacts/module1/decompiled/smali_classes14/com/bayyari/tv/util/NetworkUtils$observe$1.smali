.class final Lcom/bayyari/tv/util/NetworkUtils$observe$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/util/NetworkUtils;->observe()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
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
    c = "com.bayyari.tv.util.NetworkUtils$observe$1"
    f = "NetworkUtils.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x32
    }
    m = "invokeSuspend"
    n = {
        "$this$callbackFlow",
        "callback",
        "request"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/util/NetworkUtils;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/util/NetworkUtils;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/util/NetworkUtils;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/util/NetworkUtils$observe$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->this$0:Lcom/bayyari/tv/util/NetworkUtils;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/bayyari/tv/util/NetworkUtils;Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/bayyari/tv/util/NetworkUtils;
    .param p1, "$callback"    # Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;

    .line 50
    invoke-static {p0}, Lcom/bayyari/tv/util/NetworkUtils;->access$getCm$p(Lcom/bayyari/tv/util/NetworkUtils;)Landroid/net/ConnectivityManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
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

    new-instance v0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;

    iget-object v1, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->this$0:Lcom/bayyari/tv/util/NetworkUtils;

    invoke-direct {v0, v1, p2}, Lcom/bayyari/tv/util/NetworkUtils$observe$1;-><init>(Lcom/bayyari/tv/util/NetworkUtils;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    .local v0, "$this$callbackFlow":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;

    .local v2, "callback":Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "request":Landroid/net/NetworkRequest;
    .end local v2    # "callback":Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    new-instance v2, Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;

    iget-object v3, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->this$0:Lcom/bayyari/tv/util/NetworkUtils;

    invoke-direct {v2, v0, v3}, Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/bayyari/tv/util/NetworkUtils;)V

    .line 45
    .restart local v2    # "callback":Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 46
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 45
    nop

    .line 48
    .local v3, "request":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->this$0:Lcom/bayyari/tv/util/NetworkUtils;

    invoke-static {v4}, Lcom/bayyari/tv/util/NetworkUtils;->access$getCm$p(Lcom/bayyari/tv/util/NetworkUtils;)Landroid/net/ConnectivityManager;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v4, v3, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 49
    iget-object v4, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->this$0:Lcom/bayyari/tv/util/NetworkUtils;

    invoke-virtual {v4}, Lcom/bayyari/tv/util/NetworkUtils;->isConnected()Z

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v4, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->this$0:Lcom/bayyari/tv/util/NetworkUtils;

    new-instance v5, Lcom/bayyari/tv/util/NetworkUtils$observe$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, v2}, Lcom/bayyari/tv/util/NetworkUtils$observe$1$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/util/NetworkUtils;Lcom/bayyari/tv/util/NetworkUtils$observe$1$callback$1;)V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p0, Lcom/bayyari/tv/util/NetworkUtils$observe$1;->label:I

    invoke-static {v0, v5, v4}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    .line 34
    return-object v1

    .line 50
    :cond_0
    move-object v1, v3

    .line 51
    .end local v3    # "request":Landroid/net/NetworkRequest;
    .restart local v1    # "request":Landroid/net/NetworkRequest;
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
