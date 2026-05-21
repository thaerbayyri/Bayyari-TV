.class public final Lcom/bayyari/tv/data/repository/EpgRepository;
.super Ljava/lang/Object;
.source "EpgRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEpgRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpgRepository.kt\ncom/bayyari/tv/data/repository/EpgRepository\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n49#2:98\n51#2:102\n46#3:99\n51#3:101\n105#4:100\n1#5:103\n*S KotlinDebug\n*F\n+ 1 EpgRepository.kt\ncom/bayyari/tv/data/repository/EpgRepository\n*L\n26#1:98\n26#1:102\n26#1:99\n26#1:101\n26#1:100\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\"\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ.\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0013J$\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u0015J\u000c\u0010\u0016\u001a\u00020\u000b*\u00020\u0017H\u0002J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002J#\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/bayyari/tv/data/repository/EpgRepository;",
        "",
        "api",
        "Lcom/bayyari/tv/data/api/XtreamApiService;",
        "epgDao",
        "Lcom/bayyari/tv/data/local/dao/EpgDao;",
        "<init>",
        "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/EpgDao;)V",
        "observeEpg",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/bayyari/tv/domain/model/EpgProgram;",
        "serverId",
        "",
        "streamId",
        "refresh",
        "server",
        "Lcom/bayyari/tv/domain/model/Server;",
        "limit",
        "(Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCatchUp",
        "(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toDomain",
        "Lcom/bayyari/tv/data/local/entities/EpgEntity;",
        "decodeBase64",
        "",
        "raw",
        "parseTimestamp",
        "",
        "epochSeconds",
        "dateTime",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;",
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

.field private final epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;


# direct methods
.method public constructor <init>(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/data/local/dao/EpgDao;)V
    .locals 1
    .param p1, "api"    # Lcom/bayyari/tv/data/api/XtreamApiService;
    .param p2, "epgDao"    # Lcom/bayyari/tv/data/local/dao/EpgDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epgDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bayyari/tv/data/repository/EpgRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    .line 22
    iput-object p2, p0, Lcom/bayyari/tv/data/repository/EpgRepository;->epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    .line 20
    return-void
.end method

