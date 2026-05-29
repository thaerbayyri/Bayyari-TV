package com.bayyari.tv.ui.live

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import android.util.Log
import com.bayyari.tv.data.local.dao.FavoriteDao
import com.bayyari.tv.data.local.entities.FavoriteEntity
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.domain.model.Category
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.util.EncryptedPrefs
import com.bayyari.tv.util.StreamUrlBuilder
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)
@HiltViewModel
class LiveViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val liveRepository: LiveRepository,
    private val favoriteDao: FavoriteDao,
    private val prefs: EncryptedPrefs,
    private val streamUrlBuilder: StreamUrlBuilder
) : ViewModel() {

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)
    val selectedCategoryId = MutableStateFlow<String?>(null)
    private val query = MutableStateFlow("")
    private val hiddenCategoryIds = MutableStateFlow(prefsHiddenCategories())
    private val sortMode = MutableStateFlow(LiveSortMode.fromPref(prefsLiveSortMode()))

    private val allChannels = serverId.flatMapLatest { id ->
        if (id == 0) flowOf(emptyList()) else liveRepository.observeChannels(id, null)
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    val categories = allChannels.combine(hiddenCategoryIds) { list, hidden ->
        val visible = list
            .filter { it.categoryId !in hidden }
            .filter { !LiveChannelFilters.isDefaultHidden(it.categoryName) }
        val grouped = visible.groupBy { it.categoryId to it.categoryName }
            .entries
            .sortedBy { it.key.second.ifBlank { it.key.first } }
            .map { (key, items) ->
                val (id, name) = key
                Category(id = id, name = name.ifBlank { id }, kind = "live", count = items.size)
            }
        listOf(Category("", "All", "live", visible.size)) + grouped
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    val channels = allChannels
        .combine(selectedCategoryId) { list, catId -> list to catId }
        .combine(query) { (list, catId), q -> Triple(list, catId, q) }
        .combine(hiddenCategoryIds) { (list, catId, q), hidden -> list to Triple(catId, q, hidden) }
        .combine(sortMode) { (list, filters), sort ->
            val (catId, q, hidden) = filters
            LiveChannelFilters.apply(list, catId, q, hidden, sort)
        }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun refresh() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            liveRepository.refreshIfStale(server)
        }
    }

    fun selectCategory(categoryId: String?) {
        selectedCategoryId.value = categoryId?.takeIf { it.isNotBlank() }
    }

    fun setQuery(value: String) {
        query.value = value
    }

    fun setSortMode(value: LiveSortMode) {
        sortMode.value = value
        prefs.setLiveSortMode(value.prefValue)
    }

    fun getSortMode(): LiveSortMode = sortMode.value

    fun hideCategory(categoryId: String) {
        if (categoryId.isBlank()) return
        prefs.hideLiveCategory(categoryId)
        hiddenCategoryIds.value = prefsHiddenCategories()
        if (selectedCategoryId.value == categoryId) {
            selectedCategoryId.value = null
        }
    }

    fun reloadPreferences() {
        hiddenCategoryIds.value = prefsHiddenCategories()
        sortMode.value = LiveSortMode.fromPref(prefsLiveSortMode())
    }

    fun buildLiveUrl(channel: Channel, format: String): String {
        channel.directStreamUrl?.takeIf { it.isNotBlank() }?.let { return it }
        val server = authRepository.getActiveServer() ?: return ""
        val liveFormat = if (format == "ts") StreamUrlBuilder.LiveFormat.TS else StreamUrlBuilder.LiveFormat.HLS
        return streamUrlBuilder.live(server.normalizedUrl, server.username, server.password, channel.streamId, liveFormat)
    }

    fun addFavorite(streamId: Int) {
        val id = serverId.value.takeIf { it != 0 } ?: return
        viewModelScope.launch {
            runCatching {
                favoriteDao.upsert(
                    FavoriteEntity(
                        contentId = streamId,
                        contentType = "live",
                        serverId = id,
                        addedAt = System.currentTimeMillis()
                    )
                )
            }.onFailure { Log.e("LiveViewModel", "addFavorite failed", it) }
        }
    }

    private fun prefsHiddenCategories(): Set<String> = prefs.getHiddenLiveCategoryIds()

    private fun prefsLiveSortMode(): String = prefs.getLiveSortMode()
}
