package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.data.local.entities.ChannelEntity
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.Constants
import com.bayyari.tv.util.M3uParser
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class LiveRepository @Inject constructor(
    private val api: XtreamApiService,
    private val channelDao: ChannelDao,
    private val m3uParser: M3uParser
) {

    fun observeChannelCount(serverId: Int): Flow<Int> = channelDao.observeCount(serverId)

    fun observeChannels(serverId: Int, categoryId: String?): Flow<List<Channel>> {
        val flow = if (categoryId.isNullOrBlank()) {
            channelDao.observeAll(serverId)
        } else {
            channelDao.observeByCategory(serverId, categoryId)
        }
        return flow.map { items -> items.map { it.toDomain() } }
    }

    suspend fun refresh(server: Server): Int = withContext(Dispatchers.IO) {
        if (server.isM3uOnly) {
            return@withContext runCatching {
                val response = api.fetchRaw(server.url)
                if (!response.isSuccessful) {
                    safeLogWarning("fetchRaw failed with HTTP ${response.code()}", null)
                    return@runCatching 0
                }

                val content = response.body()?.string().orEmpty()
                val channels = m3uParser.parse(content, server.id)
                val entities = channels.map { channel ->
                    ChannelEntity(
                        streamId = channel.streamId,
                        name = channel.name,
                        streamIcon = channel.streamIcon,
                        categoryId = channel.categoryId,
                        categoryName = channel.categoryName,
                        tvArchive = channel.tvArchive,
                        tvArchiveDuration = channel.tvArchiveDuration,
                        epgChannelId = channel.epgChannelId,
                        added = channel.addedEpochSeconds,
                        serverId = channel.serverId,
                        directStreamUrl = channel.directStreamUrl
                    )
                }
                channelDao.clearForServer(server.id)
                entities.chunked(Constants.DB_UPSERT_CHUNK_SIZE).forEach { channelDao.upsertAll(it) }
                entities.size
            }.getOrElse { t ->
                safeLogWarning("M3U refresh failed", t)
                0
            }
        }

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
        channelDao.clearForServer(server.id)
        entities.chunked(Constants.DB_UPSERT_CHUNK_SIZE).forEach { channelDao.upsertAll(it) }
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
