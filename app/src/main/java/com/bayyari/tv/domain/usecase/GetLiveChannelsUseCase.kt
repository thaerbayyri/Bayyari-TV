package com.bayyari.tv.domain.usecase

import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.domain.model.Channel
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject

class GetLiveChannelsUseCase @Inject constructor(
    private val liveRepository: LiveRepository
) {
    operator fun invoke(serverId: Int, categoryId: String?): Flow<List<Channel>> =
        liveRepository.observeChannels(serverId, categoryId)
}
