package com.bayyari.tv.util;

import android.content.Context;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlinx.coroutines.flow.Flow;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

@kotlin.Metadata(mv = {2, 2, 0}, k = 2, xi = 48, d1 = {"\u0000N\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0007\u001a\n\u0010\b\u001a\u00020\u0001*\u00020\u0007\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0007\u001a\u0012\u0010\n\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f\u001aG\u0010\r\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u000e*\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u00112\"\u0010\u0012\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0013\u00a2\u0006\u0002\u0010\u0016\u001a\n\u0010\u0017\u001a\u00020\u0018*\u00020\u0019\u001a\n\u0010\u001a\u001a\u00020\u0018*\u00020\u0019\u001a\f\u0010\u001b\u001a\u00020\u0018*\u0004\u0018\u00010\u0018\u001a\n\u0010\u001c\u001a\u00020\u0018*\u00020\u0018\u00a8\u0006\u001d"}, d2 = {"toast", "", "Landroid/content/Context;", "message", "", "Landroidx/fragment/app/Fragment;", "visible", "Landroid/view/View;", "gone", "invisible", "visibleIf", "condition", "", "collectStarted", "T", "Landroidx/lifecycle/LifecycleOwner;", "flow", "Lkotlinx/coroutines/flow/Flow;", "collector", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V", "formatAsClock", "", "", "toEpgTime", "orDash", "ensureTrailingSlash", "app"})
public final class ExtensionsKt {
    
    public static final void toast(@org.jetbrains.annotations.NotNull()
    android.content.Context $this$toast, @org.jetbrains.annotations.NotNull()
    java.lang.CharSequence message) {
    }
    
    public static final void toast(@org.jetbrains.annotations.NotNull()
    androidx.fragment.app.Fragment $this$toast, @org.jetbrains.annotations.NotNull()
    java.lang.CharSequence message) {
    }
    
    public static final void visible(@org.jetbrains.annotations.NotNull()
    android.view.View $this$visible) {
    }
    
    public static final void gone(@org.jetbrains.annotations.NotNull()
    android.view.View $this$gone) {
    }
    
    public static final void invisible(@org.jetbrains.annotations.NotNull()
    android.view.View $this$invisible) {
    }
    
    public static final void visibleIf(@org.jetbrains.annotations.NotNull()
    android.view.View $this$visibleIf, boolean condition) {
    }
    
    public static final <T extends java.lang.Object>void collectStarted(@org.jetbrains.annotations.NotNull()
    androidx.lifecycle.LifecycleOwner $this$collectStarted, @org.jetbrains.annotations.NotNull()
    kotlinx.coroutines.flow.Flow<? extends T> flow, @org.jetbrains.annotations.NotNull()
    kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> collector) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String formatAsClock(long $this$formatAsClock) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String toEpgTime(long $this$toEpgTime) {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String orDash(@org.jetbrains.annotations.Nullable()
    java.lang.String $this$orDash) {
        return null;
    }
    
    /**
     * Append a trailing slash if missing. Server URL stored in user input may or may not have one.
     */
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String ensureTrailingSlash(@org.jetbrains.annotations.NotNull()
    java.lang.String $this$ensureTrailingSlash) {
        return null;
    }
}