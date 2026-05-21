.class public final Lcom/bayyari/tv/ui/search/SearchViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SearchViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0013B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/search/SearchViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "searchUseCase",
        "Lcom/bayyari/tv/domain/usecase/SearchUseCase;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/domain/usecase/SearchUseCase;)V",
        "_result",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;",
        "result",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getResult",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "search",
        "",
        "query",
        "",
        "SearchResult",
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
.field private final _result:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final result:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private final searchUseCase:Lcom/bayyari/tv/domain/usecase/SearchUseCase;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/domain/usecase/SearchUseCase;)V
    .locals 7
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "searchUseCase"    # Lcom/bayyari/tv/domain/usecase/SearchUseCase;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 19
    iput-object p2, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->searchUseCase:Lcom/bayyari/tv/domain/usecase/SearchUseCase;

    .line 28
    new-instance v1, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->_result:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->_result:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->result:Lkotlinx/coroutines/flow/StateFlow;

    .line 17
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/search/SearchViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/search/SearchViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getSearchUseCase$p(Lcom/bayyari/tv/ui/search/SearchViewModel;)Lcom/bayyari/tv/domain/usecase/SearchUseCase;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/search/SearchViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->searchUseCase:Lcom/bayyari/tv/domain/usecase/SearchUseCase;

    return-object v0
.end method

.method public static final synthetic access$get_result$p(Lcom/bayyari/tv/ui/search/SearchViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/search/SearchViewModel;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->_result:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final getResult()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/ui/search/SearchViewModel$SearchResult;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/search/SearchViewModel;->result:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final search(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/search/SearchViewModel$search$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/bayyari/tv/ui/search/SearchViewModel$search$1;-><init>(Lcom/bayyari/tv/ui/search/SearchViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 37
    return-void
.end method
