package com.bayyari.tv.data.api;

import com.bayyari.tv.util.EncryptedPrefs;
import okhttp3.Interceptor;
import okhttp3.Response;
import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * Rewrites the request URL to point at the currently active server stored in [EncryptedPrefs].
 *
 * Retrofit is configured with a placeholder base URL (`http://placeholder.local/`); this
 * interceptor swaps scheme + host + port + base path with the active server's URL on each call,
 * so a single Retrofit instance can serve multiple Xtream backends without re-creating it.
 */
@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"}, d2 = {"Lcom/bayyari/tv/data/api/DynamicHostInterceptor;", "Lokhttp3/Interceptor;", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "<init>", "(Lcom/bayyari/tv/util/EncryptedPrefs;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "app"})
public final class DynamicHostInterceptor implements okhttp3.Interceptor {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.util.EncryptedPrefs prefs = null;
    
    @javax.inject.Inject()
    public DynamicHostInterceptor(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs prefs) {
        super();
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.NotNull()
    public okhttp3.Response intercept(@org.jetbrains.annotations.NotNull()
    okhttp3.Interceptor.Chain chain) {
        return null;
    }
}