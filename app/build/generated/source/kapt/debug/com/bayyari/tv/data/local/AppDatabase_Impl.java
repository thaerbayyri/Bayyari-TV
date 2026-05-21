package com.bayyari.tv.data.local;

import androidx.annotation.NonNull;
import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.dao.ChannelDao_Impl;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.dao.EpgDao_Impl;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.local.dao.FavoriteDao_Impl;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.dao.MovieDao_Impl;
import com.bayyari.tv.data.local.dao.SeriesDao;
import com.bayyari.tv.data.local.dao.SeriesDao_Impl;
import com.bayyari.tv.data.local.dao.WatchHistoryDao;
import com.bayyari.tv.data.local.dao.WatchHistoryDao_Impl;
import java.lang.Class;
import java.lang.Override;
import java.lang.String;
import java.lang.SuppressWarnings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.processing.Generated;

@Generated("androidx.room.RoomProcessor")
@SuppressWarnings({"unchecked", "deprecation", "removal"})
public final class AppDatabase_Impl extends AppDatabase {
  private volatile ChannelDao _channelDao;

  private volatile MovieDao _movieDao;

  private volatile SeriesDao _seriesDao;

  private volatile FavoriteDao _favoriteDao;

  private volatile EpgDao _epgDao;

  private volatile WatchHistoryDao _watchHistoryDao;

