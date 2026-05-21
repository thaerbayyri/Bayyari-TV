package com.bayyari.tv.util;

import android.content.Context;
import android.util.Log;
import dagger.hilt.android.qualifiers.ApplicationContext;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * File-backed crash reporter. Writes log lines and stack traces to
 * `<filesDir>/bayyari_crash.log` so we can diagnose runtime crashes from a device that isn't
 * connected to ADB. The file is plain text, capped at ~256 KB (rotated by truncation), and can be
 * pulled via `adb pull /data/data/com.bayyari.tv.debug/files/bayyari_crash.log` or surfaced in the
 * Settings screen later.
 */
@javax.inject.Singleton()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0013\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rH\u0016J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\rH\u0016J\b\u0010\u0018\u001a\u00020\u0011H\u0016J\b\u0010\u0019\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0014\u0010\f\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u00a8\u0006\u001b"}, d2 = {"Lcom/bayyari/tv/util/FileCrashReporter;", "Lcom/bayyari/tv/util/CrashReporter;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "logFile", "Ljava/io/File;", "getLogFile", "()Ljava/io/File;", "logFile$delegate", "Lkotlin/Lazy;", "timestamp", "", "getTimestamp", "()Ljava/lang/String;", "log", "", "message", "recordException", "throwable", "", "setUserId", "userId", "install", "rotateIfTooBig", "Companion", "app"})
public final class FileCrashReporter implements com.bayyari.tv.util.CrashReporter {
    @org.jetbrains.annotations.NotNull()
    private final android.content.Context context = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy logFile$delegate = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "BayyariCrash";
    private static final long MAX_BYTES = 262144L;
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.util.FileCrashReporter.Companion Companion = null;
    
    @javax.inject.Inject()
    public FileCrashReporter(@dagger.hilt.android.qualifiers.ApplicationContext()
    @org.jetbrains.annotations.NotNull()
    android.content.Context context) {
        super();
    }
    
    private final java.io.File getLogFile() {
        return null;
    }
    
    private final java.lang.String getTimestamp() {
        return null;
    }
    
    @java.lang.Override()
    public void log(@org.jetbrains.annotations.NotNull()
    java.lang.String message) {
    }
    
    @java.lang.Override()
    public void recordException(@org.jetbrains.annotations.NotNull()
    java.lang.Throwable throwable) {
    }
    
    @java.lang.Override()
    public void setUserId(@org.jetbrains.annotations.NotNull()
    java.lang.String userId) {
    }
    
    @java.lang.Override()
    public void install() {
    }
    
    private final void rotateIfTooBig() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\b"}, d2 = {"Lcom/bayyari/tv/util/FileCrashReporter$Companion;", "", "<init>", "()V", "TAG", "", "MAX_BYTES", "", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}