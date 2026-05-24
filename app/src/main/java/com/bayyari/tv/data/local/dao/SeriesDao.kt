package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.bayyari.tv.data.local.entities.SeriesEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface SeriesDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsertAll(items: List<SeriesEntity>)

    @Query("DELETE FROM series WHERE serverId = :serverId")
    suspend fun clearForServer(serverId: Int)

    @Query("SELECT * FROM series WHERE serverId = :serverId ORDER BY lastModified DESC")
    fun observeAll(serverId: Int): Flow<List<SeriesEntity>>

    @Query("SELECT * FROM series WHERE serverId = :serverId AND categoryId = :categoryId ORDER BY lastModified DESC")
    fun observeByCategory(serverId: Int, categoryId: String): Flow<List<SeriesEntity>>

    @Query("SELECT * FROM series WHERE serverId = :serverId ORDER BY lastModified DESC LIMIT :limit")
    suspend fun latest(serverId: Int, limit: Int): List<SeriesEntity>

    @Query("SELECT COUNT(*) FROM series WHERE serverId = :serverId")
    suspend fun countForServer(serverId: Int): Int

    @Query("SELECT COUNT(*) FROM series WHERE serverId = :serverId")
    fun observeCount(serverId: Int): Flow<Int>

    @Query("SELECT * FROM series WHERE serverId = :serverId AND seriesId = :seriesId LIMIT 1")
    suspend fun findById(serverId: Int, seriesId: Int): SeriesEntity?

    @Query("SELECT * FROM series WHERE serverId = :serverId AND name LIKE '%' || :query || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200")
    suspend fun search(serverId: Int, query: String): List<SeriesEntity>
}
