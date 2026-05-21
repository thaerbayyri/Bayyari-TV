.class public final Lcom/bayyari/tv/ui/auth/LoginViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LoginViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J.\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/auth/LoginViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "loginUseCase",
        "Lcom/bayyari/tv/domain/usecase/LoginUseCase;",
        "<init>",
        "(Lcom/bayyari/tv/domain/usecase/LoginUseCase;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/bayyari/tv/util/UiState;",
        "Lcom/bayyari/tv/domain/model/Server;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "login",
        "",
        "serverUrl",
        "",
        "username",
        "password",
        "label",
        "remember",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/bayyari/tv/util/UiState<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loginUseCase:Lcom/bayyari/tv/domain/usecase/LoginUseCase;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/util/UiState<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/domain/usecase/LoginUseCase;)V
    .locals 1
    .param p1, "loginUseCase"    # Lcom/bayyari/tv/domain/usecase/LoginUseCase;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "loginUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel;->loginUseCase:Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    .line 19
    sget-object v0, Lcom/bayyari/tv/util/UiState$Empty;->INSTANCE:Lcom/bayyari/tv/util/UiState$Empty;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 15
    return-void
.end method

.method public static final synthetic access$getLoginUseCase$p(Lcom/bayyari/tv/ui/auth/LoginViewModel;)Lcom/bayyari/tv/domain/usecase/LoginUseCase;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/auth/LoginViewModel;

    .line 14
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel;->loginUseCase:Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    return-object v0
.end method

.method public static final synthetic access$get_state$p(Lcom/bayyari/tv/ui/auth/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/auth/LoginViewModel;

    .line 14
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/util/UiState<",
            "Lcom/bayyari/tv/domain/model/Server;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/ui/auth/LoginViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "remember"    # Z

    const-string v0, "serverUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/bayyari/tv/ui/auth/LoginViewModel$login$1;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .end local p1    # "serverUrl":Ljava/lang/String;
    .end local p2    # "username":Ljava/lang/String;
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "label":Ljava/lang/String;
    .end local p5    # "remember":Z
    .local v4, "serverUrl":Ljava/lang/String;
    .local v5, "username":Ljava/lang/String;
    .local v6, "password":Ljava/lang/String;
    .local v7, "label":Ljava/lang/String;
    .local v8, "remember":Z
    invoke-direct/range {v2 .. v9}, Lcom/bayyari/tv/ui/auth/LoginViewModel$login$1;-><init>(Lcom/bayyari/tv/ui/auth/LoginViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .end local v4    # "serverUrl":Ljava/lang/String;
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .restart local p1    # "serverUrl":Ljava/lang/String;
    .restart local p2    # "username":Ljava/lang/String;
    .restart local p3    # "password":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 27
    return-void
.end method
