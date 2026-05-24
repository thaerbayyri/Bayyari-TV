package com.bayyari.tv.data.repository

import android.util.Base64
import android.util.Log
import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.local.dao.EpgDao
import com.bayyari.tv.data.local.entities.EpgEntity
import com.bayyari.tv.domain.model.EpgProgram
import com.bayyari.tv.domain.model.Server
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withContext
import java.text.SimpleDateFormat
import java.util.Locale
import java.util.TimeZone
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class EpgRepository @Inject constructor(
    private val api: XtreamApiService,
    private val epgDao: EpgDao
) {

    fun observeEpg(serverId: Int, streamId: Int): Flow<List<EpgProgram>> =
        epgDao.observeForStream(serverId, streamId).map { items -> items.map { it.toDomain() } }

    suspend fun refresh(server: Server, streamId: Int, limit: Int = 10): List<EpgProgram> =
        withContext(Dispatchers.IO) {
            val response = api.getShortEpg(server.username, server.password, streamId, limit)
            val listings = response.listings.orEmpty().mapNotNull { dto ->
                val startMs = parseTimestamp(dto.startTimestamp, dto.start)
                val endMs = parseTimestamp(dto.stopTimestamp, dto.end)
                if (startMs == null || endMs == null) return@mapNotNull null
                EpgEntity(
                    streamId = streamId,
                    serverId = server.id,
                    title = decodeBase64(dto.title),
                    description = decodeBase64(dto.description),
                    startMs = startMs,
                    endMs = endMs,
                    hasArchive = (dto.hasArchive ?: 0) == 1
                )
            }
            epgDao.clearForStream(server.id, streamId)
            epgDao.upsertAll(listings)
            listings.map { it.toDomain() }
        }

    suspend fun getCatchUp(server: Server, streamId: Int): List<EpgProgram> =
        withContext(Dispatchers.IO) {
            val response = api.getSimpleDataTable(server.username, server.password, streamId)
            response.listings.orEmpty().mapNotNull { dto ->
                val startMs = parseTimestamp(dto.startTimestamp, dto.start)
                val endMs = parseTimestamp(dto.stopTimestamp, dto.end)
                if (startMs == null || endMs == null) return@mapNotNull null
                if ((dto.hasArchive ?: 0) != 1) return@mapNotNull null
                EpgProgram(
                    streamId = streamId,
                    title = decodeBase64(dto.title),
                    description = decodeBase64(dto.description),
                    startMs = startMs,
                    endMs = endMs,
                    hasArchive = true
                )
            }
        }

    private fun EpgEntity.toDomain(): EpgProgram = EpgProgram(
        streamId = streamId,
        title = title,
        description = description,
        startMs = startMs,
        endMs = endMs,
        hasArchive = hasArchive
    )

    private fun decodeBase64(raw: String?): String {
        if (raw.isNullOrBlank()) return ""
        return runCatching {
            val decoded = Base64.decode(raw, Base64.DEFAULT)
            String(decoded)
        }.getOrElse {
            Log.w(TAG, "Base64 decode failed — dropping field value")
            ""
        }
    }

    private fun parseTimestamp(epochSeconds: String?, dateTime: String?): Long? {
        epochSeconds?.toLongOrNull()?.let { return it * 1000L }
        if (dateTime.isNullOrBlank()) return null
        return runCatching {
            val fmt = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).apply {
                timeZone = TimeZone.getTimeZone("UTC")
            }
            fmt.parse(dateTime)?.time
        }.getOrElse {
            Log.w(TAG, "EPG timestamp parse failed for '$dateTime' — entry will be dropped")
            null
        }
    }

    companion object {
        private const val TAG = "EpgRepository"
    }
}
