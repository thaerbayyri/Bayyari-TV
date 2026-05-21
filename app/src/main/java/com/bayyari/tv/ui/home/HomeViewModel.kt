package com.bayyari.tv.ui.home

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.local.dao.WatchHistoryDao
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

data class HomeStats(
    val channelCount: Int = 0,
    val movieCount: Int = 0,
    val seriesCount: Int = 0,
    val online: Boolean = true
)

@HiltViewModel
class HomeViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val liveRepository: LiveRepository,
    private val movieRepository: MovieRepository,
    private val seriesRepository: SeriesRepository,
    private val watchHistoryDao: WatchHistoryDao
) : ViewModel() {

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)

    val continueWatching = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else watchHistoryDao.observeAll(id)
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    val liveChannels: Flow<List<Channel>> = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else liveRepository.observeChannels(id, null)
    }.map { it.take(20) }

    val latestMovies: Flow<List<Movie>> = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else movieRepository.observeMovies(id, null)
    }.map { it.take(20) }

    val latestSeries: Flow<List<Series>> = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else seriesRepository.observeSeries(id, null)
    }.map { it.take(20) }

    /** Stats counts derived from the same observed flows. */
    val stats: Flow<HomeStats> = serverId.flatMapLatest { id ->
        if (id == 0) {
            kotlinx.coroutines.flow.flowOf(HomeStats())
        } else {
            combine(
                liveRepository.observeChannels(id, null),
                movieRepository.observeMovies(id, null),
                seriesRepository.observeSeries(id, null)
            ) { channels, movies, series ->
                HomeStats(
                    channelCount = channels.size,
                    movieCount = movies.size,
                    seriesCount = series.size,
                    online = true
                )
            }
        }
    }

    /** First latest movie (used to populate the hero card). */
    val featured: Flow<Movie?> = latestMovies.map { it.firstOrNull() }

    fun refreshAll() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            runCatching { liveRepository.refresh(server) }
            runCatching { movieRepository.refresh(server) }
            runCatching { seriesRepository.refresh(server) }
        }
    }
}
