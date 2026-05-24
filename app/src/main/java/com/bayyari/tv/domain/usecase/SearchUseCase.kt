package com.bayyari.tv.domain.usecase

import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import javax.inject.Inject

class SearchUseCase @Inject constructor(
    private val liveRepository: LiveRepository,
    private val movieRepository: MovieRepository,
    private val seriesRepository: SeriesRepository
) {
    suspend fun searchAll(serverId: Int, query: String): Triple<List<Channel>, List<Movie>, List<Series>> =
        coroutineScope {
            val live = async { liveRepository.search(serverId, query) }
            val movies = async { movieRepository.search(serverId, query) }
            val series = async { seriesRepository.search(serverId, query) }
            Triple(live.await(), movies.await(), series.await())
        }
}
