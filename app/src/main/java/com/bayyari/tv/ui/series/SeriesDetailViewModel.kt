package com.bayyari.tv.ui.series

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.local.dao.FavoriteDao
import com.bayyari.tv.data.local.entities.FavoriteEntity
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Episode
import com.bayyari.tv.domain.model.Season
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.util.SubtitleTrackExtractor
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SeriesDetailViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val seriesRepository: SeriesRepository,
    private val favoriteDao: FavoriteDao
) : ViewModel() {

    private val _series = MutableStateFlow<Series?>(null)
    val series: StateFlow<Series?> = _series

    private val _seasons = MutableStateFlow<List<Season>>(emptyList())
    val seasons: StateFlow<List<Season>> = _seasons

    private val _episodesBySeason = MutableStateFlow<Map<Int, List<Episode>>>(emptyMap())
    val episodesBySeason: StateFlow<Map<Int, List<Episode>>> = _episodesBySeason

    private val _loading = MutableStateFlow(false)
    val loading: StateFlow<Boolean> = _loading

    private val _error = MutableStateFlow<String?>(null)
    val error: StateFlow<String?> = _error

    private var loadedSeriesId = 0

    fun loadIfNeeded(seriesId: Int) {
        if (seriesId == loadedSeriesId && _seasons.value.isNotEmpty()) return
        load(seriesId)
    }

    fun load(seriesId: Int) {
        if (seriesId == 0) return
        loadedSeriesId = seriesId
        _loading.value = true
        _error.value = null
        _series.value = null
        _seasons.value = emptyList()
        _episodesBySeason.value = emptyMap()
        viewModelScope.launch {
            val server = authRepository.getActiveServer()
            if (server == null) {
                _loading.value = false
                _error.value = "No active server"
                return@launch
            }
            _series.value = seriesRepository.getSeries(server.id, seriesId)

            runCatching {
                seriesRepository.getSeriesInfo(server, seriesId)
            }.onSuccess { info ->
                val episodes: Map<Int, List<Episode>> = info.episodes.orEmpty().entries
                    .associate { (seasonKey, eps) ->
                        val seasonNumber = seasonKey.toIntOrNull() ?: 0
                        seasonNumber to eps.map { ep ->
                            Episode(
                                id = ep.id?.toIntOrNull() ?: 0,
                                season = ep.season ?: seasonNumber,
                                episodeNumber = (ep.episodeNum as? Number)?.toInt()
                                    ?: (ep.episodeNum as? String)?.toIntOrNull() ?: 0,
                                title = ep.title.orEmpty(),
                                plot = ep.info?.plot.orEmpty(),
                                durationSecs = ep.info?.durationSecs ?: 0,
                                rating = ep.info?.rating.orEmpty(),
                                releaseDate = ep.info?.releaseDate.orEmpty(),
                                containerExtension = ep.containerExtension.orEmpty(),
                                poster = ep.info?.movieImage.orEmpty(),
                                subtitleTracks = SubtitleTrackExtractor.fromElements(
                                    ep.subtitles,
                                    ep.subtitle,
                                    ep.subtitleUrl,
                                    ep.info?.subtitles,
                                    ep.info?.subtitle,
                                    ep.info?.subtitleUrl
                                )
                            )
                        }.sortedBy { it.episodeNumber }
                    }
                    .filterKeys { it > 0 }
                _episodesBySeason.value = episodes

                val seasonsFromApi = info.seasons.orEmpty()
                    .mapNotNull { season ->
                        val seasonNumber = season.seasonNumber ?: return@mapNotNull null
                        if (seasonNumber <= 0) return@mapNotNull null
                        seasonNumber to Season(
                            seasonNumber = seasonNumber,
                            name = season.name.orEmpty(),
                            episodeCount = season.episodeCount ?: episodes[seasonNumber].orEmpty().size,
                            cover = season.coverBig.orEmpty().ifBlank { season.cover.orEmpty() }
                        )
                    }
                    .toMap()

                val seasonNumbers = (seasonsFromApi.keys + episodes.keys).sorted()
                _seasons.value = seasonNumbers.map { seasonNumber ->
                    seasonsFromApi[seasonNumber] ?: Season(
                        seasonNumber = seasonNumber,
                        name = "Season $seasonNumber",
                        episodeCount = episodes[seasonNumber].orEmpty().size,
                        cover = _series.value?.cover.orEmpty()
                    )
                }
            }.onFailure { e ->
                Log.e("SeriesDetailVM", "getSeriesInfo failed for seriesId=$seriesId", e)
                _error.value = "Failed to load series info: ${e.message}"
            }
            _loading.value = false
        }
    }

    fun addFavorite(seriesId: Int) {
        if (seriesId == 0) return
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            runCatching {
                favoriteDao.upsert(
                    FavoriteEntity(
                        contentId = seriesId,
                        contentType = "series",
                        serverId = server.id,
                        addedAt = System.currentTimeMillis()
                    )
                )
            }.onFailure { error ->
                Log.e("SeriesDetailVM", "addFavorite failed for seriesId=$seriesId", error)
            }
        }
    }
}
