.class public final Lcom/bayyari/tv/data/repository/LiveRepository;
.super Ljava/lang/Object;
.source "LiveRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiveRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiveRepository.kt\ncom/bayyari/tv/data/repository/LiveRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n49#2:108\n51#2:112\n46#3:109\n51#3:111\n105#4:110\n1563#5:113\n1634#5,3:114\n*S KotlinDebug\n*F\n+ 1 LiveRepository.kt\ncom/bayyari/tv/data/repository/LiveRepository\n*L\n29#1:108\n29#1:112\n29#1:109\n29#1:111\n29#1:110\n91#1:113\n91#1:114,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ$\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0016\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010\u0015J \u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0018J$\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u000c\u0010\u001c\u001a\u00020\r*\u00020\u001dH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/bayyari/tv/data/repository/LiveRepository;",
        "",
        "api",
        "Lcom/bayyari/tv/data/api/XtreamApiService;",
        "channelDao",
        "Lcom/bayyari/tv/data/local/dao/ChannelDao;",
        "m3uParser",
        "Lcom/bayyari/tv/util/M3uParser;",
        "<init>",
        "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/util/M3uParser;)V",
        "observeChannels",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/bayyari/tv/domain/model/Channel;",
        "serverId",
        "",
        "categoryId",
        "",
        "refresh",
        "server",
        "Lcom/bayyari/tv/domain/model/Server;",
        "(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChannel",
        "streamId",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "search",
        "query",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toDomain",
        "Lcom/bayyari/tv/data/local/entities/ChannelEntity;",
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
.field private final api:Lcom/bayyari/tv/data/api/XtreamApiService;

.field private final channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

.field private final m3uParser:Lcom/bayyari/tv/util/M3uParser;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/ChannelDao;Lcom/bayyari/tv/util/M3uParser;)V
    .locals 1
    .param p1, "api"    # Lcom/bayyari/tv/data/api/XtreamApiService;
    .param p2, "channelDao"    # Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .param p3, "m3uParser"    # Lcom/bayyari/tv/util/M3uParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m3uParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    .line 19
    iput-object p2, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    .line 20
    iput-object p3, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->m3uParser:Lcom/bayyari/tv/util/M3uParser;

    .line 17
    return-void
.end method

.method public static final synthetic access$getApi$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    return-object v0
.end method

.method public static final synthetic access$getChannelDao$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    return-object v0
.end method

.method public static final synthetic access$getM3uParser$p(Lcom/bayyari/tv/data/repository/LiveRepository;)Lcom/bayyari/tv/util/M3uParser;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/LiveRepository;

    .line 16
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->m3uParser:Lcom/bayyari/tv/util/M3uParser;

    return-object v0
.end method

.method public static final synthetic access$toDomain(Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/local/entities/ChannelEntity;)Lcom/bayyari/tv/domain/model/Channel;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/LiveRepository;
    .param p1, "$receiver"    # Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    .line 16
    invoke-direct {p0, p1}, Lcom/bayyari/tv/data/repository/LiveRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/ChannelEntity;)Lcom/bayyari/tv/domain/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method private final toDomain(Lcom/bayyari/tv/data/local/entities/ChannelEntity;)Lcom/bayyari/tv/domain/model/Channel;
    .locals 13
    .param p1, "$this$toDomain"    # Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    .line 93
    new-instance v0, Lcom/bayyari/tv/domain/model/Channel;

    .line 94
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getStreamId()I

    move-result v1

    .line 95
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getStreamIcon()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getCategoryId()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getEpgChannelId()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getTvArchive()I

    move-result v7

    .line 101
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getTvArchiveDuration()I

    move-result v8

    .line 102
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getAdded()J

    move-result-wide v9

    .line 103
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getServerId()I

    move-result v11

    .line 104
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;->getDirectStreamUrl()Ljava/lang/String;

    move-result-object v12

    .line 93
    invoke-direct/range {v0 .. v12}, Lcom/bayyari/tv/domain/model/Channel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;)V

    .line 105
    return-object v0
