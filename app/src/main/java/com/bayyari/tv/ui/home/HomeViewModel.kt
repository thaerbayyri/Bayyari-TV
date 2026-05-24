package com.bayyari.tv.ui.home

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import android.util.Log
import com.bayyari.tv.data.local.dao.FavoriteDao
import com.bayyari.tv.data.local.entities.FavoriteEntity
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.data.repository.WatchHistoryRepository
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.domain.model.WatchEntry
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.launch
import javax.inject.Inject

data class HomeStats(
    val channelCount: Int = 0,
    val movieCount: Int = 0,
    val seriesCount: Int = 0,
    val online: Boolean = true
)

@HiltViewModel
@OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)
class HomeViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val liveRepository: LiveRepository,
    private val movieRepository: MovieRepository,
    private val seriesRepository: SeriesRepository,
    private val watchHistoryRepository: WatchHistoryRepository,
    private val favoriteDao: FavoriteDao
) : ViewModel() {

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)

    val continueWatching = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else watchHistoryRepository.observeAll(id)
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList<WatchEntry>())

    val liveChannels: Flow<List<Channel>> = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else liveRepository.observeChannels(id, null)
    }.map { it.take(20) }

    val latestMovies: Flow<List<Movie>> = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else movieRepository.observeMovies(id, null)
    }.map { it.take(20) }

    val latestSeries: Flow<List<Series>> = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else seriesRepository.observeSeries(id, null)
    }.map { it.take(20) }

    /** Real counts from lightweight COUNT(*) queries — avoids loading full catalogs into memory. */
    val stats: Flow<HomeStats> = combine(
        serverId.flatMapLatest { id ->
            if (id == 0) kotlinx.coroutines.flow.flowOf(0) else liveRepository.observeChannelCount(id)
        },
        serverId.flatMapLatest { id ->
            if (id == 0) kotlinx.coroutines.flow.flowOf(0) else movieRepository.observeMovieCount(id)
        },
        serverId.flatMapLatest { id ->
            if (id == 0) kotlinx.coroutines.flow.flowOf(0) else seriesRepository.observeSeriesCount(id)
        }
    ) { ch, mo, se ->
        HomeStats(channelCount = ch, movieCount = mo, seriesCount = se, online = true)
    }

    /** First latest movie (used to populate the hero card). */
    val featured: Flow<Movie?> = latestMovies.map { it.firstOrNull() }

    fun refreshAll() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            awaitAll(
                async { runCatching { liveRepository.refresh(server) } },
                async {
                    runCatching {
                        val count = movieRepository.cachedMovieCount(server.id)
                        if (count == 0 || count <= HOME_PREVIEW_LIMIT) movieRepository.refresh(server)
                    }
                },
                async {
                    runCatching {
                        val count = seriesRepository.cachedSeriesCount(server.id)
                        if (count == 0 || count <= HOME_PREVIEW_LIMIT) seriesRepository.refresh(server)
                    }
                }
            )
        }
    }

    fun addMovieFavorite(movie: Movie) {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            runCatching {
                favoriteDao.upsert(
                    FavoriteEntity(
                        contentId = movie.streamId,
                        contentType = "movie",
                        serverId = server.id,
                        addedAt = System.currentTimeMillis()
                    )
                )
            }.onFailure { Log.e("HomeViewModel", "addMovieFavorite failed", it) }
        }
    }

    private companion object {
        const val HOME_PREVIEW_LIMIT = 20
    }
}
