package com.bayyari.tv.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.security.crypto.EncryptedSharedPreferences;
import androidx.security.crypto.MasterKey;
import com.bayyari.tv.domain.model.Server;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.security.MessageDigest;
import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * Encrypted credential store. Wraps EncryptedSharedPreferences (AES256_SIV / AES256_GCM) backed by
 * an Android Keystore master key. Stores a JSON list of [Server] configurations plus a pointer
 * to the active one.
 *
 * If the Keystore is corrupt, we delete the stale prefs file and retry once. A second failure
 * throws so the caller (Hilt app init) crashes visibly rather than silently persisting
 * credentials in plaintext.
 */
@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\"\n\u0002\b\u000e\b\u0007\u0018\u0000 I2\u00020\u0001:\u0001IB\u001b\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u0016J\u0014\u0010\u0017\u001a\u00020\u00142\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00100\u0016J\u000e\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0010J\u000e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0012J\u0006\u0010\u001d\u001a\u00020\u0012J\u000e\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0012J\b\u0010\u001f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"J\u000e\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020&J\u000e\u0010(\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&J\u0006\u0010)\u001a\u00020&J\u000e\u0010*\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u0012J\u0006\u0010+\u001a\u00020\u0012J\u000e\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\"J\u0006\u0010.\u001a\u00020\"J\u000e\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u00020&J\u000e\u00101\u001a\u00020\"2\u0006\u00102\u001a\u00020&J\u0006\u00103\u001a\u00020\"J\u0010\u00104\u001a\u00020&2\u0006\u00105\u001a\u00020&H\u0002J\u000e\u00106\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u0012J\u0006\u00108\u001a\u00020\u0012J\u000e\u00109\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&J\u0006\u0010:\u001a\u00020&J\f\u0010;\u001a\b\u0012\u0004\u0012\u00020&0<J\f\u0010=\u001a\b\u0012\u0004\u0012\u00020&0<J\f\u0010>\u001a\b\u0012\u0004\u0012\u00020&0<J\u000e\u0010?\u001a\u00020\u00142\u0006\u0010@\u001a\u00020&J\u000e\u0010A\u001a\u00020\u00142\u0006\u0010@\u001a\u00020&J\u000e\u0010B\u001a\u00020\u00142\u0006\u0010@\u001a\u00020&J\u0006\u0010C\u001a\u00020\u0014J\u000e\u0010D\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&J\u0006\u0010E\u001a\u00020&J\u0018\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u00020&2\u0006\u0010@\u001a\u00020&H\u0002J\u0006\u0010H\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n \u000e*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"}, d2 = {"Lcom/bayyari/tv/util/EncryptedPrefs;", "", "context", "Landroid/content/Context;", "gson", "Lcom/google/gson/Gson;", "<init>", "(Landroid/content/Context;Lcom/google/gson/Gson;)V", "prefs", "Landroid/content/SharedPreferences;", "createPrefs", "buildEncryptedPrefs", "listType", "Ljava/lang/reflect/Type;", "kotlin.jvm.PlatformType", "serverCache", "Lcom/bayyari/tv/domain/model/Server;", "serverCacheId", "", "invalidateServerCache", "", "getServers", "", "saveServers", "servers", "upsertServer", "server", "removeServer", "id", "getActiveServerId", "setActiveServerId", "getActiveServer", "setRememberLogin", "remember", "", "isRememberLogin", "setDefaultPlayer", "value", "", "getDefaultPlayer", "setStreamFormat", "getStreamFormat", "setBufferSizeMs", "getBufferSizeMs", "setAutoPlayNext", "enabled", "getAutoPlayNext", "setParentalPin", "pin", "verifyParentalPin", "entered", "hasParentalPin", "sha256", "input", "setLastChannelId", "streamId", "getLastChannelId", "setLiveSortMode", "getLiveSortMode", "getHiddenLiveCategoryIds", "", "getHiddenMovieCategoryIds", "getHiddenSeriesCategoryIds", "hideLiveCategory", "categoryId", "hideMovieCategory", "hideSeriesCategory", "clearHiddenLiveCategories", "setSeriesSortMode", "getSeriesSortMode", "hideCategory", "key", "clearAll", "Companion", "app"})
public final class EncryptedPrefs {
    @org.jetbrains.annotations.NotNull()
    private final android.content.Context context = null;
    @org.jetbrains.annotations.NotNull()
    private final com.google.gson.Gson gson = null;
    @org.jetbrains.annotations.NotNull()
    private final android.content.SharedPreferences prefs = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "EncryptedPrefs";
    private final java.lang.reflect.Type listType = null;
    @kotlin.jvm.Volatile()
    @org.jetbrains.annotations.Nullable()
    private volatile com.bayyari.tv.domain.model.Server serverCache;
    @kotlin.jvm.Volatile()
    private volatile int serverCacheId = -2147483648;
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.util.EncryptedPrefs.Companion Companion = null;
    
