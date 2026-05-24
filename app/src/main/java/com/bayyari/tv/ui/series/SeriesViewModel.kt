package com.bayyari.tv.ui.series

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Category
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.util.EncryptedPrefs
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)
@HiltViewModel
class SeriesViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val seriesRepository: SeriesRepository,
    private val prefs: EncryptedPrefs
) : ViewModel() {

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)
    private val query = MutableStateFlow("")
    val selectedCategoryId = MutableStateFlow<String?>(null)
    private val categoryNames = MutableStateFlow<Map<String, String>>(emptyMap())
    private val hiddenCategoryIds = MutableStateFlow(prefs.getHiddenSeriesCategoryIds())
    private val sortMode = MutableStateFlow(SeriesSortMode.fromPref(prefs.getSeriesSortMode()))

    private val allSeries = serverId.flatMapLatest { id ->
        if (id == 0) flowOf(emptyList()) else seriesRepository.observeSeries(id, null)
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    val categories = allSeries.combine(categoryNames) { list, names -> list to names }
        .combine(hiddenCategoryIds) { (list, names), hidden ->
        val visible = list.filter { it.categoryId !in hidden }
        val grouped = visible.groupBy { it.categoryId }
            .filter { it.key.isNotBlank() }
            .entries.sortedBy { names[it.key] ?: it.key }
            .map { (id, items) -> Category(id, names[id] ?: id, "series", items.size) }
        listOf(Category("", "All", "series", visible.size)) + grouped
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    val series = allSeries
        .combine(hiddenCategoryIds) { list, hidden -> list.filter { it.categoryId !in hidden } }
        .combine(selectedCategoryId) { list, catId ->
            if (catId.isNullOrBlank()) list else list.filter { it.categoryId == catId }
        }
        .combine(query) { list, q ->
            if (q.isBlank()) list else list.filter { it.name.contains(q, true) }
        }
        .combine(sortMode) { list, sort ->
            when (sort) {
                SeriesSortMode.AddedDesc -> list.sortedByDescending { it.lastModified }
                SeriesSortMode.NameAsc -> list.sortedBy { it.name.lowercase() }
                SeriesSortMode.NameDesc -> list.sortedByDescending { it.name.lowercase() }
                SeriesSortMode.RatingDesc -> list.sortedByDescending { it.rating.toDoubleOrNull() ?: 0.0 }
            }
        }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun refresh() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            if (!seriesRepository.hasCachedSeries(server.id)) {
                seriesRepository.refresh(server)
            }
            runCatching { seriesRepository.fetchCategoryNames(server) }
                .getOrNull()?.let { categoryNames.value = it }
        }
    }

    fun setQuery(value: String) { query.value = value }
    fun selectCategory(id: String?) { selectedCategoryId.value = id?.takeIf { it.isNotBlank() } }
    fun setSortMode(value: SeriesSortMode) {
        sortMode.value = value
        prefs.setSeriesSortMode(value.prefValue)
    }

    fun getSortMode(): SeriesSortMode = sortMode.value

    fun hideCategory(id: String) {
        prefs.hideSeriesCategory(id)
        hiddenCategoryIds.value = prefs.getHiddenSeriesCategoryIds()
        if (selectedCategoryId.value == id) selectedCategoryId.value = null
    }

    fun reloadPreferences() {
        hiddenCategoryIds.value = prefs.getHiddenSeriesCategoryIds()
        sortMode.value = SeriesSortMode.fromPref(prefs.getSeriesSortMode())
    }
}
