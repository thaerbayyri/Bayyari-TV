package com.bayyari.tv.data.local.dao;

import androidx.annotation.NonNull;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteStatement;
import com.bayyari.tv.data.local.entities.MovieEntity;
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
public final class MovieDao_Impl implements MovieDao {
  private final RoomDatabase __db;

  private final EntityInsertAdapter<MovieEntity> __insertAdapterOfMovieEntity;

  public MovieDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertAdapterOfMovieEntity = new EntityInsertAdapter<MovieEntity>() {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `movies` (`streamId`,`name`,`streamIcon`,`categoryId`,`rating`,`rating5Based`,`added`,`containerExtension`,`serverId`) VALUES (?,?,?,?,?,?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SQLiteStatement statement,
          @NonNull final MovieEntity entity) {
        statement.bindLong(1, entity.getStreamId());
        if (entity.getName() == null) {
          statement.bindNull(2);
        } else {
          statement.bindText(2, entity.getName());
        }
        if (entity.getStreamIcon() == null) {
          statement.bindNull(3);
        } else {
          statement.bindText(3, entity.getStreamIcon());
        }
        if (entity.getCategoryId() == null) {
          statement.bindNull(4);
        } else {
          statement.bindText(4, entity.getCategoryId());
        }
        statement.bindDouble(5, entity.getRating());
        statement.bindDouble(6, entity.getRating5Based());
        statement.bindLong(7, entity.getAdded());
        if (entity.getContainerExtension() == null) {
          statement.bindNull(8);
        } else {
          statement.bindText(8, entity.getContainerExtension());
        }
        statement.bindLong(9, entity.getServerId());
      }
    };
  }

  @Override
  public Object upsertAll(final List<MovieEntity> movies,
      final Continuation<? super Unit> $completion) {
    if (movies == null) throw new NullPointerException();
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      __insertAdapterOfMovieEntity.insert(_connection, movies);
      return Unit.INSTANCE;
    }, $completion);
  }

  @Override
  public Flow<List<MovieEntity>> observeAll(final int serverId) {
    final String _sql = "SELECT * FROM movies WHERE serverId = ? ORDER BY added DESC";
    return FlowUtil.createFlow(__db, false, new String[] {"movies"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        final int _columnIndexOfStreamId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfStreamIcon = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamIcon");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfRating5Based = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating5Based");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfContainerExtension = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "containerExtension");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final List<MovieEntity> _result = new ArrayList<MovieEntity>();
        while (_stmt.step()) {
          final MovieEntity _item;
          final int _tmpStreamId;
          _tmpStreamId = (int) (_stmt.getLong(_columnIndexOfStreamId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpStreamIcon;
          if (_stmt.isNull(_columnIndexOfStreamIcon)) {
            _tmpStreamIcon = null;
          } else {
            _tmpStreamIcon = _stmt.getText(_columnIndexOfStreamIcon);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final double _tmpRating;
          _tmpRating = _stmt.getDouble(_columnIndexOfRating);
          final double _tmpRating5Based;
          _tmpRating5Based = _stmt.getDouble(_columnIndexOfRating5Based);
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final String _tmpContainerExtension;
          if (_stmt.isNull(_columnIndexOfContainerExtension)) {
            _tmpContainerExtension = null;
          } else {
            _tmpContainerExtension = _stmt.getText(_columnIndexOfContainerExtension);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _item = new MovieEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpRating,_tmpRating5Based,_tmpAdded,_tmpContainerExtension,_tmpServerId);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Flow<List<MovieEntity>> observeByCategory(final int serverId, final String categoryId) {
    final String _sql = "SELECT * FROM movies WHERE serverId = ? AND categoryId = ? ORDER BY added DESC";
    return FlowUtil.createFlow(__db, false, new String[] {"movies"}, (_connection) -> {
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
        final int _columnIndexOfStreamId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfStreamIcon = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamIcon");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfRating5Based = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating5Based");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfContainerExtension = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "containerExtension");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final List<MovieEntity> _result = new ArrayList<MovieEntity>();
        while (_stmt.step()) {
          final MovieEntity _item;
          final int _tmpStreamId;
          _tmpStreamId = (int) (_stmt.getLong(_columnIndexOfStreamId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpStreamIcon;
          if (_stmt.isNull(_columnIndexOfStreamIcon)) {
            _tmpStreamIcon = null;
          } else {
            _tmpStreamIcon = _stmt.getText(_columnIndexOfStreamIcon);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final double _tmpRating;
          _tmpRating = _stmt.getDouble(_columnIndexOfRating);
          final double _tmpRating5Based;
          _tmpRating5Based = _stmt.getDouble(_columnIndexOfRating5Based);
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final String _tmpContainerExtension;
          if (_stmt.isNull(_columnIndexOfContainerExtension)) {
            _tmpContainerExtension = null;
          } else {
            _tmpContainerExtension = _stmt.getText(_columnIndexOfContainerExtension);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _item = new MovieEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpRating,_tmpRating5Based,_tmpAdded,_tmpContainerExtension,_tmpServerId);
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
      final Continuation<? super List<MovieEntity>> $completion) {
    final String _sql = "SELECT * FROM movies WHERE serverId = ? ORDER BY added DESC LIMIT ?";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, limit);
        final int _columnIndexOfStreamId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfStreamIcon = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamIcon");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfRating5Based = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating5Based");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfContainerExtension = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "containerExtension");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final List<MovieEntity> _result = new ArrayList<MovieEntity>();
        while (_stmt.step()) {
          final MovieEntity _item;
          final int _tmpStreamId;
          _tmpStreamId = (int) (_stmt.getLong(_columnIndexOfStreamId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpStreamIcon;
          if (_stmt.isNull(_columnIndexOfStreamIcon)) {
            _tmpStreamIcon = null;
          } else {
            _tmpStreamIcon = _stmt.getText(_columnIndexOfStreamIcon);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final double _tmpRating;
          _tmpRating = _stmt.getDouble(_columnIndexOfRating);
          final double _tmpRating5Based;
          _tmpRating5Based = _stmt.getDouble(_columnIndexOfRating5Based);
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final String _tmpContainerExtension;
          if (_stmt.isNull(_columnIndexOfContainerExtension)) {
            _tmpContainerExtension = null;
          } else {
            _tmpContainerExtension = _stmt.getText(_columnIndexOfContainerExtension);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _item = new MovieEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpRating,_tmpRating5Based,_tmpAdded,_tmpContainerExtension,_tmpServerId);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object findById(final int serverId, final int streamId,
      final Continuation<? super MovieEntity> $completion) {
    final String _sql = "SELECT * FROM movies WHERE serverId = ? AND streamId = ? LIMIT 1";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, streamId);
        final int _columnIndexOfStreamId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfStreamIcon = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamIcon");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfRating5Based = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating5Based");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfContainerExtension = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "containerExtension");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final MovieEntity _result;
        if (_stmt.step()) {
          final int _tmpStreamId;
          _tmpStreamId = (int) (_stmt.getLong(_columnIndexOfStreamId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpStreamIcon;
          if (_stmt.isNull(_columnIndexOfStreamIcon)) {
            _tmpStreamIcon = null;
          } else {
            _tmpStreamIcon = _stmt.getText(_columnIndexOfStreamIcon);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final double _tmpRating;
          _tmpRating = _stmt.getDouble(_columnIndexOfRating);
          final double _tmpRating5Based;
          _tmpRating5Based = _stmt.getDouble(_columnIndexOfRating5Based);
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final String _tmpContainerExtension;
          if (_stmt.isNull(_columnIndexOfContainerExtension)) {
            _tmpContainerExtension = null;
          } else {
            _tmpContainerExtension = _stmt.getText(_columnIndexOfContainerExtension);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _result = new MovieEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpRating,_tmpRating5Based,_tmpAdded,_tmpContainerExtension,_tmpServerId);
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
      final Continuation<? super List<MovieEntity>> $completion) {
    final String _sql = "SELECT * FROM movies WHERE serverId = ? AND name LIKE '%' || ? || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200";
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
        final int _columnIndexOfStreamId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfStreamIcon = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamIcon");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfRating = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating");
        final int _columnIndexOfRating5Based = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "rating5Based");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfContainerExtension = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "containerExtension");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final List<MovieEntity> _result = new ArrayList<MovieEntity>();
        while (_stmt.step()) {
          final MovieEntity _item;
          final int _tmpStreamId;
          _tmpStreamId = (int) (_stmt.getLong(_columnIndexOfStreamId));
          final String _tmpName;
          if (_stmt.isNull(_columnIndexOfName)) {
            _tmpName = null;
          } else {
            _tmpName = _stmt.getText(_columnIndexOfName);
          }
          final String _tmpStreamIcon;
          if (_stmt.isNull(_columnIndexOfStreamIcon)) {
            _tmpStreamIcon = null;
          } else {
            _tmpStreamIcon = _stmt.getText(_columnIndexOfStreamIcon);
          }
          final String _tmpCategoryId;
          if (_stmt.isNull(_columnIndexOfCategoryId)) {
            _tmpCategoryId = null;
          } else {
            _tmpCategoryId = _stmt.getText(_columnIndexOfCategoryId);
          }
          final double _tmpRating;
          _tmpRating = _stmt.getDouble(_columnIndexOfRating);
          final double _tmpRating5Based;
          _tmpRating5Based = _stmt.getDouble(_columnIndexOfRating5Based);
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final String _tmpContainerExtension;
          if (_stmt.isNull(_columnIndexOfContainerExtension)) {
            _tmpContainerExtension = null;
          } else {
            _tmpContainerExtension = _stmt.getText(_columnIndexOfContainerExtension);
          }
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          _item = new MovieEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpRating,_tmpRating5Based,_tmpAdded,_tmpContainerExtension,_tmpServerId);
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
    final String _sql = "DELETE FROM movies WHERE serverId = ?";
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
