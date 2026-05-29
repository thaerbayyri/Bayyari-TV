package com.bayyari.tv.data.local.dao;

import androidx.annotation.NonNull;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteStatement;
import com.bayyari.tv.data.local.entities.ChannelEntity;
import java.lang.Class;
import java.lang.Integer;
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
public final class ChannelDao_Impl extends ChannelDao {
  private final RoomDatabase __db;

  private final EntityInsertAdapter<ChannelEntity> __insertAdapterOfChannelEntity;

  public ChannelDao_Impl(@NonNull final RoomDatabase __db) {
    this.__db = __db;
    this.__insertAdapterOfChannelEntity = new EntityInsertAdapter<ChannelEntity>() {
      @Override
      @NonNull
      protected String createQuery() {
        return "INSERT OR REPLACE INTO `channels` (`streamId`,`name`,`streamIcon`,`categoryId`,`categoryName`,`tvArchive`,`tvArchiveDuration`,`epgChannelId`,`added`,`serverId`,`directStreamUrl`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
      }

      @Override
      protected void bind(@NonNull final SQLiteStatement statement,
          @NonNull final ChannelEntity entity) {
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
        if (entity.getCategoryName() == null) {
          statement.bindNull(5);
        } else {
          statement.bindText(5, entity.getCategoryName());
        }
        statement.bindLong(6, entity.getTvArchive());
        statement.bindLong(7, entity.getTvArchiveDuration());
        if (entity.getEpgChannelId() == null) {
          statement.bindNull(8);
        } else {
          statement.bindText(8, entity.getEpgChannelId());
        }
        statement.bindLong(9, entity.getAdded());
        statement.bindLong(10, entity.getServerId());
        if (entity.getDirectStreamUrl() == null) {
          statement.bindNull(11);
        } else {
          statement.bindText(11, entity.getDirectStreamUrl());
        }
      }
    };
  }

  @Override
  public Object upsertAll(final List<ChannelEntity> channels,
      final Continuation<? super Unit> $completion) {
    if (channels == null) throw new NullPointerException();
    return DBUtil.performSuspending(__db, false, true, (_connection) -> {
      __insertAdapterOfChannelEntity.insert(_connection, channels);
      return Unit.INSTANCE;
    }, $completion);
  }

  @Override
  public Object replaceAllForServer(final int serverId, final List<ChannelEntity> entities,
      final Continuation<? super Unit> $completion) {
    return DBUtil.performInTransactionSuspending(__db, (_cont) -> {
      return ChannelDao_Impl.super.replaceAllForServer(serverId, entities, _cont);
    }, $completion);
  }

