package com.bayyari.tv.ui.movies

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.domain.model.Movie
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class MovieViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val movieRepository: MovieRepository
) : ViewModel() {

    enum class Sort { NAME, RATING, YEAR, ADDED }

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)
    private val query = MutableStateFlow("")
    private val sort = MutableStateFlow(Sort.ADDED)

    val movies = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else movieRepository.observeMovies(id, null)
    }.combine(query) { list, q ->
        if (q.isBlank()) list else list.filter { it.name.contains(q, true) }
    }.combine(sort) { list, sortBy ->
        when (sortBy) {
            Sort.NAME -> list.sortedBy { it.name.lowercase() }
            Sort.RATING -> list.sortedByDescending { it.rating5Based }
            Sort.YEAR -> list.sortedByDescending { yearFromEpoch(it.addedEpochSeconds) }
            Sort.ADDED -> list.sortedByDescending { it.addedEpochSeconds }
        }
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun refresh() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            movieRepository.refresh(server)
        }
    }

    fun setQuery(value: String) { query.value = value }

    fun setSort(sortBy: Sort) { sort.value = sortBy }

    private fun yearFromEpoch(epochSeconds: Long): Int {
        if (epochSeconds <= 0) return 0
        val millis = epochSeconds * 1000L
        return java.util.Calendar.getInstance().apply { timeInMillis = millis }.get(java.util.Calendar.YEAR)
    }
}
