package com.bayyari.tv.data.local.dao;

import androidx.annotation.NonNull;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteStatement;
import com.bayyari.tv.data.local.entities.WatchHistoryEntity;
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
public final class WatchHistoryDao_Impl implements WatchHistoryDao {
  private final RoomDatabase __db;

  private final EntityInsertAdapter<WatchHistoryEntity> __insertAdapterOfWatchHistoryEntity;

  public WatchHistoryDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertAdapterOfWatchHistoryEntity = new EntityInsertAdapter<WatchHistoryEntity>() {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `watch_history` (`id`,`contentId`,`contentType`,`positionMs`,`durationMs`,`watchedAt`,`serverId`,`title`,`poster`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SQLiteStatement statement,
          @NonNull final WatchHistoryEntity entity) {
        statement.bindLong(1, entity.getId());
        statement.bindLong(2, entity.getContentId());
        if (entity.getContentType() == null) {
          statement.bindNull(3);
        } else {
          statement.bindText(3, entity.getContentType());
        }
        statement.bindLong(4, entity.getPositionMs());
        statement.bindLong(5, entity.getDurationMs());
        statement.bindLong(6, entity.getWatchedAt());
        statement.bindLong(7, entity.getServerId());
        if (entity.getTitle() == null) {
          statement.bindNull(8);
        } else {
          statement.bindText(8, entity.getTitle());
        }
        if (entity.getPoster() == null) {
          statement.bindNull(9);
        } else {
          statement.bindText(9, entity.getPoster());
        }
      }
    };
  }

  @Override
  public Object upsert(final WatchHistoryEntity item,
      final Continuation<? super Unit> $completion) {
    if (item == null) throw new NullPointerException();
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      __insertAdapterOfWatchHistoryEntity.insert(_connection, item);
      return Unit.INSTANCE;
    }, $completion);
  }

  @Override
  public Flow<List<WatchHistoryEntity>> observeAll(final int serverId) {
    final String _sql = "SELECT * FROM watch_history WHERE serverId = ? ORDER BY watchedAt DESC";
    return FlowUtil.createFlow(__db, false, new String[] {"watch_history"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfContentId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentId");
        final int _columnIndexOfContentType = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentType");
        final int _columnIndexOfPositionMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "positionMs");
        final int _columnIndexOfDurationMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "durationMs");
        final int _columnIndexOfWatchedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "watchedAt");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfTitle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "title");
        final int _columnIndexOfPoster = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "poster");
        final List<WatchHistoryEntity> _result = new ArrayList<WatchHistoryEntity>();
        while (_stmt.step()) {
          final WatchHistoryEntity _item;
          final int _tmpId;
          _tmpId = (int) (_stmt.getLong(_columnIndexOfId));
          final int _tmpContentId;
          _tmpContentId = (int) (_stmt.getLong(_columnIndexOfContentId));
          final String _tmpContentType;
          if (_stmt.isNull(_columnIndexOfContentType)) {
            _tmpContentType = null;
          } else {
            _tmpContentType = _stmt.getText(_columnIndexOfContentType);
          }
          final long _tmpPositionMs;
          _tmpPositionMs = _stmt.getLong(_columnIndexOfPositionMs);
          final long _tmpDurationMs;
          _tmpDurationMs = _stmt.getLong(_columnIndexOfDurationMs);
          final long _tmpWatchedAt;
          _tmpWatchedAt = _stmt.getLong(_columnIndexOfWatchedAt);
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpTitle;
          if (_stmt.isNull(_columnIndexOfTitle)) {
            _tmpTitle = null;
          } else {
            _tmpTitle = _stmt.getText(_columnIndexOfTitle);
          }
          final String _tmpPoster;
          if (_stmt.isNull(_columnIndexOfPoster)) {
            _tmpPoster = null;
          } else {
            _tmpPoster = _stmt.getText(_columnIndexOfPoster);
          }
          _item = new WatchHistoryEntity(_tmpId,_tmpContentId,_tmpContentType,_tmpPositionMs,_tmpDurationMs,_tmpWatchedAt,_tmpServerId,_tmpTitle,_tmpPoster);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Flow<List<WatchHistoryEntity>> observeByType(final int serverId,
      final String contentType) {
    final String _sql = "SELECT * FROM watch_history WHERE contentType = ? AND serverId = ? ORDER BY watchedAt DESC";
    return FlowUtil.createFlow(__db, false, new String[] {"watch_history"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        if (contentType == null) {
          _stmt.bindNull(_argIndex);
        } else {
          _stmt.bindText(_argIndex, contentType);
        }
        _argIndex = 2;
        _stmt.bindLong(_argIndex, serverId);
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfContentId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentId");
        final int _columnIndexOfContentType = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentType");
        final int _columnIndexOfPositionMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "positionMs");
        final int _columnIndexOfDurationMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "durationMs");
        final int _columnIndexOfWatchedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "watchedAt");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfTitle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "title");
        final int _columnIndexOfPoster = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "poster");
        final List<WatchHistoryEntity> _result = new ArrayList<WatchHistoryEntity>();
        while (_stmt.step()) {
          final WatchHistoryEntity _item;
          final int _tmpId;
          _tmpId = (int) (_stmt.getLong(_columnIndexOfId));
          final int _tmpContentId;
          _tmpContentId = (int) (_stmt.getLong(_columnIndexOfContentId));
          final String _tmpContentType;
          if (_stmt.isNull(_columnIndexOfContentType)) {
            _tmpContentType = null;
          } else {
            _tmpContentType = _stmt.getText(_columnIndexOfContentType);
          }
          final long _tmpPositionMs;
          _tmpPositionMs = _stmt.getLong(_columnIndexOfPositionMs);
          final long _tmpDurationMs;
          _tmpDurationMs = _stmt.getLong(_columnIndexOfDurationMs);
          final long _tmpWatchedAt;
          _tmpWatchedAt = _stmt.getLong(_columnIndexOfWatchedAt);
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpTitle;
          if (_stmt.isNull(_columnIndexOfTitle)) {
            _tmpTitle = null;
          } else {
            _tmpTitle = _stmt.getText(_columnIndexOfTitle);
          }
          final String _tmpPoster;
          if (_stmt.isNull(_columnIndexOfPoster)) {
            _tmpPoster = null;
          } else {
            _tmpPoster = _stmt.getText(_columnIndexOfPoster);
          }
          _item = new WatchHistoryEntity(_tmpId,_tmpContentId,_tmpContentType,_tmpPositionMs,_tmpDurationMs,_tmpWatchedAt,_tmpServerId,_tmpTitle,_tmpPoster);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Object find(final int contentId, final String contentType, final int serverId,
      final Continuation<? super WatchHistoryEntity> $completion) {
    final String _sql = "SELECT * FROM watch_history WHERE contentId = ? AND contentType = ? AND serverId = ? LIMIT 1";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, contentId);
        _argIndex = 2;
        if (contentType == null) {
          _stmt.bindNull(_argIndex);
        } else {
          _stmt.bindText(_argIndex, contentType);
        }
        _argIndex = 3;
        _stmt.bindLong(_argIndex, serverId);
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfContentId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentId");
        final int _columnIndexOfContentType = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentType");
        final int _columnIndexOfPositionMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "positionMs");
        final int _columnIndexOfDurationMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "durationMs");
        final int _columnIndexOfWatchedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "watchedAt");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfTitle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "title");
        final int _columnIndexOfPoster = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "poster");
        final WatchHistoryEntity _result;
        if (_stmt.step()) {
          final int _tmpId;
          _tmpId = (int) (_stmt.getLong(_columnIndexOfId));
          final int _tmpContentId;
          _tmpContentId = (int) (_stmt.getLong(_columnIndexOfContentId));
          final String _tmpContentType;
          if (_stmt.isNull(_columnIndexOfContentType)) {
            _tmpContentType = null;
          } else {
            _tmpContentType = _stmt.getText(_columnIndexOfContentType);
          }
          final long _tmpPositionMs;
          _tmpPositionMs = _stmt.getLong(_columnIndexOfPositionMs);
          final long _tmpDurationMs;
          _tmpDurationMs = _stmt.getLong(_columnIndexOfDurationMs);
          final long _tmpWatchedAt;
          _tmpWatchedAt = _stmt.getLong(_columnIndexOfWatchedAt);
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpTitle;
          if (_stmt.isNull(_columnIndexOfTitle)) {
            _tmpTitle = null;
          } else {
            _tmpTitle = _stmt.getText(_columnIndexOfTitle);
          }
          final String _tmpPoster;
          if (_stmt.isNull(_columnIndexOfPoster)) {
            _tmpPoster = null;
          } else {
            _tmpPoster = _stmt.getText(_columnIndexOfPoster);
          }
          _result = new WatchHistoryEntity(_tmpId,_tmpContentId,_tmpContentType,_tmpPositionMs,_tmpDurationMs,_tmpWatchedAt,_tmpServerId,_tmpTitle,_tmpPoster);
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
  public Object clear(final int serverId, final Continuation<? super Unit> $completion) {
    final String _sql = "DELETE FROM watch_history WHERE serverId = ?";
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
