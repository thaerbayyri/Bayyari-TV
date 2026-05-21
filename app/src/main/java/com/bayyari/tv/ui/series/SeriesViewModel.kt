package com.bayyari.tv.ui.series

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Series
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SeriesViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val seriesRepository: SeriesRepository
) : ViewModel() {

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)
    private val query = MutableStateFlow("")

    val series = serverId.flatMapLatest { id ->
        if (id == 0) kotlinx.coroutines.flow.flowOf(emptyList()) else seriesRepository.observeSeries(id, null)
    }.combine(query) { list, q ->
        if (q.isBlank()) list else list.filter { it.name.contains(q, true) }
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun refresh() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            seriesRepository.refresh(server)
        }
    }

    fun setQuery(value: String) { query.value = value }
}
