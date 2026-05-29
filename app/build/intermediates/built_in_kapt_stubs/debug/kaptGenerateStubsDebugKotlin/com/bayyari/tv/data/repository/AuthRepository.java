package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.api.models.LoginResponse;
import com.bayyari.tv.domain.model.Server;
import com.bayyari.tv.util.EncryptedPrefs;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import java.io.IOException;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.inject.Inject;
import javax.inject.Singleton;
import android.util.Log;

@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\fJ>\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\n0\u001fJ\b\u0010 \u001a\u0004\u0018\u00010\nJ\u000e\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#J\u000e\u0010%\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010&\u001a\u00020\u0015J\u0018\u0010\'\u001a\u00020\n2\u0006\u0010(\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0018\u0010)\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010*\u001a\u00020+H\u0002J\f\u0010,\u001a\u00020\u0015*\u00020+H\u0002J\u000e\u0010-\u001a\u0004\u0018\u00010\u0010*\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."}, d2 = {"Lcom/bayyari/tv/data/repository/AuthRepository;", "", "api", "Lcom/bayyari/tv/data/api/XtreamApiService;", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "<init>", "(Lcom/bayyari/tv/data/api/XtreamApiService;Lcom/bayyari/tv/util/EncryptedPrefs;)V", "_activeServer", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/bayyari/tv/domain/model/Server;", "activeServerFlow", "Lkotlinx/coroutines/flow/Flow;", "login", "Lkotlin/Result;", "serverUrl", "", "username", "password", "label", "remember", "", "login-hUnOzRk", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkAuthResponse", "", "response", "Lcom/bayyari/tv/data/api/models/LoginResponse;", "normalizeUrl", "input", "getServers", "", "getActiveServer", "setActiveServer", "id", "", "removeServer", "rememberLogin", "isRememberLogin", "mergeLoginInfo", "server", "shouldRetryAsHttp", "throwable", "", "isLikelyTlsMismatch", "downgradedToHttpOrNull", "app"})
public final class AuthRepository {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.api.XtreamApiService api = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.EncryptedPrefs prefs = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlinx.coroutines.flow.MutableStateFlow<com.bayyari.tv.domain.model.Server> _activeServer = null;
    
    @javax.inject.Inject()
    public AuthRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.api.XtreamApiService api, @org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs prefs) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<com.bayyari.tv.domain.model.Server> activeServerFlow() {
        return null;
    }
    
    private final void checkAuthResponse(com.bayyari.tv.data.api.models.LoginResponse response) {
    }
    
    private final java.lang.String normalizeUrl(java.lang.String input) {
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
    
    private final boolean shouldRetryAsHttp(java.lang.String serverUrl, java.lang.Throwable throwable) {
        return false;
    }
    
    private final boolean isLikelyTlsMismatch(java.lang.Throwable $this$isLikelyTlsMismatch) {
        return false;
    }
    
    private final java.lang.String downgradedToHttpOrNull(java.lang.String $this$downgradedToHttpOrNull) {
        return null;
    }
}