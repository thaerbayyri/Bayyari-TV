package com.bayyari.tv.domain.usecase

import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.UiState
import javax.inject.Inject

class LoginUseCase @Inject constructor(
    private val authRepository: AuthRepository
) {
    suspend operator fun invoke(
        serverUrl: String,
        username: String,
        password: String,
        label: String,
        remember: Boolean
    ): UiState<Server> {
        if (serverUrl.isBlank() || username.isBlank() || password.isBlank()) {
            return UiState.Error("Missing credentials")
        }
        return authRepository.login(serverUrl, username, password, label, remember)
            .fold(
                onSuccess = { UiState.Success(it) },
                onFailure = { UiState.Error(it.message ?: "Login failed") }
            )
    }
}
