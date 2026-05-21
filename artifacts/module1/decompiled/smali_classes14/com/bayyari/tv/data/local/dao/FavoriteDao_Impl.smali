.class public final Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;
.super Ljava/lang/Object;
.source "FavoriteDao_Impl.java"

# interfaces
.implements Lcom/bayyari/tv/data/local/dao/FavoriteDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertAdapterOfFavoriteEntity:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/bayyari/tv/data/local/entities/FavoriteEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VjviM-_9s-i5yXgstnPGsrQ_USE(Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;Lcom/bayyari/tv/data/local/entities/FavoriteEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->lambda$upsert$0(Lcom/bayyari/tv/data/local/entities/FavoriteEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

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
    iput-object p1, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 34
    new-instance v0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$1;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$1;-><init>(Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__insertAdapterOfFavoriteEntity:Landroidx/room/EntityInsertAdapter;

    .line 55
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

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$deleteByContent$5(ILjava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 4
    .param p0, "contentId"    # I
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "serverId"    # I
    .param p3, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 222
    const-string v0, "DELETE FROM favorites WHERE contentId = ? AND contentType = ? AND serverId = ?"

    invoke-interface {p3, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 224
    .local v0, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    .line 225
    .local v1, "_argIndex":I
    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 226
    const/4 v1, 0x2

    .line 227
    if-nez p1, :cond_0

    .line 228
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 232
    :goto_0
    const/4 v1, 0x3

    .line 233
    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 234
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 235
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 235
    return-object v2

    .line 237
    .end local v1    # "_argIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 238
    throw v1
.end method

.method static synthetic lambda$deleteById$4(ILandroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 4
    .param p0, "id"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 205
    const-string v0, "DELETE FROM favorites WHERE id = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 207
    .local v0, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    .line 208
    .local v1, "_argIndex":I
    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 209
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 210
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 210
    return-object v2

    .line 212
    .end local v1    # "_argIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 213
    throw v1
.end method

.method static synthetic lambda$find$3(ILjava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    .locals 20
    .param p0, "contentId"    # I
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "serverId"    # I
    .param p3, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 157
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM favorites WHERE contentId = ? AND contentType = ? AND serverId = ? LIMIT 1"

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 159
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 160
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 161
    const/4 v0, 0x2

    .line 162
    if-nez v1, :cond_0

    .line 163
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :goto_0
    const/4 v0, 0x3

    .line 168
    move/from16 v5, p2

    int-to-long v6, v5

    :try_start_1
    invoke-interface {v3, v0, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 169
    const-string v6, "id"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 170
    .local v6, "_columnIndexOfId":I
    const-string v7, "contentId"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 171
    .local v7, "_columnIndexOfContentId":I
    const-string v8, "contentType"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 172
    .local v8, "_columnIndexOfContentType":I
    const-string v9, "serverId"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 173
    .local v9, "_columnIndexOfServerId":I
    const-string v10, "addedAt"

    invoke-static {v3, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    .line 175
    .local v10, "_columnIndexOfAddedAt":I
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 177
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v14, v11

    .line 179
    .local v14, "_tmpId":I
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v15, v11

    .line 181
    .local v15, "_tmpContentId":I
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 182
    const/4 v11, 0x0

    move-object/from16 v16, v11

    .local v11, "_tmpContentType":Ljava/lang/String;
    goto :goto_1

    .line 184
    .end local v11    # "_tmpContentType":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    .line 187
    .local v16, "_tmpContentType":Ljava/lang/String;
    :goto_1
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    .line 189
    .local v11, "_tmpServerId":I
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    .line 190
    .local v18, "_tmpAddedAt":J
    new-instance v13, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;

    move/from16 v17, v11

    .end local v11    # "_tmpServerId":I
    .local v17, "_tmpServerId":I
    invoke-direct/range {v13 .. v19}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;-><init>(IILjava/lang/String;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v14    # "_tmpId":I
    .end local v15    # "_tmpContentId":I
    .end local v16    # "_tmpContentType":Ljava/lang/String;
    .end local v17    # "_tmpServerId":I
    .end local v18    # "_tmpAddedAt":J
    .local v13, "_result":Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    goto :goto_2

    .line 192
    .end local v13    # "_result":Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    :cond_2
    const/4 v13, 0x0

    .line 194
    .restart local v13    # "_result":Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    :goto_2
    nop

    .line 196
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 194
    return-object v13

    .line 196
    .end local v0    # "_argIndex":I
    .end local v6    # "_columnIndexOfId":I
    .end local v7    # "_columnIndexOfContentId":I
    .end local v8    # "_columnIndexOfContentType":I
    .end local v9    # "_columnIndexOfServerId":I
    .end local v10    # "_columnIndexOfAddedAt":I
    .end local v13    # "_result":Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v5, p2

    :goto_3
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 197
    throw v0
.end method

.method static synthetic lambda$observeAll$1(ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 19
    .param p0, "serverId"    # I
    .param p1, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 70
    const-string v0, "SELECT * FROM favorites WHERE serverId = ? ORDER BY addedAt DESC"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    .line 72
    .local v2, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 73
    .local v0, "_argIndex":I
    move/from16 v3, p0

    int-to-long v4, v3

    :try_start_0
    invoke-interface {v2, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 74
    const-string v4, "id"

    invoke-static {v2, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 75
    .local v4, "_columnIndexOfId":I
    const-string v5, "contentId"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, "_columnIndexOfContentId":I
    const-string v6, "contentType"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 77
    .local v6, "_columnIndexOfContentType":I
    const-string v7, "serverId"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 78
    .local v7, "_columnIndexOfServerId":I
    const-string v8, "addedAt"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 79
    .local v8, "_columnIndexOfAddedAt":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/FavoriteEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 83
    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v13, v10

    .line 85
    .local v13, "_tmpId":I
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 87
    .local v14, "_tmpContentId":I
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 88
    const/4 v10, 0x0

    move-object v15, v10

    .local v10, "_tmpContentType":Ljava/lang/String;
    goto :goto_1

    .line 90
    .end local v10    # "_tmpContentType":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 93
    .local v15, "_tmpContentType":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 95
    .local v10, "_tmpServerId":I
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v17

    .line 96
    .local v17, "_tmpAddedAt":J
    new-instance v12, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;

    move/from16 v16, v10

    .end local v10    # "_tmpServerId":I
    .local v16, "_tmpServerId":I
    invoke-direct/range {v12 .. v18}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;-><init>(IILjava/lang/String;IJ)V

    .line 97
    .local v12, "_item":Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    nop

    .end local v12    # "_item":Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    .end local v13    # "_tmpId":I
    .end local v14    # "_tmpContentId":I
    .end local v15    # "_tmpContentType":Ljava/lang/String;
    .end local v16    # "_tmpServerId":I
    .end local v17    # "_tmpAddedAt":J
    goto :goto_0

    .line 99
    :cond_1
    nop

    .line 101
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 99
    return-object v9

    .line 101
    .end local v0    # "_argIndex":I
    .end local v4    # "_columnIndexOfId":I
    .end local v5    # "_columnIndexOfContentId":I
    .end local v6    # "_columnIndexOfContentType":I
    .end local v7    # "_columnIndexOfServerId":I
    .end local v8    # "_columnIndexOfAddedAt":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/FavoriteEntity;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 102
    throw v0
.end method

.method static synthetic lambda$observeByType$2(ILjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 20
    .param p0, "serverId"    # I
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 110
    move-object/from16 v1, p1

    const-string v0, "SELECT * FROM favorites WHERE serverId = ? AND contentType = ? ORDER BY addedAt DESC"

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    .line 112
    .local v3, "_stmt":Landroidx/sqlite/SQLiteStatement;
    const/4 v0, 0x1

    .line 113
    .local v0, "_argIndex":I
    move/from16 v4, p0

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v0, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 114
    const/4 v0, 0x2

    .line 115
    if-nez v1, :cond_0

    .line 116
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 120
    :goto_0
    const-string v5, "id"

    invoke-static {v3, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 121
    .local v5, "_columnIndexOfId":I
    const-string v6, "contentId"

    invoke-static {v3, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 122
    .local v6, "_columnIndexOfContentId":I
    const-string v7, "contentType"

    invoke-static {v3, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 123
    .local v7, "_columnIndexOfContentType":I
    const-string v8, "serverId"

    invoke-static {v3, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 124
    .local v8, "_columnIndexOfServerId":I
    const-string v9, "addedAt"

    invoke-static {v3, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    .line 125
    .local v9, "_columnIndexOfAddedAt":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/FavoriteEntity;>;"
    :goto_1
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 129
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v14, v11

    .line 131
    .local v14, "_tmpId":I
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v15, v11

    .line 133
    .local v15, "_tmpContentId":I
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 134
    const/4 v11, 0x0

    move-object/from16 v16, v11

    .local v11, "_tmpContentType":Ljava/lang/String;
    goto :goto_2

    .line 136
    .end local v11    # "_tmpContentType":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    .line 139
    .local v16, "_tmpContentType":Ljava/lang/String;
    :goto_2
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    .line 141
    .local v11, "_tmpServerId":I
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    .line 142
    .local v18, "_tmpAddedAt":J
    new-instance v13, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;

    move/from16 v17, v11

    .end local v11    # "_tmpServerId":I
    .local v17, "_tmpServerId":I
    invoke-direct/range {v13 .. v19}, Lcom/bayyari/tv/data/local/entities/FavoriteEntity;-><init>(IILjava/lang/String;IJ)V

    .line 143
    .local v13, "_item":Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    nop

    .end local v13    # "_item":Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    .end local v14    # "_tmpId":I
    .end local v15    # "_tmpContentId":I
    .end local v16    # "_tmpContentType":Ljava/lang/String;
    .end local v17    # "_tmpServerId":I
    .end local v18    # "_tmpAddedAt":J
    goto :goto_1

    .line 145
    :cond_2
    nop

    .line 147
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 145
    return-object v10

    .line 147
    .end local v0    # "_argIndex":I
    .end local v5    # "_columnIndexOfId":I
    .end local v6    # "_columnIndexOfContentId":I
    .end local v7    # "_columnIndexOfContentType":I
    .end local v8    # "_columnIndexOfServerId":I
    .end local v9    # "_columnIndexOfAddedAt":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/bayyari/tv/data/local/entities/FavoriteEntity;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 148
    throw v0
.end method

.method private synthetic lambda$upsert$0(Lcom/bayyari/tv/data/local/entities/FavoriteEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1
    .param p1, "item"    # Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
    .param p2, "_connection"    # Landroidx/sqlite/SQLiteConnection;

    .line 61
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__insertAdapterOfFavoriteEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 62
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public deleteByContent(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 220
    .local p4, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    const-string v0, "DELETE FROM favorites WHERE contentId = ? AND contentType = ? AND serverId = ?"

    .line 221
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2, p3}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2, p4}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public deleteById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
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

    .line 203
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    const-string v0, "DELETE FROM favorites WHERE id = ?"

    .line 204
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda1;-><init>(I)V

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
            "Lcom/bayyari/tv/data/local/entities/FavoriteEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 155
    .local p4, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lcom/bayyari/tv/data/local/entities/FavoriteEntity;>;"
    const-string v0, "SELECT * FROM favorites WHERE contentId = ? AND contentType = ? AND serverId = ? LIMIT 1"

    .line 156
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2, p3}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;I)V

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
            "Lcom/bayyari/tv/data/local/entities/FavoriteEntity;",
            ">;>;"
        }
    .end annotation

    .line 68
    const-string v0, "SELECT * FROM favorites WHERE serverId = ? ORDER BY addedAt DESC"

    .line 69
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "favorites"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda4;-><init>(I)V

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
            "Lcom/bayyari/tv/data/local/entities/FavoriteEntity;",
            ">;>;"
        }
    .end annotation

    .line 108
    const-string v0, "SELECT * FROM favorites WHERE serverId = ? AND contentType = ? ORDER BY addedAt DESC"

    .line 109
    .local v0, "_sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "favorites"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1, p2}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    return-object v1
.end method

.method public upsert(Lcom/bayyari/tv/data/local/entities/FavoriteEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "item"    # Lcom/bayyari/tv/data/local/entities/FavoriteEntity;
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
            "Lcom/bayyari/tv/data/local/entities/FavoriteEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 59
    .local p2, "$completion":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<-Lkotlin/Unit;>;"
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;Lcom/bayyari/tv/data/local/entities/FavoriteEntity;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p2}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
