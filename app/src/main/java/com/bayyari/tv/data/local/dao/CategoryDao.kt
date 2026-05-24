package com.bayyari.tv.data.local.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.bayyari.tv.data.local.entities.CategoryEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface CategoryDao {

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsertAll(categories: List<CategoryEntity>)

    @Query("SELECT * FROM categories WHERE serverId = :serverId AND kind = :kind ORDER BY name COLLATE NOCASE ASC")
    fun observeByKind(serverId: Int, kind: String): Flow<List<CategoryEntity>>

    @Query("DELETE FROM categories WHERE serverId = :serverId")
    suspend fun clearForServer(serverId: Int)
}
