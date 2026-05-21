.class public final Lcom/bayyari/tv/data/repository/WatchHistoryRepository;
.super Ljava/lang/Object;
.source "WatchHistoryRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\u000fJ(\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;",
        "",
        "dao",
        "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;",
        "<init>",
        "(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V",
        "observeAll",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
        "serverId",
        "",
        "save",
        "",
        "entity",
        "(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "find",
        "contentId",
        "contentType",
        "",
        "(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final dao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;)V
    .locals 1
    .param p1, "dao"    # Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;->dao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    .line 12
    return-void
.end method

.method public static final synthetic access$getDao$p(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/WatchHistoryRepository;

    .line 11
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;->dao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    return-object v0
.end method


# virtual methods
.method public final find(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "contentId"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "serverId"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$find$2;

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .end local p1    # "contentId":I
    .end local p2    # "contentType":Ljava/lang/String;
    .end local p3    # "serverId":I
    .local v3, "contentId":I
    .local v4, "contentType":Ljava/lang/String;
    .local v5, "serverId":I
    invoke-direct/range {v1 .. v6}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$find$2;-><init>(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;ILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final observeAll(I)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p1, "serverId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            ">;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/WatchHistoryRepository;->dao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    invoke-interface {v0, p1}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;->observeAll(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public final save(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "entity"    # Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/bayyari/tv/data/repository/WatchHistoryRepository$save$2;-><init>(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    return-object v0
.end method
