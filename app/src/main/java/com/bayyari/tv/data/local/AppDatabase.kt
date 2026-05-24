package com.bayyari.tv.data.local

import androidx.room.Database
import androidx.room.RoomDatabase
import com.bayyari.tv.data.local.dao.CategoryDao
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.data.local.dao.EpgDao
import com.bayyari.tv.data.local.dao.FavoriteDao
import com.bayyari.tv.data.local.dao.MovieDao
import com.bayyari.tv.data.local.dao.SeriesDao
import com.bayyari.tv.data.local.dao.WatchHistoryDao
import com.bayyari.tv.data.local.entities.CategoryEntity
import com.bayyari.tv.data.local.entities.ChannelEntity
import com.bayyari.tv.data.local.entities.EpgEntity
import com.bayyari.tv.data.local.entities.FavoriteEntity
import com.bayyari.tv.data.local.entities.MovieEntity
import com.bayyari.tv.data.local.entities.SeriesEntity
import com.bayyari.tv.data.local.entities.WatchHistoryEntity

@Database(
    entities = [
        ChannelEntity::class,
        MovieEntity::class,
        SeriesEntity::class,
        FavoriteEntity::class,
        EpgEntity::class,
        WatchHistoryEntity::class,
        CategoryEntity::class
    ],
    version = 1,
    exportSchema = true
)
abstract class AppDatabase : RoomDatabase() {
    abstract fun channelDao(): ChannelDao
    abstract fun movieDao(): MovieDao
    abstract fun seriesDao(): SeriesDao
    abstract fun favoriteDao(): FavoriteDao
    abstract fun epgDao(): EpgDao
    abstract fun watchHistoryDao(): WatchHistoryDao
    abstract fun categoryDao(): CategoryDao
}