  @Override
  @NonNull
  protected RoomOpenDelegate createOpenDelegate() {
    final RoomOpenDelegate _openDelegate = new RoomOpenDelegate(1, "cc70d91eb0fa765493491889f9de5220", "b50a15efa6affcae3f80a16389b5e3b3") {
      @Override
      public void createAllTables(@NonNull final SQLiteConnection connection) {
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `channels` (`streamId` INTEGER NOT NULL, `name` TEXT NOT NULL, `streamIcon` TEXT NOT NULL, `categoryId` TEXT NOT NULL, `categoryName` TEXT NOT NULL, `tvArchive` INTEGER NOT NULL, `tvArchiveDuration` INTEGER NOT NULL, `epgChannelId` TEXT NOT NULL, `added` INTEGER NOT NULL, `serverId` INTEGER NOT NULL, `directStreamUrl` TEXT, PRIMARY KEY(`streamId`, `serverId`))");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_channels_categoryId` ON `channels` (`categoryId`)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_channels_serverId` ON `channels` (`serverId`)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_channels_name` ON `channels` (`name`)");
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `movies` (`streamId` INTEGER NOT NULL, `name` TEXT NOT NULL, `streamIcon` TEXT NOT NULL, `categoryId` TEXT NOT NULL, `rating` REAL NOT NULL, `rating5Based` REAL NOT NULL, `added` INTEGER NOT NULL, `containerExtension` TEXT NOT NULL, `serverId` INTEGER NOT NULL, PRIMARY KEY(`streamId`, `serverId`))");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_movies_categoryId` ON `movies` (`categoryId`)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_movies_serverId` ON `movies` (`serverId`)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_movies_name` ON `movies` (`name`)");
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `series` (`seriesId` INTEGER NOT NULL, `name` TEXT NOT NULL, `cover` TEXT NOT NULL, `plot` TEXT NOT NULL, `cast` TEXT NOT NULL, `director` TEXT NOT NULL, `genre` TEXT NOT NULL, `releaseDate` TEXT NOT NULL, `lastModified` INTEGER NOT NULL, `rating` TEXT NOT NULL, `categoryId` TEXT NOT NULL, `serverId` INTEGER NOT NULL, PRIMARY KEY(`seriesId`, `serverId`))");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_series_categoryId` ON `series` (`categoryId`)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_series_serverId` ON `series` (`serverId`)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_series_name` ON `series` (`name`)");
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `favorites` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `contentId` INTEGER NOT NULL, `contentType` TEXT NOT NULL, `serverId` INTEGER NOT NULL, `addedAt` INTEGER NOT NULL)");
        SQLite.execSQL(connection, "CREATE UNIQUE INDEX IF NOT EXISTS `index_favorites_contentId_contentType_serverId` ON `favorites` (`contentId`, `contentType`, `serverId`)");
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `epg` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `streamId` INTEGER NOT NULL, `serverId` INTEGER NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, `startMs` INTEGER NOT NULL, `endMs` INTEGER NOT NULL, `hasArchive` INTEGER NOT NULL)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_epg_streamId_serverId` ON `epg` (`streamId`, `serverId`)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_epg_startMs` ON `epg` (`startMs`)");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_epg_endMs` ON `epg` (`endMs`)");
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `watch_history` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `contentId` INTEGER NOT NULL, `contentType` TEXT NOT NULL, `positionMs` INTEGER NOT NULL, `durationMs` INTEGER NOT NULL, `watchedAt` INTEGER NOT NULL, `serverId` INTEGER NOT NULL, `title` TEXT NOT NULL, `poster` TEXT NOT NULL)");
        SQLite.execSQL(connection, "CREATE UNIQUE INDEX IF NOT EXISTS `index_watch_history_contentId_contentType_serverId` ON `watch_history` (`contentId`, `contentType`, `serverId`)");
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS `categories` (`categoryId` TEXT NOT NULL, `name` TEXT NOT NULL, `kind` TEXT NOT NULL, `serverId` INTEGER NOT NULL, PRIMARY KEY(`categoryId`, `kind`, `serverId`))");
        SQLite.execSQL(connection, "CREATE INDEX IF NOT EXISTS `index_categories_serverId` ON `categories` (`serverId`)");
        SQLite.execSQL(connection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        SQLite.execSQL(connection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'cc70d91eb0fa765493491889f9de5220')");
      }

      @Override
      public void dropAllTables(@NonNull final SQLiteConnection connection) {
        SQLite.execSQL(connection, "DROP TABLE IF EXISTS `channels`");
        SQLite.execSQL(connection, "DROP TABLE IF EXISTS `movies`");
        SQLite.execSQL(connection, "DROP TABLE IF EXISTS `series`");
        SQLite.execSQL(connection, "DROP TABLE IF EXISTS `favorites`");
        SQLite.execSQL(connection, "DROP TABLE IF EXISTS `epg`");
        SQLite.execSQL(connection, "DROP TABLE IF EXISTS `watch_history`");
        SQLite.execSQL(connection, "DROP TABLE IF EXISTS `categories`");
      }

      @Override
      public void onCreate(@NonNull final SQLiteConnection connection) {
      }

      @Override
      public void onOpen(@NonNull final SQLiteConnection connection) {
        internalInitInvalidationTracker(connection);
      }

      @Override
      public void onPreMigrate(@NonNull final SQLiteConnection connection) {
        DBUtil.dropFtsSyncTriggers(connection);
      }

      @Override
      public void onPostMigrate(@NonNull final SQLiteConnection connection) {
      }

      @Override
      @NonNull
      public RoomOpenDelegate.ValidationResult onValidateSchema(
          @NonNull final SQLiteConnection connection) {
        final Map<String, TableInfo.Column> _columnsChannels = new HashMap<String, TableInfo.Column>(11);
        _columnsChannels.put("streamId", new TableInfo.Column("streamId", "INTEGER", true, 1, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("streamIcon", new TableInfo.Column("streamIcon", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("categoryId", new TableInfo.Column("categoryId", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("categoryName", new TableInfo.Column("categoryName", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("tvArchive", new TableInfo.Column("tvArchive", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("tvArchiveDuration", new TableInfo.Column("tvArchiveDuration", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("epgChannelId", new TableInfo.Column("epgChannelId", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("added", new TableInfo.Column("added", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("serverId", new TableInfo.Column("serverId", "INTEGER", true, 2, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsChannels.put("directStreamUrl", new TableInfo.Column("directStreamUrl", "TEXT", false, 0, null, TableInfo.CREATED_FROM_ENTITY));
        final Set<TableInfo.ForeignKey> _foreignKeysChannels = new HashSet<TableInfo.ForeignKey>(0);
        final Set<TableInfo.Index> _indicesChannels = new HashSet<TableInfo.Index>(3);
        _indicesChannels.add(new TableInfo.Index("index_channels_categoryId", false, Arrays.asList("categoryId"), Arrays.asList("ASC")));
        _indicesChannels.add(new TableInfo.Index("index_channels_serverId", false, Arrays.asList("serverId"), Arrays.asList("ASC")));
        _indicesChannels.add(new TableInfo.Index("index_channels_name", false, Arrays.asList("name"), Arrays.asList("ASC")));
        final TableInfo _infoChannels = new TableInfo("channels", _columnsChannels, _foreignKeysChannels, _indicesChannels);
        final TableInfo _existingChannels = TableInfo.read(connection, "channels");
        if (!_infoChannels.equals(_existingChannels)) {
          return new RoomOpenDelegate.ValidationResult(false, "channels(com.bayyari.tv.data.local.entities.ChannelEntity).\n"
                  + " Expected:\n" + _infoChannels + "\n"
                  + " Found:\n" + _existingChannels);
        }
        final Map<String, TableInfo.Column> _columnsMovies = new HashMap<String, TableInfo.Column>(9);
        _columnsMovies.put("streamId", new TableInfo.Column("streamId", "INTEGER", true, 1, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsMovies.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsMovies.put("streamIcon", new TableInfo.Column("streamIcon", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsMovies.put("categoryId", new TableInfo.Column("categoryId", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsMovies.put("rating", new TableInfo.Column("rating", "REAL", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsMovies.put("rating5Based", new TableInfo.Column("rating5Based", "REAL", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsMovies.put("added", new TableInfo.Column("added", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsMovies.put("containerExtension", new TableInfo.Column("containerExtension", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsMovies.put("serverId", new TableInfo.Column("serverId", "INTEGER", true, 2, null, TableInfo.CREATED_FROM_ENTITY));
        final Set<TableInfo.ForeignKey> _foreignKeysMovies = new HashSet<TableInfo.ForeignKey>(0);
        final Set<TableInfo.Index> _indicesMovies = new HashSet<TableInfo.Index>(3);
        _indicesMovies.add(new TableInfo.Index("index_movies_categoryId", false, Arrays.asList("categoryId"), Arrays.asList("ASC")));
        _indicesMovies.add(new TableInfo.Index("index_movies_serverId", false, Arrays.asList("serverId"), Arrays.asList("ASC")));
        _indicesMovies.add(new TableInfo.Index("index_movies_name", false, Arrays.asList("name"), Arrays.asList("ASC")));
        final TableInfo _infoMovies = new TableInfo("movies", _columnsMovies, _foreignKeysMovies, _indicesMovies);
        final TableInfo _existingMovies = TableInfo.read(connection, "movies");
        if (!_infoMovies.equals(_existingMovies)) {
          return new RoomOpenDelegate.ValidationResult(false, "movies(com.bayyari.tv.data.local.entities.MovieEntity).\n"
                  + " Expected:\n" + _infoMovies + "\n"
                  + " Found:\n" + _existingMovies);
        }
        final Map<String, TableInfo.Column> _columnsSeries = new HashMap<String, TableInfo.Column>(12);
        _columnsSeries.put("seriesId", new TableInfo.Column("seriesId", "INTEGER", true, 1, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("cover", new TableInfo.Column("cover", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("plot", new TableInfo.Column("plot", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("cast", new TableInfo.Column("cast", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("director", new TableInfo.Column("director", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("genre", new TableInfo.Column("genre", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("releaseDate", new TableInfo.Column("releaseDate", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("lastModified", new TableInfo.Column("lastModified", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("rating", new TableInfo.Column("rating", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("categoryId", new TableInfo.Column("categoryId", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsSeries.put("serverId", new TableInfo.Column("serverId", "INTEGER", true, 2, null, TableInfo.CREATED_FROM_ENTITY));
        final Set<TableInfo.ForeignKey> _foreignKeysSeries = new HashSet<TableInfo.ForeignKey>(0);
        final Set<TableInfo.Index> _indicesSeries = new HashSet<TableInfo.Index>(3);
        _indicesSeries.add(new TableInfo.Index("index_series_categoryId", false, Arrays.asList("categoryId"), Arrays.asList("ASC")));
        _indicesSeries.add(new TableInfo.Index("index_series_serverId", false, Arrays.asList("serverId"), Arrays.asList("ASC")));
        _indicesSeries.add(new TableInfo.Index("index_series_name", false, Arrays.asList("name"), Arrays.asList("ASC")));
        final TableInfo _infoSeries = new TableInfo("series", _columnsSeries, _foreignKeysSeries, _indicesSeries);
        final TableInfo _existingSeries = TableInfo.read(connection, "series");
        if (!_infoSeries.equals(_existingSeries)) {
          return new RoomOpenDelegate.ValidationResult(false, "series(com.bayyari.tv.data.local.entities.SeriesEntity).\n"
                  + " Expected:\n" + _infoSeries + "\n"
                  + " Found:\n" + _existingSeries);
        }
        final Map<String, TableInfo.Column> _columnsFavorites = new HashMap<String, TableInfo.Column>(5);
        _columnsFavorites.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsFavorites.put("contentId", new TableInfo.Column("contentId", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsFavorites.put("contentType", new TableInfo.Column("contentType", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsFavorites.put("serverId", new TableInfo.Column("serverId", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsFavorites.put("addedAt", new TableInfo.Column("addedAt", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        final Set<TableInfo.ForeignKey> _foreignKeysFavorites = new HashSet<TableInfo.ForeignKey>(0);
        final Set<TableInfo.Index> _indicesFavorites = new HashSet<TableInfo.Index>(1);
        _indicesFavorites.add(new TableInfo.Index("index_favorites_contentId_contentType_serverId", true, Arrays.asList("contentId", "contentType", "serverId"), Arrays.asList("ASC", "ASC", "ASC")));
        final TableInfo _infoFavorites = new TableInfo("favorites", _columnsFavorites, _foreignKeysFavorites, _indicesFavorites);
        final TableInfo _existingFavorites = TableInfo.read(connection, "favorites");
        if (!_infoFavorites.equals(_existingFavorites)) {
          return new RoomOpenDelegate.ValidationResult(false, "favorites(com.bayyari.tv.data.local.entities.FavoriteEntity).\n"
                  + " Expected:\n" + _infoFavorites + "\n"
                  + " Found:\n" + _existingFavorites);
        }
        final Map<String, TableInfo.Column> _columnsEpg = new HashMap<String, TableInfo.Column>(8);
        _columnsEpg.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsEpg.put("streamId", new TableInfo.Column("streamId", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsEpg.put("serverId", new TableInfo.Column("serverId", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsEpg.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsEpg.put("description", new TableInfo.Column("description", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsEpg.put("startMs", new TableInfo.Column("startMs", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsEpg.put("endMs", new TableInfo.Column("endMs", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsEpg.put("hasArchive", new TableInfo.Column("hasArchive", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        final Set<TableInfo.ForeignKey> _foreignKeysEpg = new HashSet<TableInfo.ForeignKey>(0);
        final Set<TableInfo.Index> _indicesEpg = new HashSet<TableInfo.Index>(3);
        _indicesEpg.add(new TableInfo.Index("index_epg_streamId_serverId", false, Arrays.asList("streamId", "serverId"), Arrays.asList("ASC", "ASC")));
        _indicesEpg.add(new TableInfo.Index("index_epg_startMs", false, Arrays.asList("startMs"), Arrays.asList("ASC")));
        _indicesEpg.add(new TableInfo.Index("index_epg_endMs", false, Arrays.asList("endMs"), Arrays.asList("ASC")));
        final TableInfo _infoEpg = new TableInfo("epg", _columnsEpg, _foreignKeysEpg, _indicesEpg);
        final TableInfo _existingEpg = TableInfo.read(connection, "epg");
        if (!_infoEpg.equals(_existingEpg)) {
          return new RoomOpenDelegate.ValidationResult(false, "epg(com.bayyari.tv.data.local.entities.EpgEntity).\n"
                  + " Expected:\n" + _infoEpg + "\n"
                  + " Found:\n" + _existingEpg);
        }
        final Map<String, TableInfo.Column> _columnsWatchHistory = new HashMap<String, TableInfo.Column>(9);
        _columnsWatchHistory.put("id", new TableInfo.Column("id", "INTEGER", true, 1, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsWatchHistory.put("contentId", new TableInfo.Column("contentId", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsWatchHistory.put("contentType", new TableInfo.Column("contentType", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsWatchHistory.put("positionMs", new TableInfo.Column("positionMs", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsWatchHistory.put("durationMs", new TableInfo.Column("durationMs", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsWatchHistory.put("watchedAt", new TableInfo.Column("watchedAt", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsWatchHistory.put("serverId", new TableInfo.Column("serverId", "INTEGER", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsWatchHistory.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsWatchHistory.put("poster", new TableInfo.Column("poster", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        final Set<TableInfo.ForeignKey> _foreignKeysWatchHistory = new HashSet<TableInfo.ForeignKey>(0);
        final Set<TableInfo.Index> _indicesWatchHistory = new HashSet<TableInfo.Index>(1);
        _indicesWatchHistory.add(new TableInfo.Index("index_watch_history_contentId_contentType_serverId", true, Arrays.asList("contentId", "contentType", "serverId"), Arrays.asList("ASC", "ASC", "ASC")));
        final TableInfo _infoWatchHistory = new TableInfo("watch_history", _columnsWatchHistory, _foreignKeysWatchHistory, _indicesWatchHistory);
        final TableInfo _existingWatchHistory = TableInfo.read(connection, "watch_history");
        if (!_infoWatchHistory.equals(_existingWatchHistory)) {
          return new RoomOpenDelegate.ValidationResult(false, "watch_history(com.bayyari.tv.data.local.entities.WatchHistoryEntity).\n"
                  + " Expected:\n" + _infoWatchHistory + "\n"
                  + " Found:\n" + _existingWatchHistory);
        }
        final Map<String, TableInfo.Column> _columnsCategories = new HashMap<String, TableInfo.Column>(4);
        _columnsCategories.put("categoryId", new TableInfo.Column("categoryId", "TEXT", true, 1, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsCategories.put("name", new TableInfo.Column("name", "TEXT", true, 0, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsCategories.put("kind", new TableInfo.Column("kind", "TEXT", true, 2, null, TableInfo.CREATED_FROM_ENTITY));
        _columnsCategories.put("serverId", new TableInfo.Column("serverId", "INTEGER", true, 3, null, TableInfo.CREATED_FROM_ENTITY));
        final Set<TableInfo.ForeignKey> _foreignKeysCategories = new HashSet<TableInfo.ForeignKey>(0);
        final Set<TableInfo.Index> _indicesCategories = new HashSet<TableInfo.Index>(1);
        _indicesCategories.add(new TableInfo.Index("index_categories_serverId", false, Arrays.asList("serverId"), Arrays.asList("ASC")));
        final TableInfo _infoCategories = new TableInfo("categories", _columnsCategories, _foreignKeysCategories, _indicesCategories);
        final TableInfo _existingCategories = TableInfo.read(connection, "categories");
        if (!_infoCategories.equals(_existingCategories)) {
          return new RoomOpenDelegate.ValidationResult(false, "categories(com.bayyari.tv.data.local.entities.CategoryEntity).\n"
                  + " Expected:\n" + _infoCategories + "\n"
                  + " Found:\n" + _existingCategories);
        }
        return new RoomOpenDelegate.ValidationResult(true, null);
      }
    };
    return _openDelegate;
  }

  @Override
  @NonNull
  protected InvalidationTracker createInvalidationTracker() {
    final Map<String, String> _shadowTablesMap = new HashMap<String, String>(0);
    final Map<String, Set<String>> _viewTables = new HashMap<String, Set<String>>(0);
    return new InvalidationTracker(this, _shadowTablesMap, _viewTables, "channels", "movies", "series", "favorites", "epg", "watch_history", "categories");
  }

  @Override
  public void clearAllTables() {
    super.performClear(false, "channels", "movies", "series", "favorites", "epg", "watch_history", "categories");
  }

  @Override
  @NonNull
  protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
    final Map<Class<?>, List<Class<?>>> _typeConvertersMap = new HashMap<Class<?>, List<Class<?>>>();
    _typeConvertersMap.put(ChannelDao.class, ChannelDao_Impl.getRequiredConverters());
    _typeConvertersMap.put(MovieDao.class, MovieDao_Impl.getRequiredConverters());
    _typeConvertersMap.put(SeriesDao.class, SeriesDao_Impl.getRequiredConverters());
    _typeConvertersMap.put(FavoriteDao.class, FavoriteDao_Impl.getRequiredConverters());
    _typeConvertersMap.put(EpgDao.class, EpgDao_Impl.getRequiredConverters());
    _typeConvertersMap.put(WatchHistoryDao.class, WatchHistoryDao_Impl.getRequiredConverters());
    return _typeConvertersMap;
  }

  @Override
  @NonNull
  public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
    final Set<Class<? extends AutoMigrationSpec>> _autoMigrationSpecsSet = new HashSet<Class<? extends AutoMigrationSpec>>();
    return _autoMigrationSpecsSet;
  }

  @Override
  @NonNull
  public List<Migration> getAutoMigrations(
      @NonNull final Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
    final List<Migration> _autoMigrations = new ArrayList<Migration>();
    return _autoMigrations;
  }

  @Override
  public ChannelDao channelDao() {
    if (_channelDao != null) {
      return _channelDao;
    } else {
      synchronized(this) {
        if(_channelDao == null) {
          _channelDao = new ChannelDao_Impl(this);
        }
        return _channelDao;
      }
    }
  }

  @Override
  public MovieDao movieDao() {
    if (_movieDao != null) {
      return _movieDao;
    } else {
      synchronized(this) {
        if(_movieDao == null) {
          _movieDao = new MovieDao_Impl(this);
        }
        return _movieDao;
      }
    }
  }

  @Override
  public SeriesDao seriesDao() {
    if (_seriesDao != null) {
      return _seriesDao;
    } else {
      synchronized(this) {
        if(_seriesDao == null) {
          _seriesDao = new SeriesDao_Impl(this);
        }
        return _seriesDao;
      }
    }
  }

  @Override
  public FavoriteDao favoriteDao() {
    if (_favoriteDao != null) {
      return _favoriteDao;
    } else {
      synchronized(this) {
        if(_favoriteDao == null) {
          _favoriteDao = new FavoriteDao_Impl(this);
        }
        return _favoriteDao;
      }
    }
  }

  @Override
  public EpgDao epgDao() {
    if (_epgDao != null) {
      return _epgDao;
    } else {
      synchronized(this) {
        if(_epgDao == null) {
          _epgDao = new EpgDao_Impl(this);
        }
        return _epgDao;
      }
    }
  }

  @Override
  public WatchHistoryDao watchHistoryDao() {
    if (_watchHistoryDao != null) {
      return _watchHistoryDao;
    } else {
      synchronized(this) {
        if(_watchHistoryDao == null) {
          _watchHistoryDao = new WatchHistoryDao_Impl(this);
        }
        return _watchHistoryDao;
      }
    }
  }
}
