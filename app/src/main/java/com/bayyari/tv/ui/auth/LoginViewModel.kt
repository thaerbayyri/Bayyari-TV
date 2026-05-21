package com.bayyari.tv.ui.auth

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.domain.usecase.LoginUseCase
import com.bayyari.tv.util.UiState
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class LoginViewModel @Inject constructor(
    private val loginUseCase: LoginUseCase
) : ViewModel() {

    private val _state = MutableStateFlow<UiState<Server>>(UiState.Empty)
    val state: StateFlow<UiState<Server>> = _state

    fun login(serverUrl: String, username: String, password: String, label: String, remember: Boolean) {
        viewModelScope.launch {
            _state.value = UiState.Loading
            _state.value = loginUseCase(serverUrl, username, password, label, remember)
        }
    }
}
