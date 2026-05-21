.class final Landroidx/media3/exoplayer/rtsp/MediaDescription;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;,
        Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;,
        Landroidx/media3/exoplayer/rtsp/MediaDescription$MediaType;
    }
.end annotation


# static fields
.field public static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final RTP_AVP_PROFILE:Ljava/lang/String; = "RTP/AVP"


# instance fields
.field public final attributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bitrate:I

.field public final connection:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final mediaTitle:Ljava/lang/String;

.field public final mediaType:Ljava/lang/String;

.field public final payloadType:I

.field public final port:I

.field public final rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

.field public final transportProtocol:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;)V
    .locals 1
    .param p1, "builder"    # Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;
    .param p3, "rtpMapAttribute"    # Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;",
            ")V"
        }
    .end annotation

    .line 319
    .local p2, "attributes":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$100(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    .line 321
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$200(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    .line 322
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$300(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    .line 323
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$400(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    .line 324
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$500(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    .line 325
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$600(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    .line 326
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$700(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    .line 327
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;->access$800(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    .line 328
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 329
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    .line 330
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;Landroidx/media3/exoplayer/rtsp/MediaDescription$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;
    .param p2, "x1"    # Lcom/google/common/collect/ImmutableMap;
    .param p3, "x2"    # Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;
    .param p4, "x3"    # Landroidx/media3/exoplayer/rtsp/MediaDescription$1;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/MediaDescription;-><init>(Landroidx/media3/exoplayer/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 334
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 335
    return v0

    .line 338
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 342
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;

    .line 343
    .local v2, "other":Landroidx/media3/exoplayer/rtsp/MediaDescription;
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    iget v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    iget v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    iget v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iget-object v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 348
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    iget-object v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    .line 349
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    .line 350
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    .line 351
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    .line 352
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 343
    :goto_0
    return v0

    .line 339
    .end local v2    # "other":Landroidx/media3/exoplayer/rtsp/MediaDescription;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFmtpParametersAsMap()Lcom/google/common/collect/ImmutableMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "fmtp"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    .local v0, "fmtpAttributeValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 381
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1

    .line 385
    :cond_0
    const-string v1, " "

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "fmtpComponents":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    invoke-static {v2, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 391
    aget-object v2, v1, v4

    const-string v3, ";\\s?"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "parameters":[Ljava/lang/String;
    new-instance v3, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 393
    .local v3, "formatParametersBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v6, v2

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v2, v7

    .line 395
    .local v8, "parameter":Ljava/lang/String;
    const-string v9, "="

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 396
    .local v9, "parameterPair":[Ljava/lang/String;
    aget-object v10, v9, v5

    aget-object v11, v9, v4

    invoke-virtual {v3, v10, v11}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 393
    .end local v8    # "parameter":Ljava/lang/String;
    .end local v9    # "parameterPair":[Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    return-object v4
.end method

.method public hashCode()I
    .locals 4

    .line 357
    const/4 v0, 0x7

    .line 358
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 359
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->port:I

    add-int/2addr v0, v2

    .line 360
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 361
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->payloadType:I

    add-int/2addr v0, v2

    .line 362
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->bitrate:I

    add-int/2addr v1, v2

    .line 363
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 364
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 365
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 366
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->connection:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    .line 367
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    .line 368
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
