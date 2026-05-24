package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.bayyari.tv.data.local.entities.MovieEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface MovieDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsertAll(movies: List<MovieEntity>)

    @Query("DELETE FROM movies WHERE serverId = :serverId")
    suspend fun clearForServer(serverId: Int)

    @Query("SELECT * FROM movies WHERE serverId = :serverId ORDER BY added DESC")
    fun observeAll(serverId: Int): Flow<List<MovieEntity>>

    @Query("SELECT * FROM movies WHERE serverId = :serverId AND categoryId = :categoryId ORDER BY added DESC")
    fun observeByCategory(serverId: Int, categoryId: String): Flow<List<MovieEntity>>

    @Query("SELECT * FROM movies WHERE serverId = :serverId ORDER BY added DESC LIMIT :limit")
    suspend fun latest(serverId: Int, limit: Int): List<MovieEntity>

    @Query("SELECT COUNT(*) FROM movies WHERE serverId = :serverId")
    suspend fun countForServer(serverId: Int): Int

    @Query("SELECT COUNT(*) FROM movies WHERE serverId = :serverId")
    fun observeCount(serverId: Int): Flow<Int>

    @Query("SELECT * FROM movies WHERE serverId = :serverId AND streamId = :streamId LIMIT 1")
    suspend fun findById(serverId: Int, streamId: Int): MovieEntity?

    @Query("SELECT * FROM movies WHERE serverId = :serverId AND name LIKE '%' || :query || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200")
    suspend fun search(serverId: Int, query: String): List<MovieEntity>
}
