package com.bayyari.tv.domain.usecase;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.domain.model.Server;
import com.bayyari.tv.util.UiState;
import retrofit2.HttpException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J<\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086B\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"}, d2 = {"Lcom/bayyari/tv/domain/usecase/LoginUseCase;", "", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "<init>", "(Lcom/bayyari/tv/data/repository/AuthRepository;)V", "invoke", "Lcom/bayyari/tv/util/UiState;", "Lcom/bayyari/tv/domain/model/Server;", "serverUrl", "", "username", "password", "label", "remember", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"})
public final class LoginUseCase {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.AuthRepository authRepository = null;
    
    @javax.inject.Inject()
    public LoginUseCase(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository authRepository) {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull()
    java.lang.String serverUrl, @org.jetbrains.annotations.NotNull()
    java.lang.String username, @org.jetbrains.annotations.NotNull()
    java.lang.String password, @org.jetbrains.annotations.NotNull()
    java.lang.String label, boolean remember, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.util.UiState<com.bayyari.tv.domain.model.Server>> $completion) {
        return null;
    }
}