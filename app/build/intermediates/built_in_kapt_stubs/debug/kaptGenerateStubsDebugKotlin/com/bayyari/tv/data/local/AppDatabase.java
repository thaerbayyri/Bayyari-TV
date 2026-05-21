package com.bayyari.tv.data.local;

import androidx.room.Database;
import androidx.room.RoomDatabase;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.dao.SeriesDao;
import com.bayyari.tv.data.local.dao.WatchHistoryDao;
import com.bayyari.tv.data.local.entities.CategoryEntity;
import com.bayyari.tv.data.local.entities.ChannelEntity;
import com.bayyari.tv.data.local.entities.EpgEntity;
import com.bayyari.tv.data.local.entities.FavoriteEntity;
import com.bayyari.tv.data.local.entities.MovieEntity;
import com.bayyari.tv.data.local.entities.SeriesEntity;
import com.bayyari.tv.data.local.entities.WatchHistoryEntity;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0010"}, d2 = {"Lcom/bayyari/tv/data/local/AppDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "channelDao", "Lcom/bayyari/tv/data/local/dao/ChannelDao;", "movieDao", "Lcom/bayyari/tv/data/local/dao/MovieDao;", "seriesDao", "Lcom/bayyari/tv/data/local/dao/SeriesDao;", "favoriteDao", "Lcom/bayyari/tv/data/local/dao/FavoriteDao;", "epgDao", "Lcom/bayyari/tv/data/local/dao/EpgDao;", "watchHistoryDao", "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;", "app"})
@androidx.room.Database(entities = {com.bayyari.tv.data.local.entities.ChannelEntity.class, com.bayyari.tv.data.local.entities.MovieEntity.class, com.bayyari.tv.data.local.entities.SeriesEntity.class, com.bayyari.tv.data.local.entities.FavoriteEntity.class, com.bayyari.tv.data.local.entities.EpgEntity.class, com.bayyari.tv.data.local.entities.WatchHistoryEntity.class, com.bayyari.tv.data.local.entities.CategoryEntity.class}, version = 1, exportSchema = false)
public abstract class AppDatabase extends androidx.room.RoomDatabase {
    
    public AppDatabase() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public abstract com.bayyari.tv.data.local.dao.ChannelDao channelDao();
    
    @org.jetbrains.annotations.NotNull()
    public abstract com.bayyari.tv.data.local.dao.MovieDao movieDao();
    
    @org.jetbrains.annotations.NotNull()
    public abstract com.bayyari.tv.data.local.dao.SeriesDao seriesDao();
    
    @org.jetbrains.annotations.NotNull()
    public abstract com.bayyari.tv.data.local.dao.FavoriteDao favoriteDao();
    
    @org.jetbrains.annotations.NotNull()
    public abstract com.bayyari.tv.data.local.dao.EpgDao epgDao();
    
    @org.jetbrains.annotations.NotNull()
    public abstract com.bayyari.tv.data.local.dao.WatchHistoryDao watchHistoryDao();
}