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
import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * Encrypted credential store. Wraps EncryptedSharedPreferences (AES256_SIV / AES256_GCM) backed by
 * an Android Keystore master key. Stores a JSON list of [Server] configurations plus a pointer
 * to the active one.
 *
 * If the Android Keystore is unavailable (some custom ROMs, certain emulators, or a corrupted
 * keystore after a backup/restore), [EncryptedSharedPreferences.create] throws and would crash the
 * whole app on launch. We fall back to a plain SharedPreferences in that case — credentials are
 * still stored on the device, just not at-rest encrypted. This is a deliberate trade-off so the
 * app remains usable.
 */
@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u001b\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ\u0014\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018J\b\u0010\u001b\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010\u001f\u001a\u00020\u001eJ\u000e\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"J\u000e\u0010$\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"J\u0006\u0010%\u001a\u00020\"J\u000e\u0010&\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0018J\u0006\u0010\'\u001a\u00020\u0018J\u000e\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u001eJ\u0006\u0010*\u001a\u00020\u001eJ\u000e\u0010+\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\"J\u0006\u0010-\u001a\u00020\"J\u000e\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u0018J\u0006\u00100\u001a\u00020\u0018J\u0006\u00101\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"}, d2 = {"Lcom/bayyari/tv/util/EncryptedPrefs;", "", "context", "Landroid/content/Context;", "gson", "Lcom/google/gson/Gson;", "<init>", "(Landroid/content/Context;Lcom/google/gson/Gson;)V", "prefs", "Landroid/content/SharedPreferences;", "createPrefs", "listType", "Ljava/lang/reflect/Type;", "kotlin.jvm.PlatformType", "getServers", "", "Lcom/bayyari/tv/domain/model/Server;", "saveServers", "", "servers", "upsertServer", "server", "removeServer", "id", "", "getActiveServerId", "setActiveServerId", "getActiveServer", "setRememberLogin", "remember", "", "isRememberLogin", "setDefaultPlayer", "value", "", "getDefaultPlayer", "setStreamFormat", "getStreamFormat", "setBufferSizeMs", "getBufferSizeMs", "setAutoPlayNext", "enabled", "getAutoPlayNext", "setParentalPin", "pin", "getParentalPin", "setLastChannelId", "streamId", "getLastChannelId", "clearAll", "Companion", "app"})
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
    
    @org.jetbrains.annotations.NotNull()
    public final java.lang.String getParentalPin() {
        return null;
    }
    
    public final void setLastChannelId(int streamId) {
    }
    
    public final int getLastChannelId() {
        return 0;
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