package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Transaction
import com.bayyari.tv.data.local.entities.SeriesEntity
import kotlinx.coroutines.flow.Flow

@Dao
abstract class SeriesDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    abstract suspend fun upsertAll(items: List<SeriesEntity>)

    @Query("DELETE FROM series WHERE serverId = :serverId")
    abstract suspend fun clearForServer(serverId: Int)

    /** Atomically replaces all series for a server — UI never sees an empty state. */
    @Transaction
    open suspend fun replaceAllForServer(serverId: Int, entities: List<SeriesEntity>) {
        clearForServer(serverId)
        entities.chunked(500).forEach { upsertAll(it) }
    }

    @Query("SELECT * FROM series WHERE serverId = :serverId ORDER BY lastModified DESC")
    abstract fun observeAll(serverId: Int): Flow<List<SeriesEntity>>

    @Query("SELECT * FROM series WHERE serverId = :serverId AND categoryId = :categoryId ORDER BY lastModified DESC")
    abstract fun observeByCategory(serverId: Int, categoryId: String): Flow<List<SeriesEntity>>

    @Query("SELECT * FROM series WHERE serverId = :serverId ORDER BY lastModified DESC LIMIT :limit")
    abstract suspend fun latest(serverId: Int, limit: Int): List<SeriesEntity>

    @Query("SELECT COUNT(*) FROM series WHERE serverId = :serverId")
    abstract suspend fun countForServer(serverId: Int): Int

    @Query("SELECT COUNT(*) FROM series WHERE serverId = :serverId")
    abstract fun observeCount(serverId: Int): Flow<Int>

    @Query("SELECT * FROM series WHERE serverId = :serverId AND seriesId = :seriesId LIMIT 1")
    abstract suspend fun findById(serverId: Int, seriesId: Int): SeriesEntity?

    @Query("SELECT * FROM series WHERE serverId = :serverId AND name LIKE '%' || :query || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200")
    abstract suspend fun search(serverId: Int, query: String): List<SeriesEntity>
}
