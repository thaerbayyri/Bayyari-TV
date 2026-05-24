package com.bayyari.tv.ui.movies

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.domain.model.Category
import com.bayyari.tv.domain.model.Movie
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
class MovieViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val movieRepository: MovieRepository,
    private val prefs: EncryptedPrefs
) : ViewModel() {

    enum class Sort { NAME, RATING, YEAR, ADDED }

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)
    private val query = MutableStateFlow("")
    private val sort = MutableStateFlow(Sort.ADDED)
    val selectedCategoryId = MutableStateFlow<String?>(null)
    private val categoryNames = MutableStateFlow<Map<String, String>>(emptyMap())
    private val hiddenCategoryIds = MutableStateFlow(prefs.getHiddenMovieCategoryIds())

    private val allMovies = serverId.flatMapLatest { id ->
        if (id == 0) flowOf(emptyList()) else movieRepository.observeMovies(id, null)
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    val categories = allMovies.combine(categoryNames) { list, names -> list to names }
        .combine(hiddenCategoryIds) { (list, names), hidden ->
        val visible = list.filter { it.categoryId !in hidden }
        val grouped = visible.groupBy { it.categoryId }
            .filter { it.key.isNotBlank() }
            .entries.sortedBy { names[it.key] ?: it.key }
            .map { (id, items) -> Category(id, names[id] ?: id, "vod", items.size) }
        listOf(Category("", "All", "vod", visible.size)) + grouped
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    val movies = allMovies
        .combine(hiddenCategoryIds) { list, hidden -> list.filter { it.categoryId !in hidden } }
        .combine(selectedCategoryId) { list, catId ->
            if (catId.isNullOrBlank()) list else list.filter { it.categoryId == catId }
        }
        .combine(query) { list, q ->
            if (q.isBlank()) list else list.filter { it.name.contains(q, true) }
        }
        .combine(sort) { list, sortBy ->
            when (sortBy) {
                Sort.NAME -> list.sortedBy { it.name.lowercase() }
                Sort.RATING -> list.sortedByDescending { it.rating5Based }
                Sort.YEAR -> list.sortedByDescending { yearFromEpoch(it.addedEpochSeconds) }
                Sort.ADDED -> list.sortedByDescending { it.addedEpochSeconds }
            }
        }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun refresh() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            if (!movieRepository.hasCachedMovies(server.id)) {
                movieRepository.refresh(server)
            }
            runCatching { movieRepository.fetchCategoryNames(server) }
                .getOrNull()?.let { categoryNames.value = it }
        }
    }

    fun setQuery(value: String) { query.value = value }
    fun setSort(sortBy: Sort) { sort.value = sortBy }
    fun selectCategory(id: String?) { selectedCategoryId.value = id?.takeIf { it.isNotBlank() } }
    fun hideCategory(id: String) {
        prefs.hideMovieCategory(id)
        hiddenCategoryIds.value = prefs.getHiddenMovieCategoryIds()
        if (selectedCategoryId.value == id) selectedCategoryId.value = null
    }

    fun reloadPreferences() {
        hiddenCategoryIds.value = prefs.getHiddenMovieCategoryIds()
    }

    private fun yearFromEpoch(epochSeconds: Long): Int {
        if (epochSeconds <= 0) return 0
        return java.util.Calendar.getInstance().apply {
            timeInMillis = epochSeconds * 1000L
        }.get(java.util.Calendar.YEAR)
    }
}
