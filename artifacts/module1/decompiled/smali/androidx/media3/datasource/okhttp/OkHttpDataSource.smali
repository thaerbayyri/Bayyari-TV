.class public Landroidx/media3/datasource/okhttp/OkHttpDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "OkHttpDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;
    }
.end annotation


# instance fields
.field private bytesRead:J

.field private bytesToRead:J

.field private final cacheControl:Lokhttp3/CacheControl;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Landroidx/media3/datasource/DataSpec;

.field private final defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field private opened:Z

.field private final requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field private response:Lokhttp3/Response;

.field private responseByteStream:Ljava/io/InputStream;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-string v0, "media3.datasource.okhttp"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Landroidx/media3/datasource/HttpDataSource$RequestProperties;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Landroidx/media3/datasource/HttpDataSource$RequestProperties;)V
    .locals 6
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "cacheControl"    # Lokhttp3/CacheControl;
    .param p4, "defaultRequestProperties"    # Landroidx/media3/datasource/HttpDataSource$RequestProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "callFactory":Lokhttp3/Call$Factory;
    .end local p2    # "userAgent":Ljava/lang/String;
    .end local p3    # "cacheControl":Lokhttp3/CacheControl;
    .end local p4    # "defaultRequestProperties":Landroidx/media3/datasource/HttpDataSource$RequestProperties;
    .local v1, "callFactory":Lokhttp3/Call$Factory;
    .local v2, "userAgent":Ljava/lang/String;
    .local v3, "cacheControl":Lokhttp3/CacheControl;
    .local v4, "defaultRequestProperties":Landroidx/media3/datasource/HttpDataSource$RequestProperties;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Landroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;)V

    .line 237
    return-void
.end method

.method private constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Landroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;)V
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "cacheControl"    # Lokhttp3/CacheControl;
    .param p4, "defaultRequestProperties"    # Landroidx/media3/datasource/HttpDataSource$RequestProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lokhttp3/CacheControl;",
            "Landroidx/media3/datasource/HttpDataSource$RequestProperties;",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p5, "contentTypePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 246
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call$Factory;

    iput-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->callFactory:Lokhttp3/Call$Factory;

    .line 247
    iput-object p2, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->userAgent:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->cacheControl:Lokhttp3/CacheControl;

    .line 249
    iput-object p4, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 250
    iput-object p5, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 251
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Landroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Landroidx/media3/datasource/okhttp/OkHttpDataSource$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/Call$Factory;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lokhttp3/CacheControl;
    .param p4, "x3"    # Landroidx/media3/datasource/HttpDataSource$RequestProperties;
    .param p5, "x4"    # Lcom/google/common/base/Predicate;
    .param p6, "x5"    # Landroidx/media3/datasource/okhttp/OkHttpDataSource$1;

    .line 70
    invoke-direct/range {p0 .. p5}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Landroidx/media3/datasource/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;)V

    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 2

    .line 574
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 576
    iput-object v1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    .line 578
    :cond_0
    iput-object v1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;

    .line 579
    return-void
.end method

