package com.bayyari.tv.domain.usecase

import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.domain.model.Movie
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject

class GetMoviesUseCase @Inject constructor(
    private val movieRepository: MovieRepository
) {
    operator fun invoke(serverId: Int, categoryId: String?): Flow<List<Movie>> =
        movieRepository.observeMovies(serverId, categoryId)
}
