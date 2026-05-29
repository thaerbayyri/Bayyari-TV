package com.bayyari.tv.ui;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.content.ContextCompat;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.fragment.NavHostFragment;
import com.bayyari.tv.R;
import com.bayyari.tv.databinding.ActivityMainBinding;
import com.bayyari.tv.update.StartupUpdateController;
import com.bayyari.tv.update.UpdateManager;
import com.bayyari.tv.util.Constants;
import com.bayyari.tv.util.CrashReporter;
import dagger.hilt.android.AndroidEntryPoint;
import javax.inject.Inject;

/**
 * Phone / tablet host. Custom top navbar (logo + nav chips + icons + avatar) replaces the legacy
 * BottomNavigationView. Each chip drives the [androidx.navigation.NavController] directly, and the
 * active chip is highlighted by [highlightChip] when [navController]'s destination changes.
 */
@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0014J\u0010\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\'H\u0002J\b\u0010(\u001a\u00020)H\u0002J\u0006\u0010*\u001a\u00020\"R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0016\u001a\u0010\u0012\f\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R-\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c0\u001b8BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b \u0010\u0015\u001a\u0004\b\u001e\u0010\u001f\u00a8\u0006,"}, d2 = {"Lcom/bayyari/tv/ui/MainActivity;", "Lcom/bayyari/tv/ui/BaseActivity;", "<init>", "()V", "crashReporter", "Lcom/bayyari/tv/util/CrashReporter;", "getCrashReporter", "()Lcom/bayyari/tv/util/CrashReporter;", "setCrashReporter", "(Lcom/bayyari/tv/util/CrashReporter;)V", "binding", "Lcom/bayyari/tv/databinding/ActivityMainBinding;", "navController", "Landroidx/navigation/NavController;", "updateController", "Lcom/bayyari/tv/update/StartupUpdateController;", "updateManager", "Lcom/bayyari/tv/update/UpdateManager;", "getUpdateManager", "()Lcom/bayyari/tv/update/UpdateManager;", "updateManager$delegate", "Lkotlin/Lazy;", "installPermissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "chipDestinations", "", "Lkotlin/Pair;", "", "getChipDestinations", "()Ljava/util/List;", "chipDestinations$delegate", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "highlightChip", "destination", "Landroidx/navigation/NavDestination;", "hasActiveServer", "", "checkForUpdatesForTesting", "Companion", "app"})
public final class MainActivity extends com.bayyari.tv.ui.BaseActivity {
    @javax.inject.Inject()
    public com.bayyari.tv.util.CrashReporter crashReporter;
    private com.bayyari.tv.databinding.ActivityMainBinding binding;
    private androidx.navigation.NavController navController;
    private com.bayyari.tv.update.StartupUpdateController updateController;
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy updateManager$delegate = null;
    @org.jetbrains.annotations.NotNull()
    private final androidx.activity.result.ActivityResultLauncher<android.content.Intent> installPermissionLauncher = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy chipDestinations$delegate = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "MainActivity";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_SYNC_ON_START = "extra_sync_on_start";
    @org.jetbrains.annotations.NotNull()
    public static final java.lang.String EXTRA_SHOW_WELCOME_POPUP = "extra_show_welcome_popup";
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.ui.MainActivity.Companion Companion = null;
    
    public MainActivity() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.CrashReporter getCrashReporter() {
        return null;
    }
    
    public final void setCrashReporter(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.CrashReporter p0) {
    }
    
    private final com.bayyari.tv.update.UpdateManager getUpdateManager() {
        return null;
    }
    
    private final java.util.List<kotlin.Pair<java.lang.Integer, java.lang.Integer>> getChipDestinations() {
        return null;
    }
    
    @java.lang.Override()
    protected void onCreate(@org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
    
    private final void highlightChip(androidx.navigation.NavDestination destination) {
    }
    
    private final boolean hasActiveServer() {
        return false;
    }
    
    /**
     * Manual hook for testing the self-updater from this host activity without changing startup.
     * Wire this to a debug-only button or call it from temporary test code when needed.
     */
    public final void checkForUpdatesForTesting() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\b"}, d2 = {"Lcom/bayyari/tv/ui/MainActivity$Companion;", "", "<init>", "()V", "TAG", "", "EXTRA_SYNC_ON_START", "EXTRA_SHOW_WELCOME_POPUP", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}