.method private executeCall(Lokhttp3/Call;)Lokhttp3/Response;
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 470
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lokhttp3/Response;>;"
    new-instance v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource$1;

    invoke-direct {v1, p0, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$1;-><init>(Landroidx/media3/datasource/okhttp/OkHttpDataSource;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 484
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Response;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 488
    :catch_0
    move-exception v1

    .line 489
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 485
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    .line 487
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2
.end method

.method private makeRequest(Landroidx/media3/datasource/DataSpec;)Lokhttp3/Request;
    .locals 12
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 413
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    .line 414
    .local v0, "position":J
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->length:J

    .line 416
    .local v2, "length":J
    iget-object v4, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v4

    .line 417
    .local v4, "url":Lokhttp3/HttpUrl;
    const/4 v5, 0x1

    if-eqz v4, :cond_8

    .line 425
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v6, v4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 426
    .local v6, "builder":Lokhttp3/Request$Builder;
    iget-object v7, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->cacheControl:Lokhttp3/CacheControl;

    if-eqz v7, :cond_0

    .line 427
    iget-object v7, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->cacheControl:Lokhttp3/CacheControl;

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 430
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    if-eqz v8, :cond_1

    .line 432
    iget-object v8, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v8}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 435
    :cond_1
    iget-object v8, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v8}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 436
    iget-object v8, p1, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 438
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 439
    .local v9, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 440
    .end local v9    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 442
    :cond_2
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/datasource/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, "rangeHeader":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 444
    const-string v9, "Range"

    invoke-virtual {v6, v9, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 446
    :cond_3
    iget-object v9, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->userAgent:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 447
    const-string v9, "User-Agent"

    iget-object v10, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 449
    :cond_4
    invoke-virtual {p1, v5}, Landroidx/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 450
    const-string v5, "Accept-Encoding"

    const-string v9, "identity"

    invoke-virtual {v6, v5, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 453
    :cond_5
    const/4 v5, 0x0

    .line 454
    .local v5, "requestBody":Lokhttp3/RequestBody;
    iget-object v9, p1, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    if-eqz v9, :cond_6

    .line 455
    iget-object v9, p1, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    invoke-static {v9}, Lokhttp3/RequestBody;->create([B)Lokhttp3/RequestBody;

    move-result-object v5

    goto :goto_1

    .line 456
    :cond_6
    iget v9, p1, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 458
    sget-object v9, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v9}, Lokhttp3/RequestBody;->create([B)Lokhttp3/RequestBody;

    move-result-object v5

    .line 460
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 461
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    return-object v9

    .line 418
    .end local v5    # "requestBody":Lokhttp3/RequestBody;
    .end local v6    # "builder":Lokhttp3/Request$Builder;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "rangeHeader":Ljava/lang/String;
    :cond_8
    new-instance v6, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string v7, "Malformed URL"

    const/16 v8, 0x3ec

    invoke-direct {v6, v7, p1, v8, v5}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw v6
.end method

.method private readInternal([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    if-nez p3, :cond_0

    .line 552
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 555
    iget-wide v2, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesToRead:J

    iget-wide v4, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesRead:J

    sub-long/2addr v2, v4

    .line 556
    .local v2, "bytesRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 557
    return v1

    .line 559
    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    .line 562
    .end local v2    # "bytesRemaining":J
    :cond_2
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 563
    .local v0, "read":I
    if-ne v0, v1, :cond_3

    .line 564
    return v1

    .line 567
    :cond_3
    iget-wide v1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesRead:J

    .line 568
    invoke-virtual {p0, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesTransferred(I)V

    .line 569
    return v0
.end method

.method private skipFully(JLandroidx/media3/datasource/DataSpec;)V
    .locals 8
    .param p1, "bytesToSkip"    # J
    .param p3, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 503
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 508
    .local v2, "skipBuffer":[B
    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_4

    .line 509
    const/4 v3, 0x1

    :try_start_0
    array-length v4, v2

    int-to-long v4, v4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 510
    .local v4, "readLength":I
    iget-object v5, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;

    invoke-static {v5}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 511
    .local v5, "read":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 514
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 520
    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 521
    invoke-virtual {p0, v5}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesTransferred(I)V

    .line 522
    .end local v4    # "readLength":I
    .end local v5    # "read":I
    goto :goto_0

    .line 515
    .restart local v4    # "readLength":I
    .restart local v5    # "read":I
    :cond_1
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, p3, v1, v3}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Landroidx/media3/datasource/DataSpec;II)V

    .end local v2    # "skipBuffer":[B
    .end local p1    # "bytesToSkip":J
    .end local p3    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v0

    .line 512
    .restart local v2    # "skipBuffer":[B
    .restart local p1    # "bytesToSkip":J
    .restart local p3    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .end local v2    # "skipBuffer":[B
    .end local p1    # "bytesToSkip":J
    .end local p3    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v4    # "readLength":I
    .end local v5    # "read":I
    .restart local v2    # "skipBuffer":[B
    .restart local p1    # "bytesToSkip":J
    .restart local p3    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_3

    .line 526
    move-object v1, v0

    check-cast v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v1

    .line 528
    :cond_3
    new-instance v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v1, p3, v4, v3}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Landroidx/media3/datasource/DataSpec;II)V

    throw v1

    .line 523
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    return-void
.end method


# virtual methods
.method public clearAllRequestProperties()V
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->clear()V

    .line 301
    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 293
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public close()V
    .locals 1

    .line 404
    iget-boolean v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->opened:Z

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->opened:Z

    .line 406
    invoke-virtual {p0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->transferEnded()V

    .line 407
    invoke-direct {p0}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->closeConnectionQuietly()V

    .line 409
    :cond_0
    return-void
.end method

.method public getResponseCode()I
    .locals 1

    .line 273
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 267
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 19
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 306
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    iput-object v7, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 307
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesRead:J

    .line 308
    iput-wide v2, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesToRead:J

    .line 309
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 311
    invoke-direct/range {p0 .. p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->makeRequest(Landroidx/media3/datasource/DataSpec;)Lokhttp3/Request;

    move-result-object v9

    .line 314
    .local v9, "request":Lokhttp3/Request;
    iget-object v0, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->callFactory:Lokhttp3/Call$Factory;

    invoke-interface {v0, v9}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v10

    .line 316
    .local v10, "call":Lokhttp3/Call;
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {v1, v10}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->executeCall(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    .line 317
    iget-object v0, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->response:Lokhttp3/Response;

    move-object v11, v0

    .line 318
    .local v11, "response":Lokhttp3/Response;
    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    move-object v12, v0

    .line 319
    .local v12, "responseBody":Lokhttp3/ResponseBody;
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 323
    nop

    .line 325
    move-wide v5, v2

    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v3

    .line 328
    .local v3, "responseCode":I
    invoke-virtual {v11}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    const-wide/16 v13, -0x1

    if-nez v0, :cond_3

    .line 329
    const/16 v2, 0x1a0

    if-ne v3, v2, :cond_1

    .line 330
    nop

    .line 331
    invoke-virtual {v11}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v8, "Content-Range"

    invoke-virtual {v0, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v15

    .line 332
    .local v15, "documentSize":J
    move-wide/from16 v17, v5

    iget-wide v5, v7, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v0, v5, v15

    if-nez v0, :cond_1

    .line 333
    iput-boolean v4, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->opened:Z

    .line 334
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 335
    iget-wide v4, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v4, v13

    if-eqz v0, :cond_0

    iget-wide v4, v7, Landroidx/media3/datasource/DataSpec;->length:J

    move-wide/from16 v17, v4

    :cond_0
    return-wide v17

    .line 341
    .end local v15    # "documentSize":J
    :cond_1
    :try_start_1
    iget-object v0, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->responseByteStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    .local v0, "errorResponseBody":[B
    move-object v8, v0

    goto :goto_0

    .line 342
    .end local v0    # "errorResponseBody":[B
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v8, v4

    .line 345
    .end local v0    # "e":Ljava/io/IOException;
    .local v8, "errorResponseBody":[B
    :goto_0
    invoke-virtual {v11}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v6

    .line 346
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->closeConnectionQuietly()V

    .line 349
    if-ne v3, v2, :cond_2

    .line 350
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    move-object v5, v0

    goto :goto_1

    .line 351
    :cond_2
    const/4 v0, 0x0

    move-object v5, v0

    :goto_1
    nop

    .line 352
    .local v5, "cause":Ljava/io/IOException;
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 353
    invoke-virtual {v11}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v8}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Landroidx/media3/datasource/DataSpec;[B)V

    throw v2

    .line 357
    .end local v5    # "cause":Ljava/io/IOException;
    .end local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "errorResponseBody":[B
    :cond_3
    move-wide/from16 v17, v5

    invoke-virtual {v12}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    .line 358
    .local v2, "mediaType":Lokhttp3/MediaType;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    move-object v5, v0

    .line 359
    .local v5, "contentType":Ljava/lang/String;
    iget-object v0, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, v5}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 360
    :cond_5
    invoke-direct {v1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->closeConnectionQuietly()V

    .line 361
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v5, v7}, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;)V

    throw v0

    .line 367
    :cond_6
    :goto_3
    const/16 v0, 0xc8

    if-ne v3, v0, :cond_7

    move-wide v15, v13

    iget-wide v13, v7, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v0, v13, v17

    if-eqz v0, :cond_8

    iget-wide v13, v7, Landroidx/media3/datasource/DataSpec;->position:J

    move-wide/from16 v17, v13

    goto :goto_4

    :cond_7
    move-wide v15, v13

    :cond_8
    :goto_4
    move-wide/from16 v13, v17

    .line 370
    .local v13, "bytesToSkip":J
    move-object v6, v5

    .end local v5    # "contentType":Ljava/lang/String;
    .local v6, "contentType":Ljava/lang/String;
    iget-wide v4, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v4, v15

    if-eqz v0, :cond_9

    .line 371
    iget-wide v4, v7, Landroidx/media3/datasource/DataSpec;->length:J

    iput-wide v4, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesToRead:J

    move-object/from16 v17, v9

    goto :goto_5

    .line 373
    :cond_9
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 374
    .local v4, "contentLength":J
    cmp-long v0, v4, v15

    if-eqz v0, :cond_a

    sub-long v15, v4, v13

    :cond_a
    move-object/from16 v17, v9

    move-wide v8, v15

    .end local v9    # "request":Lokhttp3/Request;
    .local v17, "request":Lokhttp3/Request;
    iput-wide v8, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesToRead:J

    .line 377
    .end local v4    # "contentLength":J
    :goto_5
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->opened:Z

    .line 378
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 381
    :try_start_2
    invoke-direct {v1, v13, v14, v7}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->skipFully(JLandroidx/media3/datasource/DataSpec;)V
    :try_end_2
    .catch Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException; {:try_start_2 .. :try_end_2} :catch_1

    .line 385
    nop

    .line 387
    iget-wide v4, v1, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->bytesToRead:J

    return-wide v4

    .line 382
    :catch_1
    move-exception v0

    .line 383
    .local v0, "e":Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
    invoke-direct {v1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->closeConnectionQuietly()V

    .line 384
    throw v0

    .line 320
    .end local v0    # "e":Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
    .end local v2    # "mediaType":Lokhttp3/MediaType;
    .end local v3    # "responseCode":I
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v11    # "response":Lokhttp3/Response;
    .end local v12    # "responseBody":Lokhttp3/ResponseBody;
    .end local v13    # "bytesToSkip":J
    .end local v17    # "request":Lokhttp3/Request;
    .restart local v9    # "request":Lokhttp3/Request;
    :catch_2
    move-exception v0

    move-object/from16 v17, v9

    .line 321
    .end local v9    # "request":Lokhttp3/Request;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "request":Lokhttp3/Request;
    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v2

    throw v2
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 394
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->readInternal([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 397
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/DataSpec;

    .line 396
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v1

    throw v1
.end method

.method public setContentTypePredicate(Lcom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    .local p1, "contentTypePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    iput-object p1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 261
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 285
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->requestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method
