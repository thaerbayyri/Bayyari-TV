.class public final Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;
.super Ljava/lang/Object;
.source "ChannelDao_Impl.java"

# interfaces
.implements Lcom/bayyari/tv/data/local/dao/ChannelDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfChannelEntity:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/bayyari/tv/data/local/entities/ChannelEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XUMdulYmYr7w2VfPq_lAexBF3NM(Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->lambda$upsertAll$0(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 35
    new-instance v0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$1;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$1;-><init>(Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__insertAdapterOfChannelEntity:Landroidx/room/EntityInsertAdapter;

    .line 82
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$clearForServer$6(ILandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 4
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 453
    const-string v0, "DELETE FROM channels WHERE serverId = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 455
    .local v0, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    .line 456
    .local v1, "_argIndex":I
    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 457
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 458
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 458
    return-object v2

    .line 460
    .end local v1    # "_argIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 461
    throw v1
.end method

.method static synthetic lambda$count$5(ILandroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;
    .locals 4
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 426
    const-string v0, "SELECT COUNT(*) FROM channels WHERE serverId = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 428
    .local v0, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    .line 429
    .local v1, "_argIndex":I
    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 431
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    const/4 v2, 0x0

    .local v2, "_tmp":Ljava/lang/Integer;
    goto :goto_0

    .line 436
    .end local v2    # "_tmp":Ljava/lang/Integer;
    :cond_0
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    .restart local v2    # "_tmp":Ljava/lang/Integer;
    :goto_0
    nop

    .line 439
    .local v2, "_result":Ljava/lang/Integer;
    goto :goto_1

    .line 440
    .end local v2    # "_result":Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    .line 442
    .restart local v2    # "_result":Ljava/lang/Integer;
    :goto_1
    nop

    .line 444
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 442
    return-object v2

    .line 444
    .end local v1    # "_argIndex":I
    .end local v2    # "_result":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 445
    throw v1
.end method

.method static synthetic lambda$findById$3(IILandroidx/sqlite/SQLiteConnection;)Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    .locals 30
    .param p0, "serverId"    # I
    .param p1, "streamId"    # I
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 261
    const-string v0, "SELECT * FROM channels WHERE serverId = ? AND streamId = ? LIMIT 1"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 263
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 264
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    const/4 v0, 0x2

    .line 266
    move/from16 v4, p1

    int-to-long v5, v4

    :try_start_1
    invoke-interface {v2, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 267
    const-string v5, "streamId"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 268
    .local v5, "_columnIndexOfStreamId":I
    const-string v6, "name"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 269
    .local v6, "_columnIndexOfName":I
    const-string v7, "streamIcon"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 270
    .local v7, "_columnIndexOfStreamIcon":I
    const-string v8, "categoryId"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 271
    .local v8, "_columnIndexOfCategoryId":I
    const-string v9, "categoryName"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 272
    .local v9, "_columnIndexOfCategoryName":I
    const-string v10, "tvArchive"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 273
    .local v10, "_columnIndexOfTvArchive":I
    const-string v11, "tvArchiveDuration"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 274
    .local v11, "_columnIndexOfTvArchiveDuration":I
    const-string v12, "epgChannelId"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 275
    .local v12, "_columnIndexOfEpgChannelId":I
    const-string v13, "added"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 276
    .local v13, "_columnIndexOfAdded":I
    const-string v14, "serverId"

    invoke-static {v2, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 277
    .local v14, "_columnIndexOfServerId":I
    const-string v15, "directStreamUrl"

    invoke-static {v2, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 279
    .local v15, "_columnIndexOfDirectStreamUrl":I
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 281
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 283
    .local v0, "_tmpStreamId":I
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .local v1, "_tmpName":Ljava/lang/String;
    goto :goto_0

    .line 286
    .end local v1    # "_tmpName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 289
    .local v19, "_tmpName":Ljava/lang/String;
    :goto_0
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const/4 v1, 0x0

    move-object/from16 v20, v1

    .local v1, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_1

    .line 292
    .end local v1    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 295
    .local v20, "_tmpStreamIcon":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    const/4 v1, 0x0

    move-object/from16 v21, v1

    .local v1, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_2

    .line 298
    .end local v1    # "_tmpCategoryId":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    .line 301
    .local v21, "_tmpCategoryId":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .local v1, "_tmpCategoryName":Ljava/lang/String;
    goto :goto_3

    .line 304
    .end local v1    # "_tmpCategoryName":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    .line 307
    .local v22, "_tmpCategoryName":Ljava/lang/String;
    :goto_3
    move/from16 v18, v0

    .end local v0    # "_tmpStreamId":I
    .local v18, "_tmpStreamId":I
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 309
    .local v0, "_tmpTvArchive":I
    move/from16 v23, v0

    .end local v0    # "_tmpTvArchive":I
    .local v23, "_tmpTvArchive":I
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 311
    .local v0, "_tmpTvArchiveDuration":I
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 312
    const/4 v1, 0x0

    move-object/from16 v25, v1

    .local v1, "_tmpEpgChannelId":Ljava/lang/String;
    goto :goto_4

    .line 314
    .end local v1    # "_tmpEpgChannelId":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    .line 317
    .local v25, "_tmpEpgChannelId":Ljava/lang/String;
    :goto_4
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v26

    .line 319
    .local v26, "_tmpAdded":J
    move/from16 v24, v0

    .end local v0    # "_tmpTvArchiveDuration":I
    .local v24, "_tmpTvArchiveDuration":I
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 321
    .local v0, "_tmpServerId":I
    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 322
    const/4 v1, 0x0

    move-object/from16 v29, v1

    .local v1, "_tmpDirectStreamUrl":Ljava/lang/String;
    goto :goto_5

    .line 324
    .end local v1    # "_tmpDirectStreamUrl":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    .line 326
    .local v29, "_tmpDirectStreamUrl":Ljava/lang/String;
    :goto_5
    new-instance v17, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    move/from16 v28, v0

    .end local v0    # "_tmpServerId":I
    .local v28, "_tmpServerId":I
    invoke-direct/range {v17 .. v29}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v18    # "_tmpStreamId":I
    .end local v19    # "_tmpName":Ljava/lang/String;
    .end local v20    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v21    # "_tmpCategoryId":Ljava/lang/String;
    .end local v22    # "_tmpCategoryName":Ljava/lang/String;
    .end local v23    # "_tmpTvArchive":I
    .end local v24    # "_tmpTvArchiveDuration":I
    .end local v25    # "_tmpEpgChannelId":Ljava/lang/String;
    .end local v26    # "_tmpAdded":J
    .end local v28    # "_tmpServerId":I
    .end local v29    # "_tmpDirectStreamUrl":Ljava/lang/String;
    .local v17, "_result":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    goto :goto_6

    .line 328
    .end local v16    # "_argIndex":I
    .end local v17    # "_result":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    .local v0, "_argIndex":I
    :cond_6
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .restart local v16    # "_argIndex":I
    const/16 v17, 0x0

    .line 330
    .restart local v17    # "_result":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    :goto_6
    nop

    .line 332
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 330
    return-object v17

    .line 332
    .end local v5    # "_columnIndexOfStreamId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfStreamIcon":I
    .end local v8    # "_columnIndexOfCategoryId":I
    .end local v9    # "_columnIndexOfCategoryName":I
    .end local v10    # "_columnIndexOfTvArchive":I
    .end local v11    # "_columnIndexOfTvArchiveDuration":I
    .end local v12    # "_columnIndexOfEpgChannelId":I
    .end local v13    # "_columnIndexOfAdded":I
    .end local v14    # "_columnIndexOfServerId":I
    .end local v15    # "_columnIndexOfDirectStreamUrl":I
    .end local v16    # "_argIndex":I
    .end local v17    # "_result":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move/from16 v4, p1

    :goto_7
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 333
    throw v0
.end method

.method static synthetic lambda$observeAll$1(ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 30
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 98
    const-string v0, "SELECT * FROM channels WHERE serverId = ? ORDER BY name COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 100
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 101
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 102
    const-string v4, "streamId"

    invoke-static {v2, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 103
    .local v4, "_columnIndexOfStreamId":I
    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 104
    .local v5, "_columnIndexOfName":I
    const-string v6, "streamIcon"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 105
    .local v6, "_columnIndexOfStreamIcon":I
    const-string v7, "categoryId"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 106
    .local v7, "_columnIndexOfCategoryId":I
    const-string v8, "categoryName"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 107
    .local v8, "_columnIndexOfCategoryName":I
    const-string v9, "tvArchive"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 108
    .local v9, "_columnIndexOfTvArchive":I
    const-string v10, "tvArchiveDuration"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 109
    .local v10, "_columnIndexOfTvArchiveDuration":I
    const-string v11, "epgChannelId"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 110
    .local v11, "_columnIndexOfEpgChannelId":I
    const-string v12, "added"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 111
    .local v12, "_columnIndexOfAdded":I
    const-string v13, "serverId"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 112
    .local v13, "_columnIndexOfServerId":I
    const-string v14, "directStreamUrl"

    invoke-static {v2, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 113
    .local v14, "_columnIndexOfDirectStreamUrl":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 117
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 119
    .local v0, "_tmpStreamId":I
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .local v1, "_tmpName":Ljava/lang/String;
    goto :goto_1

    .line 122
    .end local v1    # "_tmpName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 125
    .local v19, "_tmpName":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const/4 v1, 0x0

    move-object/from16 v20, v1

    .local v1, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_2

    .line 128
    .end local v1    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 131
    .local v20, "_tmpStreamIcon":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x0

    move-object/from16 v21, v1

    .local v1, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_3

    .line 134
    .end local v1    # "_tmpCategoryId":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    .line 137
    .local v21, "_tmpCategoryId":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .local v1, "_tmpCategoryName":Ljava/lang/String;
    goto :goto_4

    .line 140
    .end local v1    # "_tmpCategoryName":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    .line 143
    .local v22, "_tmpCategoryName":Ljava/lang/String;
    :goto_4
    move/from16 v18, v0

    .end local v0    # "_tmpStreamId":I
    .local v18, "_tmpStreamId":I
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 145
    .local v0, "_tmpTvArchive":I
    move/from16 v23, v0

    .end local v0    # "_tmpTvArchive":I
    .local v23, "_tmpTvArchive":I
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 147
    .local v0, "_tmpTvArchiveDuration":I
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    const/4 v1, 0x0

    move-object/from16 v25, v1

    .local v1, "_tmpEpgChannelId":Ljava/lang/String;
    goto :goto_5

    .line 150
    .end local v1    # "_tmpEpgChannelId":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    .line 153
    .local v25, "_tmpEpgChannelId":Ljava/lang/String;
    :goto_5
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v26

    .line 155
    .local v26, "_tmpAdded":J
    move/from16 v24, v0

    .end local v0    # "_tmpTvArchiveDuration":I
    .local v24, "_tmpTvArchiveDuration":I
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 157
    .local v0, "_tmpServerId":I
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    const/4 v1, 0x0

    move-object/from16 v29, v1

    .local v1, "_tmpDirectStreamUrl":Ljava/lang/String;
    goto :goto_6

    .line 160
    .end local v1    # "_tmpDirectStreamUrl":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    .line 162
    .local v29, "_tmpDirectStreamUrl":Ljava/lang/String;
    :goto_6
    new-instance v17, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    move/from16 v28, v0

    .end local v0    # "_tmpServerId":I
    .local v28, "_tmpServerId":I
    invoke-direct/range {v17 .. v29}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JILjava/lang/String;)V

    move-object/from16 v0, v17

    .line 163
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    move-object/from16 v1, p1

    move/from16 v0, v16

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    .end local v18    # "_tmpStreamId":I
    .end local v19    # "_tmpName":Ljava/lang/String;
    .end local v20    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v21    # "_tmpCategoryId":Ljava/lang/String;
    .end local v22    # "_tmpCategoryName":Ljava/lang/String;
    .end local v23    # "_tmpTvArchive":I
    .end local v24    # "_tmpTvArchiveDuration":I
    .end local v25    # "_tmpEpgChannelId":Ljava/lang/String;
    .end local v26    # "_tmpAdded":J
    .end local v28    # "_tmpServerId":I
    .end local v29    # "_tmpDirectStreamUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 165
    .end local v16    # "_argIndex":I
    .local v0, "_argIndex":I
    :cond_6
    nop

    .line 167
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 165
    return-object v15

    .line 167
    .end local v0    # "_argIndex":I
    .end local v4    # "_columnIndexOfStreamId":I
    .end local v5    # "_columnIndexOfName":I
    .end local v6    # "_columnIndexOfStreamIcon":I
    .end local v7    # "_columnIndexOfCategoryId":I
    .end local v8    # "_columnIndexOfCategoryName":I
    .end local v9    # "_columnIndexOfTvArchive":I
    .end local v10    # "_columnIndexOfTvArchiveDuration":I
    .end local v11    # "_columnIndexOfEpgChannelId":I
    .end local v12    # "_columnIndexOfAdded":I
    .end local v13    # "_columnIndexOfServerId":I
    .end local v14    # "_columnIndexOfDirectStreamUrl":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 168
    throw v0
.end method

.method static synthetic lambda$observeByCategory$2(ILjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 31
    .param p0, "serverId"    # I
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 176
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM channels WHERE serverId = ? AND categoryId = ? ORDER BY name COLLATE NOCASE ASC"

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 178
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 179
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 180
    const/4 v0, 0x2

    .line 181
    if-nez v1, :cond_0

    .line 182
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 186
    :goto_0
    const-string v5, "streamId"

    invoke-static {v3, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 187
    .local v5, "_columnIndexOfStreamId":I
    const-string v6, "name"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 188
    .local v6, "_columnIndexOfName":I
    const-string v7, "streamIcon"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 189
    .local v7, "_columnIndexOfStreamIcon":I
    const-string v8, "categoryId"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 190
    .local v8, "_columnIndexOfCategoryId":I
    const-string v9, "categoryName"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 191
    .local v9, "_columnIndexOfCategoryName":I
    const-string v10, "tvArchive"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 192
    .local v10, "_columnIndexOfTvArchive":I
    const-string v11, "tvArchiveDuration"

    invoke-static {v3, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 193
    .local v11, "_columnIndexOfTvArchiveDuration":I
    const-string v12, "epgChannelId"

    invoke-static {v3, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 194
    .local v12, "_columnIndexOfEpgChannelId":I
    const-string v13, "added"

    invoke-static {v3, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 195
    .local v13, "_columnIndexOfAdded":I
    const-string v14, "serverId"

    invoke-static {v3, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 196
    .local v14, "_columnIndexOfServerId":I
    const-string v15, "directStreamUrl"

    invoke-static {v3, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 197
    .local v15, "_columnIndexOfDirectStreamUrl":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 198
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 201
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 203
    .local v0, "_tmpStreamId":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const/4 v1, 0x0

    move-object/from16 v20, v1

    .local v1, "_tmpName":Ljava/lang/String;
    goto :goto_2

    .line 206
    .end local v1    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 209
    .local v20, "_tmpName":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const/4 v1, 0x0

    move-object/from16 v21, v1

    .local v1, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_3

    .line 212
    .end local v1    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    .line 215
    .local v21, "_tmpStreamIcon":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .local v1, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_4

    .line 218
    .end local v1    # "_tmpCategoryId":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    .line 221
    .local v22, "_tmpCategoryId":Ljava/lang/String;
    :goto_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    const/4 v1, 0x0

    move-object/from16 v23, v1

    .local v1, "_tmpCategoryName":Ljava/lang/String;
    goto :goto_5

    .line 224
    .end local v1    # "_tmpCategoryName":Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    .line 227
    .local v23, "_tmpCategoryName":Ljava/lang/String;
    :goto_5
    move/from16 v19, v0

    .end local v0    # "_tmpStreamId":I
    .local v19, "_tmpStreamId":I
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 229
    .local v0, "_tmpTvArchive":I
    move/from16 v24, v0

    .end local v0    # "_tmpTvArchive":I
    .local v24, "_tmpTvArchive":I
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 231
    .local v0, "_tmpTvArchiveDuration":I
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    const/4 v1, 0x0

    move-object/from16 v26, v1

    .local v1, "_tmpEpgChannelId":Ljava/lang/String;
    goto :goto_6

    .line 234
    .end local v1    # "_tmpEpgChannelId":Ljava/lang/String;
    :cond_5
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    .line 237
    .local v26, "_tmpEpgChannelId":Ljava/lang/String;
    :goto_6
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v27

    .line 239
    .local v27, "_tmpAdded":J
    move/from16 v25, v0

    .end local v0    # "_tmpTvArchiveDuration":I
    .local v25, "_tmpTvArchiveDuration":I
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 241
    .local v0, "_tmpServerId":I
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    const/4 v1, 0x0

    move-object/from16 v30, v1

    .local v1, "_tmpDirectStreamUrl":Ljava/lang/String;
    goto :goto_7

    .line 244
    .end local v1    # "_tmpDirectStreamUrl":Ljava/lang/String;
    :cond_6
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    .line 246
    .local v30, "_tmpDirectStreamUrl":Ljava/lang/String;
    :goto_7
    new-instance v18, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    move/from16 v29, v0

    .end local v0    # "_tmpServerId":I
    .local v29, "_tmpServerId":I
    invoke-direct/range {v18 .. v30}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JILjava/lang/String;)V

    move-object/from16 v0, v18

    .line 247
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    move-object/from16 v1, v17

    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    move-object/from16 v17, v1

    move/from16 v0, v16

    move-object/from16 v1, p1

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    .end local v19    # "_tmpStreamId":I
    .end local v20    # "_tmpName":Ljava/lang/String;
    .end local v21    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v22    # "_tmpCategoryId":Ljava/lang/String;
    .end local v23    # "_tmpCategoryName":Ljava/lang/String;
    .end local v24    # "_tmpTvArchive":I
    .end local v25    # "_tmpTvArchiveDuration":I
    .end local v26    # "_tmpEpgChannelId":Ljava/lang/String;
    .end local v27    # "_tmpAdded":J
    .end local v29    # "_tmpServerId":I
    .end local v30    # "_tmpDirectStreamUrl":Ljava/lang/String;
    goto/16 :goto_1

    .line 249
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .end local v16    # "_argIndex":I
    .local v0, "_argIndex":I
    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    :cond_7
    move-object/from16 v1, v17

    .line 251
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 249
    return-object v1

    .line 251
    .end local v0    # "_argIndex":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .end local v5    # "_columnIndexOfStreamId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfStreamIcon":I
    .end local v8    # "_columnIndexOfCategoryId":I
    .end local v9    # "_columnIndexOfCategoryName":I
    .end local v10    # "_columnIndexOfTvArchive":I
    .end local v11    # "_columnIndexOfTvArchiveDuration":I
    .end local v12    # "_columnIndexOfEpgChannelId":I
    .end local v13    # "_columnIndexOfAdded":I
    .end local v14    # "_columnIndexOfServerId":I
    .end local v15    # "_columnIndexOfDirectStreamUrl":I
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 252
    throw v0
.end method

.method static synthetic lambda$search$4(ILjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 31
    .param p0, "serverId"    # I
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 342
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM channels WHERE serverId = ? AND name LIKE \'%\' || ? || \'%\' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200"

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 344
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 345
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 346
    const/4 v0, 0x2

    .line 347
    if-nez v1, :cond_0

    .line 348
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 352
    :goto_0
    const-string v5, "streamId"

    invoke-static {v3, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 353
    .local v5, "_columnIndexOfStreamId":I
    const-string v6, "name"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 354
    .local v6, "_columnIndexOfName":I
    const-string v7, "streamIcon"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 355
    .local v7, "_columnIndexOfStreamIcon":I
    const-string v8, "categoryId"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 356
    .local v8, "_columnIndexOfCategoryId":I
    const-string v9, "categoryName"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 357
    .local v9, "_columnIndexOfCategoryName":I
    const-string v10, "tvArchive"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 358
    .local v10, "_columnIndexOfTvArchive":I
    const-string v11, "tvArchiveDuration"

    invoke-static {v3, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 359
    .local v11, "_columnIndexOfTvArchiveDuration":I
    const-string v12, "epgChannelId"

    invoke-static {v3, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 360
    .local v12, "_columnIndexOfEpgChannelId":I
    const-string v13, "added"

    invoke-static {v3, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 361
    .local v13, "_columnIndexOfAdded":I
    const-string v14, "serverId"

    invoke-static {v3, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 362
    .local v14, "_columnIndexOfServerId":I
    const-string v15, "directStreamUrl"

    invoke-static {v3, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 363
    .local v15, "_columnIndexOfDirectStreamUrl":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 364
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 367
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 369
    .local v0, "_tmpStreamId":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const/4 v1, 0x0

    move-object/from16 v20, v1

    .local v1, "_tmpName":Ljava/lang/String;
    goto :goto_2

    .line 372
    .end local v1    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 375
    .local v20, "_tmpName":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    const/4 v1, 0x0

    move-object/from16 v21, v1

    .local v1, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_3

    .line 378
    .end local v1    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    .line 381
    .local v21, "_tmpStreamIcon":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .local v1, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_4

    .line 384
    .end local v1    # "_tmpCategoryId":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    .line 387
    .local v22, "_tmpCategoryId":Ljava/lang/String;
    :goto_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 388
    const/4 v1, 0x0

    move-object/from16 v23, v1

    .local v1, "_tmpCategoryName":Ljava/lang/String;
    goto :goto_5

    .line 390
    .end local v1    # "_tmpCategoryName":Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    .line 393
    .local v23, "_tmpCategoryName":Ljava/lang/String;
    :goto_5
    move/from16 v19, v0

    .end local v0    # "_tmpStreamId":I
    .local v19, "_tmpStreamId":I
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 395
    .local v0, "_tmpTvArchive":I
    move/from16 v24, v0

    .end local v0    # "_tmpTvArchive":I
    .local v24, "_tmpTvArchive":I
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 397
    .local v0, "_tmpTvArchiveDuration":I
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 398
    const/4 v1, 0x0

    move-object/from16 v26, v1

    .local v1, "_tmpEpgChannelId":Ljava/lang/String;
    goto :goto_6

    .line 400
    .end local v1    # "_tmpEpgChannelId":Ljava/lang/String;
    :cond_5
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    .line 403
    .local v26, "_tmpEpgChannelId":Ljava/lang/String;
    :goto_6
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v27

    .line 405
    .local v27, "_tmpAdded":J
    move/from16 v25, v0

    .end local v0    # "_tmpTvArchiveDuration":I
    .local v25, "_tmpTvArchiveDuration":I
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 407
    .local v0, "_tmpServerId":I
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 408
    const/4 v1, 0x0

    move-object/from16 v30, v1

    .local v1, "_tmpDirectStreamUrl":Ljava/lang/String;
    goto :goto_7

    .line 410
    .end local v1    # "_tmpDirectStreamUrl":Ljava/lang/String;
    :cond_6
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    .line 412
    .local v30, "_tmpDirectStreamUrl":Ljava/lang/String;
    :goto_7
    new-instance v18, Lcom/bayyari/tv/data/local/entities/ChannelEntity;

    move/from16 v29, v0

    .end local v0    # "_tmpServerId":I
    .local v29, "_tmpServerId":I
    invoke-direct/range {v18 .. v30}, Lcom/bayyari/tv/data/local/entities/ChannelEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JILjava/lang/String;)V

    move-object/from16 v0, v18

    .line 413
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    move-object/from16 v1, v17

    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    move-object/from16 v17, v1

    move/from16 v0, v16

    move-object/from16 v1, p1

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/ChannelEntity;
    .end local v19    # "_tmpStreamId":I
    .end local v20    # "_tmpName":Ljava/lang/String;
    .end local v21    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v22    # "_tmpCategoryId":Ljava/lang/String;
    .end local v23    # "_tmpCategoryName":Ljava/lang/String;
    .end local v24    # "_tmpTvArchive":I
    .end local v25    # "_tmpTvArchiveDuration":I
    .end local v26    # "_tmpEpgChannelId":Ljava/lang/String;
    .end local v27    # "_tmpAdded":J
    .end local v29    # "_tmpServerId":I
    .end local v30    # "_tmpDirectStreamUrl":Ljava/lang/String;
    goto/16 :goto_1

    .line 415
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .end local v16    # "_argIndex":I
    .local v0, "_argIndex":I
    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    :cond_7
    move-object/from16 v1, v17

    .line 417
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 415
    return-object v1

    .line 417
    .end local v0    # "_argIndex":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .end local v5    # "_columnIndexOfStreamId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfStreamIcon":I
    .end local v8    # "_columnIndexOfCategoryId":I
    .end local v9    # "_columnIndexOfCategoryName":I
    .end local v10    # "_columnIndexOfTvArchive":I
    .end local v11    # "_columnIndexOfTvArchiveDuration":I
    .end local v12    # "_columnIndexOfEpgChannelId":I
    .end local v13    # "_columnIndexOfAdded":I
    .end local v14    # "_columnIndexOfServerId":I
    .end local v15    # "_columnIndexOfDirectStreamUrl":I
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 418
    throw v0
.end method

.method private synthetic lambda$upsertAll$0(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1
    .param p1, "channels"    # Ljava/util/List;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 89
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__insertAdapterOfChannelEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public clearForServer(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "serverId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 451
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    const-string v0, "DELETE FROM channels WHERE serverId = ?"

    .line 452
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public count(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "serverId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 424
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/lang/Integer;>;"
    const-string v0, "SELECT COUNT(*) FROM channels WHERE serverId = ?"

    .line 425
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda3;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public findById(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "serverId",
            "streamId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/local/entities/ChannelEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 259
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    const-string v0, "SELECT * FROM channels WHERE serverId = ? AND streamId = ? LIMIT 1"

    .line 260
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda6;-><init>(II)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, p3}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public observeAll(I)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .param p1, "serverId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serverId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/ChannelEntity;",
            ">;>;"
        }
    .end annotation

    .line 96
    const-string v0, "SELECT * FROM channels WHERE serverId = ? ORDER BY name COLLATE NOCASE ASC"

    .line 97
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "channels"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    return-object v1
.end method

.method public observeByCategory(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "serverId",
            "categoryId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/ChannelEntity;",
            ">;>;"
        }
    .end annotation

    .line 174
    const-string v0, "SELECT * FROM channels WHERE serverId = ? AND categoryId = ? ORDER BY name COLLATE NOCASE ASC"

    .line 175
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "channels"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1, p2}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    return-object v1
.end method

.method public search(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "serverId",
            "query",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/ChannelEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 340
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;>;"
    const-string v0, "SELECT * FROM channels WHERE serverId = ? AND name LIKE \'%\' || ? || \'%\' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200"

    .line 341
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, p3}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public upsertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "channels",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/ChannelEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 87
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/ChannelEntity;>;"
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
