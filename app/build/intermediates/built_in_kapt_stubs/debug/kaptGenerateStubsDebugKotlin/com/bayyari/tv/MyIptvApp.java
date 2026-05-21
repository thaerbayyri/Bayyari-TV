package com.bayyari.tv;

import android.app.Application;
import android.util.Log;
import androidx.hilt.work.HiltWorkerFactory;
import androidx.work.Configuration;
import com.bayyari.tv.data.work.RefreshScheduler;
import com.bayyari.tv.util.CrashReporter;
import dagger.hilt.android.HiltAndroidApp;
import javax.inject.Inject;

/**
 * Application entry point. Owns Hilt graph and the Hilt-aware WorkManager configuration.
 *
 * IMPORTANT: nothing in [onCreate] is allowed to crash the whole app. Each side effect (crash
 * handler install, work scheduling, telemetry) is wrapped so a failure in any one of them logs
 * and continues, instead of taking the app down before MainActivity gets a chance to render.
 */
@dagger.hilt.android.HiltAndroidApp()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u0007\u00a2\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0!H\u0082\bR\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a\u00a8\u0006#"}, d2 = {"Lcom/bayyari/tv/MyIptvApp;", "Landroid/app/Application;", "Landroidx/work/Configuration$Provider;", "<init>", "()V", "workerFactory", "Landroidx/hilt/work/HiltWorkerFactory;", "getWorkerFactory", "()Landroidx/hilt/work/HiltWorkerFactory;", "setWorkerFactory", "(Landroidx/hilt/work/HiltWorkerFactory;)V", "refreshScheduler", "Lcom/bayyari/tv/data/work/RefreshScheduler;", "getRefreshScheduler", "()Lcom/bayyari/tv/data/work/RefreshScheduler;", "setRefreshScheduler", "(Lcom/bayyari/tv/data/work/RefreshScheduler;)V", "crashReporter", "Lcom/bayyari/tv/util/CrashReporter;", "getCrashReporter", "()Lcom/bayyari/tv/util/CrashReporter;", "setCrashReporter", "(Lcom/bayyari/tv/util/CrashReporter;)V", "workManagerConfiguration", "Landroidx/work/Configuration;", "getWorkManagerConfiguration", "()Landroidx/work/Configuration;", "onCreate", "", "runSafely", "label", "", "block", "Lkotlin/Function0;", "Companion", "app"})
public final class MyIptvApp extends android.app.Application implements androidx.work.Configuration.Provider {
    @javax.inject.Inject()
    public androidx.hilt.work.HiltWorkerFactory workerFactory;
    @javax.inject.Inject()
    public com.bayyari.tv.data.work.RefreshScheduler refreshScheduler;
    @javax.inject.Inject()
    public com.bayyari.tv.util.CrashReporter crashReporter;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "BayyariApp";
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.MyIptvApp.Companion Companion = null;
    
    public MyIptvApp() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final androidx.hilt.work.HiltWorkerFactory getWorkerFactory() {
        return null;
    }
    
    public final void setWorkerFactory(@org.jetbrains.annotations.NotNull()
    androidx.hilt.work.HiltWorkerFactory p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.work.RefreshScheduler getRefreshScheduler() {
        return null;
    }
    
    public final void setRefreshScheduler(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.work.RefreshScheduler p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.CrashReporter getCrashReporter() {
        return null;
    }
    
    public final void setCrashReporter(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.CrashReporter p0) {
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.NotNull()
    public androidx.work.Configuration getWorkManagerConfiguration() {
        return null;
    }
    
    @java.lang.Override()
    public void onCreate() {
    }
    
    private final void runSafely(java.lang.String label, kotlin.jvm.functions.Function0<kotlin.Unit> block) {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"}, d2 = {"Lcom/bayyari/tv/MyIptvApp$Companion;", "", "<init>", "()V", "TAG", "", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}