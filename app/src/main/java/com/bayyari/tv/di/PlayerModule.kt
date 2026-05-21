package com.bayyari.tv.di

import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.LoadControl
import com.bayyari.tv.util.Constants
import com.bayyari.tv.util.EncryptedPrefs
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object PlayerModule {

    @Provides
    @Singleton
    fun provideLoadControl(prefs: EncryptedPrefs): LoadControl {
        val minBuffer = prefs.getBufferSizeMs().coerceAtLeast(Constants.MIN_BUFFER_MS)
        val maxBuffer = maxOf(Constants.MAX_BUFFER_MS, minBuffer * 3)
        return DefaultLoadControl.Builder()
            .setBufferDurationsMs(
                minBuffer,
                maxBuffer,
                Constants.BUFFER_FOR_PLAYBACK_MS,
                Constants.BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS
            )
            .build()
    }
}