  @Override
  public Flow<List<ChannelEntity>> observeAll(final int serverId) {
    final String _sql = "SELECT * FROM channels WHERE serverId = ? ORDER BY name COLLATE NOCASE ASC";
    return FlowUtil.createFlow(__db, false, new String[] {"channels"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        final int _columnIndexOfStreamId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamId");
        final int _columnIndexOfName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "name");
        final int _columnIndexOfStreamIcon = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "streamIcon");
        final int _columnIndexOfCategoryId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryId");
        final int _columnIndexOfCategoryName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryName");
        final int _columnIndexOfTvArchive = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "tvArchive");
        final int _columnIndexOfTvArchiveDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "tvArchiveDuration");
        final int _columnIndexOfEpgChannelId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "epgChannelId");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfDirectStreamUrl = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "directStreamUrl");
        final List<ChannelEntity> _result = new ArrayList<ChannelEntity>();
        while (_stmt.step()) {
          final ChannelEntity _item;
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
          final String _tmpCategoryName;
          if (_stmt.isNull(_columnIndexOfCategoryName)) {
            _tmpCategoryName = null;
          } else {
            _tmpCategoryName = _stmt.getText(_columnIndexOfCategoryName);
          }
          final int _tmpTvArchive;
          _tmpTvArchive = (int) (_stmt.getLong(_columnIndexOfTvArchive));
          final int _tmpTvArchiveDuration;
          _tmpTvArchiveDuration = (int) (_stmt.getLong(_columnIndexOfTvArchiveDuration));
          final String _tmpEpgChannelId;
          if (_stmt.isNull(_columnIndexOfEpgChannelId)) {
            _tmpEpgChannelId = null;
          } else {
            _tmpEpgChannelId = _stmt.getText(_columnIndexOfEpgChannelId);
          }
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpDirectStreamUrl;
          if (_stmt.isNull(_columnIndexOfDirectStreamUrl)) {
            _tmpDirectStreamUrl = null;
          } else {
            _tmpDirectStreamUrl = _stmt.getText(_columnIndexOfDirectStreamUrl);
          }
          _item = new ChannelEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpCategoryName,_tmpTvArchive,_tmpTvArchiveDuration,_tmpEpgChannelId,_tmpAdded,_tmpServerId,_tmpDirectStreamUrl);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Flow<List<ChannelEntity>> observeByCategory(final int serverId, final String categoryId) {
    final String _sql = "SELECT * FROM channels WHERE serverId = ? AND categoryId = ? ORDER BY name COLLATE NOCASE ASC";
    return FlowUtil.createFlow(__db, false, new String[] {"channels"}, (_connection) -> {
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
        final int _columnIndexOfCategoryName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryName");
        final int _columnIndexOfTvArchive = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "tvArchive");
        final int _columnIndexOfTvArchiveDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "tvArchiveDuration");
        final int _columnIndexOfEpgChannelId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "epgChannelId");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfDirectStreamUrl = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "directStreamUrl");
        final List<ChannelEntity> _result = new ArrayList<ChannelEntity>();
        while (_stmt.step()) {
          final ChannelEntity _item;
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
          final String _tmpCategoryName;
          if (_stmt.isNull(_columnIndexOfCategoryName)) {
            _tmpCategoryName = null;
          } else {
            _tmpCategoryName = _stmt.getText(_columnIndexOfCategoryName);
          }
          final int _tmpTvArchive;
          _tmpTvArchive = (int) (_stmt.getLong(_columnIndexOfTvArchive));
          final int _tmpTvArchiveDuration;
          _tmpTvArchiveDuration = (int) (_stmt.getLong(_columnIndexOfTvArchiveDuration));
          final String _tmpEpgChannelId;
          if (_stmt.isNull(_columnIndexOfEpgChannelId)) {
            _tmpEpgChannelId = null;
          } else {
            _tmpEpgChannelId = _stmt.getText(_columnIndexOfEpgChannelId);
          }
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpDirectStreamUrl;
          if (_stmt.isNull(_columnIndexOfDirectStreamUrl)) {
            _tmpDirectStreamUrl = null;
          } else {
            _tmpDirectStreamUrl = _stmt.getText(_columnIndexOfDirectStreamUrl);
          }
          _item = new ChannelEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpCategoryName,_tmpTvArchive,_tmpTvArchiveDuration,_tmpEpgChannelId,_tmpAdded,_tmpServerId,_tmpDirectStreamUrl);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Object findById(final int serverId, final int streamId,
      final Continuation<? super ChannelEntity> $completion) {
    final String _sql = "SELECT * FROM channels WHERE serverId = ? AND streamId = ? LIMIT 1";
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
        final int _columnIndexOfCategoryName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryName");
        final int _columnIndexOfTvArchive = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "tvArchive");
        final int _columnIndexOfTvArchiveDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "tvArchiveDuration");
        final int _columnIndexOfEpgChannelId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "epgChannelId");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfDirectStreamUrl = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "directStreamUrl");
        final ChannelEntity _result;
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
          final String _tmpCategoryName;
          if (_stmt.isNull(_columnIndexOfCategoryName)) {
            _tmpCategoryName = null;
          } else {
            _tmpCategoryName = _stmt.getText(_columnIndexOfCategoryName);
          }
          final int _tmpTvArchive;
          _tmpTvArchive = (int) (_stmt.getLong(_columnIndexOfTvArchive));
          final int _tmpTvArchiveDuration;
          _tmpTvArchiveDuration = (int) (_stmt.getLong(_columnIndexOfTvArchiveDuration));
          final String _tmpEpgChannelId;
          if (_stmt.isNull(_columnIndexOfEpgChannelId)) {
            _tmpEpgChannelId = null;
          } else {
            _tmpEpgChannelId = _stmt.getText(_columnIndexOfEpgChannelId);
          }
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpDirectStreamUrl;
          if (_stmt.isNull(_columnIndexOfDirectStreamUrl)) {
            _tmpDirectStreamUrl = null;
          } else {
            _tmpDirectStreamUrl = _stmt.getText(_columnIndexOfDirectStreamUrl);
          }
          _result = new ChannelEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpCategoryName,_tmpTvArchive,_tmpTvArchiveDuration,_tmpEpgChannelId,_tmpAdded,_tmpServerId,_tmpDirectStreamUrl);
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
      final Continuation<? super List<ChannelEntity>> $completion) {
    final String _sql = "SELECT * FROM channels WHERE serverId = ? AND name LIKE '%' || ? || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200";
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
        final int _columnIndexOfCategoryName = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "categoryName");
        final int _columnIndexOfTvArchive = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "tvArchive");
        final int _columnIndexOfTvArchiveDuration = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "tvArchiveDuration");
        final int _columnIndexOfEpgChannelId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "epgChannelId");
        final int _columnIndexOfAdded = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "added");
        final int _columnIndexOfServerId = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "serverId");
        final int _columnIndexOfDirectStreamUrl = SQLiteStatementUtil.getColumnIndexOrThrow(_stmt, "directStreamUrl");
        final List<ChannelEntity> _result = new ArrayList<ChannelEntity>();
        while (_stmt.step()) {
          final ChannelEntity _item;
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
          final String _tmpCategoryName;
          if (_stmt.isNull(_columnIndexOfCategoryName)) {
            _tmpCategoryName = null;
          } else {
            _tmpCategoryName = _stmt.getText(_columnIndexOfCategoryName);
          }
          final int _tmpTvArchive;
          _tmpTvArchive = (int) (_stmt.getLong(_columnIndexOfTvArchive));
          final int _tmpTvArchiveDuration;
          _tmpTvArchiveDuration = (int) (_stmt.getLong(_columnIndexOfTvArchiveDuration));
          final String _tmpEpgChannelId;
          if (_stmt.isNull(_columnIndexOfEpgChannelId)) {
            _tmpEpgChannelId = null;
          } else {
            _tmpEpgChannelId = _stmt.getText(_columnIndexOfEpgChannelId);
          }
          final long _tmpAdded;
          _tmpAdded = _stmt.getLong(_columnIndexOfAdded);
          final int _tmpServerId;
          _tmpServerId = (int) (_stmt.getLong(_columnIndexOfServerId));
          final String _tmpDirectStreamUrl;
          if (_stmt.isNull(_columnIndexOfDirectStreamUrl)) {
            _tmpDirectStreamUrl = null;
          } else {
            _tmpDirectStreamUrl = _stmt.getText(_columnIndexOfDirectStreamUrl);
          }
          _item = new ChannelEntity(_tmpStreamId,_tmpName,_tmpStreamIcon,_tmpCategoryId,_tmpCategoryName,_tmpTvArchive,_tmpTvArchiveDuration,_tmpEpgChannelId,_tmpAdded,_tmpServerId,_tmpDirectStreamUrl);
          _result.add(_item);
        }
        return _result;
      } finally {
        _stmt.close();
      }
    }, $completion);
  }

  @Override
  public Object count(final int serverId, final Continuation<? super Integer> $completion) {
    final String _sql = "SELECT COUNT(*) FROM channels WHERE serverId = ?";
    return DBUtil.performSuspending(__db, true, false, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        final Integer _result;
        if (_stmt.step()) {
          final Integer _tmp;
          if (_stmt.isNull(0)) {
            _tmp = null;
          } else {
            _tmp = (int) (_stmt.getLong(0));
          }
          _result = _tmp;
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
  public Flow<Integer> observeCount(final int serverId) {
    final String _sql = "SELECT COUNT(*) FROM channels WHERE serverId = ?";
    return FlowUtil.createFlow(__db, false, new String[] {"channels"}, (_connection) -> {
      final SQLiteStatement _stmt = _connection.prepare(_sql);
      try {
        int _argIndex = 1;
        _stmt.bindLong(_argIndex, serverId);
        final Integer _result;
        if (_stmt.step()) {
          final Integer _tmp;
          if (_stmt.isNull(0)) {
            _tmp = null;
          } else {
            _tmp = (int) (_stmt.getLong(0));
          }
          _result = _tmp;
        } else {
          _result = null;
        }
        return _result;
      } finally {
        _stmt.close();
      }
    });
  }

  @Override
  public Object clearForServer(final int serverId, final Continuation<? super Unit> $completion) {
    final String _sql = "DELETE FROM channels WHERE serverId = ?";
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
