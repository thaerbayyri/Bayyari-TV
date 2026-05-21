package com.bayyari.tv.data.repository

import com.bayyari.tv.data.local.dao.WatchHistoryDao
import com.bayyari.tv.data.local.entities.WatchHistoryEntity
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class WatchHistoryRepository @Inject constructor(
    private val dao: WatchHistoryDao
) {

    fun observeAll(serverId: Int): Flow<List<WatchHistoryEntity>> = dao.observeAll(serverId)

    suspend fun save(entity: WatchHistoryEntity) = withContext(Dispatchers.IO) {
        dao.upsert(entity)
    }

    suspend fun find(contentId: Int, contentType: String, serverId: Int): WatchHistoryEntity? =
        withContext(Dispatchers.IO) { dao.find(contentId, contentType, serverId) }
}
