package com.bayyari.tv.domain.usecase

import com.bayyari.tv.data.repository.EpgRepository
import com.bayyari.tv.domain.model.EpgProgram
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject

class GetEpgUseCase @Inject constructor(
    private val epgRepository: EpgRepository
) {
    operator fun invoke(serverId: Int, streamId: Int): Flow<List<EpgProgram>> =
        epgRepository.observeEpg(serverId, streamId)
}
