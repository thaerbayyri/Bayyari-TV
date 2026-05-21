package com.bayyari.tv.domain.usecase

import com.bayyari.tv.util.UiState
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertTrue
import org.junit.Test
import org.mockito.kotlin.mock

class LoginUseCaseTest {

    @Test
    fun missing_credentials_returns_error() = runBlocking {
        val useCase = LoginUseCase(mock())
        val state = useCase("", "", "", "Label", true)
        assertTrue(state is UiState.Error)
    }
}
