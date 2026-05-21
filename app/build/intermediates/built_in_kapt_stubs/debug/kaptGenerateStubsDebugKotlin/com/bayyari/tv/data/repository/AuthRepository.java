package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.api.models.LoginResponse;
import com.bayyari.tv.domain.model.Server;
import com.bayyari.tv.util.EncryptedPrefs;
import kotlinx.coroutines.Dispatchers;
import javax.inject.Inject;
import javax.inject.Singleton;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J>\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0004\b\u0012\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\fH\u0086@\u00a2\u0006\u0002\u0010\u0016J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\u0018J\b\u0010\u0019\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010 \u001a\u00020\u0011J\u0018\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020$H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"}, d2 = {"Lcom/bayyari/tv/data/repository/AuthRepository;", "", "api", "Lcom/bayyari/tv/data/api/XtreamApiService;", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "<init>", "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/util/EncryptedPrefs;)V", "login", "Lkotlin/Result;", "Lcom/bayyari/tv/domain/model/Server;", "serverUrl", "", "username", "password", "label", "remember", "", "login-hUnOzRk", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addM3uServer", "url", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getServers", "", "getActiveServer", "setActiveServer", "", "id", "", "removeServer", "rememberLogin", "isRememberLogin", "mergeLoginInfo", "server", "response", "Lcom/bayyari/tv/data/api/models/LoginResponse;", "app"})
public final class AuthRepository {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.api.XtreamApiService api = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.EncryptedPrefs prefs = null;
    
    @javax.inject.Inject()
    public AuthRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.api.XtreamApiService api, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs prefs) {
        super();
    }
    
    @org.jetbrains.annotations.Nullable()
    public final java.lang.Object addM3uServer(@org.jetbrains.annotations.NotNull()
    java.lang.String label, @org.jetbrains.annotations.NotNull()
    java.lang.String url, @org.jetbrains.annotations.NotNull()
    kotlin.coroutines.Continuation<? super com.bayyari.tv.domain.model.Server> $completion) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.util.List<com.bayyari.tv.domain.model.Server> getServers() {
        return null;
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.bayyari.tv.domain.model.Server getActiveServer() {
        return null;
    }
    
    public final void setActiveServer(int id) {
    }
    
    public final void removeServer(int id) {
    }
    
    public final void rememberLogin(boolean remember) {
    }
    
    public final boolean isRememberLogin() {
        return false;
    }
    
    private final com.bayyari.tv.domain.model.Server mergeLoginInfo(com.bayyari.tv.domain.model.Server server, com.bayyari.tv.data.api.models.LoginResponse response) {
        return null;
    }
}