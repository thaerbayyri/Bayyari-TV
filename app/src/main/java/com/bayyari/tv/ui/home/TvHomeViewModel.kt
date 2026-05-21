package com.bayyari.tv.ui.home

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class TvHomeViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val liveRepository: LiveRepository,
    private val movieRepository: MovieRepository,
    private val seriesRepository: SeriesRepository
) : ViewModel() {

    private val _live = MutableStateFlow<List<Channel>>(emptyList())
    val live: StateFlow<List<Channel>> = _live

    private val _movies = MutableStateFlow<List<Movie>>(emptyList())
    val movies: StateFlow<List<Movie>> = _movies

    private val _series = MutableStateFlow<List<Series>>(emptyList())
    val series: StateFlow<List<Series>> = _series

    fun load() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            liveRepository.refresh(server)
            movieRepository.refresh(server)
            seriesRepository.refresh(server)

            _live.value = liveRepository.search(server.id, "").take(30)
            _movies.value = movieRepository.latest(server.id, 30)
            _series.value = seriesRepository.latest(server.id, 30)
        }
    }
}
