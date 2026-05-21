.class public final Lcom/bayyari/tv/ui/live/LiveViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LiveViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveViewModel.kt\ncom/bayyari/tv/ui/live/LiveViewModel\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n189#2:59\n49#3:60\n51#3:64\n46#4:61\n51#4:63\n105#5:62\n1#6:65\n*S KotlinDebug\n*F\n+ 1 LiveViewModel.kt\ncom/bayyari/tv/ui/live/LiveViewModel\n*L\n29#1:59\n36#1:60\n36#1:64\n36#1:61\n36#1:63\n36#1:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/bayyari/tv/ui/live/LiveViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "liveRepository",
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)V",
        "serverId",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "selectedCategory",
        "",
        "query",
        "channels",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "getChannels",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "categories",
        "Lcom/bayyari/tv/domain/model/Category;",
        "getCategories",
        "refresh",
        "",
        "selectCategory",
        "categoryId",
        "setQuery",
        "value",
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
.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final categories:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private final channels:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

.field private final query:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedCategory:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serverId:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;)V
    .locals 13
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 22
    iput-object p2, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 25
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-virtual {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->selectedCategory:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 27
    const-string v1, ""

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->query:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 34
    nop

    .line 29
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->selectedCategory:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .local v1, "$this$flatMapLatest\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$f$flatMapLatest\\1\\29":I
    new-instance v3, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {v3, v0, p0}, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/bayyari/tv/ui/live/LiveViewModel;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 32
    .end local v1    # "$this$flatMapLatest\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$flatMapLatest\\1\\29":I
    iget-object v2, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->query:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/bayyari/tv/ui/live/LiveViewModel$channels$2;

    invoke-direct {v3, v0}, Lcom/bayyari/tv/ui/live/LiveViewModel$channels$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 34
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->channels:Lkotlinx/coroutines/flow/StateFlow;

    .line 41
    nop

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->channels:Lkotlinx/coroutines/flow/StateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .local v0, "$this$map\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$f$map\\2\\36":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform\\3":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 61
    .local v3, "$i$f$unsafeTransform\\3\\60":I
    const/4 v4, 0x0

    .line 62
    .local v4, "$i$f$unsafeFlow\\4\\61":I
    new-instance v5, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1;

    invoke-direct {v5, v2}, Lcom/bayyari/tv/ui/live/LiveViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 63
    .end local v4    # "$i$f$unsafeFlow\\4\\61":I
    nop

    .line 64
    .end local v2    # "$this$unsafeTransform\\3":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform\\3\\60":I
    nop

    .line 41
    .end local v0    # "$this$map\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map\\2\\36":I
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-wide/16 v7, 0x1388

    const-wide/16 v9, 0x0

    invoke-static/range {v6 .. v12}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->categories:Lkotlinx/coroutines/flow/StateFlow;

    .line 20
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/live/LiveViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LiveViewModel;

    .line 19
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getLiveRepository$p(Lcom/bayyari/tv/ui/live/LiveViewModel;)Lcom/bayyari/tv/data/repository/LiveRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LiveViewModel;

    .line 19
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    return-object v0
.end method

.method public static final synthetic access$getServerId$p(Lcom/bayyari/tv/ui/live/LiveViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LiveViewModel;

    .line 19
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->serverId:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final getCategories()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Category;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->categories:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getChannels()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->channels:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final refresh()V
    .locals 7

    .line 44
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/live/LiveViewModel$refresh$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/bayyari/tv/ui/live/LiveViewModel$refresh$1;-><init>(Lcom/bayyari/tv/ui/live/LiveViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 48
    return-void
.end method

.method public final selectCategory(Ljava/lang/String;)V
    .locals 5
    .param p1, "categoryId"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->selectedCategory:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 65
    move-object v2, p1

    .local v2, "it\\1":Ljava/lang/String;
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-takeIf-LiveViewModel$selectCategory$1\\1\\51\\0":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    .end local v2    # "it\\1":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-LiveViewModel$selectCategory$1\\1\\51\\0":I
    if-nez v4, :cond_0

    move-object v1, p1

    :cond_0
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public final setQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveViewModel;->query:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
