package com.bayyari.tv.domain.usecase

import com.bayyari.tv.util.UiState
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertTrue
import org.junit.Test
import org.mockito.kotlin.mock
import org.mockito.kotlin.whenever
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.domain.model.Server

class LoginUseCaseSuccessTest {

    @Test
    fun valid_credentials_returns_success() = runBlocking {
        val repo = mock<AuthRepository>()
        whenever(repo.login("http://example.com", "u", "p", "Label", true))
            .thenReturn(Result.success(Server(label = "Label", url = "http://example.com", username = "u", password = "p")))
        val useCase = LoginUseCase(repo)
        val state = useCase("http://example.com", "u", "p", "Label", true)
        assertTrue(state is UiState.Success)
    }
}