.method public static final synthetic access$decodeBase64(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/EpgRepository;
    .param p1, "raw"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/bayyari/tv/data/repository/EpgRepository;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getApi$p(Lcom/bayyari/tv/data/repository/EpgRepository;)Lcom/bayyari/tv/data/api/XtreamApiService;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/EpgRepository;

    .line 19
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/EpgRepository;->api:Lcom/bayyari/tv/data/api/XtreamApiService;

    return-object v0
.end method

.method public static final synthetic access$getEpgDao$p(Lcom/bayyari/tv/data/repository/EpgRepository;)Lcom/bayyari/tv/data/local/dao/EpgDao;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/EpgRepository;

    .line 19
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/EpgRepository;->epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    return-object v0
.end method

.method public static final synthetic access$parseTimestamp(Lcom/bayyari/tv/data/repository/EpgRepository;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/EpgRepository;
    .param p1, "epochSeconds"    # Ljava/lang/String;
    .param p2, "dateTime"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/data/repository/EpgRepository;->parseTimestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$toDomain(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/data/local/entities/EpgEntity;)Lcom/bayyari/tv/domain/model/EpgProgram;
    .locals 1
    .param p0, "$this"    # Lcom/bayyari/tv/data/repository/EpgRepository;
    .param p1, "$receiver"    # Lcom/bayyari/tv/data/local/entities/EpgEntity;

    .line 19
    invoke-direct {p0, p1}, Lcom/bayyari/tv/data/repository/EpgRepository;->toDomain(Lcom/bayyari/tv/data/local/entities/EpgEntity;)Lcom/bayyari/tv/domain/model/EpgProgram;

    move-result-object v0

    return-object v0
.end method

.method private final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "raw"    # Ljava/lang/String;

    .line 79
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, ""

    return-object v0

    .line 80
    :cond_2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/bayyari/tv/data/repository/EpgRepository;

    .local v0, "$this$decodeBase64_u24lambda_u242\\1":Lcom/bayyari/tv/data/repository/EpgRepository;
    const/4 v2, 0x0

    .line 81
    .local v2, "$i$a$-runCatching-EpgRepository$decodeBase64$1\\1\\80\\0":I
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .local v1, "decoded\\1":[B
    new-instance v3, Ljava/lang/String;

    .line 82
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 80
    .end local v0    # "$this$decodeBase64_u24lambda_u242\\1":Lcom/bayyari/tv/data/repository/EpgRepository;
    .end local v1    # "decoded\\1":[B
    .end local v2    # "$i$a$-runCatching-EpgRepository$decodeBase64$1\\1\\80\\0":I
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p1

    :cond_3
    check-cast v0, Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method private final parseTimestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "epochSeconds"    # Ljava/lang/String;
    .param p2, "dateTime"    # Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 103
    .local v0, "it\\1":J
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$a$-let-EpgRepository$parseTimestamp$1\\1\\87\\0":I
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 88
    .end local v0    # "it\\1":J
    .end local v2    # "$i$a$-let-EpgRepository$parseTimestamp$1\\1\\87\\0":I
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return-object v1

    .line 89
    :cond_3
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/bayyari/tv/data/repository/EpgRepository;

    .local v0, "$this$parseTimestamp_u24lambda_u245\\2":Lcom/bayyari/tv/data/repository/EpgRepository;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$a$-runCatching-EpgRepository$parseTimestamp$2\\2\\89\\0":I
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v4, v3

    .local v4, "$this$parseTimestamp_u24lambda_u245_u24lambda_u244\\3":Ljava/text/SimpleDateFormat;
    const/4 v5, 0x0

    .line 91
    .local v5, "$i$a$-apply-EpgRepository$parseTimestamp$2$fmt$1\\3\\90\\2":I
    const-string v6, "UTC"

    invoke-static {v6}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    nop

    .line 90
    .end local v4    # "$this$parseTimestamp_u24lambda_u245_u24lambda_u244\\3":Ljava/text/SimpleDateFormat;
    .end local v5    # "$i$a$-apply-EpgRepository$parseTimestamp$2$fmt$1\\3\\90\\2":I
    nop

    .line 93
    .local v3, "fmt\\2":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 89
    .end local v0    # "$this$parseTimestamp_u24lambda_u245\\2":Lcom/bayyari/tv/data/repository/EpgRepository;
    .end local v2    # "$i$a$-runCatching-EpgRepository$parseTimestamp$2\\2\\89\\0":I
    .end local v3    # "fmt\\2":Ljava/text/SimpleDateFormat;
    :goto_2
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    check-cast v1, Ljava/lang/Long;

    .line 89
    return-object v1
.end method

.method public static synthetic refresh$default(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/16 p3, 0xa

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bayyari/tv/data/repository/EpgRepository;->refresh(Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final toDomain(Lcom/bayyari/tv/data/local/entities/EpgEntity;)Lcom/bayyari/tv/domain/model/EpgProgram;
    .locals 9
    .param p1, "$this$toDomain"    # Lcom/bayyari/tv/data/local/entities/EpgEntity;

    .line 69
    new-instance v0, Lcom/bayyari/tv/domain/model/EpgProgram;

    .line 70
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/EpgEntity;->getStreamId()I

    move-result v1

    .line 71
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/EpgEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/EpgEntity;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/EpgEntity;->getStartMs()J

    move-result-wide v4

    .line 74
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/EpgEntity;->getEndMs()J

    move-result-wide v6

    .line 75
    invoke-virtual {p1}, Lcom/bayyari/tv/data/local/entities/EpgEntity;->getHasArchive()Z

    move-result v8

    .line 69
    invoke-direct/range {v0 .. v8}, Lcom/bayyari/tv/domain/model/EpgProgram;-><init>(ILjava/lang/String;Ljava/lang/String;JJZ)V

    .line 76
    return-object v0
.end method


# virtual methods
.method public final getCatchUp(Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;
    .param p2, "streamId"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Server;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/bayyari/tv/data/repository/EpgRepository$getCatchUp$2;-><init>(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/domain/model/Server;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public final observeEpg(II)Lkotlinx/coroutines/flow/Flow;
    .locals 6
    .param p1, "serverId"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bayyari/tv/data/repository/EpgRepository;->epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    invoke-interface {v0, p1, p2}, Lcom/bayyari/tv/data/local/dao/EpgDao;->observeForStream(II)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .local v0, "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 98
    .local v1, "$i$f$map\\1\\26":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$f$unsafeTransform\\2\\98":I
    const/4 v4, 0x0

    .line 100
    .local v4, "$i$f$unsafeFlow\\3\\99":I
    new-instance v5, Lcom/bayyari/tv/data/repository/EpgRepository$observeEpg$$inlined$map$1;

    invoke-direct {v5, v2, p0}, Lcom/bayyari/tv/data/repository/EpgRepository$observeEpg$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/bayyari/tv/data/repository/EpgRepository;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 101
    .end local v4    # "$i$f$unsafeFlow\\3\\99":I
    nop

    .line 102
    .end local v2    # "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform\\2\\98":I
    nop

    .line 26
    .end local v0    # "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map\\1\\26":I
    return-object v5
.end method

.method public final refresh(Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "server"    # Lcom/bayyari/tv/domain/model/Server;
    .param p2, "streamId"    # I
    .param p3, "limit"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bayyari/tv/domain/model/Server;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/domain/model/EpgProgram;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "server":Lcom/bayyari/tv/domain/model/Server;
    .end local p2    # "streamId":I
    .end local p3    # "limit":I
    .local v3, "server":Lcom/bayyari/tv/domain/model/Server;
    .local v4, "streamId":I
    .local v5, "limit":I
    invoke-direct/range {v1 .. v6}, Lcom/bayyari/tv/data/repository/EpgRepository$refresh$2;-><init>(Lcom/bayyari/tv/data/repository/EpgRepository;Lcom/bayyari/tv/domain/model/Server;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    return-object p1
.end method
