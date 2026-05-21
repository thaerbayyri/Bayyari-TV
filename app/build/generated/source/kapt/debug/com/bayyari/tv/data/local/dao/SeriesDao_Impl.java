package com.bayyari.tv.data.local.dao;

import androidx.annotation.NonNull;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteStatement;
import com.bayyari.tv.data.local.entities.SeriesEntity;
import java.lang.Class;
import java.lang.NullPointerException;
import java.lang.Object;
import java.lang.Override;
import java.lang.String;
import java.lang.SuppressWarnings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.processing.Generated;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

@Generated("androidx.room.RoomProcessor")
@SuppressWarnings({"unchecked", "deprecation", "removal"})
public final class SeriesDao_Impl implements SeriesDao {
  private final RoomDatabase __db;

  private final EntityInsertAdapter<SeriesEntity> __insertAdapterOfSeriesEntity;

  public SeriesDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertAdapterOfSeriesEntity = new EntityInsertAdapter<SeriesEntity>() {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `series` (`seriesId`,`name`,`cover`,`plot`,`cast`,`director`,`genre`,`releaseDate`,`lastModified`,`rating`,`categoryId`,`serverId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SQLiteStatement statement,
          @NonNull final SeriesEntity entity) {
        statement.bindLong(1, entity.getSeriesId());
        if (entity.getName() == null) {
          statement.bindNull(2);
        } else {
          statement.bindText(2, entity.getName());
        }
        if (entity.getCover() == null) {
          statement.bindNull(3);
        } else {
          statement.bindText(3, entity.getCover());
        }
        if (entity.getPlot() == null) {
          statement.bindNull(4);
        } else {
          statement.bindText(4, entity.getPlot());
        }
        if (entity.getCast() == null) {
          statement.bindNull(5);
        } else {
          statement.bindText(5, entity.getCast());
        }
        if (entity.getDirector() == null) {
          statement.bindNull(6);
        } else {
          statement.bindText(6, entity.getDirector());
        }
        if (entity.getGenre() == null) {
          statement.bindNull(7);
        } else {
          statement.bindText(7, entity.getGenre());
        }
        if (entity.getReleaseDate() == null) {
          statement.bindNull(8);
        } else {
          statement.bindText(8, entity.getReleaseDate());
        }
        statement.bindLong(9, entity.getLastModified());
        if (entity.getRating() == null) {
          statement.bindNull(10);
        } else {
          statement.bindText(10, entity.getRating());
        }
        if (entity.getCategoryId() == null) {
          statement.bindNull(11);
        } else {
          statement.bindText(11, entity.getCategoryId());
        }
        statement.bindLong(12, entity.getServerId());
      }
    };
  }

  @Override
  public Object upsertAll(final List<SeriesEntity> items,
      final Continuation<? super Unit> $completion) {
    if (items == null) throw new NullPointerException();
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      __insertAdapterOfSeriesEntity.insert(_connection, items);
      return Unit.INSTANCE;
    }, $completion);
  }

  @Override
  public Flow<List<SeriesEntity>> observeAll(final int serverId) {
    final String _sql = "SELECT * FROM series WHERE serverId = ? ORDER BY lastModified DESC";
    return FlowUtil.createFlow(__db, false, new String[] {"series"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        final int _columnIndexOfSeriesId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "seriesId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfCover = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cover");
        final int _columnIndexOfPlot = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "plot");
        final int _columnIndexOfCast = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cast");
        final int _columnIndexOfDirector = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "director");
        final int _columnIndexOfGenre = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "genre");
        final int _columnIndexOfReleaseDate = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "releaseDate");
        final int _columnIndexOfLastModified = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "lastModified");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final List<SeriesEntity> _result = new ArrayList<SeriesEntity>();
        while (_stmt.step()) {
          final SeriesEntity _item;
          final int _tmpSeriesId;
          _tmpSeriesId = (int) (_stmt.getLong(_columnIndexOfSeriesId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpCover;
          if (_stmt.isNull(_columnIndexOfCover)) {
            _tmpCover = null;
          } else {
            _tmpCover = _stmt.getText(_columnIndexOfCover);
          }
          final String _tmpPlot;
          if (_stmt.isNull(_columnIndexOfPlot)) {
            _tmpPlot = null;
          } else {
            _tmpPlot = _stmt.getText(_columnIndexOfPlot);
          }
          final String _tmpCast;
          if (_stmt.isNull(_columnIndexOfCast)) {
            _tmpCast = null;
          } else {
            _tmpCast = _stmt.getText(_columnIndexOfCast);
          }
          final String _tmpDirector;
          if (_stmt.isNull(_columnIndexOfDirector)) {
            _tmpDirector = null;
          } else {
            _tmpDirector = _stmt.getText(_columnIndexOfDirector);
          }
          final String _tmpGenre;
          if (_stmt.isNull(_columnIndexOfGenre)) {
            _tmpGenre = null;
          } else {
            _tmpGenre = _stmt.getText(_columnIndexOfGenre);
          }
          final String _tmpReleaseDate;
          if (_stmt.isNull(_columnIndexOfReleaseDate)) {
            _tmpReleaseDate = null;
          } else {
            _tmpReleaseDate = _stmt.getText(_columnIndexOfReleaseDate);
          }
          final long _tmpLastModified;
          _tmpLastModified = _stmt.getLong(_columnIndexOfLastModified);
          final String _tmpRating;
          if (_stmt.isNull(_columnIndexOfRating)) {
            _tmpRating = null;
          } else {
            _tmpRating = _stmt.getText(_columnIndexOfRating);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _item = new SeriesEntity(_tmpSeriesId,_tmpName,_tmpCover,_tmpPlot,_tmpCast,_tmpDirector,_tmpGenre,_tmpReleaseDate,_tmpLastModified,_tmpRating,_tmpCategoryId,_tmpServerId);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Flow<List<SeriesEntity>> observeByCategory(final int serverId, final String categoryId) {
    final String _sql = "SELECT * FROM series WHERE serverId = ? AND categoryId = ? ORDER BY lastModified DESC";
    return FlowUtil.createFlow(__db, false, new String[] {"series"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        if (categoryId == null) {
          _stmt.bindNull(_argIndex);
        } else {
          _stmt.bindText(_argIndex, categoryId);
        }
        final int _columnIndexOfSeriesId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "seriesId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfCover = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cover");
        final int _columnIndexOfPlot = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "plot");
        final int _columnIndexOfCast = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cast");
        final int _columnIndexOfDirector = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "director");
        final int _columnIndexOfGenre = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "genre");
        final int _columnIndexOfReleaseDate = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "releaseDate");
        final int _columnIndexOfLastModified = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "lastModified");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final List<SeriesEntity> _result = new ArrayList<SeriesEntity>();
        while (_stmt.step()) {
          final SeriesEntity _item;
          final int _tmpSeriesId;
          _tmpSeriesId = (int) (_stmt.getLong(_columnIndexOfSeriesId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpCover;
          if (_stmt.isNull(_columnIndexOfCover)) {
            _tmpCover = null;
          } else {
            _tmpCover = _stmt.getText(_columnIndexOfCover);
          }
          final String _tmpPlot;
          if (_stmt.isNull(_columnIndexOfPlot)) {
            _tmpPlot = null;
          } else {
            _tmpPlot = _stmt.getText(_columnIndexOfPlot);
          }
          final String _tmpCast;
          if (_stmt.isNull(_columnIndexOfCast)) {
            _tmpCast = null;
          } else {
            _tmpCast = _stmt.getText(_columnIndexOfCast);
          }
          final String _tmpDirector;
          if (_stmt.isNull(_columnIndexOfDirector)) {
            _tmpDirector = null;
          } else {
            _tmpDirector = _stmt.getText(_columnIndexOfDirector);
          }
          final String _tmpGenre;
          if (_stmt.isNull(_columnIndexOfGenre)) {
            _tmpGenre = null;
          } else {
            _tmpGenre = _stmt.getText(_columnIndexOfGenre);
          }
          final String _tmpReleaseDate;
          if (_stmt.isNull(_columnIndexOfReleaseDate)) {
            _tmpReleaseDate = null;
          } else {
            _tmpReleaseDate = _stmt.getText(_columnIndexOfReleaseDate);
          }
          final long _tmpLastModified;
          _tmpLastModified = _stmt.getLong(_columnIndexOfLastModified);
          final String _tmpRating;
          if (_stmt.isNull(_columnIndexOfRating)) {
            _tmpRating = null;
          } else {
            _tmpRating = _stmt.getText(_columnIndexOfRating);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _item = new SeriesEntity(_tmpSeriesId,_tmpName,_tmpCover,_tmpPlot,_tmpCast,_tmpDirector,_tmpGenre,_tmpReleaseDate,_tmpLastModified,_tmpRating,_tmpCategoryId,_tmpServerId);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Object latest(final int serverId, final int limit,
      final Continuation<? super List<SeriesEntity>> $completion) {
    final String _sql = "SELECT * FROM series WHERE serverId = ? ORDER BY lastModified DESC LIMIT ?";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, limit);
        final int _columnIndexOfSeriesId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "seriesId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfCover = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cover");
        final int _columnIndexOfPlot = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "plot");
        final int _columnIndexOfCast = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cast");
        final int _columnIndexOfDirector = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "director");
        final int _columnIndexOfGenre = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "genre");
        final int _columnIndexOfReleaseDate = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "releaseDate");
        final int _columnIndexOfLastModified = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "lastModified");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final List<SeriesEntity> _result = new ArrayList<SeriesEntity>();
        while (_stmt.step()) {
          final SeriesEntity _item;
          final int _tmpSeriesId;
          _tmpSeriesId = (int) (_stmt.getLong(_columnIndexOfSeriesId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpCover;
          if (_stmt.isNull(_columnIndexOfCover)) {
            _tmpCover = null;
          } else {
            _tmpCover = _stmt.getText(_columnIndexOfCover);
          }
          final String _tmpPlot;
          if (_stmt.isNull(_columnIndexOfPlot)) {
            _tmpPlot = null;
          } else {
            _tmpPlot = _stmt.getText(_columnIndexOfPlot);
          }
          final String _tmpCast;
          if (_stmt.isNull(_columnIndexOfCast)) {
            _tmpCast = null;
          } else {
            _tmpCast = _stmt.getText(_columnIndexOfCast);
          }
          final String _tmpDirector;
          if (_stmt.isNull(_columnIndexOfDirector)) {
            _tmpDirector = null;
          } else {
            _tmpDirector = _stmt.getText(_columnIndexOfDirector);
          }
          final String _tmpGenre;
          if (_stmt.isNull(_columnIndexOfGenre)) {
            _tmpGenre = null;
          } else {
            _tmpGenre = _stmt.getText(_columnIndexOfGenre);
          }
          final String _tmpReleaseDate;
          if (_stmt.isNull(_columnIndexOfReleaseDate)) {
            _tmpReleaseDate = null;
          } else {
            _tmpReleaseDate = _stmt.getText(_columnIndexOfReleaseDate);
          }
          final long _tmpLastModified;
          _tmpLastModified = _stmt.getLong(_columnIndexOfLastModified);
          final String _tmpRating;
          if (_stmt.isNull(_columnIndexOfRating)) {
            _tmpRating = null;
          } else {
            _tmpRating = _stmt.getText(_columnIndexOfRating);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _item = new SeriesEntity(_tmpSeriesId,_tmpName,_tmpCover,_tmpPlot,_tmpCast,_tmpDirector,_tmpGenre,_tmpReleaseDate,_tmpLastModified,_tmpRating,_tmpCategoryId,_tmpServerId);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object findById(final int serverId, final int seriesId,
      final Continuation<? super SeriesEntity> $completion) {
    final String _sql = "SELECT * FROM series WHERE serverId = ? AND seriesId = ? LIMIT 1";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, seriesId);
        final int _columnIndexOfSeriesId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "seriesId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfCover = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cover");
        final int _columnIndexOfPlot = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "plot");
        final int _columnIndexOfCast = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cast");
        final int _columnIndexOfDirector = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "director");
        final int _columnIndexOfGenre = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "genre");
        final int _columnIndexOfReleaseDate = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "releaseDate");
        final int _columnIndexOfLastModified = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "lastModified");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final SeriesEntity _result;
        if (_stmt.step()) {
          final int _tmpSeriesId;
          _tmpSeriesId = (int) (_stmt.getLong(_columnIndexOfSeriesId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpCover;
          if (_stmt.isNull(_columnIndexOfCover)) {
            _tmpCover = null;
          } else {
            _tmpCover = _stmt.getText(_columnIndexOfCover);
          }
          final String _tmpPlot;
          if (_stmt.isNull(_columnIndexOfPlot)) {
            _tmpPlot = null;
          } else {
            _tmpPlot = _stmt.getText(_columnIndexOfPlot);
          }
          final String _tmpCast;
          if (_stmt.isNull(_columnIndexOfCast)) {
            _tmpCast = null;
          } else {
            _tmpCast = _stmt.getText(_columnIndexOfCast);
          }
          final String _tmpDirector;
          if (_stmt.isNull(_columnIndexOfDirector)) {
            _tmpDirector = null;
          } else {
            _tmpDirector = _stmt.getText(_columnIndexOfDirector);
          }
          final String _tmpGenre;
          if (_stmt.isNull(_columnIndexOfGenre)) {
            _tmpGenre = null;
          } else {
            _tmpGenre = _stmt.getText(_columnIndexOfGenre);
          }
          final String _tmpReleaseDate;
          if (_stmt.isNull(_columnIndexOfReleaseDate)) {
            _tmpReleaseDate = null;
          } else {
            _tmpReleaseDate = _stmt.getText(_columnIndexOfReleaseDate);
          }
          final long _tmpLastModified;
          _tmpLastModified = _stmt.getLong(_columnIndexOfLastModified);
          final String _tmpRating;
          if (_stmt.isNull(_columnIndexOfRating)) {
            _tmpRating = null;
          } else {
            _tmpRating = _stmt.getText(_columnIndexOfRating);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _result = new SeriesEntity(_tmpSeriesId,_tmpName,_tmpCover,_tmpPlot,_tmpCast,_tmpDirector,_tmpGenre,_tmpReleaseDate,_tmpLastModified,_tmpRating,_tmpCategoryId,_tmpServerId);
        } else {
          _result = null;
        }
        return _result;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object search(final int serverId, final String query,
      final Continuation<? super List<SeriesEntity>> $completion) {
    final String _sql = "SELECT * FROM series WHERE serverId = ? AND name LIKE '%' || ? || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        if (query == null) {
          _stmt.bindNull(_argIndex);
        } else {
          _stmt.bindText(_argIndex, query);
        }
        final int _columnIndexOfSeriesId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "seriesId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfCover = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cover");
        final int _columnIndexOfPlot = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "plot");
        final int _columnIndexOfCast = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "cast");
        final int _columnIndexOfDirector = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "director");
        final int _columnIndexOfGenre = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "genre");
        final int _columnIndexOfReleaseDate = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "releaseDate");
        final int _columnIndexOfLastModified = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "lastModified");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final List<SeriesEntity> _result = new ArrayList<SeriesEntity>();
        while (_stmt.step()) {
          final SeriesEntity _item;
          final int _tmpSeriesId;
          _tmpSeriesId = (int) (_stmt.getLong(_columnIndexOfSeriesId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpCover;
          if (_stmt.isNull(_columnIndexOfCover)) {
            _tmpCover = null;
          } else {
            _tmpCover = _stmt.getText(_columnIndexOfCover);
          }
          final String _tmpPlot;
          if (_stmt.isNull(_columnIndexOfPlot)) {
            _tmpPlot = null;
          } else {
            _tmpPlot = _stmt.getText(_columnIndexOfPlot);
          }
          final String _tmpCast;
          if (_stmt.isNull(_columnIndexOfCast)) {
            _tmpCast = null;
          } else {
            _tmpCast = _stmt.getText(_columnIndexOfCast);
          }
          final String _tmpDirector;
          if (_stmt.isNull(_columnIndexOfDirector)) {
            _tmpDirector = null;
          } else {
            _tmpDirector = _stmt.getText(_columnIndexOfDirector);
          }
          final String _tmpGenre;
          if (_stmt.isNull(_columnIndexOfGenre)) {
            _tmpGenre = null;
          } else {
            _tmpGenre = _stmt.getText(_columnIndexOfGenre);
          }
          final String _tmpReleaseDate;
          if (_stmt.isNull(_columnIndexOfReleaseDate)) {
            _tmpReleaseDate = null;
          } else {
            _tmpReleaseDate = _stmt.getText(_columnIndexOfReleaseDate);
          }
          final long _tmpLastModified;
          _tmpLastModified = _stmt.getLong(_columnIndexOfLastModified);
          final String _tmpRating;
          if (_stmt.isNull(_columnIndexOfRating)) {
            _tmpRating = null;
          } else {
            _tmpRating = _stmt.getText(_columnIndexOfRating);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _item = new SeriesEntity(_tmpSeriesId,_tmpName,_tmpCover,_tmpPlot,_tmpCast,_tmpDirector,_tmpGenre,_tmpReleaseDate,_tmpLastModified,_tmpRating,_tmpCategoryId,_tmpServerId);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object clearForServer(final int serverId, final Continuation<? super Unit> $completion) {
    final String _sql = "DELETE FROM series WHERE serverId = ?";
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _stmt.step();
        return Unit.INSTANCE;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @NonNull
  public static List<Class<?>> getRequiredConverters() {
    return Collections.emptyList();
  }
}
