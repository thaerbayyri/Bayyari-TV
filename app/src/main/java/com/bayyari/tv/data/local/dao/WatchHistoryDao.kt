package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.bayyari.tv.data.local.entities.WatchHistoryEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface WatchHistoryDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsert(item: WatchHistoryEntity)

    @Query("SELECT * FROM watch_history WHERE serverId = :serverId ORDER BY watchedAt DESC")
    fun observeAll(serverId: Int): Flow<List<WatchHistoryEntity>>

    @Query("SELECT * FROM watch_history WHERE contentType = :contentType AND serverId = :serverId ORDER BY watchedAt DESC")
    fun observeByType(serverId: Int, contentType: String): Flow<List<WatchHistoryEntity>>

    @Query("SELECT * FROM watch_history WHERE contentId = :contentId AND contentType = :contentType AND serverId = :serverId LIMIT 1")
    suspend fun find(contentId: Int, contentType: String, serverId: Int): WatchHistoryEntity?

    @Query("DELETE FROM watch_history WHERE serverId = :serverId")
    suspend fun clear(serverId: Int)
}
