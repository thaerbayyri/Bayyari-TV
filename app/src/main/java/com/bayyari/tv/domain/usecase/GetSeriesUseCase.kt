package com.bayyari.tv.domain.usecase

import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Series
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject

class GetSeriesUseCase @Inject constructor(
    private val seriesRepository: SeriesRepository
) {
    operator fun invoke(serverId: Int, categoryId: String?): Flow<List<Series>> =
        seriesRepository.observeSeries(serverId, categoryId)
}
