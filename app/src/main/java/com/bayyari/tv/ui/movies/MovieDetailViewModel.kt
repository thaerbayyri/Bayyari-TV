package com.bayyari.tv.ui.movies

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.api.models.MovieDetailResponse
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.domain.model.Movie
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class MovieDetailViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val movieRepository: MovieRepository
) : ViewModel() {

    private val _movie = MutableStateFlow<Movie?>(null)
    val movie: StateFlow<Movie?> = _movie

    private val _detail = MutableStateFlow<MovieDetailResponse?>(null)
    val detail: StateFlow<MovieDetailResponse?> = _detail

    private val _loading = MutableStateFlow(false)
    val loading: StateFlow<Boolean> = _loading

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    fun load(streamId: Int) {
        if (streamId == 0) return
        viewModelScope.launch {
            val server = authRepository.getActiveServer()
            if (server == null) {
                _error.value = "No active server"
                return@launch
            }
            _loading.value = true
            _error.value = null

            _movie.value = movieRepository.getMovie(server.id, streamId)

            runCatching {
                movieRepository.getMovieDetail(server, streamId)
            }.onSuccess { detail ->
                _detail.value = detail
                // If local cache had no poster, use movie_image from detail
                if (_movie.value?.poster.isNullOrBlank() && !detail.info?.movieImage.isNullOrBlank()) {
                    _movie.value = _movie.value?.copy(poster = detail.info?.movieImage.orEmpty())
                }
            }.onFailure { e ->
                Log.e("MovieDetailVM", "getMovieDetail failed for streamId=$streamId", e)
                _error.value = "Failed to load movie details: ${e.message}"
            }
            _loading.value = false
        }
    }
}
