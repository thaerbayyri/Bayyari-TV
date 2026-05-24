package com.bayyari.tv.ui.favorites

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.local.dao.FavoriteDao
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@OptIn(ExperimentalCoroutinesApi::class)
@HiltViewModel
class FavoritesViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val favoriteDao: FavoriteDao,
    private val liveRepository: LiveRepository,
    private val movieRepository: MovieRepository,
    private val seriesRepository: SeriesRepository
) : ViewModel() {

    private val serverId = authRepository.activeServerFlow()
        .map { it?.id ?: 0 }
        .stateIn(viewModelScope, SharingStarted.Eagerly, authRepository.getActiveServer()?.id ?: 0)

    val favorites = serverId.flatMapLatest { id ->
        if (id == 0) return@flatMapLatest flowOf(emptyList<FavoriteItem>())
        combine(
            favoriteDao.observeAll(id),
            liveRepository.observeChannels(id, null),
            movieRepository.observeMovies(id, null),
            seriesRepository.observeSeries(id, null)
        ) { favs, channels, movies, series ->
            val channelById = channels.associateBy { it.streamId }
            val movieById = movies.associateBy { it.streamId }
            val seriesById = series.associateBy { it.seriesId }
            favs.mapNotNull { fav ->
                when (fav.contentType) {
                    "live" -> channelById[fav.contentId]?.let {
                        FavoriteItem(fav.id, fav.contentId, fav.contentType, "Live", it.name)
                    }
                    "movie" -> movieById[fav.contentId]?.let {
                        FavoriteItem(fav.id, fav.contentId, fav.contentType, "Movie", it.name)
                    }
                    "series" -> seriesById[fav.contentId]?.let {
                        FavoriteItem(fav.id, fav.contentId, fav.contentType, "Series", it.name)
                    }
                    else -> null
                }
            }
        }
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun removeFavorite(item: FavoriteItem) {
        viewModelScope.launch {
            runCatching { favoriteDao.deleteById(item.id) }
                .onFailure { Log.e("FavoritesViewModel", "removeFavorite failed", it) }
        }
    }
}