    @javax.inject.Inject()
    public EncryptedPrefs(@dagger.hilt.android.qualifiers.ApplicationContext()
    @org.jetbrains.annotations.NotNull()
    android.content.Context context, @org.jetbrains.annotations.NotNull()
    com.google.gson.Gson gson) {
        super();
    }
    
    private final android.content.SharedPreferences createPrefs(android.content.Context context) {
        return null;
    }
    
    private final android.content.SharedPreferences buildEncryptedPrefs(android.content.Context context) {
        return null;
    }
    
    private final void invalidateServerCache() {
    }
    
    @kotlin.jvm.Synchronized()
    @org.jetbrains.annotations.NotNull()
    public final synchronized java.util.List<com.bayyari.tv.domain.model.Server> getServers() {
        return null;
    }
    
    @kotlin.jvm.Synchronized()
    public final synchronized void saveServers(@org.jetbrains.annotations.NotNull()
    java.util.List<com.bayyari.tv.domain.model.Server> servers) {
    }
    
    @kotlin.jvm.Synchronized()
    @org.jetbrains.annotations.NotNull()
    public final synchronized com.bayyari.tv.domain.model.Server upsertServer(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.domain.model.Server server) {
        return null;
    }
    
    @kotlin.jvm.Synchronized()
    public final synchronized void removeServer(int id) {
    }
    
    public final int getActiveServerId() {
        return 0;
    }
    
    public final void setActiveServerId(int id) {
    }
    
    @org.jetbrains.annotations.Nullable()
    public final com.bayyari.tv.domain.model.Server getActiveServer() {
        return null;
    }
    
    public final void setRememberLogin(boolean remember) {
    }
    
    public final boolean isRememberLogin() {
        return false;
    }
    
    public final void setDefaultPlayer(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String getDefaultPlayer() {
        return null;
    }
    
    public final void setStreamFormat(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String getStreamFormat() {
        return null;
    }
    
    public final void setBufferSizeMs(int value) {
    }
    
    public final int getBufferSizeMs() {
        return 0;
    }
    
    public final void setAutoPlayNext(boolean enabled) {
    }
    
    public final boolean getAutoPlayNext() {
        return false;
    }
    
    public final void setParentalPin(@org.jetbrains.annotations.NotNull()
    java.lang.String pin) {
    }
    
    public final boolean verifyParentalPin(@org.jetbrains.annotations.NotNull()
    java.lang.String entered) {
        return false;
    }
    
    public final boolean hasParentalPin() {
        return false;
    }
    
    private final java.lang.String sha256(java.lang.String input) {
        return null;
    }
    
    public final void setLastChannelId(int streamId) {
    }
    
    public final int getLastChannelId() {
        return 0;
    }
    
    public final void setLiveSortMode(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String getLiveSortMode() {
        return null;
    }
    
    @kotlin.jvm.Synchronized()
    @org.jetbrains.annotations.NotNull()
    public final synchronized java.util.Set<java.lang.String> getHiddenLiveCategoryIds() {
        return null;
    }
    
    @kotlin.jvm.Synchronized()
    @org.jetbrains.annotations.NotNull()
    public final synchronized java.util.Set<java.lang.String> getHiddenMovieCategoryIds() {
        return null;
    }
    
    @kotlin.jvm.Synchronized()
    @org.jetbrains.annotations.NotNull()
    public final synchronized java.util.Set<java.lang.String> getHiddenSeriesCategoryIds() {
        return null;
    }
    
    @kotlin.jvm.Synchronized()
    public final synchronized void hideLiveCategory(@org.jetbrains.annotations.NotNull()
    java.lang.String categoryId) {
    }
    
    @kotlin.jvm.Synchronized()
    public final synchronized void hideMovieCategory(@org.jetbrains.annotations.NotNull()
    java.lang.String categoryId) {
    }
    
    @kotlin.jvm.Synchronized()
    public final synchronized void hideSeriesCategory(@org.jetbrains.annotations.NotNull()
    java.lang.String categoryId) {
    }
    
    @kotlin.jvm.Synchronized()
    public final synchronized void clearHiddenLiveCategories() {
    }
    
    public final void setSeriesSortMode(@org.jetbrains.annotations.NotNull()
    java.lang.String value) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String getSeriesSortMode() {
        return null;
    }
    
    private final void hideCategory(java.lang.String key, java.lang.String categoryId) {
    }
    
    public final void clearAll() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"}, d2 = {"Lcom/bayyari/tv/util/EncryptedPrefs$Companion;", "", "<init>", "()V", "TAG", "", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}