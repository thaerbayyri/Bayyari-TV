package com.bayyari.tv.di;

import android.content.Context;
import androidx.room.Room;
import com.bayyari.tv.data.local.AppDatabase;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.dao.SeriesDao;
import com.bayyari.tv.data.local.dao.WatchHistoryDao;
import com.bayyari.tv.util.Constants;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.android.qualifiers.ApplicationContext;
import dagger.hilt.components.SingletonComponent;
import javax.inject.Singleton;

@dagger.Module()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u00c7\u0002\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u0005H\u0007\u00a8\u0006\u0015"}, d2 = {"Lcom/bayyari/tv/di/DatabaseModule;", "", "<init>", "()V", "provideDatabase", "Lcom/bayyari/tv/data/local/AppDatabase;", "context", "Landroid/content/Context;", "provideChannelDao", "Lcom/bayyari/tv/data/local/dao/ChannelDao;", "db", "provideMovieDao", "Lcom/bayyari/tv/data/local/dao/MovieDao;", "provideSeriesDao", "Lcom/bayyari/tv/data/local/dao/SeriesDao;", "provideFavoriteDao", "Lcom/bayyari/tv/data/local/dao/FavoriteDao;", "provideEpgDao", "Lcom/bayyari/tv/data/local/dao/EpgDao;", "provideWatchHistoryDao", "Lcom/bayyari/tv/data/local/dao/WatchHistoryDao;", "app"})
@dagger.hilt.InstallIn(value = {dagger.hilt.components.SingletonComponent.class})
public final class DatabaseModule {
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.di.DatabaseModule INSTANCE = null;
    
    private DatabaseModule() {
        super();
    }
    
    @dagger.Provides()
    @javax.inject.Singleton()
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.AppDatabase provideDatabase(@dagger.hilt.android.qualifiers.ApplicationContext()
    @org.jetbrains.annotations.NotNull()
    android.content.Context context) {
        return null;
    }
    
    @dagger.Provides()
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.ChannelDao provideChannelDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.AppDatabase db) {
        return null;
    }
    
    @dagger.Provides()
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.MovieDao provideMovieDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.AppDatabase db) {
        return null;
    }
    
    @dagger.Provides()
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.SeriesDao provideSeriesDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.AppDatabase db) {
        return null;
    }
    
    @dagger.Provides()
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.FavoriteDao provideFavoriteDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.AppDatabase db) {
        return null;
    }
    
    @dagger.Provides()
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.EpgDao provideEpgDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.AppDatabase db) {
        return null;
    }
    
    @dagger.Provides()
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.WatchHistoryDao provideWatchHistoryDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.AppDatabase db) {
        return null;
    }
}