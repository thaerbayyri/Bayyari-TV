.class public final Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "CatchUpViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00080\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "getCatchUpUseCase",
        "Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;",
        "<init>",
        "(Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/bayyari/tv/util/UiState;",
        "",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "load",
        "",
        "streamId",
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
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final getCatchUpUseCase:Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/util/UiState<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;)V
    .locals 1
    .param p1, "getCatchUpUseCase"    # Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "getCatchUpUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->getCatchUpUseCase:Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

    .line 19
    sget-object v0, Lcom/bayyari/tv/util/UiState$Empty;->INSTANCE:Lcom/bayyari/tv/util/UiState$Empty;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 15
    return-void
.end method

.method public static final synthetic access$getGetCatchUpUseCase$p(Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;)Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    .line 14
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->getCatchUpUseCase:Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

    return-object v0
.end method

.method public static final synthetic access$get_state$p(Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;

    .line 14
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

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
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final load(I)V
    .locals 7
    .param p1, "streamId"    # I

    .line 23
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel$load$1;-><init>(Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 27
    return-void
.end method
