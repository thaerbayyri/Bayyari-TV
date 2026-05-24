package com.bayyari.tv.ui.sync

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SyncViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val liveRepository: LiveRepository,
    private val movieRepository: MovieRepository,
    private val seriesRepository: SeriesRepository
) : ViewModel() {

    sealed class ItemState {
        object Loading : ItemState()
        data class Done(val count: Int) : ItemState()
        data class Skipped(val label: String = "N/A") : ItemState()
    }

    data class SyncState(
        val channels: ItemState = ItemState.Loading,
        val movies: ItemState = ItemState.Loading,
        val series: ItemState = ItemState.Loading,
        val fatalError: String? = null
    ) {
        val allDone: Boolean
            get() = channels !is ItemState.Loading &&
                    movies !is ItemState.Loading &&
                    series !is ItemState.Loading
    }

    private val _state = MutableStateFlow(SyncState())
    val state: StateFlow<SyncState> = _state

    init {
        startSync()
    }

    fun retry() {
        _state.value = SyncState()
        startSync()
    }

    private fun startSync() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer()
            if (server == null) {
                _state.update { it.copy(fatalError = "No active server found — please log in again.") }
                return@launch
            }

            val isM3u = server.isM3uOnly

            // Channels — always fetched (M3U or Xtream)
            launch {
                val count = runCatching { liveRepository.refresh(server) }
                    .onFailure { android.util.Log.e("SyncViewModel", "channels refresh failed", it) }
                    .getOrElse { 0 }
                _state.update { it.copy(channels = ItemState.Done(count)) }
            }

            // Movies — Xtream only
            launch {
                if (isM3u) {
                    _state.update { it.copy(movies = ItemState.Skipped()) }
                } else {
                    val count = runCatching { movieRepository.refresh(server) }
                        .onFailure { android.util.Log.e("SyncViewModel", "movies refresh failed", it) }
                        .getOrElse { 0 }
                    _state.update { it.copy(movies = ItemState.Done(count)) }
                }
            }

            // Series — Xtream only
            launch {
                if (isM3u) {
                    _state.update { it.copy(series = ItemState.Skipped()) }
                } else {
                    val count = runCatching { seriesRepository.refresh(server) }
                        .onFailure { android.util.Log.e("SyncViewModel", "series refresh failed", it) }
                        .getOrElse { 0 }
                    _state.update { it.copy(series = ItemState.Done(count)) }
                }
            }
        }
    }
}
