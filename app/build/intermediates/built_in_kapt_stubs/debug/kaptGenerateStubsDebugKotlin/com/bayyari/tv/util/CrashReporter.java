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

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H&J\b\u0010\u000b\u001a\u00020\u0003H&\u00a8\u0006\f\u00c0\u0006\u0003"}, d2 = {"Lcom/bayyari/tv/util/CrashReporter;", "", "log", "", "message", "", "recordException", "throwable", "", "setUserId", "userId", "install", "app"})
public abstract interface CrashReporter {
    
    public abstract void log(@org.jetbrains.annotations.NotNull()
    java.lang.String message);
    
    public abstract void recordException(@org.jetbrains.annotations.NotNull()
    java.lang.Throwable throwable);
    
    public abstract void setUserId(@org.jetbrains.annotations.NotNull()
    java.lang.String userId);
    
    /**
     * Install a JVM uncaught-exception handler that funnels through this reporter.
     */
    public abstract void install();
}