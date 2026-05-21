package com.bayyari.tv.di

import com.bayyari.tv.util.CrashReporter
import com.bayyari.tv.util.FileCrashReporter
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object CrashReporterModule {

    @Provides
    @Singleton
    fun provideCrashReporter(impl: FileCrashReporter): CrashReporter = impl
}