.end method


# virtual methods
.method public final getChannel(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "streamId"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;

    iget v1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;-><init>(Lcom/bayyari/tv/data/repository/LiveRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 87
    iget v3, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget p2, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->I$1:I

    iget p1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->I$0:I

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    iget-object v3, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    iput p1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->I$0:I

    iput p2, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->I$1:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/data/repository/LiveRepository$getChannel$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->findById(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 87
    return-object v2

    .line 88
    :cond_1
    :goto_1
    check-cast v3, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/bayyari/tv/data/repository/LiveRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/ChannelEntity;)Lcom/bayyari/tv/domain/model/Channel;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final observeChannels(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p1, "serverId"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;"
        }
    .end annotation

    .line 24
    move-object v0, p2

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

    .line 27
    :goto_1
    iget-object v1, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    .line 24
    if-eqz v0, :cond_2

    .line 25
    invoke-interface {v1, p1}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->observeAll(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto :goto_2

    .line 27
    :cond_2
    invoke-interface {v1, p1, p2}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->observeByCategory(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 24
    :goto_2
    nop

    .line 29
    .local v0, "flow":Lkotlinx/coroutines/flow/Flow;
    move-object v1, v0

    .local v1, "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 108
    .local v2, "$i$f$map\\1\\29":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 109
    .local v4, "$i$f$unsafeTransform\\2\\108":I
    const/4 v5, 0x0

    .line 110
    .local v5, "$i$f$unsafeFlow\\3\\109":I
    new-instance v6, Lcom/bayyari/tv/data/repository/LiveRepository$observeChannels$$inlined$map$1;

    invoke-direct {v6, v3, p0}, Lcom/bayyari/tv/data/repository/LiveRepository$observeChannels$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/bayyari/tv/data/repository/LiveRepository;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 111
    .end local v5    # "$i$f$unsafeFlow\\3\\109":I
    nop

    .line 112
    .end local v3    # "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform\\2\\108":I
    nop

    .line 29
    .end local v1    # "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map\\1\\29":I
    return-object v6
.end method

.method public final refresh(Lcom/bayyari/tv/domain/model/Server;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Server;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/bayyari/tv/data/repository/LiveRepository$refresh$2;-><init>(Lcom/bayyari/tv/domain/model/Server;Lcom/bayyari/tv/data/repository/LiveRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public final search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1, "serverId"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/Channel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;

    iget v1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;

    invoke-direct {v0, p0, p3}, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;-><init>(Lcom/bayyari/tv/data/repository/LiveRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 90
    iget v3, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget p1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->I$0:I

    iget-object v2, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->L$0:Ljava/lang/Object;

    move-object p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    iget-object v3, p0, Lcom/bayyari/tv/data/repository/LiveRepository;->channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->I$0:I

    const/4 v4, 0x1

    iput v4, v0, Lcom/bayyari/tv/data/repository/LiveRepository$search$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lcom/bayyari/tv/data/local/dao/ChannelDao;->search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 90
    return-object v2

    :cond_1
    :goto_1
    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 113
    .local v3, "$i$f$map\\1\\91":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination\\2":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 114
    .local v6, "$i$f$mapTo\\2\\113":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 115
    .local v8, "item\\2":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    .local v9, "it\\3":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    const/4 v10, 0x0

    .line 91
    .local v10, "$i$a$-map-LiveRepository$search$2\\3\\115\\0":I
    invoke-direct {p0, v9}, Lcom/bayyari/tv/data/repository/LiveRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/ChannelEntity;)Lcom/bayyari/tv/domain/model/Channel;

    move-result-object v9

    .line 115
    .end local v9    # "it\\3":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    .end local v10    # "$i$a$-map-LiveRepository$search$2\\3\\115\\0":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 116
    .end local v8    # "item\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v4    # "destination\\2":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo\\2\\113":I
    check-cast v4, Ljava/util/List;

    .line 113
    nop

    .line 91
    .end local v2    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\1\\91":I
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
