.class final Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/bayyari/tv/util/UiState<",
        "+",
        "Lcom/bayyari/tv/domain/model/Server;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "Lcom/bayyari/tv/util/UiState;",
        "Lcom/bayyari/tv/domain/model/Server;"
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
    c = "com.bayyari.tv.ui.auth.LoginFragment$onViewCreated$3$1"
    f = "LoginFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/databinding/FragmentLoginBinding;Lcom/bayyari/tv/ui/auth/LoginFragment;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/databinding/FragmentLoginBinding;",
            "Lcom/bayyari/tv/ui/auth/LoginFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iput-object p2, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;

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

    new-instance v0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;

    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;

    invoke-direct {v0, v1, v2, p2}, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;-><init>(Lcom/bayyari/tv/databinding/FragmentLoginBinding;Lcom/bayyari/tv/ui/auth/LoginFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/bayyari/tv/util/UiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/util/UiState<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/bayyari/tv/util/UiState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->invoke(Lcom/bayyari/tv/util/UiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/bayyari/tv/util/UiState;

    .local v0, "state":Lcom/bayyari/tv/util/UiState;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 45
    iget v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    nop

    .line 47
    instance-of v1, v0, Lcom/bayyari/tv/util/UiState$Loading;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->buttonLogin:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 49
    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->textServerInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;

    sget v3, Lcom/bayyari/tv/R$string;->state_loading:I

    invoke-virtual {v2, v3}, Lcom/bayyari/tv/ui/auth/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 51
    :cond_0
    instance-of v1, v0, Lcom/bayyari/tv/util/UiState$Success;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->buttonLogin:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/bayyari/tv/util/UiState$Success;

    invoke-virtual {v1}, Lcom/bayyari/tv/util/UiState$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/domain/model/Server;

    .line 54
    .local v1, "server":Lcom/bayyari/tv/domain/model/Server;
    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getExpiresAtEpochSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getExpiresAtEpochSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "-"

    .line 55
    .local v4, "expires":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v5, v5, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->textServerInfo:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;

    sget v7, Lcom/bayyari/tv/R$string;->login_subscription_expires:I

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/bayyari/tv/ui/auth/LoginFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 56
    iget-object v7, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;

    sget v8, Lcom/bayyari/tv/R$string;->login_max_connections:I

    invoke-virtual {v1}, Lcom/bayyari/tv/domain/model/Server;->getMaxConnections()I

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v2

    invoke-virtual {v7, v8, v3}, Lcom/bayyari/tv/ui/auth/LoginFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;

    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;

    invoke-virtual {v5}, Lcom/bayyari/tv/ui/auth/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/bayyari/tv/ui/MainActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/bayyari/tv/ui/auth/LoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object v2, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->this$0:Lcom/bayyari/tv/ui/auth/LoginFragment;

    invoke-virtual {v2}, Lcom/bayyari/tv/ui/auth/LoginFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .end local v1    # "server":Lcom/bayyari/tv/domain/model/Server;
    .end local v4    # "expires":Ljava/lang/String;
    goto :goto_1

    .line 60
    :cond_2
    instance-of v1, v0, Lcom/bayyari/tv/util/UiState$Error;

    if-eqz v1, :cond_3

    .line 61
    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->buttonLogin:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 62
    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->textServerInfo:Landroid/widget/TextView;

    move-object v2, v0

    check-cast v2, Lcom/bayyari/tv/util/UiState$Error;

    invoke-virtual {v2}, Lcom/bayyari/tv/util/UiState$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :cond_3
    sget-object v1, Lcom/bayyari/tv/util/UiState$Empty;->INSTANCE:Lcom/bayyari/tv/util/UiState$Empty;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->buttonLogin:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 66
    iget-object v1, p0, Lcom/bayyari/tv/ui/auth/LoginFragment$onViewCreated$3$1;->$b:Lcom/bayyari/tv/databinding/FragmentLoginBinding;

    iget-object v1, v1, Lcom/bayyari/tv/databinding/FragmentLoginBinding;->textServerInfo:Landroid/widget/TextView;

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 46
    :cond_4
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
