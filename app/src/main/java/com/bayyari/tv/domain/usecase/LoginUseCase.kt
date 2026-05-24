package com.bayyari.tv.domain.usecase

import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.UiState
import retrofit2.HttpException
import java.net.SocketTimeoutException
import java.net.UnknownHostException
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
        if (serverUrl.isBlank()) return UiState.Error("Server URL is required")
        if (username.isBlank()) return UiState.Error("Username is required")
        if (password.isBlank()) return UiState.Error("Password is required")

        return authRepository.login(serverUrl, username, password, label, remember)
            .fold(
                onSuccess = { UiState.Success(it) },
                onFailure = { throwable ->
                    val message = when {
                        throwable is HttpException && throwable.code() == 401 ->
                            "Wrong username or password (401)"
                        throwable is HttpException && throwable.code() == 403 ->
                            "Access denied — subscription may have expired (403)"
                        throwable is HttpException && throwable.code() == 503 ->
                            "Server unavailable, try again later (503)"
                        throwable is HttpException ->
                            "Server error (${throwable.code()})"
                        throwable is UnknownHostException ->
                            "Cannot reach server — check the URL and your internet connection"
                        throwable is SocketTimeoutException ->
                            "Connection timed out — server is unreachable"
                        throwable is IllegalArgumentException ->
                            throwable.message ?: "Invalid server URL"
                        else ->
                            throwable.message?.takeIf { it.isNotBlank() }
                                ?: "Login failed — check your credentials and server URL"
                    }
                    UiState.Error(message, (throwable as? HttpException)?.code())
                }
            )
    }

}
