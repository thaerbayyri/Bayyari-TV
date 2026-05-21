package com.bayyari.tv.ui.movies

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

    fun load(streamId: Int) {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            _movie.value = movieRepository.getMovie(server.id, streamId)
            _detail.value = movieRepository.getMovieDetail(server, streamId)
        }
    }
}
