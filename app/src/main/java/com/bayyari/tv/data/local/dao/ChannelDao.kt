package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Transaction
import com.bayyari.tv.data.local.entities.ChannelEntity
import kotlinx.coroutines.flow.Flow

@Dao
abstract class ChannelDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    abstract suspend fun upsertAll(channels: List<ChannelEntity>)

    @Query("DELETE FROM channels WHERE serverId = :serverId")
    abstract suspend fun clearForServer(serverId: Int)

    /** Atomically replaces all channels for a server — UI never sees an empty state. */
    @Transaction
    open suspend fun replaceAllForServer(serverId: Int, entities: List<ChannelEntity>) {
        clearForServer(serverId)
        entities.chunked(500).forEach { upsertAll(it) }
    }

    @Query("SELECT * FROM channels WHERE serverId = :serverId ORDER BY name COLLATE NOCASE ASC")
    abstract fun observeAll(serverId: Int): Flow<List<ChannelEntity>>

    @Query("SELECT * FROM channels WHERE serverId = :serverId AND categoryId = :categoryId ORDER BY name COLLATE NOCASE ASC")
    abstract fun observeByCategory(serverId: Int, categoryId: String): Flow<List<ChannelEntity>>

    @Query("SELECT * FROM channels WHERE serverId = :serverId AND streamId = :streamId LIMIT 1")
    abstract suspend fun findById(serverId: Int, streamId: Int): ChannelEntity?

    @Query("SELECT * FROM channels WHERE serverId = :serverId AND name LIKE '%' || :query || '%' COLLATE NOCASE ORDER BY name COLLATE NOCASE ASC LIMIT 200")
    abstract suspend fun search(serverId: Int, query: String): List<ChannelEntity>

    @Query("SELECT COUNT(*) FROM channels WHERE serverId = :serverId")
    abstract suspend fun count(serverId: Int): Int

    @Query("SELECT COUNT(*) FROM channels WHERE serverId = :serverId")
    abstract fun observeCount(serverId: Int): Flow<Int>
}
