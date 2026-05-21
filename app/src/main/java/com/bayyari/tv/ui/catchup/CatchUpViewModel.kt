package com.bayyari.tv.ui.catchup

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.domain.model.EpgProgram
import com.bayyari.tv.domain.usecase.GetCatchUpUseCase
import com.bayyari.tv.util.UiState
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class CatchUpViewModel @Inject constructor(
    private val getCatchUpUseCase: GetCatchUpUseCase
) : ViewModel() {

    private val _state = MutableStateFlow<UiState<List<EpgProgram>>>(UiState.Empty)
    val state: StateFlow<UiState<List<EpgProgram>>> = _state

    fun load(streamId: Int) {
        viewModelScope.launch {
            _state.value = UiState.Loading
            _state.value = getCatchUpUseCase(streamId)
        }
    }
}
