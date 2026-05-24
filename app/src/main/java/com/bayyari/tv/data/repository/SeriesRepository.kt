package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.api.models.SeriesInfoDto
import com.bayyari.tv.data.local.dao.SeriesDao
import com.bayyari.tv.data.local.entities.SeriesEntity
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.domain.model.Server
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class SeriesRepository @Inject constructor(
    private val api: XtreamApiService,
    private val seriesDao: SeriesDao
) {

    fun observeSeriesCount(serverId: Int): Flow<Int> = seriesDao.observeCount(serverId)

    fun observeSeries(serverId: Int, categoryId: String?): Flow<List<Series>> {
        val flow = if (categoryId.isNullOrBlank()) {
            seriesDao.observeAll(serverId)
        } else {
            seriesDao.observeByCategory(serverId, categoryId)
        }
        return flow.map { items -> items.map { it.toDomain() } }
    }

    suspend fun refresh(server: Server): Int = withContext(Dispatchers.IO) {
        val series = runCatching { api.getSeries(server.username, server.password) }
            .getOrElse {
                android.util.Log.w("SeriesRepository", "getSeries failed", it)
                return@withContext 0
            }
        val entities = series.map { dto ->
            SeriesEntity(
                seriesId = dto.seriesId,
                name = dto.name.orEmpty(),
                cover = dto.cover.orEmpty(),
                plot = dto.plot.orEmpty(),
                cast = dto.cast.orEmpty(),
                director = dto.director.orEmpty(),
                genre = dto.genre.orEmpty(),
                releaseDate = dto.releaseDate.orEmpty(),
                lastModified = dto.lastModified?.toLongOrNull() ?: 0L,
                rating = dto.rating.orEmpty(),
                categoryId = dto.categoryId.orEmpty(),
                serverId = server.id
            )
        }
        seriesDao.replaceAllForServer(server.id, entities)
        entities.size
    }

    suspend fun getSeries(serverId: Int, seriesId: Int): Series? =
        seriesDao.findById(serverId, seriesId)?.toDomain()

    suspend fun latest(serverId: Int, limit: Int): List<Series> =
        seriesDao.latest(serverId, limit).map { it.toDomain() }

    suspend fun hasCachedSeries(serverId: Int): Boolean = withContext(Dispatchers.IO) {
        seriesDao.countForServer(serverId) > 0
    }

    suspend fun cachedSeriesCount(serverId: Int): Int = withContext(Dispatchers.IO) {
        seriesDao.countForServer(serverId)
    }

    suspend fun search(serverId: Int, query: String): List<Series> =
        seriesDao.search(serverId, query).map { it.toDomain() }

    suspend fun fetchCategoryNames(server: Server): Map<String, String> =
        withContext(Dispatchers.IO) {
            runCatching { api.getSeriesCategories(server.username, server.password) }
                .getOrElse { emptyList() }
                .associate { it.categoryId to it.categoryName }
        }

    suspend fun getSeriesInfo(server: Server, seriesId: Int): SeriesInfoDto =
        withContext(Dispatchers.IO) {
            api.getSeriesInfo(server.username, server.password, seriesId)
        }

    private fun SeriesEntity.toDomain(): Series = Series(
        seriesId = seriesId,
        name = name,
        cover = cover,
        plot = plot,
        cast = cast,
        director = director,
        genre = genre,
        releaseDate = releaseDate,
        lastModified = lastModified,
        rating = rating,
        categoryId = categoryId,
        serverId = serverId
    )
}
