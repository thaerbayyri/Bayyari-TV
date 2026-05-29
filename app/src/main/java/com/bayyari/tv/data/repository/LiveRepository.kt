package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.data.local.entities.ChannelEntity
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Server
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.util.concurrent.ConcurrentHashMap
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class LiveRepository @Inject constructor(
    private val api: XtreamApiService,
    private val channelDao: ChannelDao
) {
    // Tracks when we last successfully refreshed — avoids hammering the server on every app open.
    private val lastRefreshMsByServer = ConcurrentHashMap<Int, Long>()
    private val refreshMutex = Mutex()

    fun isStale(serverId: Int, thresholdMs: Long = 30 * 60 * 1000L): Boolean =
        System.currentTimeMillis() - (lastRefreshMsByServer[serverId] ?: 0L) > thresholdMs

    fun observeChannelCount(serverId: Int): Flow<Int> = channelDao.observeCount(serverId)

    fun observeChannels(serverId: Int, categoryId: String?): Flow<List<Channel>> {
        val flow = if (categoryId.isNullOrBlank()) {
            channelDao.observeAll(serverId)
        } else {
            channelDao.observeByCategory(serverId, categoryId)
        }
        return flow.map { items -> items.map { it.toDomain() } }
    }

    suspend fun refreshIfStale(server: Server, thresholdMs: Long = 30 * 60 * 1000L): Int =
        refreshMutex.withLock {
            if (!isStale(server.id, thresholdMs)) {
                return@withLock withContext(Dispatchers.IO) { channelDao.count(server.id) }
            }
            refreshLocked(server)
        }

    suspend fun refresh(server: Server): Int =
        refreshMutex.withLock { refreshLocked(server) }

    private suspend fun refreshLocked(server: Server): Int = withContext(Dispatchers.IO) {
        val categories = runCatching { api.getLiveCategories(server.username, server.password) }
            .getOrElse {
                safeLogWarning("getLiveCategories failed", it)
                emptyList()
            }
        val categoryMap = categories.associate { it.categoryId to it.categoryName }
        val channels = runCatching { api.getLiveStreams(server.username, server.password) }
            .getOrElse {
                safeLogWarning("getLiveStreams failed", it)
                return@withContext 0
            }
        val entities = channels.map { dto ->
            ChannelEntity(
                streamId = dto.streamId,
                name = dto.name.orEmpty(),
                streamIcon = dto.streamIcon.orEmpty(),
                categoryId = dto.categoryId.orEmpty(),
                categoryName = categoryMap[dto.categoryId].orEmpty(),
                tvArchive = dto.tvArchive ?: 0,
                tvArchiveDuration = dto.tvArchiveDuration ?: 0,
                epgChannelId = dto.epgChannelId.orEmpty(),
                added = dto.added?.toLongOrNull() ?: 0L,
                serverId = server.id,
                directStreamUrl = dto.directSource
            )
        }
        channelDao.replaceAllForServer(server.id, entities)
        lastRefreshMsByServer[server.id] = System.currentTimeMillis()
        entities.size
    }

    suspend fun getChannel(serverId: Int, streamId: Int): Channel? =
        channelDao.findById(serverId, streamId)?.toDomain()

    suspend fun search(serverId: Int, query: String): List<Channel> =
        channelDao.search(serverId, query).map { it.toDomain() }

    private fun ChannelEntity.toDomain(): Channel = Channel(
        streamId = streamId,
        name = name,
        streamIcon = streamIcon,
        categoryId = categoryId,
        categoryName = categoryName,
        epgChannelId = epgChannelId,
        tvArchive = tvArchive,
        tvArchiveDuration = tvArchiveDuration,
        addedEpochSeconds = added,
        serverId = serverId,
        directStreamUrl = directStreamUrl
    )

    private fun safeLogWarning(message: String, throwable: Throwable?) {
        runCatching {
            if (throwable != null) {
                android.util.Log.w("LiveRepository", message, throwable)
            } else {
                android.util.Log.w("LiveRepository", message)
            }
        }
    }
}
