package com.bayyari.tv.ui.search

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.domain.usecase.SearchUseCase
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SearchViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val searchUseCase: SearchUseCase
) : ViewModel() {

    data class SearchResult(
        val live: List<Channel> = emptyList(),
        val movies: List<Movie> = emptyList(),
        val series: List<Series> = emptyList()
    )

    private val _result = MutableStateFlow(SearchResult())
    val result: StateFlow<SearchResult> = _result

    fun search(query: String) {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            val (live, movies, series) = searchUseCase.searchAll(server.id, query)
            _result.value = SearchResult(live, movies, series)
        }
    }
}
