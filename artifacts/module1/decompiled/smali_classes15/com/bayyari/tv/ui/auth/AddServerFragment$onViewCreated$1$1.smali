.class final Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AddServerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/auth/AddServerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "com.bayyari.tv.ui.auth.AddServerFragment$onViewCreated$1$1"
    f = "AddServerFragment.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x2b
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$invokeSuspend_u24lambda_u240\\1",
        "$i$a$-runCatching-AddServerFragment$onViewCreated$1$1$1\\1\\42\\0"
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $b:Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

.field final synthetic $label:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/auth/AddServerFragment;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/ui/auth/AddServerFragment;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/databinding/FragmentAddServerBinding;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/ui/auth/AddServerFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bayyari/tv/databinding/FragmentAddServerBinding;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/auth/AddServerFragment;

    iput-object p2, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$b:Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/auth/AddServerFragment;

    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$label:Ljava/lang/String;

    iget-object v3, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$b:Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;-><init>(Lcom/bayyari/tv/ui/auth/AddServerFragment;Ljava/lang/String;Ljava/lang/String;Lcom/bayyari/tv/databinding/FragmentAddServerBinding;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget v1, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->I$0:I

    .local v1, "$i$a$-runCatching-AddServerFragment$onViewCreated$1$1$1\\1\\42\\0":I
    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .local v2, "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v2

    move-object v2, p1

    goto :goto_0

    .end local v1    # "$i$a$-runCatching-AddServerFragment$onViewCreated$1$1$1\\1\\42\\0":I
    .end local v2    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/auth/AddServerFragment;

    iget-object v4, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$label:Ljava/lang/String;

    iget-object v5, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$url:Ljava/lang/String;

    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v6, v0

    .local v6, "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    const/4 v7, 0x0

    .line 43
    .local v7, "$i$a$-runCatching-AddServerFragment$onViewCreated$1$1$1\\1\\42\\0":I
    invoke-virtual {v2}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->getAuthRepository()Lcom/bayyari/tv/data/repository/AuthRepository;

    move-result-object v2

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->L$1:Ljava/lang/Object;

    iput v7, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->I$0:I

    iput v3, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->label:I

    invoke-virtual {v2, v4, v5, p0}, Lcom/bayyari/tv/data/repository/AuthRepository;->addM3uServer(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 41
    return-object v1

    .line 43
    :cond_0
    move v1, v7

    .end local v7    # "$i$a$-runCatching-AddServerFragment$onViewCreated$1$1$1\\1\\42\\0":I
    .restart local v1    # "$i$a$-runCatching-AddServerFragment$onViewCreated$1$1$1\\1\\42\\0":I
    :goto_0
    check-cast v2, Lcom/bayyari/tv/domain/model/Server;

    .line 42
    .end local v1    # "$i$a$-runCatching-AddServerFragment$onViewCreated$1$1$1\\1\\42\\0":I
    .end local v6    # "$this$invokeSuspend_u24lambda_u240\\1":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/auth/AddServerFragment;

    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/bayyari/tv/domain/model/Server;

    .local v4, "it\\2":Lcom/bayyari/tv/domain/model/Server;
    const/4 v5, 0x0

    .line 45
    .local v5, "$i$a$-onSuccess-AddServerFragment$onViewCreated$1$1$2\\2\\44\\0":I
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/bayyari/tv/ui/MainActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {v2}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 47
    nop

    .line 44
    .end local v4    # "it\\2":Lcom/bayyari/tv/domain/model/Server;
    .end local v5    # "$i$a$-onSuccess-AddServerFragment$onViewCreated$1$1$2\\2\\44\\0":I
    :cond_1
    nop

    .line 47
    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->$b:Lcom/bayyari/tv/databinding/FragmentAddServerBinding;

    iget-object v4, p0, Lcom/bayyari/tv/ui/auth/AddServerFragment$onViewCreated$1$1;->this$0:Lcom/bayyari/tv/ui/auth/AddServerFragment;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .local v1, "t\\4":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 48
    .local v5, "$i$a$-onFailure-AddServerFragment$onViewCreated$1$1$3\\4\\47\\0":I
    iget-object v2, v2, Lcom/bayyari/tv/databinding/FragmentAddServerBinding;->buttonSave:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 49
    invoke-virtual {v4}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    sget v6, Lcom/bayyari/tv/R$string;->state_error_generic:I

    invoke-virtual {v4, v6}, Lcom/bayyari/tv/ui/auth/AddServerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "getString(...)"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v2, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 50
    nop

    .line 47
    .end local v1    # "t\\4":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-onFailure-AddServerFragment$onViewCreated$1$1$3\\4\\47\\0":I
    nop

    .line 51
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
