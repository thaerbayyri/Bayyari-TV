package com.bayyari.tv.ui.favorites

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.local.dao.FavoriteDao
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.flow.mapLatest
import kotlinx.coroutines.flow.stateIn
import javax.inject.Inject

@HiltViewModel
class FavoritesViewModel @Inject constructor(
    authRepository: AuthRepository,
    private val favoriteDao: FavoriteDao,
    private val liveRepository: LiveRepository,
    private val movieRepository: MovieRepository,
    private val seriesRepository: SeriesRepository
) : ViewModel() {

    data class FavoriteItem(val id: Int, val type: String, val title: String)

    private val serverId = authRepository.getActiveServer()?.id ?: 0

    val favorites = if (serverId == 0) {
        flowOf(emptyList())
    } else {
        favoriteDao.observeAll(serverId).mapLatest { list ->
            list.mapNotNull { fav ->
                when (fav.contentType) {
                    "live" -> liveRepository.getChannel(serverId, fav.contentId)?.let {
                        FavoriteItem(fav.contentId, fav.contentType, it.name)
                    }
                    "movie" -> movieRepository.getMovie(serverId, fav.contentId)?.let {
                        FavoriteItem(fav.contentId, fav.contentType, it.name)
                    }
                    "series" -> seriesRepository.getSeries(serverId, fav.contentId)?.let {
                        FavoriteItem(fav.contentId, fav.contentType, it.name)
                    }
                    else -> null
                }
            }
        }
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())
}
