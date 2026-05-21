.class public final Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;
.super Ljava/lang/Object;
.source "MovieDao_Impl.java"

# interfaces
.implements Lcom/bayyari/tv/data/local/dao/MovieDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfMovieEntity:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZLtiPI9Tgz1sZHZg8HCZakdzHrE(Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->lambda$upsertAll$0(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

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
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$1;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$1;-><init>(Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__insertAdapterOfMovieEntity:Landroidx/room/EntityInsertAdapter;

    .line 71
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

    .line 440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$clearForServer$6(ILandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 4
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 426
    const-string v0, "DELETE FROM movies WHERE serverId = ?"

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

    .line 430
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 431
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 431
    return-object v2

    .line 433
    .end local v1    # "_argIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 434
    throw v1
.end method

.method static synthetic lambda$findById$4(IILandroidx/sqlite/SQLiteConnection;)Lcom/bayyari/tv/data/local/entities/MovieEntity;
    .locals 29
    .param p0, "serverId"    # I
    .param p1, "streamId"    # I
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 289
    const-string v0, "SELECT * FROM movies WHERE serverId = ? AND streamId = ? LIMIT 1"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 291
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 292
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    const/4 v0, 0x2

    .line 294
    move/from16 v4, p1

    int-to-long v5, v4

    :try_start_1
    invoke-interface {v2, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 295
    const-string v5, "streamId"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 296
    .local v5, "_columnIndexOfStreamId":I
    const-string v6, "name"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 297
    .local v6, "_columnIndexOfName":I
    const-string v7, "streamIcon"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 298
    .local v7, "_columnIndexOfStreamIcon":I
    const-string v8, "categoryId"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 299
    .local v8, "_columnIndexOfCategoryId":I
    const-string v9, "rating"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 300
    .local v9, "_columnIndexOfRating":I
    const-string v10, "rating5Based"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 301
    .local v10, "_columnIndexOfRating5Based":I
    const-string v11, "added"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 302
    .local v11, "_columnIndexOfAdded":I
    const-string v12, "containerExtension"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 303
    .local v12, "_columnIndexOfContainerExtension":I
    const-string v13, "serverId"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 305
    .local v13, "_columnIndexOfServerId":I
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 307
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 309
    .local v14, "_tmpStreamId":I
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 310
    const/4 v15, 0x0

    move-object/from16 v18, v15

    .local v15, "_tmpName":Ljava/lang/String;
    goto :goto_0

    .line 312
    .end local v15    # "_tmpName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    .line 315
    .local v18, "_tmpName":Ljava/lang/String;
    :goto_0
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 316
    const/4 v15, 0x0

    move-object/from16 v19, v15

    .local v15, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_1

    .line 318
    .end local v15    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    .line 321
    .local v19, "_tmpStreamIcon":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 322
    const/4 v15, 0x0

    move-object/from16 v20, v15

    .local v15, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_2

    .line 324
    .end local v15    # "_tmpCategoryId":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    .line 327
    .local v20, "_tmpCategoryId":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v21

    .line 329
    .local v21, "_tmpRating":D
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v23

    .line 331
    .local v23, "_tmpRating5Based":D
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v25

    .line 333
    .local v25, "_tmpAdded":J
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 334
    const/4 v15, 0x0

    move-object/from16 v27, v15

    .local v15, "_tmpContainerExtension":Ljava/lang/String;
    goto :goto_3

    .line 336
    .end local v15    # "_tmpContainerExtension":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v15

    .line 339
    .local v27, "_tmpContainerExtension":Ljava/lang/String;
    :goto_3
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 340
    .local v0, "_tmpServerId":I
    new-instance v16, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    move/from16 v28, v0

    move/from16 v17, v14

    .end local v0    # "_tmpServerId":I
    .end local v14    # "_tmpStreamId":I
    .local v17, "_tmpStreamId":I
    .local v28, "_tmpServerId":I
    invoke-direct/range {v16 .. v28}, Lcom/bayyari/tv/data/local/entities/MovieEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .end local v17    # "_tmpStreamId":I
    .end local v18    # "_tmpName":Ljava/lang/String;
    .end local v19    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v20    # "_tmpCategoryId":Ljava/lang/String;
    .end local v21    # "_tmpRating":D
    .end local v23    # "_tmpRating5Based":D
    .end local v25    # "_tmpAdded":J
    .end local v27    # "_tmpContainerExtension":Ljava/lang/String;
    .end local v28    # "_tmpServerId":I
    .local v16, "_result":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    goto :goto_4

    .line 342
    .end local v15    # "_argIndex":I
    .end local v16    # "_result":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    .local v0, "_argIndex":I
    :cond_4
    move v15, v0

    .end local v0    # "_argIndex":I
    .restart local v15    # "_argIndex":I
    const/16 v16, 0x0

    .line 344
    .restart local v16    # "_result":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    :goto_4
    nop

    .line 346
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 344
    return-object v16

    .line 346
    .end local v5    # "_columnIndexOfStreamId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfStreamIcon":I
    .end local v8    # "_columnIndexOfCategoryId":I
    .end local v9    # "_columnIndexOfRating":I
    .end local v10    # "_columnIndexOfRating5Based":I
    .end local v11    # "_columnIndexOfAdded":I
    .end local v12    # "_columnIndexOfContainerExtension":I
    .end local v13    # "_columnIndexOfServerId":I
    .end local v15    # "_argIndex":I
    .end local v16    # "_result":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v4, p1

    :goto_5
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 347
    throw v0
.end method

.method static synthetic lambda$latest$3(IILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 29
    .param p0, "serverId"    # I
    .param p1, "limit"    # I
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 222
    const-string v0, "SELECT * FROM movies WHERE serverId = ? ORDER BY added DESC LIMIT ?"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 224
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 225
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    const/4 v0, 0x2

    .line 227
    move/from16 v4, p1

    int-to-long v5, v4

    :try_start_1
    invoke-interface {v2, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 228
    const-string v5, "streamId"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 229
    .local v5, "_columnIndexOfStreamId":I
    const-string v6, "name"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 230
    .local v6, "_columnIndexOfName":I
    const-string v7, "streamIcon"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 231
    .local v7, "_columnIndexOfStreamIcon":I
    const-string v8, "categoryId"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 232
    .local v8, "_columnIndexOfCategoryId":I
    const-string v9, "rating"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 233
    .local v9, "_columnIndexOfRating":I
    const-string v10, "rating5Based"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 234
    .local v10, "_columnIndexOfRating5Based":I
    const-string v11, "added"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 235
    .local v11, "_columnIndexOfAdded":I
    const-string v12, "containerExtension"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 236
    .local v12, "_columnIndexOfContainerExtension":I
    const-string v13, "serverId"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 237
    .local v13, "_columnIndexOfServerId":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 241
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 243
    .local v0, "_tmpStreamId":I
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x0

    move-object/from16 v18, v1

    .local v1, "_tmpName":Ljava/lang/String;
    goto :goto_1

    .line 246
    .end local v1    # "_tmpName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    .line 249
    .local v18, "_tmpName":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .local v1, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_2

    .line 252
    .end local v1    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 255
    .local v19, "_tmpStreamIcon":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    const/4 v1, 0x0

    move-object/from16 v20, v1

    .local v1, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_3

    .line 258
    .end local v1    # "_tmpCategoryId":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 261
    .local v20, "_tmpCategoryId":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v21

    .line 263
    .local v21, "_tmpRating":D
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v23

    .line 265
    .local v23, "_tmpRating5Based":D
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v25

    .line 267
    .local v25, "_tmpAdded":J
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    const/4 v1, 0x0

    move-object/from16 v27, v1

    .local v1, "_tmpContainerExtension":Ljava/lang/String;
    goto :goto_4

    .line 270
    .end local v1    # "_tmpContainerExtension":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    .line 273
    .local v27, "_tmpContainerExtension":Ljava/lang/String;
    :goto_4
    move/from16 v17, v0

    .end local v0    # "_tmpStreamId":I
    .local v17, "_tmpStreamId":I
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 274
    .local v0, "_tmpServerId":I
    new-instance v16, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    move/from16 v28, v0

    .end local v0    # "_tmpServerId":I
    .local v28, "_tmpServerId":I
    invoke-direct/range {v16 .. v28}, Lcom/bayyari/tv/data/local/entities/MovieEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V

    move-object/from16 v0, v16

    .line 275
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    move-object/from16 v1, p2

    move v0, v15

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    .end local v17    # "_tmpStreamId":I
    .end local v18    # "_tmpName":Ljava/lang/String;
    .end local v19    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v20    # "_tmpCategoryId":Ljava/lang/String;
    .end local v21    # "_tmpRating":D
    .end local v23    # "_tmpRating5Based":D
    .end local v25    # "_tmpAdded":J
    .end local v27    # "_tmpContainerExtension":Ljava/lang/String;
    .end local v28    # "_tmpServerId":I
    goto :goto_0

    .line 277
    .end local v15    # "_argIndex":I
    .local v0, "_argIndex":I
    :cond_4
    nop

    .line 279
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 277
    return-object v14

    .line 279
    .end local v0    # "_argIndex":I
    .end local v5    # "_columnIndexOfStreamId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfStreamIcon":I
    .end local v8    # "_columnIndexOfCategoryId":I
    .end local v9    # "_columnIndexOfRating":I
    .end local v10    # "_columnIndexOfRating5Based":I
    .end local v11    # "_columnIndexOfAdded":I
    .end local v12    # "_columnIndexOfContainerExtension":I
    .end local v13    # "_columnIndexOfServerId":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v4, p1

    :goto_5
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 280
    throw v0
.end method

.method static synthetic lambda$observeAll$1(ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 29
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 87
    const-string v0, "SELECT * FROM movies WHERE serverId = ? ORDER BY added DESC"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 89
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 90
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 91
    const-string v4, "streamId"

    invoke-static {v2, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 92
    .local v4, "_columnIndexOfStreamId":I
    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "_columnIndexOfName":I
    const-string v6, "streamIcon"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 94
    .local v6, "_columnIndexOfStreamIcon":I
    const-string v7, "categoryId"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 95
    .local v7, "_columnIndexOfCategoryId":I
    const-string v8, "rating"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 96
    .local v8, "_columnIndexOfRating":I
    const-string v9, "rating5Based"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 97
    .local v9, "_columnIndexOfRating5Based":I
    const-string v10, "added"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 98
    .local v10, "_columnIndexOfAdded":I
    const-string v11, "containerExtension"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 99
    .local v11, "_columnIndexOfContainerExtension":I
    const-string v12, "serverId"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 100
    .local v12, "_columnIndexOfServerId":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 104
    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 106
    .local v14, "_tmpStreamId":I
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 107
    const/4 v15, 0x0

    move-object/from16 v18, v15

    .local v15, "_tmpName":Ljava/lang/String;
    goto :goto_1

    .line 109
    .end local v15    # "_tmpName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    .line 112
    .local v18, "_tmpName":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 113
    const/4 v15, 0x0

    move-object/from16 v19, v15

    .local v15, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_2

    .line 115
    .end local v15    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    .line 118
    .local v19, "_tmpStreamIcon":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 119
    const/4 v15, 0x0

    move-object/from16 v20, v15

    .local v15, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_3

    .line 121
    .end local v15    # "_tmpCategoryId":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    .line 124
    .local v20, "_tmpCategoryId":Ljava/lang/String;
    :goto_3
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v21

    .line 126
    .local v21, "_tmpRating":D
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v23

    .line 128
    .local v23, "_tmpRating5Based":D
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v25

    .line 130
    .local v25, "_tmpAdded":J
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 131
    const/4 v15, 0x0

    move-object/from16 v27, v15

    .local v15, "_tmpContainerExtension":Ljava/lang/String;
    goto :goto_4

    .line 133
    .end local v15    # "_tmpContainerExtension":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v15

    .line 136
    .local v27, "_tmpContainerExtension":Ljava/lang/String;
    :goto_4
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 137
    .local v0, "_tmpServerId":I
    new-instance v16, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    move/from16 v28, v0

    move/from16 v17, v14

    .end local v0    # "_tmpServerId":I
    .end local v14    # "_tmpStreamId":I
    .local v17, "_tmpStreamId":I
    .local v28, "_tmpServerId":I
    invoke-direct/range {v16 .. v28}, Lcom/bayyari/tv/data/local/entities/MovieEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V

    move-object/from16 v0, v16

    .line 138
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    move-object/from16 v1, p1

    move v0, v15

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    .end local v17    # "_tmpStreamId":I
    .end local v18    # "_tmpName":Ljava/lang/String;
    .end local v19    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v20    # "_tmpCategoryId":Ljava/lang/String;
    .end local v21    # "_tmpRating":D
    .end local v23    # "_tmpRating5Based":D
    .end local v25    # "_tmpAdded":J
    .end local v27    # "_tmpContainerExtension":Ljava/lang/String;
    .end local v28    # "_tmpServerId":I
    goto :goto_0

    .line 140
    .end local v15    # "_argIndex":I
    .local v0, "_argIndex":I
    :cond_4
    nop

    .line 142
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 140
    return-object v13

    .line 142
    .end local v0    # "_argIndex":I
    .end local v4    # "_columnIndexOfStreamId":I
    .end local v5    # "_columnIndexOfName":I
    .end local v6    # "_columnIndexOfStreamIcon":I
    .end local v7    # "_columnIndexOfCategoryId":I
    .end local v8    # "_columnIndexOfRating":I
    .end local v9    # "_columnIndexOfRating5Based":I
    .end local v10    # "_columnIndexOfAdded":I
    .end local v11    # "_columnIndexOfContainerExtension":I
    .end local v12    # "_columnIndexOfServerId":I
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 143
    throw v0
.end method

.method static synthetic lambda$observeByCategory$2(ILjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 29
    .param p0, "serverId"    # I
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 151
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM movies WHERE serverId = ? AND categoryId = ? ORDER BY added DESC"

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 153
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 154
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 155
    const/4 v0, 0x2

    .line 156
    if-nez v1, :cond_0

    .line 157
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 161
    :goto_0
    const-string v5, "streamId"

    invoke-static {v3, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 162
    .local v5, "_columnIndexOfStreamId":I
    const-string v6, "name"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 163
    .local v6, "_columnIndexOfName":I
    const-string v7, "streamIcon"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 164
    .local v7, "_columnIndexOfStreamIcon":I
    const-string v8, "categoryId"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 165
    .local v8, "_columnIndexOfCategoryId":I
    const-string v9, "rating"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 166
    .local v9, "_columnIndexOfRating":I
    const-string v10, "rating5Based"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 167
    .local v10, "_columnIndexOfRating5Based":I
    const-string v11, "added"

    invoke-static {v3, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 168
    .local v11, "_columnIndexOfAdded":I
    const-string v12, "containerExtension"

    invoke-static {v3, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 169
    .local v12, "_columnIndexOfContainerExtension":I
    const-string v13, "serverId"

    invoke-static {v3, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 170
    .local v13, "_columnIndexOfServerId":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 174
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 176
    .local v0, "_tmpStreamId":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const/4 v1, 0x0

    move-object/from16 v18, v1

    .local v1, "_tmpName":Ljava/lang/String;
    goto :goto_2

    .line 179
    .end local v1    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    .line 182
    .local v18, "_tmpName":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .local v1, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_3

    .line 185
    .end local v1    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 188
    .local v19, "_tmpStreamIcon":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    const/4 v1, 0x0

    move-object/from16 v20, v1

    .local v1, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_4

    .line 191
    .end local v1    # "_tmpCategoryId":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 194
    .local v20, "_tmpCategoryId":Ljava/lang/String;
    :goto_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v21

    .line 196
    .local v21, "_tmpRating":D
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v23

    .line 198
    .local v23, "_tmpRating5Based":D
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v25

    .line 200
    .local v25, "_tmpAdded":J
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    const/4 v1, 0x0

    move-object/from16 v27, v1

    .local v1, "_tmpContainerExtension":Ljava/lang/String;
    goto :goto_5

    .line 203
    .end local v1    # "_tmpContainerExtension":Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    .line 206
    .local v27, "_tmpContainerExtension":Ljava/lang/String;
    :goto_5
    move/from16 v17, v0

    .end local v0    # "_tmpStreamId":I
    .local v17, "_tmpStreamId":I
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 207
    .local v0, "_tmpServerId":I
    new-instance v16, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    move/from16 v28, v0

    .end local v0    # "_tmpServerId":I
    .local v28, "_tmpServerId":I
    invoke-direct/range {v16 .. v28}, Lcom/bayyari/tv/data/local/entities/MovieEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V

    move-object/from16 v0, v16

    .line 208
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    move-object/from16 v1, p1

    move v0, v15

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    .end local v17    # "_tmpStreamId":I
    .end local v18    # "_tmpName":Ljava/lang/String;
    .end local v19    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v20    # "_tmpCategoryId":Ljava/lang/String;
    .end local v21    # "_tmpRating":D
    .end local v23    # "_tmpRating5Based":D
    .end local v25    # "_tmpAdded":J
    .end local v27    # "_tmpContainerExtension":Ljava/lang/String;
    .end local v28    # "_tmpServerId":I
    goto :goto_1

    .line 210
    .end local v15    # "_argIndex":I
    .local v0, "_argIndex":I
    :cond_5
    nop

    .line 212
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 210
    return-object v14

    .line 212
    .end local v0    # "_argIndex":I
    .end local v5    # "_columnIndexOfStreamId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfStreamIcon":I
    .end local v8    # "_columnIndexOfCategoryId":I
    .end local v9    # "_columnIndexOfRating":I
    .end local v10    # "_columnIndexOfRating5Based":I
    .end local v11    # "_columnIndexOfAdded":I
    .end local v12    # "_columnIndexOfContainerExtension":I
    .end local v13    # "_columnIndexOfServerId":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 213
    throw v0
.end method

.method static synthetic lambda$search$5(ILjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 29
    .param p0, "serverId"    # I
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 356
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM movies WHERE serverId = ? AND name LIKE \'%\' || ? || \'%\' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200"

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 358
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 359
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 360
    const/4 v0, 0x2

    .line 361
    if-nez v1, :cond_0

    .line 362
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 366
    :goto_0
    const-string v5, "streamId"

    invoke-static {v3, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 367
    .local v5, "_columnIndexOfStreamId":I
    const-string v6, "name"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 368
    .local v6, "_columnIndexOfName":I
    const-string v7, "streamIcon"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 369
    .local v7, "_columnIndexOfStreamIcon":I
    const-string v8, "categoryId"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 370
    .local v8, "_columnIndexOfCategoryId":I
    const-string v9, "rating"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 371
    .local v9, "_columnIndexOfRating":I
    const-string v10, "rating5Based"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 372
    .local v10, "_columnIndexOfRating5Based":I
    const-string v11, "added"

    invoke-static {v3, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 373
    .local v11, "_columnIndexOfAdded":I
    const-string v12, "containerExtension"

    invoke-static {v3, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 374
    .local v12, "_columnIndexOfContainerExtension":I
    const-string v13, "serverId"

    invoke-static {v3, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 375
    .local v13, "_columnIndexOfServerId":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 379
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 381
    .local v0, "_tmpStreamId":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    const/4 v1, 0x0

    move-object/from16 v18, v1

    .local v1, "_tmpName":Ljava/lang/String;
    goto :goto_2

    .line 384
    .end local v1    # "_tmpName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    .line 387
    .local v18, "_tmpName":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .local v1, "_tmpStreamIcon":Ljava/lang/String;
    goto :goto_3

    .line 390
    .end local v1    # "_tmpStreamIcon":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 393
    .local v19, "_tmpStreamIcon":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    const/4 v1, 0x0

    move-object/from16 v20, v1

    .local v1, "_tmpCategoryId":Ljava/lang/String;
    goto :goto_4

    .line 396
    .end local v1    # "_tmpCategoryId":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 399
    .local v20, "_tmpCategoryId":Ljava/lang/String;
    :goto_4
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v21

    .line 401
    .local v21, "_tmpRating":D
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v23

    .line 403
    .local v23, "_tmpRating5Based":D
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v25

    .line 405
    .local v25, "_tmpAdded":J
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    const/4 v1, 0x0

    move-object/from16 v27, v1

    .local v1, "_tmpContainerExtension":Ljava/lang/String;
    goto :goto_5

    .line 408
    .end local v1    # "_tmpContainerExtension":Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    .line 411
    .local v27, "_tmpContainerExtension":Ljava/lang/String;
    :goto_5
    move/from16 v17, v0

    .end local v0    # "_tmpStreamId":I
    .local v17, "_tmpStreamId":I
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 412
    .local v0, "_tmpServerId":I
    new-instance v16, Lcom/bayyari/tv/data/local/entities/MovieEntity;

    move/from16 v28, v0

    .end local v0    # "_tmpServerId":I
    .local v28, "_tmpServerId":I
    invoke-direct/range {v16 .. v28}, Lcom/bayyari/tv/data/local/entities/MovieEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DDJLjava/lang/String;I)V

    move-object/from16 v0, v16

    .line 413
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    move-object/from16 v1, p1

    move v0, v15

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/MovieEntity;
    .end local v17    # "_tmpStreamId":I
    .end local v18    # "_tmpName":Ljava/lang/String;
    .end local v19    # "_tmpStreamIcon":Ljava/lang/String;
    .end local v20    # "_tmpCategoryId":Ljava/lang/String;
    .end local v21    # "_tmpRating":D
    .end local v23    # "_tmpRating5Based":D
    .end local v25    # "_tmpAdded":J
    .end local v27    # "_tmpContainerExtension":Ljava/lang/String;
    .end local v28    # "_tmpServerId":I
    goto :goto_1

    .line 415
    .end local v15    # "_argIndex":I
    .local v0, "_argIndex":I
    :cond_5
    nop

    .line 417
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 415
    return-object v14

    .line 417
    .end local v0    # "_argIndex":I
    .end local v5    # "_columnIndexOfStreamId":I
    .end local v6    # "_columnIndexOfName":I
    .end local v7    # "_columnIndexOfStreamIcon":I
    .end local v8    # "_columnIndexOfCategoryId":I
    .end local v9    # "_columnIndexOfRating":I
    .end local v10    # "_columnIndexOfRating5Based":I
    .end local v11    # "_columnIndexOfAdded":I
    .end local v12    # "_columnIndexOfContainerExtension":I
    .end local v13    # "_columnIndexOfServerId":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 418
    throw v0
.end method

.method private synthetic lambda$upsertAll$0(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1
    .param p1, "movies"    # Ljava/util/List;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 78
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__insertAdapterOfMovieEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    .line 79
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

    .line 424
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    const-string v0, "DELETE FROM movies WHERE serverId = ?"

    .line 425
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

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
            "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 287
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    const-string v0, "SELECT * FROM movies WHERE serverId = ? AND streamId = ? LIMIT 1"

    .line 288
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda6;-><init>(II)V

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
            "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 220
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;>;"
    const-string v0, "SELECT * FROM movies WHERE serverId = ? ORDER BY added DESC LIMIT ?"

    .line 221
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda0;-><init>(II)V

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
            "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
            ">;>;"
        }
    .end annotation

    .line 85
    const-string v0, "SELECT * FROM movies WHERE serverId = ? ORDER BY added DESC"

    .line 86
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "movies"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda3;-><init>(I)V

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
            "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
            ">;>;"
        }
    .end annotation

    .line 149
    const-string v0, "SELECT * FROM movies WHERE serverId = ? AND categoryId = ? ORDER BY added DESC"

    .line 150
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "movies"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p2}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;)V

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
            "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 354
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;>;"
    const-string v0, "SELECT * FROM movies WHERE serverId = ? AND name LIKE \'%\' || ? || \'%\' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200"

    .line 355
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;)V

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
            "movies",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/MovieEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    .local p1, "movies":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/MovieEntity;>;"
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl$$ExternalSyntheticLambda4;-><init>(Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
