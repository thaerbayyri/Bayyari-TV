package com.bayyari.tv.data.local.dao;

import androidx.annotation.NonNull;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteStatement;
import com.bayyari.tv.data.local.entities.EpgEntity;
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
public final class EpgDao_Impl implements EpgDao {
  private final RoomDatabase __db;

  private final EntityInsertAdapter<EpgEntity> __insertAdapterOfEpgEntity;

  public EpgDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertAdapterOfEpgEntity = new EntityInsertAdapter<EpgEntity>() {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `epg` (`id`,`streamId`,`serverId`,`title`,`description`,`startMs`,`endMs`,`hasArchive`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SQLiteStatement statement,
          @NonNull final EpgEntity entity) {
        statement.bindLong(1, entity.getId());
        statement.bindLong(2, entity.getStreamId());
        statement.bindLong(3, entity.getServerId());
        if (entity.getTitle() == null) {
          statement.bindNull(4);
        } else {
          statement.bindText(4, entity.getTitle());
        }
        if (entity.getDescription() == null) {
          statement.bindNull(5);
        } else {
          statement.bindText(5, entity.getDescription());
        }
        statement.bindLong(6, entity.getStartMs());
        statement.bindLong(7, entity.getEndMs());
        final int _tmp = entity.getHasArchive() ? 1 : 0;
        statement.bindLong(8, _tmp);
      }
    };
  }

  @Override
  public Object upsertAll(final List<EpgEntity> items,
      final Continuation<? super Unit> $completion) {
    if (items == null) throw new NullPointerException();
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      __insertAdapterOfEpgEntity.insert(_connection, items);
      return Unit.INSTANCE;
    }, $completion);
  }

  @Override
  public Flow<List<EpgEntity>> observeForStream(final int serverId, final int streamId) {
    final String _sql = "SELECT * FROM epg WHERE serverId = ? AND streamId = ? ORDER BY startMs ASC";
    return FlowUtil.createFlow(__db, false, new String[] {"epg"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, streamId);
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfStreamId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamId");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfTitle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "title");
        final int _columnIndexOfDescription = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "description");
        final int _columnIndexOfStartMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "startMs");
        final int _columnIndexOfEndMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "endMs");
        final int _columnIndexOfHasArchive = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "hasArchive");
        final List<EpgEntity> _result = new ArrayList<EpgEntity>();
        while (_stmt.step()) {
          final EpgEntity _item;
          final long _tmpId;
          _tmpId = _stmt.getLong(_columnIndexOfId);
          final int _tmpStreamId;
          _tmpStreamId = (int) (_stmt.getLong(_columnIndexOfStreamId));
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpTitle;
          if (_stmt.isNull(_columnIndexOfTitle)) {
            _tmpTitle = null;
          } else {
            _tmpTitle = _stmt.getText(_columnIndexOfTitle);
          }
          final String _tmpDescription;
          if (_stmt.isNull(_columnIndexOfDescription)) {
            _tmpDescription = null;
          } else {
            _tmpDescription = _stmt.getText(_columnIndexOfDescription);
          }
          final long _tmpStartMs;
          _tmpStartMs = _stmt.getLong(_columnIndexOfStartMs);
          final long _tmpEndMs;
          _tmpEndMs = _stmt.getLong(_columnIndexOfEndMs);
          final boolean _tmpHasArchive;
          final int _tmp;
          _tmp = (int) (_stmt.getLong(_columnIndexOfHasArchive));
          _tmpHasArchive = _tmp != 0;
          _item = new EpgEntity(_tmpId,_tmpStreamId,_tmpServerId,_tmpTitle,_tmpDescription,_tmpStartMs,_tmpEndMs,_tmpHasArchive);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Object getForRange(final int serverId, final int streamId, final long startMs,
      final long endMs, final Continuation<? super List<EpgEntity>> $completion) {
    final String _sql = "SELECT * FROM epg WHERE serverId = ? AND streamId = ? AND startMs <= ? AND endMs >= ? ORDER BY startMs ASC";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, streamId);
        _argIndex = 3;
        _stmt.bindLong(_argIndex, endMs);
        _argIndex = 4;
        _stmt.bindLong(_argIndex, startMs);
        final int _columnIndexOfId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "id");
        final int _columnIndexOfStreamId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamId");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfTitle = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "title");
        final int _columnIndexOfDescription = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "description");
        final int _columnIndexOfStartMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "startMs");
        final int _columnIndexOfEndMs = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "endMs");
        final int _columnIndexOfHasArchive = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "hasArchive");
        final List<EpgEntity> _result = new ArrayList<EpgEntity>();
        while (_stmt.step()) {
          final EpgEntity _item;
          final long _tmpId;
          _tmpId = _stmt.getLong(_columnIndexOfId);
          final int _tmpStreamId;
          _tmpStreamId = (int) (_stmt.getLong(_columnIndexOfStreamId));
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpTitle;
          if (_stmt.isNull(_columnIndexOfTitle)) {
            _tmpTitle = null;
          } else {
            _tmpTitle = _stmt.getText(_columnIndexOfTitle);
          }
          final String _tmpDescription;
          if (_stmt.isNull(_columnIndexOfDescription)) {
            _tmpDescription = null;
          } else {
            _tmpDescription = _stmt.getText(_columnIndexOfDescription);
          }
          final long _tmpStartMs;
          _tmpStartMs = _stmt.getLong(_columnIndexOfStartMs);
          final long _tmpEndMs;
          _tmpEndMs = _stmt.getLong(_columnIndexOfEndMs);
          final boolean _tmpHasArchive;
          final int _tmp;
          _tmp = (int) (_stmt.getLong(_columnIndexOfHasArchive));
          _tmpHasArchive = _tmp != 0;
          _item = new EpgEntity(_tmpId,_tmpStreamId,_tmpServerId,_tmpTitle,_tmpDescription,_tmpStartMs,_tmpEndMs,_tmpHasArchive);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object clearForStream(final int serverId, final int streamId,
      final Continuation<? super Unit> $completion) {
    final String _sql = "DELETE FROM epg WHERE serverId = ? AND streamId = ?";
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        _argIndex = 2;
        _stmt.bindLong(_argIndex, streamId);
        _stmt.step();
        return Unit.INSTANCE;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object clearForServer(final int serverId, final Continuation<? super Unit> $completion) {
    final String _sql = "DELETE FROM epg WHERE serverId = ?";
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
