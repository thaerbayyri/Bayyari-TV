package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Transaction
import com.bayyari.tv.data.local.entities.MovieEntity
import kotlinx.coroutines.flow.Flow

@Dao
abstract class MovieDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    abstract suspend fun upsertAll(movies: List<MovieEntity>)

    @Query("DELETE FROM movies WHERE serverId = :serverId")
    abstract suspend fun clearForServer(serverId: Int)

    /** Atomically replaces all movies for a server — UI never sees an empty state. */
    @Transaction
    open suspend fun replaceAllForServer(serverId: Int, entities: List<MovieEntity>) {
        clearForServer(serverId)
        entities.chunked(500).forEach { upsertAll(it) }
    }

    @Query("SELECT * FROM movies WHERE serverId = :serverId ORDER BY added DESC")
    abstract fun observeAll(serverId: Int): Flow<List<MovieEntity>>

    @Query("SELECT * FROM movies WHERE serverId = :serverId AND categoryId = :categoryId ORDER BY added DESC")
    abstract fun observeByCategory(serverId: Int, categoryId: String): Flow<List<MovieEntity>>

    @Query("SELECT * FROM movies WHERE serverId = :serverId ORDER BY added DESC LIMIT :limit")
    abstract suspend fun latest(serverId: Int, limit: Int): List<MovieEntity>

    @Query("SELECT COUNT(*) FROM movies WHERE serverId = :serverId")
    abstract suspend fun countForServer(serverId: Int): Int

    @Query("SELECT COUNT(*) FROM movies WHERE serverId = :serverId")
    abstract fun observeCount(serverId: Int): Flow<Int>

    @Query("SELECT * FROM movies WHERE serverId = :serverId AND streamId = :streamId LIMIT 1")
    abstract suspend fun findById(serverId: Int, streamId: Int): MovieEntity?

    @Query("SELECT * FROM movies WHERE serverId = :serverId AND name LIKE '%' || :query || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200")
    abstract suspend fun search(serverId: Int, query: String): List<MovieEntity>
}
