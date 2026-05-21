.class public final Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;
.super Ljava/lang/Object;
.source "SeriesDao_Impl.java"

# interfaces
.implements Lcom/bayyari/tv/data/local/dao/SeriesDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfSeriesEntity:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KnU5JyeFlbwE6dTAaL5qrMva3CU(Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->lambda$upsertAll$0(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$1;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$1;-><init>(Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__insertAdapterOfSeriesEntity:Landroidx/room/EntityInsertAdapter;

    .line 94
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

    .line 608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$clearForServer$6(ILandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 4
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 594
    const-string v0, "DELETE FROM series WHERE serverId = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 596
    .local v0, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    .line 597
    .local v1, "_argIndex":I
    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 598
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 599
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 599
    return-object v2

    .line 601
    .end local v1    # "_argIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 602
    throw v1
.end method

.method static synthetic lambda$findById$4(IILandroidx/sqlite/SQLiteConnection;)Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    .locals 31
    .param p0, "serverId"    # I
    .param p1, "seriesId"    # I
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 399
    const-string v0, "SELECT * FROM series WHERE serverId = ? AND seriesId = ? LIMIT 1"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 401
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 402
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 403
    const/4 v0, 0x2

    .line 404
    move/from16 v4, p1

    int-to-long v5, v4

    invoke-interface {v2, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 405
    const-string v5, "seriesId"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 406
    .local v5, "_columnIndexOfSeriesId":I
    const-string v6, "name"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 407
    .local v6, "_columnIndexOfName":I
    const-string v7, "cover"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 408
    .local v7, "_columnIndexOfCover":I
    const-string v8, "plot"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 409
    .local v8, "_columnIndexOfPlot":I
    const-string v9, "cast"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 410
    .local v9, "_columnIndexOfCast":I
    const-string v10, "director"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 411
    .local v10, "_columnIndexOfDirector":I
    const-string v11, "genre"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 412
    .local v11, "_columnIndexOfGenre":I
    const-string v12, "releaseDate"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 413
    .local v12, "_columnIndexOfReleaseDate":I
    const-string v13, "lastModified"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 414
    .local v13, "_columnIndexOfLastModified":I
    const-string v14, "rating"

    invoke-static {v2, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 415
    .local v14, "_columnIndexOfRating":I
    const-string v15, "categoryId"

    invoke-static {v2, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 416
    .local v15, "_columnIndexOfCategoryId":I
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    const-string v0, "serverId"

    invoke-static {v2, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 418
    .local v0, "_columnIndexOfServerId":I
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 420
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 422
    .local v3, "_tmpSeriesId":I
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    const/4 v4, 0x0

    move-object/from16 v19, v4

    .local v4, "_tmpName":Ljava/lang/String;
    goto :goto_0

    .line 425
    .end local v4    # "_tmpName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    .line 428
    .local v19, "_tmpName":Ljava/lang/String;
    :goto_0
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    const/4 v4, 0x0

    move-object/from16 v20, v4

    .local v4, "_tmpCover":Ljava/lang/String;
    goto :goto_1

    .line 431
    .end local v4    # "_tmpCover":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    .line 434
    .local v20, "_tmpCover":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 435
    const/4 v4, 0x0

    move-object/from16 v21, v4

    .local v4, "_tmpPlot":Ljava/lang/String;
    goto :goto_2

    .line 437
    .end local v4    # "_tmpPlot":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    .line 440
    .local v21, "_tmpPlot":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 441
    const/4 v4, 0x0

    move-object/from16 v22, v4

    .local v4, "_tmpCast":Ljava/lang/String;
    goto :goto_3

    .line 443
    .end local v4    # "_tmpCast":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    .line 446
    .local v22, "_tmpCast":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 447
    const/4 v4, 0x0

    move-object/from16 v23, v4

    .local v4, "_tmpDirector":Ljava/lang/String;
    goto :goto_4

    .line 449
    .end local v4    # "_tmpDirector":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v4

    .line 452
    .local v23, "_tmpDirector":Ljava/lang/String;
    :goto_4
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 453
    const/4 v4, 0x0

    move-object/from16 v24, v4

    .local v4, "_tmpGenre":Ljava/lang/String;
    goto :goto_5

    .line 455
    .end local v4    # "_tmpGenre":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v4

    .line 458
    .local v24, "_tmpGenre":Ljava/lang/String;
    :goto_5
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 459
    const/4 v4, 0x0

    move-object/from16 v25, v4

    .local v4, "_tmpReleaseDate":Ljava/lang/String;
    goto :goto_6

    .line 461
    .end local v4    # "_tmpReleaseDate":Ljava/lang/String;
    :cond_6
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v4

    .line 464
    .local v25, "_tmpReleaseDate":Ljava/lang/String;
    :goto_6
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v26

    .line 466
    .local v26, "_tmpLastModified":J
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 467
    const/4 v4, 0x0

    move-object/from16 v28, v4

    .local v4, "_tmpRating":Ljava/lang/String;
    goto :goto_7

    .line 469
    .end local v4    # "_tmpRating":Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v28, v4

    .line 472
    .local v28, "_tmpRating":Ljava/lang/String;
    :goto_7
    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 473
    const/4 v4, 0x0

    move-object/from16 v29, v4

    .local v4, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_8

    .line 475
    .end local v4    # "_tmpCategoryId":Ljava/lang/String;
    :cond_8
    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v29, v4

    .line 478
    .local v29, "_tmpCategoryId":Ljava/lang/String;
    :goto_8
    move/from16 v18, v3

    .end local v3    # "_tmpSeriesId":I
    .local v18, "_tmpSeriesId":I
    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 479
    .local v3, "_tmpServerId":I
    new-instance v17, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    move/from16 v30, v3

    .end local v3    # "_tmpServerId":I
    .local v30, "_tmpServerId":I
    invoke-direct/range {v17 .. v30}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .end local v18    # "_tmpSeriesId":I
    .end local v19    # "_tmpName":Ljava/lang/String;
    .end local v20    # "_tmpCover":Ljava/lang/String;
    .end local v21    # "_tmpPlot":Ljava/lang/String;
    .end local v22    # "_tmpCast":Ljava/lang/String;
    .end local v23    # "_tmpDirector":Ljava/lang/String;
    .end local v24    # "_tmpGenre":Ljava/lang/String;
    .end local v25    # "_tmpReleaseDate":Ljava/lang/String;
    .end local v26    # "_tmpLastModified":J
    .end local v28    # "_tmpRating":Ljava/lang/String;
    .end local v29    # "_tmpCategoryId":Ljava/lang/String;
    .end local v30    # "_tmpServerId":I
    .local v17, "_result":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    goto :goto_9

    .line 481
    .end local v17    # "_result":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    :cond_9
    const/16 v17, 0x0

    .line 483
    .restart local v17    # "_result":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    :goto_9
    nop

    .line 485
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 483
    return-object v17

    .line 485
    .end local v0    # "_columnIndexOfServerId":I
    .end local v5    # "_columnIndexOfSeriesId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfCover":I
    .end local v8    # "_columnIndexOfPlot":I
    .end local v9    # "_columnIndexOfCast":I
    .end local v10    # "_columnIndexOfDirector":I
    .end local v11    # "_columnIndexOfGenre":I
    .end local v12    # "_columnIndexOfReleaseDate":I
    .end local v13    # "_columnIndexOfLastModified":I
    .end local v14    # "_columnIndexOfRating":I
    .end local v15    # "_columnIndexOfCategoryId":I
    .end local v16    # "_argIndex":I
    .end local v17    # "_result":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 486
    throw v0
.end method

.method static synthetic lambda$latest$3(IILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 33
    .param p0, "serverId"    # I
    .param p1, "limit"    # I
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 303
    const-string v0, "SELECT * FROM series WHERE serverId = ? ORDER BY lastModified DESC LIMIT ?"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 305
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 306
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 307
    const/4 v0, 0x2

    .line 308
    move/from16 v4, p1

    int-to-long v5, v4

    invoke-interface {v2, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 309
    const-string v5, "seriesId"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 310
    .local v5, "_columnIndexOfSeriesId":I
    const-string v6, "name"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 311
    .local v6, "_columnIndexOfName":I
    const-string v7, "cover"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 312
    .local v7, "_columnIndexOfCover":I
    const-string v8, "plot"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 313
    .local v8, "_columnIndexOfPlot":I
    const-string v9, "cast"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 314
    .local v9, "_columnIndexOfCast":I
    const-string v10, "director"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 315
    .local v10, "_columnIndexOfDirector":I
    const-string v11, "genre"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 316
    .local v11, "_columnIndexOfGenre":I
    const-string v12, "releaseDate"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 317
    .local v12, "_columnIndexOfReleaseDate":I
    const-string v13, "lastModified"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 318
    .local v13, "_columnIndexOfLastModified":I
    const-string v14, "rating"

    invoke-static {v2, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 319
    .local v14, "_columnIndexOfRating":I
    const-string v15, "categoryId"

    invoke-static {v2, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 320
    .local v15, "_columnIndexOfCategoryId":I
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    const-string v0, "serverId"

    invoke-static {v2, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, "_columnIndexOfServerId":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    .line 322
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 325
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 327
    .local v3, "_tmpSeriesId":I
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    const/4 v4, 0x0

    move-object/from16 v21, v4

    .local v4, "_tmpName":Ljava/lang/String;
    goto :goto_1

    .line 330
    .end local v4    # "_tmpName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    .line 333
    .local v21, "_tmpName":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    const/4 v4, 0x0

    move-object/from16 v22, v4

    .local v4, "_tmpCover":Ljava/lang/String;
    goto :goto_2

    .line 336
    .end local v4    # "_tmpCover":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    .line 339
    .local v22, "_tmpCover":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    const/4 v4, 0x0

    move-object/from16 v23, v4

    .local v4, "_tmpPlot":Ljava/lang/String;
    goto :goto_3

    .line 342
    .end local v4    # "_tmpPlot":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v4

    .line 345
    .local v23, "_tmpPlot":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    const/4 v4, 0x0

    move-object/from16 v24, v4

    .local v4, "_tmpCast":Ljava/lang/String;
    goto :goto_4

    .line 348
    .end local v4    # "_tmpCast":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v4

    .line 351
    .local v24, "_tmpCast":Ljava/lang/String;
    :goto_4
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 352
    const/4 v4, 0x0

    move-object/from16 v25, v4

    .local v4, "_tmpDirector":Ljava/lang/String;
    goto :goto_5

    .line 354
    .end local v4    # "_tmpDirector":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v4

    .line 357
    .local v25, "_tmpDirector":Ljava/lang/String;
    :goto_5
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 358
    const/4 v4, 0x0

    move-object/from16 v26, v4

    .local v4, "_tmpGenre":Ljava/lang/String;
    goto :goto_6

    .line 360
    .end local v4    # "_tmpGenre":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    .line 363
    .local v26, "_tmpGenre":Ljava/lang/String;
    :goto_6
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 364
    const/4 v4, 0x0

    move-object/from16 v27, v4

    .local v4, "_tmpReleaseDate":Ljava/lang/String;
    goto :goto_7

    .line 366
    .end local v4    # "_tmpReleaseDate":Ljava/lang/String;
    :cond_6
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v4

    .line 369
    .local v27, "_tmpReleaseDate":Ljava/lang/String;
    :goto_7
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v28

    .line 371
    .local v28, "_tmpLastModified":J
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 372
    const/4 v4, 0x0

    move-object/from16 v30, v4

    .local v4, "_tmpRating":Ljava/lang/String;
    goto :goto_8

    .line 374
    .end local v4    # "_tmpRating":Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    .line 377
    .local v30, "_tmpRating":Ljava/lang/String;
    :goto_8
    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 378
    const/4 v4, 0x0

    move-object/from16 v31, v4

    .local v4, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_9

    .line 380
    .end local v4    # "_tmpCategoryId":Ljava/lang/String;
    :cond_8
    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v4

    .line 383
    .local v31, "_tmpCategoryId":Ljava/lang/String;
    :goto_9
    move/from16 v20, v3

    .end local v3    # "_tmpSeriesId":I
    .local v20, "_tmpSeriesId":I
    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 384
    .local v3, "_tmpServerId":I
    new-instance v19, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    move/from16 v32, v3

    .end local v3    # "_tmpServerId":I
    .local v32, "_tmpServerId":I
    invoke-direct/range {v19 .. v32}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v19

    .line 385
    .local v3, "_item":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    move-object/from16 v4, v18

    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    move/from16 v3, p0

    move-object/from16 v18, v4

    move/from16 v4, p1

    .end local v3    # "_item":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    .end local v20    # "_tmpSeriesId":I
    .end local v21    # "_tmpName":Ljava/lang/String;
    .end local v22    # "_tmpCover":Ljava/lang/String;
    .end local v23    # "_tmpPlot":Ljava/lang/String;
    .end local v24    # "_tmpCast":Ljava/lang/String;
    .end local v25    # "_tmpDirector":Ljava/lang/String;
    .end local v26    # "_tmpGenre":Ljava/lang/String;
    .end local v27    # "_tmpReleaseDate":Ljava/lang/String;
    .end local v28    # "_tmpLastModified":J
    .end local v30    # "_tmpRating":Ljava/lang/String;
    .end local v31    # "_tmpCategoryId":Ljava/lang/String;
    .end local v32    # "_tmpServerId":I
    goto/16 :goto_0

    .line 387
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .restart local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    :cond_9
    move-object/from16 v4, v18

    .line 389
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 387
    return-object v4

    .line 389
    .end local v0    # "_columnIndexOfServerId":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .end local v5    # "_columnIndexOfSeriesId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfCover":I
    .end local v8    # "_columnIndexOfPlot":I
    .end local v9    # "_columnIndexOfCast":I
    .end local v10    # "_columnIndexOfDirector":I
    .end local v11    # "_columnIndexOfGenre":I
    .end local v12    # "_columnIndexOfReleaseDate":I
    .end local v13    # "_columnIndexOfLastModified":I
    .end local v14    # "_columnIndexOfRating":I
    .end local v15    # "_columnIndexOfCategoryId":I
    .end local v16    # "_argIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 390
    throw v0
.end method

.method static synthetic lambda$observeAll$1(ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 32
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 110
    const-string v0, "SELECT * FROM series WHERE serverId = ? ORDER BY lastModified DESC"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 112
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 113
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 114
    const-string v4, "seriesId"

    invoke-static {v2, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, "_columnIndexOfSeriesId":I
    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 116
    .local v5, "_columnIndexOfName":I
    const-string v6, "cover"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 117
    .local v6, "_columnIndexOfCover":I
    const-string v7, "plot"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 118
    .local v7, "_columnIndexOfPlot":I
    const-string v8, "cast"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 119
    .local v8, "_columnIndexOfCast":I
    const-string v9, "director"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 120
    .local v9, "_columnIndexOfDirector":I
    const-string v10, "genre"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 121
    .local v10, "_columnIndexOfGenre":I
    const-string v11, "releaseDate"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 122
    .local v11, "_columnIndexOfReleaseDate":I
    const-string v12, "lastModified"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 123
    .local v12, "_columnIndexOfLastModified":I
    const-string v13, "rating"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 124
    .local v13, "_columnIndexOfRating":I
    const-string v14, "categoryId"

    invoke-static {v2, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 125
    .local v14, "_columnIndexOfCategoryId":I
    const-string v15, "serverId"

    invoke-static {v2, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 126
    .local v15, "_columnIndexOfServerId":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v16

    .line 127
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 130
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 132
    .local v0, "_tmpSeriesId":I
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v1, 0x0

    move-object/from16 v20, v1

    .local v1, "_tmpName":Ljava/lang/String;
    goto :goto_1

    .line 135
    .end local v1    # "_tmpName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 138
    .local v20, "_tmpName":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/4 v1, 0x0

    move-object/from16 v21, v1

    .local v1, "_tmpCover":Ljava/lang/String;
    goto :goto_2

    .line 141
    .end local v1    # "_tmpCover":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    .line 144
    .local v21, "_tmpCover":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .local v1, "_tmpPlot":Ljava/lang/String;
    goto :goto_3

    .line 147
    .end local v1    # "_tmpPlot":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    .line 150
    .local v22, "_tmpPlot":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const/4 v1, 0x0

    move-object/from16 v23, v1

    .local v1, "_tmpCast":Ljava/lang/String;
    goto :goto_4

    .line 153
    .end local v1    # "_tmpCast":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    .line 156
    .local v23, "_tmpCast":Ljava/lang/String;
    :goto_4
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    const/4 v1, 0x0

    move-object/from16 v24, v1

    .local v1, "_tmpDirector":Ljava/lang/String;
    goto :goto_5

    .line 159
    .end local v1    # "_tmpDirector":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    .line 162
    .local v24, "_tmpDirector":Ljava/lang/String;
    :goto_5
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    const/4 v1, 0x0

    move-object/from16 v25, v1

    .local v1, "_tmpGenre":Ljava/lang/String;
    goto :goto_6

    .line 165
    .end local v1    # "_tmpGenre":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    .line 168
    .local v25, "_tmpGenre":Ljava/lang/String;
    :goto_6
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    const/4 v1, 0x0

    move-object/from16 v26, v1

    .local v1, "_tmpReleaseDate":Ljava/lang/String;
    goto :goto_7

    .line 171
    .end local v1    # "_tmpReleaseDate":Ljava/lang/String;
    :cond_6
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    .line 174
    .local v26, "_tmpReleaseDate":Ljava/lang/String;
    :goto_7
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v27

    .line 176
    .local v27, "_tmpLastModified":J
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 177
    const/4 v1, 0x0

    move-object/from16 v29, v1

    .local v1, "_tmpRating":Ljava/lang/String;
    goto :goto_8

    .line 179
    .end local v1    # "_tmpRating":Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    .line 182
    .local v29, "_tmpRating":Ljava/lang/String;
    :goto_8
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 183
    const/4 v1, 0x0

    move-object/from16 v30, v1

    .local v1, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_9

    .line 185
    .end local v1    # "_tmpCategoryId":Ljava/lang/String;
    :cond_8
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    .line 188
    .local v30, "_tmpCategoryId":Ljava/lang/String;
    :goto_9
    move/from16 v19, v0

    .end local v0    # "_tmpSeriesId":I
    .local v19, "_tmpSeriesId":I
    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 189
    .local v0, "_tmpServerId":I
    new-instance v18, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    move/from16 v31, v0

    .end local v0    # "_tmpServerId":I
    .local v31, "_tmpServerId":I
    invoke-direct/range {v18 .. v31}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    .line 190
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    move-object/from16 v1, v17

    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    move-object/from16 v17, v1

    move/from16 v0, v16

    move-object/from16 v1, p1

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    .end local v19    # "_tmpSeriesId":I
    .end local v20    # "_tmpName":Ljava/lang/String;
    .end local v21    # "_tmpCover":Ljava/lang/String;
    .end local v22    # "_tmpPlot":Ljava/lang/String;
    .end local v23    # "_tmpCast":Ljava/lang/String;
    .end local v24    # "_tmpDirector":Ljava/lang/String;
    .end local v25    # "_tmpGenre":Ljava/lang/String;
    .end local v26    # "_tmpReleaseDate":Ljava/lang/String;
    .end local v27    # "_tmpLastModified":J
    .end local v29    # "_tmpRating":Ljava/lang/String;
    .end local v30    # "_tmpCategoryId":Ljava/lang/String;
    .end local v31    # "_tmpServerId":I
    goto/16 :goto_0

    .line 192
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .end local v16    # "_argIndex":I
    .local v0, "_argIndex":I
    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    :cond_9
    move-object/from16 v1, v17

    .line 194
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 192
    return-object v1

    .line 194
    .end local v0    # "_argIndex":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .end local v4    # "_columnIndexOfSeriesId":I
    .end local v5    # "_columnIndexOfName":I
    .end local v6    # "_columnIndexOfCover":I
    .end local v7    # "_columnIndexOfPlot":I
    .end local v8    # "_columnIndexOfCast":I
    .end local v9    # "_columnIndexOfDirector":I
    .end local v10    # "_columnIndexOfGenre":I
    .end local v11    # "_columnIndexOfReleaseDate":I
    .end local v12    # "_columnIndexOfLastModified":I
    .end local v13    # "_columnIndexOfRating":I
    .end local v14    # "_columnIndexOfCategoryId":I
    .end local v15    # "_columnIndexOfServerId":I
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 195
    throw v0
.end method

.method static synthetic lambda$observeByCategory$2(ILjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 33
    .param p0, "serverId"    # I
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 203
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM series WHERE serverId = ? AND categoryId = ? ORDER BY lastModified DESC"

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 205
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 206
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 207
    const/4 v0, 0x2

    .line 208
    if-nez v1, :cond_0

    .line 209
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 213
    :goto_0
    const-string v5, "seriesId"

    invoke-static {v3, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 214
    .local v5, "_columnIndexOfSeriesId":I
    const-string v6, "name"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 215
    .local v6, "_columnIndexOfName":I
    const-string v7, "cover"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 216
    .local v7, "_columnIndexOfCover":I
    const-string v8, "plot"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 217
    .local v8, "_columnIndexOfPlot":I
    const-string v9, "cast"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 218
    .local v9, "_columnIndexOfCast":I
    const-string v10, "director"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 219
    .local v10, "_columnIndexOfDirector":I
    const-string v11, "genre"

    invoke-static {v3, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 220
    .local v11, "_columnIndexOfGenre":I
    const-string v12, "releaseDate"

    invoke-static {v3, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 221
    .local v12, "_columnIndexOfReleaseDate":I
    const-string v13, "lastModified"

    invoke-static {v3, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 222
    .local v13, "_columnIndexOfLastModified":I
    const-string v14, "rating"

    invoke-static {v3, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 223
    .local v14, "_columnIndexOfRating":I
    const-string v15, "categoryId"

    invoke-static {v3, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 224
    .local v15, "_columnIndexOfCategoryId":I
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    const-string v0, "serverId"

    invoke-static {v3, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, "_columnIndexOfServerId":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    .line 226
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 229
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 231
    .local v1, "_tmpSeriesId":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const/4 v2, 0x0

    move-object/from16 v21, v2

    .local v2, "_tmpName":Ljava/lang/String;
    goto :goto_2

    .line 234
    .end local v2    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    .line 237
    .local v21, "_tmpName":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    const/4 v2, 0x0

    move-object/from16 v22, v2

    .local v2, "_tmpCover":Ljava/lang/String;
    goto :goto_3

    .line 240
    .end local v2    # "_tmpCover":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    .line 243
    .local v22, "_tmpCover":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    const/4 v2, 0x0

    move-object/from16 v23, v2

    .local v2, "_tmpPlot":Ljava/lang/String;
    goto :goto_4

    .line 246
    .end local v2    # "_tmpPlot":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    .line 249
    .local v23, "_tmpPlot":Ljava/lang/String;
    :goto_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    const/4 v2, 0x0

    move-object/from16 v24, v2

    .local v2, "_tmpCast":Ljava/lang/String;
    goto :goto_5

    .line 252
    .end local v2    # "_tmpCast":Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v2

    .line 255
    .local v24, "_tmpCast":Ljava/lang/String;
    :goto_5
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 256
    const/4 v2, 0x0

    move-object/from16 v25, v2

    .local v2, "_tmpDirector":Ljava/lang/String;
    goto :goto_6

    .line 258
    .end local v2    # "_tmpDirector":Ljava/lang/String;
    :cond_5
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    .line 261
    .local v25, "_tmpDirector":Ljava/lang/String;
    :goto_6
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 262
    const/4 v2, 0x0

    move-object/from16 v26, v2

    .local v2, "_tmpGenre":Ljava/lang/String;
    goto :goto_7

    .line 264
    .end local v2    # "_tmpGenre":Ljava/lang/String;
    :cond_6
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    .line 267
    .local v26, "_tmpGenre":Ljava/lang/String;
    :goto_7
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 268
    const/4 v2, 0x0

    move-object/from16 v27, v2

    .local v2, "_tmpReleaseDate":Ljava/lang/String;
    goto :goto_8

    .line 270
    .end local v2    # "_tmpReleaseDate":Ljava/lang/String;
    :cond_7
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v2

    .line 273
    .local v27, "_tmpReleaseDate":Ljava/lang/String;
    :goto_8
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v28

    .line 275
    .local v28, "_tmpLastModified":J
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 276
    const/4 v2, 0x0

    move-object/from16 v30, v2

    .local v2, "_tmpRating":Ljava/lang/String;
    goto :goto_9

    .line 278
    .end local v2    # "_tmpRating":Ljava/lang/String;
    :cond_8
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    .line 281
    .local v30, "_tmpRating":Ljava/lang/String;
    :goto_9
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 282
    const/4 v2, 0x0

    move-object/from16 v31, v2

    .local v2, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_a

    .line 284
    .end local v2    # "_tmpCategoryId":Ljava/lang/String;
    :cond_9
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    .line 287
    .local v31, "_tmpCategoryId":Ljava/lang/String;
    :goto_a
    move/from16 v20, v1

    .end local v1    # "_tmpSeriesId":I
    .local v20, "_tmpSeriesId":I
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 288
    .local v1, "_tmpServerId":I
    new-instance v19, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    move/from16 v32, v1

    .end local v1    # "_tmpServerId":I
    .local v32, "_tmpServerId":I
    invoke-direct/range {v19 .. v32}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v19

    .line 289
    .local v1, "_item":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    move-object/from16 v2, v18

    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    move-object/from16 v1, p1

    move-object/from16 v18, v2

    move-object/from16 v2, p2

    .end local v1    # "_item":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    .end local v20    # "_tmpSeriesId":I
    .end local v21    # "_tmpName":Ljava/lang/String;
    .end local v22    # "_tmpCover":Ljava/lang/String;
    .end local v23    # "_tmpPlot":Ljava/lang/String;
    .end local v24    # "_tmpCast":Ljava/lang/String;
    .end local v25    # "_tmpDirector":Ljava/lang/String;
    .end local v26    # "_tmpGenre":Ljava/lang/String;
    .end local v27    # "_tmpReleaseDate":Ljava/lang/String;
    .end local v28    # "_tmpLastModified":J
    .end local v30    # "_tmpRating":Ljava/lang/String;
    .end local v31    # "_tmpCategoryId":Ljava/lang/String;
    .end local v32    # "_tmpServerId":I
    goto/16 :goto_1

    .line 291
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .restart local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    :cond_a
    move-object/from16 v2, v18

    .line 293
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 291
    return-object v2

    .line 293
    .end local v0    # "_columnIndexOfServerId":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .end local v5    # "_columnIndexOfSeriesId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfCover":I
    .end local v8    # "_columnIndexOfPlot":I
    .end local v9    # "_columnIndexOfCast":I
    .end local v10    # "_columnIndexOfDirector":I
    .end local v11    # "_columnIndexOfGenre":I
    .end local v12    # "_columnIndexOfReleaseDate":I
    .end local v13    # "_columnIndexOfLastModified":I
    .end local v14    # "_columnIndexOfRating":I
    .end local v15    # "_columnIndexOfCategoryId":I
    .end local v16    # "_argIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 294
    throw v0
.end method

.method static synthetic lambda$search$5(ILjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 33
    .param p0, "serverId"    # I
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 495
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM series WHERE serverId = ? AND name LIKE \'%\' || ? || \'%\' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200"

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 497
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 498
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 499
    const/4 v0, 0x2

    .line 500
    if-nez v1, :cond_0

    .line 501
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 503
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 505
    :goto_0
    const-string v5, "seriesId"

    invoke-static {v3, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 506
    .local v5, "_columnIndexOfSeriesId":I
    const-string v6, "name"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 507
    .local v6, "_columnIndexOfName":I
    const-string v7, "cover"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 508
    .local v7, "_columnIndexOfCover":I
    const-string v8, "plot"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 509
    .local v8, "_columnIndexOfPlot":I
    const-string v9, "cast"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 510
    .local v9, "_columnIndexOfCast":I
    const-string v10, "director"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 511
    .local v10, "_columnIndexOfDirector":I
    const-string v11, "genre"

    invoke-static {v3, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 512
    .local v11, "_columnIndexOfGenre":I
    const-string v12, "releaseDate"

    invoke-static {v3, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 513
    .local v12, "_columnIndexOfReleaseDate":I
    const-string v13, "lastModified"

    invoke-static {v3, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 514
    .local v13, "_columnIndexOfLastModified":I
    const-string v14, "rating"

    invoke-static {v3, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 515
    .local v14, "_columnIndexOfRating":I
    const-string v15, "categoryId"

    invoke-static {v3, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 516
    .local v15, "_columnIndexOfCategoryId":I
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    const-string v0, "serverId"

    invoke-static {v3, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 517
    .local v0, "_columnIndexOfServerId":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    .line 518
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 521
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 523
    .local v1, "_tmpSeriesId":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const/4 v2, 0x0

    move-object/from16 v21, v2

    .local v2, "_tmpName":Ljava/lang/String;
    goto :goto_2

    .line 526
    .end local v2    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    .line 529
    .local v21, "_tmpName":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    const/4 v2, 0x0

    move-object/from16 v22, v2

    .local v2, "_tmpCover":Ljava/lang/String;
    goto :goto_3

    .line 532
    .end local v2    # "_tmpCover":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    .line 535
    .local v22, "_tmpCover":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 536
    const/4 v2, 0x0

    move-object/from16 v23, v2

    .local v2, "_tmpPlot":Ljava/lang/String;
    goto :goto_4

    .line 538
    .end local v2    # "_tmpPlot":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    .line 541
    .local v23, "_tmpPlot":Ljava/lang/String;
    :goto_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 542
    const/4 v2, 0x0

    move-object/from16 v24, v2

    .local v2, "_tmpCast":Ljava/lang/String;
    goto :goto_5

    .line 544
    .end local v2    # "_tmpCast":Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v2

    .line 547
    .local v24, "_tmpCast":Ljava/lang/String;
    :goto_5
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 548
    const/4 v2, 0x0

    move-object/from16 v25, v2

    .local v2, "_tmpDirector":Ljava/lang/String;
    goto :goto_6

    .line 550
    .end local v2    # "_tmpDirector":Ljava/lang/String;
    :cond_5
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    .line 553
    .local v25, "_tmpDirector":Ljava/lang/String;
    :goto_6
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    const/4 v2, 0x0

    move-object/from16 v26, v2

    .local v2, "_tmpGenre":Ljava/lang/String;
    goto :goto_7

    .line 556
    .end local v2    # "_tmpGenre":Ljava/lang/String;
    :cond_6
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    .line 559
    .local v26, "_tmpGenre":Ljava/lang/String;
    :goto_7
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 560
    const/4 v2, 0x0

    move-object/from16 v27, v2

    .local v2, "_tmpReleaseDate":Ljava/lang/String;
    goto :goto_8

    .line 562
    .end local v2    # "_tmpReleaseDate":Ljava/lang/String;
    :cond_7
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v2

    .line 565
    .local v27, "_tmpReleaseDate":Ljava/lang/String;
    :goto_8
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v28

    .line 567
    .local v28, "_tmpLastModified":J
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 568
    const/4 v2, 0x0

    move-object/from16 v30, v2

    .local v2, "_tmpRating":Ljava/lang/String;
    goto :goto_9

    .line 570
    .end local v2    # "_tmpRating":Ljava/lang/String;
    :cond_8
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    .line 573
    .local v30, "_tmpRating":Ljava/lang/String;
    :goto_9
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 574
    const/4 v2, 0x0

    move-object/from16 v31, v2

    .local v2, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_a

    .line 576
    .end local v2    # "_tmpCategoryId":Ljava/lang/String;
    :cond_9
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    .line 579
    .local v31, "_tmpCategoryId":Ljava/lang/String;
    :goto_a
    move/from16 v20, v1

    .end local v1    # "_tmpSeriesId":I
    .local v20, "_tmpSeriesId":I
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 580
    .local v1, "_tmpServerId":I
    new-instance v19, Lcom/bayyari/tv/data/local/entities/SeriesEntity;

    move/from16 v32, v1

    .end local v1    # "_tmpServerId":I
    .local v32, "_tmpServerId":I
    invoke-direct/range {v19 .. v32}, Lcom/bayyari/tv/data/local/entities/SeriesEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v19

    .line 581
    .local v1, "_item":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    move-object/from16 v2, v18

    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    move-object/from16 v1, p1

    move-object/from16 v18, v2

    move-object/from16 v2, p2

    .end local v1    # "_item":Lcom/bayyari/tv/data/local/entities/SeriesEntity;
    .end local v20    # "_tmpSeriesId":I
    .end local v21    # "_tmpName":Ljava/lang/String;
    .end local v22    # "_tmpCover":Ljava/lang/String;
    .end local v23    # "_tmpPlot":Ljava/lang/String;
    .end local v24    # "_tmpCast":Ljava/lang/String;
    .end local v25    # "_tmpDirector":Ljava/lang/String;
    .end local v26    # "_tmpGenre":Ljava/lang/String;
    .end local v27    # "_tmpReleaseDate":Ljava/lang/String;
    .end local v28    # "_tmpLastModified":J
    .end local v30    # "_tmpRating":Ljava/lang/String;
    .end local v31    # "_tmpCategoryId":Ljava/lang/String;
    .end local v32    # "_tmpServerId":I
    goto/16 :goto_1

    .line 583
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .restart local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    :cond_a
    move-object/from16 v2, v18

    .line 585
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 583
    return-object v2

    .line 585
    .end local v0    # "_columnIndexOfServerId":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .end local v5    # "_columnIndexOfSeriesId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfCover":I
    .end local v8    # "_columnIndexOfPlot":I
    .end local v9    # "_columnIndexOfCast":I
    .end local v10    # "_columnIndexOfDirector":I
    .end local v11    # "_columnIndexOfGenre":I
    .end local v12    # "_columnIndexOfReleaseDate":I
    .end local v13    # "_columnIndexOfLastModified":I
    .end local v14    # "_columnIndexOfRating":I
    .end local v15    # "_columnIndexOfCategoryId":I
    .end local v16    # "_argIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 586
    throw v0
.end method

.method private synthetic lambda$upsertAll$0(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1
    .param p1, "items"    # Ljava/util/List;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 101
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__insertAdapterOfSeriesEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    .line 102
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

    .line 592
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    const-string v0, "DELETE FROM series WHERE serverId = ?"

    .line 593
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda6;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public findById(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "seriesId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "serverId",
            "seriesId",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 397
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    const-string v0, "SELECT * FROM series WHERE serverId = ? AND seriesId = ? LIMIT 1"

    .line 398
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda3;-><init>(II)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, p3}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public latest(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "serverId",
            "limit",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 301
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;>;"
    const-string v0, "SELECT * FROM series WHERE serverId = ? ORDER BY lastModified DESC LIMIT ?"

    .line 302
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda2;-><init>(II)V

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
            "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
            ">;>;"
        }
    .end annotation

    .line 108
    const-string v0, "SELECT * FROM series WHERE serverId = ? ORDER BY lastModified DESC"

    .line 109
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "series"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda5;-><init>(I)V

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
            "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
            ">;>;"
        }
    .end annotation

    .line 201
    const-string v0, "SELECT * FROM series WHERE serverId = ? AND categoryId = ? ORDER BY lastModified DESC"

    .line 202
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "series"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1, p2}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda4;-><init>(ILjava/lang/String;)V

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
            "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 493
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;>;"
    const-string v0, "SELECT * FROM series WHERE serverId = ? AND name LIKE \'%\' || ? || \'%\' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200"

    .line 494
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

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
            "items",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/SeriesEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 99
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/SeriesEntity;>;"
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
