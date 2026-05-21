package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.bayyari.tv.data.local.entities.EpgEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface EpgDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsertAll(items: List<EpgEntity>)

    @Query("DELETE FROM epg WHERE serverId = :serverId AND streamId = :streamId")
    suspend fun clearForStream(serverId: Int, streamId: Int)

    @Query("DELETE FROM epg WHERE serverId = :serverId")
    suspend fun clearForServer(serverId: Int)

    @Query("SELECT * FROM epg WHERE serverId = :serverId AND streamId = :streamId ORDER BY startMs ASC")
    fun observeForStream(serverId: Int, streamId: Int): Flow<List<EpgEntity>>

    @Query("SELECT * FROM epg WHERE serverId = :serverId AND streamId = :streamId AND startMs <= :endMs AND endMs >= :startMs ORDER BY startMs ASC")
    suspend fun getForRange(serverId: Int, streamId: Int, startMs: Long, endMs: Long): List<EpgEntity>
}
