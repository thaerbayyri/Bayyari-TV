package com.bayyari.tv.ui.live

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.domain.model.Category
import com.bayyari.tv.domain.model.Channel
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class LiveViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val liveRepository: LiveRepository
) : ViewModel() {

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)
    private val selectedCategory = MutableStateFlow<String?>(null)
    private val query = MutableStateFlow("")

    val channels = selectedCategory.flatMapLatest { category ->
        if (serverId.value == 0) kotlinx.coroutines.flow.flowOf(emptyList())
        else liveRepository.observeChannels(serverId.value, category)
    }.combine(query) { list, q ->
        if (q.isBlank()) list else list.filter { it.name.contains(q, true) }
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    val categories = channels.map { list ->
        val grouped = list.map { it.categoryId to it.categoryName }
            .distinct()
            .map { (id, name) -> Category(id = id, name = name.ifBlank { id }, kind = "live") }
        listOf(Category("", "All", "live")) + grouped
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun refresh() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            liveRepository.refresh(server)
        }
    }

    fun selectCategory(categoryId: String?) {
        selectedCategory.value = categoryId?.takeIf { it.isNotBlank() }
    }

    fun setQuery(value: String) {
        query.value = value
    }
}
