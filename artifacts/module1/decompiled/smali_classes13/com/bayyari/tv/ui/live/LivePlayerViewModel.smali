.class public final Lcom/bayyari/tv/ui/live/LivePlayerViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LivePlayerViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/bayyari/tv/ui/live/LivePlayerViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "authRepository",
        "Lcom/bayyari/tv/data/repository/AuthRepository;",
        "liveRepository",
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        "epgRepository",
        "Lcom/bayyari/tv/data/repository/EpgRepository;",
        "streamUrlBuilder",
        "Lcom/bayyari/tv/util/StreamUrlBuilder;",
        "prefs",
        "Lcom/bayyari/tv/util/EncryptedPrefs;",
        "<init>",
        "(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/util/StreamUrlBuilder;Lcom/bayyari/tv/util/EncryptedPrefs;)V",
        "_channel",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "channel",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getChannel",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_epg",
        "",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        "epg",
        "getEpg",
        "load",
        "",
        "streamId",
        "",
        "buildStreamUrl",
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
.field private final _channel:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final _epg:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;"
        }
    .end annotation
.end field

.field private final authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

.field private final channel:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final epg:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;"
        }
    .end annotation
.end field

.field private final epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;

.field private final liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

.field private final prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

.field private final streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/util/StreamUrlBuilder;Lcom/bayyari/tv/util/EncryptedPrefs;)V
    .locals 1
    .param p1, "authRepository"    # Lcom/bayyari/tv/data/repository/AuthRepository;
    .param p2, "liveRepository"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p3, "epgRepository"    # Lcom/bayyari/tv/data/repository/EpgRepository;
    .param p4, "streamUrlBuilder"    # Lcom/bayyari/tv/util/StreamUrlBuilder;
    .param p5, "prefs"    # Lcom/bayyari/tv/util/EncryptedPrefs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "authRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epgRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamUrlBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    .line 21
    iput-object p2, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 22
    iput-object p3, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;

    .line 23
    iput-object p4, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    .line 24
    iput-object p5, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->_channel:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 28
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->_channel:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->channel:Lkotlinx/coroutines/flow/StateFlow;

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->_epg:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->_epg:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->epg:Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    return-void
.end method

.method public static final synthetic access$getAuthRepository$p(Lcom/bayyari/tv/ui/live/LivePlayerViewModel;)Lcom/bayyari/tv/data/repository/AuthRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    return-object v0
.end method

.method public static final synthetic access$getEpgRepository$p(Lcom/bayyari/tv/ui/live/LivePlayerViewModel;)Lcom/bayyari/tv/data/repository/EpgRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->epgRepository:Lcom/bayyari/tv/data/repository/EpgRepository;

    return-object v0
.end method

.method public static final synthetic access$getLiveRepository$p(Lcom/bayyari/tv/ui/live/LivePlayerViewModel;)Lcom/bayyari/tv/data/repository/LiveRepository;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->liveRepository:Lcom/bayyari/tv/data/repository/LiveRepository;

    return-object v0
.end method

.method public static final synthetic access$get_channel$p(Lcom/bayyari/tv/ui/live/LivePlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->_channel:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_epg$p(Lcom/bayyari/tv/ui/live/LivePlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/ui/live/LivePlayerViewModel;

    .line 18
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->_epg:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final buildStreamUrl(Lcom/bayyari/tv/domain/model/Channel;)Ljava/lang/String;
    .locals 9
    .param p1, "channel"    # Lcom/bayyari/tv/domain/model/Channel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getDirectStreamUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getDirectStreamUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->authRepository:Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-virtual {v0}, Lcom/bayyari/tv/data/repository/AuthRepository;->getActiveServer()Lcom/bayyari/tv/domain/model/Server;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    return-object v0

    .line 44
    .local v0, "server":Lcom/bayyari/tv/domain/model/Server;
    :cond_3
    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->prefs:Lcom/bayyari/tv/util/EncryptedPrefs;

    invoke-virtual {v1}, Lcom/bayyari/tv/util/EncryptedPrefs;->getStreamFormat()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "format":Ljava/lang/String;
    const-string v2, "ts"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/bayyari/tv/util/StreamUrlBuilder$LiveFormat;->TS:Lcom/bayyari/tv/util/StreamUrlBuilder$LiveFormat;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/bayyari/tv/util/StreamUrlBuilder$LiveFormat;->HLS:Lcom/bayyari/tv/util/StreamUrlBuilder$LiveFormat;

    :goto_2
    move-object v8, v2

    .line 46
    .local v8, "liveFormat":Lcom/bayyari/tv/util/StreamUrlBuilder$LiveFormat;
    iget-object v3, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->streamUrlBuilder:Lcom/bayyari/tv/util/StreamUrlBuilder;

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getNormalizedUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/bayyari/tv/domain/model/Server;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/bayyari/tv/domain/model/Channel;->getStreamId()I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Lcom/bayyari/tv/util/StreamUrlBuilder;->live(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/bayyari/tv/util/StreamUrlBuilder$LiveFormat;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getChannel()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->channel:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getEpg()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel;->epg:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final load(I)V
    .locals 7
    .param p1, "streamId"    # I

    .line 34
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/bayyari/tv/ui/live/LivePlayerViewModel$load$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/bayyari/tv/ui/live/LivePlayerViewModel$load$1;-><init>(Lcom/bayyari/tv/ui/live/LivePlayerViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 39
    return-void
.end method
