package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.bayyari.tv.data.local.entities.FavoriteEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface FavoriteDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsert(item: FavoriteEntity)

    @Query("DELETE FROM favorites WHERE id = :id")
    suspend fun deleteById(id: Int)

    @Query("DELETE FROM favorites WHERE contentId = :contentId AND contentType = :contentType AND serverId = :serverId")
    suspend fun deleteByContent(contentId: Int, contentType: String, serverId: Int)

    @Query("SELECT * FROM favorites WHERE serverId = :serverId ORDER BY addedAt DESC")
    fun observeAll(serverId: Int): Flow<List<FavoriteEntity>>

    @Query("SELECT * FROM favorites WHERE serverId = :serverId AND contentType = :contentType ORDER BY addedAt DESC")
    fun observeByType(serverId: Int, contentType: String): Flow<List<FavoriteEntity>>

    @Query("SELECT * FROM favorites WHERE contentId = :contentId AND contentType = :contentType AND serverId = :serverId LIMIT 1")
    suspend fun find(contentId: Int, contentType: String, serverId: Int): FavoriteEntity?
}
