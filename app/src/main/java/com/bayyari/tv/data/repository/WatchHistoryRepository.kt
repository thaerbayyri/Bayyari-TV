package com.bayyari.tv.data.repository

import com.bayyari.tv.data.local.dao.WatchHistoryDao
import com.bayyari.tv.data.local.entities.WatchHistoryEntity
import com.bayyari.tv.domain.model.WatchEntry
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class WatchHistoryRepository @Inject constructor(
    private val dao: WatchHistoryDao
) {

    fun observeAll(serverId: Int): Flow<List<WatchEntry>> =
        dao.observeAll(serverId).map { items -> items.map { it.toDomain() } }

    suspend fun save(entry: WatchEntry) = withContext(Dispatchers.IO) {
        dao.upsert(entry.toEntity())
    }

    suspend fun find(contentId: Int, contentType: String, serverId: Int): WatchEntry? =
        withContext(Dispatchers.IO) { dao.find(contentId, contentType, serverId)?.toDomain() }

    suspend fun clear(serverId: Int) = withContext(Dispatchers.IO) {
        dao.clear(serverId)
    }

    private fun WatchHistoryEntity.toDomain() = WatchEntry(
        id = id,
        contentId = contentId,
        contentType = contentType,
        positionMs = positionMs,
        durationMs = durationMs,
        watchedAt = watchedAt,
        serverId = serverId,
        title = title,
        poster = poster
    )

    private fun WatchEntry.toEntity() = WatchHistoryEntity(
        id = id,
        contentId = contentId,
        contentType = contentType,
        positionMs = positionMs,
        durationMs = durationMs,
        watchedAt = watchedAt,
        serverId = serverId,
        title = title,
        poster = poster
    )
}
