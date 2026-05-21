package com.bayyari.tv.data.local.dao;

import androidx.annotation.NonNull;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteStatement;
import com.bayyari.tv.data.local.entities.FavoriteEntity;
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
public final class FavoriteDao_Impl implements FavoriteDao {
  private final RoomDatabase __db;

  private final EntityInsertAdapter<FavoriteEntity> __insertAdapterOfFavoriteEntity;

  public FavoriteDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertAdapterOfFavoriteEntity = new EntityInsertAdapter<FavoriteEntity>() {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `favorites` (`id`,`contentId`,`contentType`,`serverId`,`addedAt`) VALUES (nullif(?, 0),?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SQLiteStatement statement,
          @NonNull final FavoriteEntity entity) {
        statement.bindLong(1, entity.getId());
        statement.bindLong(2, entity.getContentId());
        if (entity.getContentType() == null) {
          statement.bindNull(3);
        } else {
          statement.bindText(3, entity.getContentType());
        }
        statement.bindLong(4, entity.getServerId());
        statement.bindLong(5, entity.getAddedAt());
      }
    };
  }

  @Override
  public Object upsert(final FavoriteEntity item, final Continuation<? super Unit> $completion) {
    if (item == null) throw new NullPointerException();
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      __insertAdapterOfFavoriteEntity.insert(_connection, item);
      return Unit.INSTANCE;
    }, $completion);
  }

  @Override
  public Flow<List<FavoriteEntity>> observeAll(final int serverId) {
    final String _sql = "SELECT * FROM favorites WHERE serverId = ? ORDER BY addedAt DESC";
    return FlowUtil.createFlow(__db, false, new String[] {"favorites"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfContentId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentId");
        final int _columnIndexOfContentType = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentType");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfAddedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "addedAt");
        final List<FavoriteEntity> _result = new ArrayList<FavoriteEntity>();
        while (_stmt.step()) {
          final FavoriteEntity _item;
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
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final long _tmpAddedAt;
          _tmpAddedAt = _stmt.getLong(_columnIndexOfAddedAt);
          _item = new FavoriteEntity(_tmpId,_tmpContentId,_tmpContentType,_tmpServerId,_tmpAddedAt);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Flow<List<FavoriteEntity>> observeByType(final int serverId, final String contentType) {
    final String _sql = "SELECT * FROM favorites WHERE serverId = ? AND contentType = ? ORDER BY addedAt DESC";
    return FlowUtil.createFlow(__db, false, new String[] {"favorites"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        if (contentType == null) {
          _stmt.bindNull(_argIndex);
        } else {
          _stmt.bindText(_argIndex, contentType);
        }
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfContentId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentId");
        final int _columnIndexOfContentType = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "contentType");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfAddedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "addedAt");
        final List<FavoriteEntity> _result = new ArrayList<FavoriteEntity>();
        while (_stmt.step()) {
          final FavoriteEntity _item;
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
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final long _tmpAddedAt;
          _tmpAddedAt = _stmt.getLong(_columnIndexOfAddedAt);
          _item = new FavoriteEntity(_tmpId,_tmpContentId,_tmpContentType,_tmpServerId,_tmpAddedAt);
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
      final Continuation<? super FavoriteEntity> $completion) {
    final String _sql = "SELECT * FROM favorites WHERE contentId = ? AND contentType = ? AND serverId = ? LIMIT 1";
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
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfAddedAt = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "addedAt");
        final FavoriteEntity _result;
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
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final long _tmpAddedAt;
          _tmpAddedAt = _stmt.getLong(_columnIndexOfAddedAt);
          _result = new FavoriteEntity(_tmpId,_tmpContentId,_tmpContentType,_tmpServerId,_tmpAddedAt);
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
  public Object deleteById(final int id, final Continuation<? super Unit> $completion) {
    final String _sql = "DELETE FROM favorites WHERE id = ?";
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, id);
        _stmt.step();
        return Unit.INSTANCE;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object deleteByContent(final int contentId, final String contentType, final int serverId,
      final Continuation<? super Unit> $completion) {
    final String _sql = "DELETE FROM favorites WHERE contentId = ? AND contentType = ? AND serverId = ?";
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
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
