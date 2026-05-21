package com.bayyari.tv.domain.usecase

import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.EpgRepository
import com.bayyari.tv.domain.model.EpgProgram
import com.bayyari.tv.util.UiState
import javax.inject.Inject

class GetCatchUpUseCase @Inject constructor(
    private val authRepository: AuthRepository,
    private val epgRepository: EpgRepository
) {
    suspend operator fun invoke(streamId: Int): UiState<List<EpgProgram>> {
        val server = authRepository.getActiveServer() ?: return UiState.Error("No active server")
        return runCatching { epgRepository.getCatchUp(server, streamId) }
            .fold(
                onSuccess = { if (it.isEmpty()) UiState.Empty else UiState.Success(it) },
                onFailure = { UiState.Error(it.message ?: "Failed to load catch-up") }
            )
    }
}
