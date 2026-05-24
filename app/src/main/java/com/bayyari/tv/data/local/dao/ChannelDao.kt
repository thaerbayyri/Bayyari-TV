package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.bayyari.tv.data.local.entities.ChannelEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface ChannelDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsertAll(channels: List<ChannelEntity>)

    @Query("DELETE FROM channels WHERE serverId = :serverId")
    suspend fun clearForServer(serverId: Int)

    @Query("SELECT * FROM channels WHERE serverId = :serverId ORDER BY name COLLATE NOCASE ASC")
    fun observeAll(serverId: Int): Flow<List<ChannelEntity>>

    @Query("SELECT * FROM channels WHERE serverId = :serverId AND categoryId = :categoryId ORDER BY name COLLATE NOCASE ASC")
    fun observeByCategory(serverId: Int, categoryId: String): Flow<List<ChannelEntity>>

    @Query("SELECT * FROM channels WHERE serverId = :serverId AND streamId = :streamId LIMIT 1")
    suspend fun findById(serverId: Int, streamId: Int): ChannelEntity?

    @Query("SELECT * FROM channels WHERE serverId = :serverId AND name LIKE '%' || :query || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200")
    suspend fun search(serverId: Int, query: String): List<ChannelEntity>

    @Query("SELECT COUNT(*) FROM channels WHERE serverId = :serverId")
    suspend fun count(serverId: Int): Int

    @Query("SELECT COUNT(*) FROM channels WHERE serverId = :serverId")
    fun observeCount(serverId: Int): Flow<Int>
}
