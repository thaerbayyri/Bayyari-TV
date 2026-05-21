package com.bayyari.tv.ui.series

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Episode
import com.bayyari.tv.domain.model.Season
import com.bayyari.tv.domain.model.Series
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SeriesDetailViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val seriesRepository: SeriesRepository
) : ViewModel() {

    private val _series = MutableStateFlow<Series?>(null)
    val series: StateFlow<Series?> = _series

    private val _seasons = MutableStateFlow<List<Season>>(emptyList())
    val seasons: StateFlow<List<Season>> = _seasons

    private val _episodesBySeason = MutableStateFlow<Map<Int, List<Episode>>>(emptyMap())
    val episodesBySeason: StateFlow<Map<Int, List<Episode>>> = _episodesBySeason

    fun load(seriesId: Int) {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            _series.value = seriesRepository.getSeries(server.id, seriesId)
            val info = seriesRepository.getSeriesInfo(server, seriesId)
            val seasons = info.seasons.orEmpty().map {
                Season(
                    seasonNumber = it.seasonNumber ?: 0,
                    name = it.name.orEmpty(),
                    episodeCount = it.episodeCount ?: 0,
                    cover = it.cover.orEmpty()
                )
            }
            _seasons.value = seasons
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
                            poster = ep.info?.movieImage.orEmpty()
                        )
                    }
                }
            _episodesBySeason.value = episodes
        }
    }
}
