.class public final Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;
.super Ljava/lang/Object;
.source "WatchHistoryDao_Impl.java"

# interfaces
.implements Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfWatchHistoryEntity:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XdTTrst3L8rNYgoRNcHQVb2JnrI(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->lambda$upsert$0(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

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
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$1;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$1;-><init>(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->__insertAdapterOfWatchHistoryEntity:Landroidx/room/EntityInsertAdapter;

    .line 67
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

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$clear$4(ILandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 4
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 279
    const-string v0, "DELETE FROM watch_history WHERE serverId = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 281
    .local v0, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    .line 282
    .local v1, "_argIndex":I
    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 283
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 284
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 284
    return-object v2

    .line 286
    .end local v1    # "_argIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 287
    throw v1
.end method

.method static synthetic lambda$find$3(ILjava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .locals 29
    .param p0, "contentId"    # I
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "serverId"    # I
    .param p3, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 211
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM watch_history WHERE contentId = ? AND contentType = ? AND serverId = ? LIMIT 1"

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 213
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 214
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 215
    const/4 v0, 0x2

    .line 216
    if-nez v1, :cond_0

    .line 217
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :goto_0
    const/4 v0, 0x3

    .line 222
    move/from16 v5, p2

    int-to-long v6, v5

    :try_start_1
    invoke-interface {v3, v0, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 223
    const-string v6, "id"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 224
    .local v6, "_columnIndexOfId":I
    const-string v7, "contentId"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 225
    .local v7, "_columnIndexOfContentId":I
    const-string v8, "contentType"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 226
    .local v8, "_columnIndexOfContentType":I
    const-string v9, "positionMs"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 227
    .local v9, "_columnIndexOfPositionMs":I
    const-string v10, "durationMs"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 228
    .local v10, "_columnIndexOfDurationMs":I
    const-string v11, "watchedAt"

    invoke-static {v3, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 229
    .local v11, "_columnIndexOfWatchedAt":I
    const-string v12, "serverId"

    invoke-static {v3, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 230
    .local v12, "_columnIndexOfServerId":I
    const-string v13, "title"

    invoke-static {v3, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 231
    .local v13, "_columnIndexOfTitle":I
    const-string v14, "poster"

    invoke-static {v3, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 233
    .local v14, "_columnIndexOfPoster":I
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 235
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 237
    .local v0, "_tmpId":I
    move/from16 v17, v0

    .end local v0    # "_tmpId":I
    .local v17, "_tmpId":I
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 239
    .local v0, "_tmpContentId":I
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .local v1, "_tmpContentType":Ljava/lang/String;
    goto :goto_1

    .line 242
    .end local v1    # "_tmpContentType":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 245
    .local v19, "_tmpContentType":Ljava/lang/String;
    :goto_1
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v20

    .line 247
    .local v20, "_tmpPositionMs":J
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v22

    .line 249
    .local v22, "_tmpDurationMs":J
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v24

    .line 251
    .local v24, "_tmpWatchedAt":J
    move/from16 v18, v0

    .end local v0    # "_tmpContentId":I
    .local v18, "_tmpContentId":I
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 253
    .local v0, "_tmpServerId":I
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    const/4 v1, 0x0

    move-object/from16 v27, v1

    .local v1, "_tmpTitle":Ljava/lang/String;
    goto :goto_2

    .line 256
    .end local v1    # "_tmpTitle":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    .line 259
    .local v27, "_tmpTitle":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    const/4 v1, 0x0

    move-object/from16 v28, v1

    .local v1, "_tmpPoster":Ljava/lang/String;
    goto :goto_3

    .line 262
    .end local v1    # "_tmpPoster":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    .line 264
    .local v28, "_tmpPoster":Ljava/lang/String;
    :goto_3
    new-instance v16, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    move/from16 v26, v0

    .end local v0    # "_tmpServerId":I
    .local v26, "_tmpServerId":I
    invoke-direct/range {v16 .. v28}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;-><init>(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .end local v17    # "_tmpId":I
    .end local v18    # "_tmpContentId":I
    .end local v19    # "_tmpContentType":Ljava/lang/String;
    .end local v20    # "_tmpPositionMs":J
    .end local v22    # "_tmpDurationMs":J
    .end local v24    # "_tmpWatchedAt":J
    .end local v26    # "_tmpServerId":I
    .end local v27    # "_tmpTitle":Ljava/lang/String;
    .end local v28    # "_tmpPoster":Ljava/lang/String;
    .local v16, "_result":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    goto :goto_4

    .line 266
    .end local v15    # "_argIndex":I
    .end local v16    # "_result":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .local v0, "_argIndex":I
    :cond_4
    move v15, v0

    .end local v0    # "_argIndex":I
    .restart local v15    # "_argIndex":I
    const/16 v16, 0x0

    .line 268
    .restart local v16    # "_result":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    :goto_4
    nop

    .line 270
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 268
    return-object v16

    .line 270
    .end local v6    # "_columnIndexOfId":I
    .end local v7    # "_columnIndexOfContentId":I
    .end local v8    # "_columnIndexOfContentType":I
    .end local v9    # "_columnIndexOfPositionMs":I
    .end local v10    # "_columnIndexOfDurationMs":I
    .end local v11    # "_columnIndexOfWatchedAt":I
    .end local v12    # "_columnIndexOfServerId":I
    .end local v13    # "_columnIndexOfTitle":I
    .end local v14    # "_columnIndexOfPoster":I
    .end local v15    # "_argIndex":I
    .end local v16    # "_result":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v5, p2

    :goto_5
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 271
    throw v0
.end method

.method static synthetic lambda$observeAll$1(ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 29
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 83
    const-string v0, "SELECT * FROM watch_history WHERE serverId = ? ORDER BY watchedAt DESC"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 85
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 86
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 87
    const-string v4, "id"

    invoke-static {v2, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 88
    .local v4, "_columnIndexOfId":I
    const-string v5, "contentId"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 89
    .local v5, "_columnIndexOfContentId":I
    const-string v6, "contentType"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 90
    .local v6, "_columnIndexOfContentType":I
    const-string v7, "positionMs"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 91
    .local v7, "_columnIndexOfPositionMs":I
    const-string v8, "durationMs"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 92
    .local v8, "_columnIndexOfDurationMs":I
    const-string v9, "watchedAt"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 93
    .local v9, "_columnIndexOfWatchedAt":I
    const-string v10, "serverId"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 94
    .local v10, "_columnIndexOfServerId":I
    const-string v11, "title"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 95
    .local v11, "_columnIndexOfTitle":I
    const-string v12, "poster"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 96
    .local v12, "_columnIndexOfPoster":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 100
    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 102
    .local v14, "_tmpId":I
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 104
    .local v0, "_tmpContentId":I
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .local v1, "_tmpContentType":Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v1    # "_tmpContentType":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 110
    .local v19, "_tmpContentType":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v20

    .line 112
    .local v20, "_tmpPositionMs":J
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v22

    .line 114
    .local v22, "_tmpDurationMs":J
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v24

    .line 116
    .local v24, "_tmpWatchedAt":J
    move/from16 v18, v0

    .end local v0    # "_tmpContentId":I
    .local v18, "_tmpContentId":I
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 118
    .local v0, "_tmpServerId":I
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x0

    move-object/from16 v27, v1

    .local v1, "_tmpTitle":Ljava/lang/String;
    goto :goto_2

    .line 121
    .end local v1    # "_tmpTitle":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    .line 124
    .local v27, "_tmpTitle":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const/4 v1, 0x0

    move-object/from16 v28, v1

    .local v1, "_tmpPoster":Ljava/lang/String;
    goto :goto_3

    .line 127
    .end local v1    # "_tmpPoster":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    .line 129
    .local v28, "_tmpPoster":Ljava/lang/String;
    :goto_3
    new-instance v16, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    move/from16 v26, v0

    move/from16 v17, v14

    .end local v0    # "_tmpServerId":I
    .end local v14    # "_tmpId":I
    .local v17, "_tmpId":I
    .local v26, "_tmpServerId":I
    invoke-direct/range {v16 .. v28}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;-><init>(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 130
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    move-object/from16 v1, p1

    move v0, v15

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .end local v17    # "_tmpId":I
    .end local v18    # "_tmpContentId":I
    .end local v19    # "_tmpContentType":Ljava/lang/String;
    .end local v20    # "_tmpPositionMs":J
    .end local v22    # "_tmpDurationMs":J
    .end local v24    # "_tmpWatchedAt":J
    .end local v26    # "_tmpServerId":I
    .end local v27    # "_tmpTitle":Ljava/lang/String;
    .end local v28    # "_tmpPoster":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v15    # "_argIndex":I
    .local v0, "_argIndex":I
    :cond_3
    nop

    .line 134
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 132
    return-object v13

    .line 134
    .end local v0    # "_argIndex":I
    .end local v4    # "_columnIndexOfId":I
    .end local v5    # "_columnIndexOfContentId":I
    .end local v6    # "_columnIndexOfContentType":I
    .end local v7    # "_columnIndexOfPositionMs":I
    .end local v8    # "_columnIndexOfDurationMs":I
    .end local v9    # "_columnIndexOfWatchedAt":I
    .end local v10    # "_columnIndexOfServerId":I
    .end local v11    # "_columnIndexOfTitle":I
    .end local v12    # "_columnIndexOfPoster":I
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 135
    throw v0
.end method

.method static synthetic lambda$observeByType$2(Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 29
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "serverId"    # I
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 144
    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM watch_history WHERE contentType = ? AND serverId = ? ORDER BY watchedAt DESC"

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 146
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 147
    .local v0, "_argIndex":I
    if-nez v1, :cond_0

    .line 148
    :try_start_0
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :goto_0
    const/4 v0, 0x2

    .line 153
    move/from16 v4, p1

    int-to-long v5, v4

    :try_start_1
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 154
    const-string v5, "id"

    invoke-static {v3, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 155
    .local v5, "_columnIndexOfId":I
    const-string v6, "contentId"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 156
    .local v6, "_columnIndexOfContentId":I
    const-string v7, "contentType"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 157
    .local v7, "_columnIndexOfContentType":I
    const-string v8, "positionMs"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 158
    .local v8, "_columnIndexOfPositionMs":I
    const-string v9, "durationMs"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 159
    .local v9, "_columnIndexOfDurationMs":I
    const-string v10, "watchedAt"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 160
    .local v10, "_columnIndexOfWatchedAt":I
    const-string v11, "serverId"

    invoke-static {v3, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 161
    .local v11, "_columnIndexOfServerId":I
    const-string v12, "title"

    invoke-static {v3, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 162
    .local v12, "_columnIndexOfTitle":I
    const-string v13, "poster"

    invoke-static {v3, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 163
    .local v13, "_columnIndexOfPoster":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;>;"
    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 167
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 169
    .local v0, "_tmpId":I
    move/from16 v17, v0

    .end local v0    # "_tmpId":I
    .local v17, "_tmpId":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 171
    .local v0, "_tmpContentId":I
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const/4 v1, 0x0

    move-object/from16 v19, v1

    .local v1, "_tmpContentType":Ljava/lang/String;
    goto :goto_2

    .line 174
    .end local v1    # "_tmpContentType":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 177
    .local v19, "_tmpContentType":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v20

    .line 179
    .local v20, "_tmpPositionMs":J
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v22

    .line 181
    .local v22, "_tmpDurationMs":J
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v24

    .line 183
    .local v24, "_tmpWatchedAt":J
    move/from16 v18, v0

    .end local v0    # "_tmpContentId":I
    .local v18, "_tmpContentId":I
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 185
    .local v0, "_tmpServerId":I
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    const/4 v1, 0x0

    move-object/from16 v27, v1

    .local v1, "_tmpTitle":Ljava/lang/String;
    goto :goto_3

    .line 188
    .end local v1    # "_tmpTitle":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    .line 191
    .local v27, "_tmpTitle":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    const/4 v1, 0x0

    move-object/from16 v28, v1

    .local v1, "_tmpPoster":Ljava/lang/String;
    goto :goto_4

    .line 194
    .end local v1    # "_tmpPoster":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    .line 196
    .local v28, "_tmpPoster":Ljava/lang/String;
    :goto_4
    new-instance v16, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;

    move/from16 v26, v0

    .end local v0    # "_tmpServerId":I
    .local v26, "_tmpServerId":I
    invoke-direct/range {v16 .. v28}, Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;-><init>(IILjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 197
    .local v0, "_item":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    move-object/from16 v1, p0

    move v0, v15

    .end local v0    # "_item":Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .end local v17    # "_tmpId":I
    .end local v18    # "_tmpContentId":I
    .end local v19    # "_tmpContentType":Ljava/lang/String;
    .end local v20    # "_tmpPositionMs":J
    .end local v22    # "_tmpDurationMs":J
    .end local v24    # "_tmpWatchedAt":J
    .end local v26    # "_tmpServerId":I
    .end local v27    # "_tmpTitle":Ljava/lang/String;
    .end local v28    # "_tmpPoster":Ljava/lang/String;
    goto :goto_1

    .line 199
    .end local v15    # "_argIndex":I
    .local v0, "_argIndex":I
    :cond_4
    nop

    .line 201
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 199
    return-object v14

    .line 201
    .end local v0    # "_argIndex":I
    .end local v5    # "_columnIndexOfId":I
    .end local v6    # "_columnIndexOfContentId":I
    .end local v7    # "_columnIndexOfContentType":I
    .end local v8    # "_columnIndexOfPositionMs":I
    .end local v9    # "_columnIndexOfDurationMs":I
    .end local v10    # "_columnIndexOfWatchedAt":I
    .end local v11    # "_columnIndexOfServerId":I
    .end local v12    # "_columnIndexOfTitle":I
    .end local v13    # "_columnIndexOfPoster":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;>;"
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move/from16 v4, p1

    :goto_5
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 202
    throw v0
.end method

.method private synthetic lambda$upsert$0(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1
    .param p1, "item"    # Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 74
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->__insertAdapterOfWatchHistoryEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 75
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public clear(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 277
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    const-string v0, "DELETE FROM watch_history WHERE serverId = ?"

    .line 278
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public find(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "contentId"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "serverId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "contentId",
            "contentType",
            "serverId",
            "$completion"
        }
    .end annotation

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

    .line 209
    .local p4, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;>;"
    const-string v0, "SELECT * FROM watch_history WHERE contentId = ? AND contentType = ? AND serverId = ? LIMIT 1"

    .line 210
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2, p3}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, p4}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            ">;>;"
        }
    .end annotation

    .line 81
    const-string v0, "SELECT * FROM watch_history WHERE serverId = ? ORDER BY watchedAt DESC"

    .line 82
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "watch_history"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    return-object v1
.end method

.method public observeByType(ILjava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "serverId",
            "contentType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;",
            ">;>;"
        }
    .end annotation

    .line 142
    const-string v0, "SELECT * FROM watch_history WHERE contentType = ? AND serverId = ? ORDER BY watchedAt DESC"

    .line 143
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "watch_history"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2, p1}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    return-object v1
.end method

.method public upsert(Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "item"    # Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "item",
            "$completion"
        }
    .end annotation

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

    .line 72
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl$$ExternalSyntheticLambda3;-><init>(Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;Lcom/bayyari/tv/data/local/entities/WatchHistoryEntity;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
