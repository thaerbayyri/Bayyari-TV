package com.bayyari.tv.ui.catchup;

import androidx.lifecycle.ViewModel;
import com.bayyari.tv.domain.model.EpgProgram;
import com.bayyari.tv.domain.usecase.GetCatchUpUseCase;
import com.bayyari.tv.util.UiState;
import dagger.hilt.android.lifecycle.HiltViewModel;
import kotlinx.coroutines.flow.StateFlow;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b0\f\u00a2\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\u00a8\u0006\u0013"}, d2 = {"Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;", "Landroidx/lifecycle/ViewModel;", "getCatchUpUseCase", "Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;", "<init>", "(Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/bayyari/tv/util/UiState;", "", "Lcom/bayyari/tv/domain/model/EpgProgram;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "load", "", "streamId", "", "app"})
@dagger.hilt.android.lifecycle.HiltViewModel()
public final class CatchUpViewModel extends androidx.lifecycle.ViewModel {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.domain.usecase.GetCatchUpUseCase getCatchUpUseCase = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.util.UiState<java.util.List<com.bayyari.tv.domain.model.EpgProgram>>> _state = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.util.UiState<java.util.List<com.bayyari.tv.domain.model.EpgProgram>>> state = null;
    
    @javax.inject.Inject()
    public CatchUpViewModel(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.usecase.GetCatchUpUseCase getCatchUpUseCase) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.StateFlow<com.bayyari.tv.util.UiState<java.util.List<com.bayyari.tv.domain.model.EpgProgram>>> getState() {
        return null;
    }
    
    public final void load(int streamId) {
    }
}