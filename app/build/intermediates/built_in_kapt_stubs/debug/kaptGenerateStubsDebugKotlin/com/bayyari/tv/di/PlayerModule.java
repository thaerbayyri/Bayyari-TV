package com.bayyari.tv.di;

import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.LoadControl;
import com.bayyari.tv.util.Constants;
import com.bayyari.tv.util.EncryptedPrefs;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.components.SingletonComponent;
import javax.inject.Singleton;

@dagger.Module()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u00c7\u0002\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\b"}, d2 = {"Lcom/bayyari/tv/di/PlayerModule;", "", "<init>", "()V", "provideLoadControl", "Landroidx/media3/exoplayer/LoadControl;", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "app"})
@dagger.hilt.InstallIn(value = {dagger.hilt.components.SingletonComponent.class})
public final class PlayerModule {
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.di.PlayerModule INSTANCE = null;
    
    private PlayerModule() {
        super();
    }
    
    @dagger.Provides()
    @javax.inject.Singleton()
    @org.jetbrains.annotations.NotNull()
    public final androidx.media3.exoplayer.LoadControl provideLoadControl(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs prefs) {
        return null;
    }
}