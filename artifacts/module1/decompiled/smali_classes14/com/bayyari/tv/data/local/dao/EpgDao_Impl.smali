.class public final Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;
.super Ljava/lang/Object;
.source "EpgDao_Impl.java"

# interfaces
.implements Lcom/bayyari/tv/data/local/dao/EpgDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfEpgEntity:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/bayyari/tv/data/local/entities/EpgEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uNsfSzJpjkvWkpl_-kDeev5x8F8(Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->lambda$upsertAll$0(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

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
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$1;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$1;-><init>(Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->__insertAdapterOfEpgEntity:Landroidx/room/EntityInsertAdapter;

    .line 63
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

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$clearForServer$4(ILandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 4
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 217
    const-string v0, "DELETE FROM epg WHERE serverId = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 219
    .local v0, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    .line 220
    .local v1, "_argIndex":I
    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 221
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 222
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 222
    return-object v2

    .line 224
    .end local v1    # "_argIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 225
    throw v1
.end method

.method static synthetic lambda$clearForStream$3(IILandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 4
    .param p0, "serverId"    # I
    .param p1, "streamId"    # I
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 199
    const-string v0, "DELETE FROM epg WHERE serverId = ? AND streamId = ?"

    invoke-interface {p2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 201
    .local v0, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    .line 202
    .local v1, "_argIndex":I
    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 203
    const/4 v1, 0x2

    .line 204
    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 205
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 206
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 206
    return-object v2

    .line 208
    .end local v1    # "_argIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 209
    throw v1
.end method

.method static synthetic lambda$getForRange$2(IIJJLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 33
    .param p0, "serverId"    # I
    .param p1, "streamId"    # I
    .param p2, "endMs"    # J
    .param p4, "startMs"    # J
    .param p6, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 137
    const-string v0, "SELECT * FROM epg WHERE serverId = ? AND streamId = ? AND startMs <= ? AND endMs >= ? ORDER BY startMs ASC"

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 139
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 140
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 141
    const/4 v0, 0x2

    .line 142
    move/from16 v4, p1

    int-to-long v5, v4

    invoke-interface {v2, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 143
    const/4 v0, 0x3

    .line 144
    move-wide/from16 v5, p2

    :try_start_1
    invoke-interface {v2, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    const/4 v0, 0x4

    .line 146
    move-wide/from16 v7, p4

    :try_start_2
    invoke-interface {v2, v0, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    const-string v9, "id"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 148
    .local v9, "_columnIndexOfId":I
    const-string v10, "streamId"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 149
    .local v10, "_columnIndexOfStreamId":I
    const-string v11, "serverId"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 150
    .local v11, "_columnIndexOfServerId":I
    const-string v12, "title"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 151
    .local v12, "_columnIndexOfTitle":I
    const-string v13, "description"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    .line 152
    .local v13, "_columnIndexOfDescription":I
    const-string v14, "startMs"

    invoke-static {v2, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    .line 153
    .local v14, "_columnIndexOfStartMs":I
    const-string v15, "endMs"

    invoke-static {v2, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    .line 154
    .local v15, "_columnIndexOfEndMs":I
    move/from16 v16, v0

    .end local v0    # "_argIndex":I
    .local v16, "_argIndex":I
    const-string v0, "hasArchive"

    invoke-static {v2, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "_columnIndexOfHasArchive":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    .line 156
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 159
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v22, v19

    .line 161
    .local v22, "_tmpId":J
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 163
    .local v3, "_tmpStreamId":I
    move/from16 v24, v3

    .end local v3    # "_tmpStreamId":I
    .local v24, "_tmpStreamId":I
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 165
    .local v3, "_tmpServerId":I
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    const/4 v4, 0x0

    move-object/from16 v26, v4

    .local v4, "_tmpTitle":Ljava/lang/String;
    goto :goto_1

    .line 168
    .end local v4    # "_tmpTitle":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    .line 171
    .local v26, "_tmpTitle":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    const/4 v4, 0x0

    move-object/from16 v27, v4

    .local v4, "_tmpDescription":Ljava/lang/String;
    goto :goto_2

    .line 174
    .end local v4    # "_tmpDescription":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v4

    .line 177
    .local v27, "_tmpDescription":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v28

    .line 179
    .local v28, "_tmpStartMs":J
    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v30

    .line 182
    .local v30, "_tmpEndMs":J
    move/from16 v25, v3

    .end local v3    # "_tmpServerId":I
    .local v25, "_tmpServerId":I
    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 183
    .local v3, "_tmp":I
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    move/from16 v32, v4

    .line 184
    .local v32, "_tmpHasArchive":Z
    new-instance v21, Lcom/bayyari/tv/data/local/entities/EpgEntity;

    invoke-direct/range {v21 .. v32}, Lcom/bayyari/tv/data/local/entities/EpgEntity;-><init>(JIILjava/lang/String;Ljava/lang/String;JJZ)V

    move-object/from16 v4, v21

    .line 185
    .local v4, "_item":Lcom/bayyari/tv/data/local/entities/EpgEntity;
    move/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    .local v17, "_columnIndexOfHasArchive":I
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    move/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v18, v0

    move/from16 v0, v17

    .end local v3    # "_tmp":I
    .end local v4    # "_item":Lcom/bayyari/tv/data/local/entities/EpgEntity;
    .end local v22    # "_tmpId":J
    .end local v24    # "_tmpStreamId":I
    .end local v25    # "_tmpServerId":I
    .end local v26    # "_tmpTitle":Ljava/lang/String;
    .end local v27    # "_tmpDescription":Ljava/lang/String;
    .end local v28    # "_tmpStartMs":J
    .end local v30    # "_tmpEndMs":J
    .end local v32    # "_tmpHasArchive":Z
    goto :goto_0

    .line 187
    .end local v17    # "_columnIndexOfHasArchive":I
    .local v0, "_columnIndexOfHasArchive":I
    .restart local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    :cond_3
    move/from16 v17, v0

    move-object/from16 v0, v18

    .line 189
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    .restart local v17    # "_columnIndexOfHasArchive":I
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 187
    return-object v0

    .line 189
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    .end local v9    # "_columnIndexOfId":I
    .end local v10    # "_columnIndexOfStreamId":I
    .end local v11    # "_columnIndexOfServerId":I
    .end local v12    # "_columnIndexOfTitle":I
    .end local v13    # "_columnIndexOfDescription":I
    .end local v14    # "_columnIndexOfStartMs":I
    .end local v15    # "_columnIndexOfEndMs":I
    .end local v16    # "_argIndex":I
    .end local v17    # "_columnIndexOfHasArchive":I
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-wide/from16 v5, p2

    :goto_4
    move-wide/from16 v7, p4

    :goto_5
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 190
    throw v0
.end method

.method static synthetic lambda$observeForStream$1(IILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 28
    .param p0, "serverId"    # I
    .param p1, "streamId"    # I
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 79
    const-string v0, "SELECT * FROM epg WHERE serverId = ? AND streamId = ? ORDER BY startMs ASC"

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 81
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 82
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    const/4 v0, 0x2

    .line 84
    move/from16 v4, p1

    int-to-long v5, v4

    :try_start_1
    invoke-interface {v2, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 85
    const-string v5, "id"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, "_columnIndexOfId":I
    const-string v6, "streamId"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 87
    .local v6, "_columnIndexOfStreamId":I
    const-string v7, "serverId"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 88
    .local v7, "_columnIndexOfServerId":I
    const-string v8, "title"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 89
    .local v8, "_columnIndexOfTitle":I
    const-string v9, "description"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 90
    .local v9, "_columnIndexOfDescription":I
    const-string v10, "startMs"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 91
    .local v10, "_columnIndexOfStartMs":I
    const-string v11, "endMs"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    .line 92
    .local v11, "_columnIndexOfEndMs":I
    const-string v12, "hasArchive"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    .line 93
    .local v12, "_columnIndexOfHasArchive":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 97
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    move-wide/from16 v17, v14

    .line 99
    .local v17, "_tmpId":J
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 101
    .local v14, "_tmpStreamId":I
    move v15, v0

    .end local v0    # "_argIndex":I
    .local v15, "_argIndex":I
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 103
    .local v0, "_tmpServerId":I
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x0

    move-object/from16 v21, v1

    .local v1, "_tmpTitle":Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v1    # "_tmpTitle":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    .line 109
    .local v21, "_tmpTitle":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .local v1, "_tmpDescription":Ljava/lang/String;
    goto :goto_2

    .line 112
    .end local v1    # "_tmpDescription":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    .line 115
    .local v22, "_tmpDescription":Ljava/lang/String;
    :goto_2
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v23

    .line 117
    .local v23, "_tmpStartMs":J
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v25

    .line 120
    .local v25, "_tmpEndMs":J
    move/from16 v20, v0

    .end local v0    # "_tmpServerId":I
    .local v20, "_tmpServerId":I
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 121
    .local v0, "_tmp":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    move/from16 v27, v1

    .line 122
    .local v27, "_tmpHasArchive":Z
    new-instance v16, Lcom/bayyari/tv/data/local/entities/EpgEntity;

    move/from16 v19, v14

    .end local v14    # "_tmpStreamId":I
    .local v19, "_tmpStreamId":I
    invoke-direct/range {v16 .. v27}, Lcom/bayyari/tv/data/local/entities/EpgEntity;-><init>(JIILjava/lang/String;Ljava/lang/String;JJZ)V

    move-object/from16 v1, v16

    .line 123
    .local v1, "_item":Lcom/bayyari/tv/data/local/entities/EpgEntity;
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    move-object/from16 v1, p2

    move v0, v15

    .end local v0    # "_tmp":I
    .end local v1    # "_item":Lcom/bayyari/tv/data/local/entities/EpgEntity;
    .end local v17    # "_tmpId":J
    .end local v19    # "_tmpStreamId":I
    .end local v20    # "_tmpServerId":I
    .end local v21    # "_tmpTitle":Ljava/lang/String;
    .end local v22    # "_tmpDescription":Ljava/lang/String;
    .end local v23    # "_tmpStartMs":J
    .end local v25    # "_tmpEndMs":J
    .end local v27    # "_tmpHasArchive":Z
    goto :goto_0

    .line 125
    .end local v15    # "_argIndex":I
    .local v0, "_argIndex":I
    :cond_3
    nop

    .line 127
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 125
    return-object v13

    .line 127
    .end local v0    # "_argIndex":I
    .end local v5    # "_columnIndexOfId":I
    .end local v6    # "_columnIndexOfStreamId":I
    .end local v7    # "_columnIndexOfServerId":I
    .end local v8    # "_columnIndexOfTitle":I
    .end local v9    # "_columnIndexOfDescription":I
    .end local v10    # "_columnIndexOfStartMs":I
    .end local v11    # "_columnIndexOfEndMs":I
    .end local v12    # "_columnIndexOfHasArchive":I
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v4, p1

    :goto_4
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 128
    throw v0
.end method

.method private synthetic lambda$upsertAll$0(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1
    .param p1, "items"    # Ljava/util/List;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 70
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->__insertAdapterOfEpgEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    .line 71
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

    .line 215
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    const-string v0, "DELETE FROM epg WHERE serverId = ?"

    .line 216
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public clearForStream(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 197
    .local p3, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    const-string v0, "DELETE FROM epg WHERE serverId = ? AND streamId = ?"

    .line 198
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda4;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2, p3}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getForRange(IIJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "serverId"    # I
    .param p2, "streamId"    # I
    .param p3, "startMs"    # J
    .param p5, "endMs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "serverId",
            "streamId",
            "startMs",
            "endMs",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/EpgEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 135
    .local p7, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;>;"
    const-string v0, "SELECT * FROM epg WHERE serverId = ? AND streamId = ? AND startMs <= ? AND endMs >= ? ORDER BY startMs ASC"

    .line 136
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;

    move v3, p1

    move v4, p2

    move-wide v7, p3

    move-wide v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;-><init>(IIJJ)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v5, p7

    invoke-static {v1, v3, v4, v2, v5}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public observeForStream(II)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .param p1, "serverId"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "serverId",
            "streamId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/bayyari/tv/data/local/entities/EpgEntity;",
            ">;>;"
        }
    .end annotation

    .line 77
    const-string v0, "SELECT * FROM epg WHERE serverId = ? AND streamId = ? ORDER BY startMs ASC"

    .line 78
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "epg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p2}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda0;-><init>(II)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

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
            "Lcom/bayyari/tv/data/local/entities/EpgEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/EpgEntity;>;"
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda3;-><init>(Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
