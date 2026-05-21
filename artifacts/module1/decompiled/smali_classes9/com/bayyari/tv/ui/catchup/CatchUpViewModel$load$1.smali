.class final Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CatchUpViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->load(I)V
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
    c = "com.bayyari.tv.ui.catchup.CatchUpViewModel$load$1"
    f = "CatchUpViewModel.kt"
    i = {}
    l = {
        0x19
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $streamId:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    iput p2, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->$streamId:I

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

    new-instance v0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    iget v2, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->$streamId:I

    invoke-direct {v0, v1, v2, p2}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;-><init>(Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 23
    iget v1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    invoke-static {v1}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->access$get_state$p(Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    sget-object v2, Lcom/bayyari/tv/util/UiState$Loading;->INSTANCE:Lcom/bayyari/tv/util/UiState$Loading;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    invoke-static {v1}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->access$get_state$p(Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v2, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->this$0:Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    invoke-static {v2}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->access$getGetCatchUpUseCase$p(Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;)Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

    move-result-object v2

    iget v3, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->$streamId:I

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;->label:I

    invoke-virtual {v2, v3, v4}, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;->invoke(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 23
    return-object v0

    .line 25
    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
