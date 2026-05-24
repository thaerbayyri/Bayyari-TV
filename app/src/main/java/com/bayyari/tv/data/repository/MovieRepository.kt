package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.api.models.MovieDetailResponse
import com.bayyari.tv.data.local.dao.MovieDao
import com.bayyari.tv.data.local.entities.MovieEntity
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.Constants
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class MovieRepository @Inject constructor(
    private val api: XtreamApiService,
    private val movieDao: MovieDao
) {

    fun observeMovieCount(serverId: Int): Flow<Int> = movieDao.observeCount(serverId)

    fun observeMovies(serverId: Int, categoryId: String?): Flow<List<Movie>> {
        val flow = if (categoryId.isNullOrBlank()) {
            movieDao.observeAll(serverId)
        } else {
            movieDao.observeByCategory(serverId, categoryId)
        }
        return flow.map { items -> items.map { it.toDomain() } }
    }

    suspend fun refresh(server: Server): Int = withContext(Dispatchers.IO) {
        if (server.isM3uOnly) return@withContext 0
        // Some Xtream servers return a JSON object (error envelope) instead of an array when the
        // endpoint has no data or is throttled. Swallow that as "no movies" rather than crash.
        val movies = runCatching { api.getVodStreams(server.username, server.password) }
            .getOrElse {
                android.util.Log.w("MovieRepository", "getVodStreams failed", it)
                return@withContext 0
            }
        val entities = movies.map { dto ->
            MovieEntity(
                streamId = dto.streamId,
                name = dto.name.orEmpty(),
                streamIcon = dto.streamIcon.orEmpty(),
                categoryId = dto.categoryId.orEmpty(),
                rating = dto.rating?.toDoubleOrNull() ?: 0.0,
                rating5Based = dto.rating5Based ?: 0.0,
                added = dto.added?.toLongOrNull() ?: 0L,
                containerExtension = dto.containerExtension.orEmpty(),
                serverId = server.id
            )
        }
        movieDao.clearForServer(server.id)
        entities.chunked(Constants.DB_UPSERT_CHUNK_SIZE).forEach { movieDao.upsertAll(it) }
        entities.size
    }

    suspend fun getMovie(serverId: Int, streamId: Int): Movie? =
        movieDao.findById(serverId, streamId)?.toDomain()

    suspend fun latest(serverId: Int, limit: Int): List<Movie> =
        movieDao.latest(serverId, limit).map { it.toDomain() }

    suspend fun hasCachedMovies(serverId: Int): Boolean = withContext(Dispatchers.IO) {
        movieDao.countForServer(serverId) > 0
    }

    suspend fun cachedMovieCount(serverId: Int): Int = withContext(Dispatchers.IO) {
        movieDao.countForServer(serverId)
    }

    suspend fun search(serverId: Int, query: String): List<Movie> =
        movieDao.search(serverId, query).map { it.toDomain() }

    suspend fun fetchCategoryNames(server: Server): Map<String, String> =
        withContext(Dispatchers.IO) {
            runCatching { api.getVodCategories(server.username, server.password) }
                .getOrElse { emptyList() }
                .associate { it.categoryId to it.categoryName }
        }

    suspend fun getMovieDetail(server: Server, vodId: Int): MovieDetailResponse =
        withContext(Dispatchers.IO) {
            api.getVodInfo(server.username, server.password, vodId)
        }

    private fun MovieEntity.toDomain(): Movie = Movie(
        streamId = streamId,
        name = name,
        poster = streamIcon,
        categoryId = categoryId,
        rating = rating,
        rating5Based = rating5Based,
        addedEpochSeconds = added,
        containerExtension = containerExtension,
        serverId = serverId
    )
}
