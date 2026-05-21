.class public final Lcom/bayyari/tv/data/local/AppDatabase_Impl;
.super Lcom/bayyari/tv/data/local/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

.field private volatile _epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

.field private volatile _favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

.field private volatile _movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

.field private volatile _seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

.field private volatile _watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/bayyari/tv/data/local/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bayyari/tv/data/local/AppDatabase_Impl;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/bayyari/tv/data/local/AppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/SQLiteConnection;

    .line 39
    invoke-virtual {p0, p1}, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method


# virtual methods
.method public channelDao()Lcom/bayyari/tv/data/local/dao/ChannelDao;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    return-object v0

    .line 312
    :cond_0
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    if-nez v0, :cond_1

    .line 314
    new-instance v0, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_channelDao:Lcom/bayyari/tv/data/local/dao/ChannelDao;

    monitor-exit p0

    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 7

    .line 276
    const-string v5, "watch_history"

    const-string v6, "categories"

    const-string v0, "channels"

    const-string v1, "movies"

    const-string v2, "series"

    const-string v3, "favorites"

    const-string v4, "epg"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v1, v0}, Lcom/bayyari/tv/data/local/AppDatabase;->performClear(Z[Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 10

    .line 269
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 270
    .local v0, "_shadowTablesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 271
    .local v2, "_viewTables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v8, "watch_history"

    const-string v9, "categories"

    const-string v3, "channels"

    const-string v4, "movies"

    const-string v5, "series"

    const-string v6, "favorites"

    const-string v7, "epg"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 4

    .line 55
    new-instance v0, Lcom/bayyari/tv/data/local/AppDatabase_Impl$1;

    const-string v1, "cc70d91eb0fa765493491889f9de5220"

    const-string v2, "b50a15efa6affcae3f80a16389b5e3b3"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/bayyari/tv/data/local/AppDatabase_Impl$1;-><init>(Lcom/bayyari/tv/data/local/AppDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v0, "_openDelegate":Landroidx/room/RoomOpenDelegate;
    return-object v0
.end method

.method protected bridge synthetic createOpenDelegate()Landroidx/room/RoomOpenDelegateMarker;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->createOpenDelegate()Landroidx/room/RoomOpenDelegate;

    move-result-object v0

    return-object v0
.end method

.method public epgDao()Lcom/bayyari/tv/data/local/dao/EpgDao;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    return-object v0

    .line 368
    :cond_0
    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    if-nez v0, :cond_1

    .line 370
    new-instance v0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_epgDao:Lcom/bayyari/tv/data/local/dao/EpgDao;

    monitor-exit p0

    return-object v0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public favoriteDao()Lcom/bayyari/tv/data/local/dao/FavoriteDao;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    return-object v0

    .line 354
    :cond_0
    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    if-nez v0, :cond_1

    .line 356
    new-instance v0, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_favoriteDao:Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    monitor-exit p0

    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autoMigrationSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 303
    .local p1, "autoMigrationSpecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;Landroidx/room/migration/AutoMigrationSpec;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "_autoMigrations":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    return-object v0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 296
    .local v0, "_autoMigrationSpecsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroidx/room/migration/AutoMigrationSpec;>;>;"
    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    .local v0, "_typeConvertersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    const-class v1, Lcom/bayyari/tv/data/local/dao/ChannelDao;

    invoke-static {}, Lcom/bayyari/tv/data/local/dao/ChannelDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-class v1, Lcom/bayyari/tv/data/local/dao/MovieDao;

    invoke-static {}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-class v1, Lcom/bayyari/tv/data/local/dao/SeriesDao;

    invoke-static {}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-class v1, Lcom/bayyari/tv/data/local/dao/FavoriteDao;

    invoke-static {}, Lcom/bayyari/tv/data/local/dao/FavoriteDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-class v1, Lcom/bayyari/tv/data/local/dao/EpgDao;

    invoke-static {}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-class v1, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    invoke-static {}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-object v0
.end method

.method public movieDao()Lcom/bayyari/tv/data/local/dao/MovieDao;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    return-object v0

    .line 326
    :cond_0
    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/MovieDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_movieDao:Lcom/bayyari/tv/data/local/dao/MovieDao;

    monitor-exit p0

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public seriesDao()Lcom/bayyari/tv/data/local/dao/SeriesDao;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    return-object v0

    .line 340
    :cond_0
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/SeriesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_seriesDao:Lcom/bayyari/tv/data/local/dao/SeriesDao;

    monitor-exit p0

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public watchHistoryDao()Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    return-object v0

    .line 382
    :cond_0
    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;

    invoke-direct {v0, p0}, Lcom/bayyari/tv/data/local/dao/WatchHistoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/bayyari/tv/data/local/AppDatabase_Impl;->_watchHistoryDao:Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;

    monitor-exit p0

    return-object v0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
