.class final Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;
.super Ljava/lang/Object;
.source "RtspTrackTiming.java"


# instance fields
.field public final rtpTimestamp:J

.field public final sequenceNumber:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JILandroid/net/Uri;)V
    .locals 0
    .param p1, "rtpTimestamp"    # J
    .param p3, "sequenceNumber"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->rtpTimestamp:J

    .line 168
    iput p3, p0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->sequenceNumber:I

    .line 169
    iput-object p4, p0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->uri:Landroid/net/Uri;

    .line 170
    return-void
.end method

.method public static parseTrackTiming(Ljava/lang/String;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;
    .locals 23
    .param p0, "rtpInfoString"    # Ljava/lang/String;
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object v1, v0

    .line 67
    .local v1, "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;>;"
    const-string v0, ","

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v0, v5

    .line 68
    .local v6, "perTrackTimingString":Ljava/lang/String;
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .local v7, "rtpTime":J
    const/4 v9, -0x1

    .line 70
    .local v9, "sequenceNumber":I
    const/4 v10, 0x0

    .line 72
    .local v10, "uri":Landroid/net/Uri;
    const-string v11, ";"

    invoke-static {v6, v11}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_1

    const/16 v16, 0x0

    aget-object v4, v11, v13

    .line 74
    .local v4, "attributePair":Ljava/lang/String;
    :try_start_0
    const-string v14, "="

    invoke-static {v4, v14}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, "attributes":[Ljava/lang/String;
    aget-object v18, v14, v16

    move-object/from16 v19, v18

    .line 76
    .local v19, "attributeName":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v20, v14, v18

    move-object/from16 v21, v20

    .line 78
    .local v21, "attributeValue":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    .end local v19    # "attributeName":Ljava/lang/String;
    .local v0, "attributeName":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "attributeName":Ljava/lang/String;
    .restart local v19    # "attributeName":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v15, "rtptime"

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    .end local v19    # "attributeName":Ljava/lang/String;
    .restart local v0    # "attributeName":Ljava/lang/String;
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x2

    goto :goto_3

    .end local v0    # "attributeName":Ljava/lang/String;
    .restart local v19    # "attributeName":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v22, v0

    move-object/from16 v0, v19

    .end local v19    # "attributeName":Ljava/lang/String;
    .restart local v0    # "attributeName":Ljava/lang/String;
    const-string/jumbo v15, "url"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move/from16 v15, v16

    goto :goto_3

    .end local v0    # "attributeName":Ljava/lang/String;
    .restart local v19    # "attributeName":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v22, v0

    move-object/from16 v0, v19

    .end local v19    # "attributeName":Ljava/lang/String;
    .restart local v0    # "attributeName":Ljava/lang/String;
    const-string/jumbo v15, "seq"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v15, :cond_0

    move/from16 v15, v18

    goto :goto_3

    :cond_0
    :goto_2
    const/4 v15, -0x1

    :goto_3
    packed-switch v15, :pswitch_data_0

    .line 89
    move-object/from16 v15, p1

    move-object/from16 v2, v21

    .end local v21    # "attributeValue":Ljava/lang/String;
    .local v2, "attributeValue":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 86
    .end local v2    # "attributeValue":Ljava/lang/String;
    .restart local v21    # "attributeValue":Ljava/lang/String;
    :pswitch_0
    :try_start_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 87
    .end local v7    # "rtpTime":J
    .local v17, "rtpTime":J
    move-object/from16 v15, p1

    move-wide/from16 v7, v17

    goto :goto_4

    .line 83
    .end local v17    # "rtpTime":J
    .restart local v7    # "rtpTime":J
    :pswitch_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 84
    .end local v9    # "sequenceNumber":I
    .local v15, "sequenceNumber":I
    move v9, v15

    move-object/from16 v15, p1

    goto :goto_4

    .line 80
    .end local v15    # "sequenceNumber":I
    .restart local v9    # "sequenceNumber":I
    :pswitch_2
    move-object/from16 v15, p1

    move-object/from16 v2, v21

    .end local v21    # "attributeValue":Ljava/lang/String;
    .restart local v2    # "attributeValue":Ljava/lang/String;
    :try_start_3
    invoke-static {v2, v15}, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->resolveUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    .line 81
    .end local v10    # "uri":Landroid/net/Uri;
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v10, v17

    .line 93
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "attributeValue":Ljava/lang/String;
    .end local v14    # "attributes":[Ljava/lang/String;
    .end local v17    # "uri":Landroid/net/Uri;
    .restart local v10    # "uri":Landroid/net/Uri;
    :goto_4
    nop

    .line 72
    .end local v4    # "attributePair":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p0

    move-object/from16 v0, v22

    goto/16 :goto_1

    .line 91
    .restart local v4    # "attributePair":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 89
    .end local v1    # "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;>;"
    .end local v4    # "attributePair":Ljava/lang/String;
    .end local v6    # "perTrackTimingString":Ljava/lang/String;
    .end local v7    # "rtpTime":J
    .end local v9    # "sequenceNumber":I
    .end local v10    # "uri":Landroid/net/Uri;
    .end local p0    # "rtpInfoString":Ljava/lang/String;
    .end local p1    # "sessionUri":Landroid/net/Uri;
    .restart local v0    # "attributeName":Ljava/lang/String;
    .restart local v2    # "attributeValue":Ljava/lang/String;
    .restart local v14    # "attributes":[Ljava/lang/String;
    :goto_5
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "attributeValue":Ljava/lang/String;
    .end local v14    # "attributes":[Ljava/lang/String;
    .restart local v1    # "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;>;"
    .restart local v4    # "attributePair":Ljava/lang/String;
    .restart local v6    # "perTrackTimingString":Ljava/lang/String;
    .restart local v7    # "rtpTime":J
    .restart local v9    # "sequenceNumber":I
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local p0    # "rtpInfoString":Ljava/lang/String;
    .restart local p1    # "sessionUri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object/from16 v15, p1

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    invoke-static {v4, v0}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "attributePair":Ljava/lang/String;
    :cond_1
    move-object/from16 v15, p1

    move-object/from16 v22, v0

    const/16 v16, 0x0

    if-eqz v10, :cond_3

    .line 97
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne v9, v0, :cond_2

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v11

    if-eqz v0, :cond_3

    .line 102
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;

    invoke-direct {v0, v7, v8, v9, v10}, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;-><init>(JILandroid/net/Uri;)V

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 67
    .end local v6    # "perTrackTimingString":Ljava/lang/String;
    .end local v7    # "rtpTime":J
    .end local v9    # "sequenceNumber":I
    .end local v10    # "uri":Landroid/net/Uri;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v0, v22

    goto/16 :goto_0

    .line 99
    .restart local v6    # "perTrackTimingString":Ljava/lang/String;
    .restart local v7    # "rtpTime":J
    .restart local v9    # "sequenceNumber":I
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x0

    invoke-static {v6, v3}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 104
    .end local v6    # "perTrackTimingString":Ljava/lang/String;
    .end local v7    # "rtpTime":J
    .end local v9    # "sequenceNumber":I
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v15, p1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1bc5f -> :sswitch_2
        0x1c56f -> :sswitch_1
        0x5ad9263b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static resolveUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "sessionUri"    # Landroid/net/Uri;

    .line 127
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "rtsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 129
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    return-object v0

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "sessionUriString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    return-object v0

    .line 144
    :cond_1
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-static {v1, p0}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 146
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 144
    :goto_0
    return-object v3
.end method
