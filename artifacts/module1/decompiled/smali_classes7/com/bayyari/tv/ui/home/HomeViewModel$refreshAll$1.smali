.class final Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/home/HomeViewModel;->refreshAll()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeViewModel.kt\ncom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
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
    c = "com.bayyari.tv.ui.home.HomeViewModel$refreshAll$1"
    f = "HomeViewModel.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x54,
        0x55,
        0x56
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "server",
        "$this$invokeSuspend_u24lambda_u240\\1",
        "$i$a$-runCatching-HomeViewModel$refreshAll$1$1\\1\\84\\0",
        "$this$launch",
        "server",
        "$this$invokeSuspend_u24lambda_u241\\2",
        "$i$a$-runCatching-HomeViewModel$refreshAll$1$2\\2\\85\\0",
        "$this$launch",
        "server",
        "$this$invokeSuspend_u24lambda_u242\\3",
        "$i$a$-runCatching-HomeViewModel$refreshAll$1$3\\3\\86\\0"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/home/HomeViewModel;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/home/HomeViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/home/HomeViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->this$0:Lcom/bayyari/tv/ui/home/HomeViewModel;

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

    new-instance v0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->this$0:Lcom/bayyari/tv/ui/home/HomeViewModel;

    invoke-direct {v0, v1, p2}, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;-><init>(Lcom/bayyari/tv/ui/home/HomeViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 82
    iget v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v1, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->I$0:I

    .local v1, "$i$a$-runCatching-HomeViewModel$refreshAll$1$3\\3\\86\\0":I
    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .local v2, "$this$invokeSuspend_u24lambda_u242\\3":Lkotlinx/coroutines/CoroutineScope;
    iget-object v3, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/bayyari/tv/domain/model/Server;

    .local v3, "server":Lcom/bayyari/tv/domain/model/Server;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    move-object v2, p1

    goto/16 :goto_6

    .line 86
    .end local v1    # "$i$a$-runCatching-HomeViewModel$refreshAll$1$3\\3\\86\\0":I
    .end local v2    # "$this$invokeSuspend_u24lambda_u242\\3":Lkotlinx/coroutines/CoroutineScope;
    :catchall_0
    move-exception v1

    goto/16 :goto_7

    .line 82
    .end local v3    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_1
    iget v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->I$0:I

    .local v2, "$i$a$-runCatching-HomeViewModel$refreshAll$1$2\\2\\85\\0":I
    iget-object v3, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .local v3, "$this$invokeSuspend_u24lambda_u241\\2":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/bayyari/tv/domain/model/Server;

    .local v4, "server":Lcom/bayyari/tv/domain/model/Server;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v2

    move-object v2, p1

    goto/16 :goto_3

    .line 85
    .end local v2    # "$i$a$-runCatching-HomeViewModel$refreshAll$1$2\\2\\85\\0":I
    .end local v3    # "$this$invokeSuspend_u24lambda_u241\\2":Lkotlinx/coroutines/CoroutineScope;
    :catchall_1
    move-exception v2

    goto/16 :goto_4

    .line 82
    .end local v4    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_2
    iget v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->I$0:I

    .local v2, "$i$a$-runCatching-HomeViewModel$refreshAll$1$1\\1\\84\\0":I
    iget-object v3, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .local v3, "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/bayyari/tv/domain/model/Server;

    .restart local v4    # "server":Lcom/bayyari/tv/domain/model/Server;
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v5, v2

    move-object v2, p1

    goto :goto_0

    .line 84
    .end local v2    # "$i$a$-runCatching-HomeViewModel$refreshAll$1$1\\1\\84\\0":I
    .end local v3    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    :catchall_2
    move-exception v2

    goto :goto_1

    .line 82
    .end local v4    # "server":Lcom/bayyari/tv/domain/model/Server;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->this$0:Lcom/bayyari/tv/ui/home/HomeViewModel;

    invoke-static {v2}, Lcom/bayyari/tv/ui/home/HomeViewModel;->access$getAuthRepository$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_0
    move-object v4, v2

    .line 84
    .restart local v4    # "server":Lcom/bayyari/tv/domain/model/Server;
    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->this$0:Lcom/bayyari/tv/ui/home/HomeViewModel;

    :try_start_3
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v0

    .line 91
    .restart local v3    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    const/4 v5, 0x0

    .line 84
    .local v5, "$i$a$-runCatching-HomeViewModel$refreshAll$1$1\\1\\84\\0":I
    invoke-static {v2}, Lcom/bayyari/tv/ui/home/HomeViewModel;->access$getLiveRepository$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/repository/LiveRepository;

    move-result-object v2

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->I$0:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->label:I

    invoke-virtual {v2, v4, p0}, Lcom/bayyari/tv/data/repository/LiveRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 82
    return-object v1

    .line 84
    :cond_1
    :goto_0
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .end local v3    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    .end local v5    # "$i$a$-runCatching-HomeViewModel$refreshAll$1$1\\1\\84\\0":I
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_2
    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->this$0:Lcom/bayyari/tv/ui/home/HomeViewModel;

    :try_start_4
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v0

    .line 91
    .local v3, "$this$invokeSuspend_u24lambda_u241\\2":Lkotlinx/coroutines/CoroutineScope;
    const/4 v5, 0x0

    .line 85
    .local v5, "$i$a$-runCatching-HomeViewModel$refreshAll$1$2\\2\\85\\0":I
    invoke-static {v2}, Lcom/bayyari/tv/ui/home/HomeViewModel;->access$getMovieRepository$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/repository/MovieRepository;

    move-result-object v2

    iput-object v0, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->I$0:I

    const/4 v6, 0x2

    iput v6, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->label:I

    invoke-virtual {v2, v4, p0}, Lcom/bayyari/tv/data/repository/MovieRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    .line 82
    return-object v1

    .line 85
    :cond_2
    :goto_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .end local v3    # "$this$invokeSuspend_u24lambda_u241\\2":Lkotlinx/coroutines/CoroutineScope;
    .end local v5    # "$i$a$-runCatching-HomeViewModel$refreshAll$1$2\\2\\85\\0":I
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move-object v3, v4

    .line 86
    .end local v4    # "server":Lcom/bayyari/tv/domain/model/Server;
    .local v3, "server":Lcom/bayyari/tv/domain/model/Server;
    iget-object v2, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->this$0:Lcom/bayyari/tv/ui/home/HomeViewModel;

    :try_start_5
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, v0

    .line 91
    .local v4, "$this$invokeSuspend_u24lambda_u242\\3":Lkotlinx/coroutines/CoroutineScope;
    const/4 v5, 0x0

    .line 86
    .local v5, "$i$a$-runCatching-HomeViewModel$refreshAll$1$3\\3\\86\\0":I
    invoke-static {v2}, Lcom/bayyari/tv/ui/home/HomeViewModel;->access$getSeriesRepository$p(Lcom/bayyari/tv/ui/home/HomeViewModel;)Lcom/bayyari/tv/data/repository/SeriesRepository;

    move-result-object v2

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->L$2:Ljava/lang/Object;

    iput v5, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->I$0:I

    const/4 v6, 0x3

    iput v6, p0, Lcom/bayyari/tv/ui/home/HomeViewModel$refreshAll$1;->label:I

    invoke-virtual {v2, v3, p0}, Lcom/bayyari/tv/data/repository/SeriesRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 82
    return-object v1

    .line 86
    :cond_3
    move v1, v5

    .end local v5    # "$i$a$-runCatching-HomeViewModel$refreshAll$1$3\\3\\86\\0":I
    .restart local v1    # "$i$a$-runCatching-HomeViewModel$refreshAll$1$3\\3\\86\\0":I
    :goto_6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .end local v1    # "$i$a$-runCatching-HomeViewModel$refreshAll$1$3\\3\\86\\0":I
    .end local v4    # "$this$invokeSuspend_u24lambda_u242\\3":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :goto_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
