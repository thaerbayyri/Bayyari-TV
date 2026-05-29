package com.bayyari.tv.ui.settings;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AlertDialog;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.SwitchPreferenceCompat;
import com.bayyari.tv.R;
import com.bayyari.tv.update.CheckResult;
import com.bayyari.tv.update.DownloadResult;
import com.bayyari.tv.update.InstallStartResult;
import com.bayyari.tv.update.UpdateManager;
import com.bayyari.tv.ui.auth.LoginActivity;
import dagger.hilt.android.AndroidEntryPoint;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0016H\u0016J\b\u0010\u001c\u001a\u00020\u0016H\u0002J\u0016\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020#H\u0002J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\'H\u0002J\b\u0010(\u001a\u00020\u0016H\u0002J\b\u0010)\u001a\u00020\u0016H\u0002J\b\u0010*\u001a\u00020\u001aH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00130\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"}, d2 = {"Lcom/bayyari/tv/ui/settings/SettingsFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "<init>", "()V", "viewModel", "Lcom/bayyari/tv/ui/settings/SettingsViewModel;", "getViewModel", "()Lcom/bayyari/tv/ui/settings/SettingsViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "updateManager", "Lcom/bayyari/tv/update/UpdateManager;", "getUpdateManager", "()Lcom/bayyari/tv/update/UpdateManager;", "updateManager$delegate", "updatePreference", "Landroidx/preference/Preference;", "installPermissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "onCreatePreferences", "", "savedInstanceState", "Landroid/os/Bundle;", "rootKey", "", "onResume", "checkForUpdate", "downloadUpdate", "update", "Lcom/bayyari/tv/update/AvailableUpdate;", "(Lcom/bayyari/tv/update/AvailableUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startInstaller", "apkFile", "Ljava/io/File;", "showUpdateStatus", "message", "loading", "", "refreshUpdateSummary", "refreshInstalledVersionSummary", "installedVersionLabel", "Companion", "app"})
public final class SettingsFragment extends androidx.preference.PreferenceFragmentCompat {
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy viewModel$delegate = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy updateManager$delegate = null;
    @org.jetbrains.annotations.Nullable()
    private androidx.preference.Preference updatePreference;
    @org.jetbrains.annotations.NotNull()
    private final androidx.activity.result.ActivityResultLauncher<android.content.Intent> installPermissionLauncher = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "SettingsFragment";
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.ui.settings.SettingsFragment.Companion Companion = null;
    
    public SettingsFragment() {
        super();
    }
    
    private final com.bayyari.tv.ui.settings.SettingsViewModel getViewModel() {
        return null;
    }
    
    private final com.bayyari.tv.update.UpdateManager getUpdateManager() {
        return null;
    }
    
    @java.lang.Override()
    public void onCreatePreferences(@org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState, @org.jetbrains.annotations.Nullable()
    java.lang.String rootKey) {
    }
    
    @java.lang.Override()
    public void onResume() {
    }
    
    private final void checkForUpdate() {
    }
    
    private final java.lang.Object downloadUpdate(com.bayyari.tv.update.AvailableUpdate update, kotlin.coroutines.Continuation<? super kotlin.Unit> $completion) {
        return null;
    }
    
    private final void startInstaller(java.io.File apkFile) {
    }
    
    private final void showUpdateStatus(java.lang.String message, boolean loading) {
    }
    
    private final void refreshUpdateSummary() {
    }
    
    private final void refreshInstalledVersionSummary() {
    }
    
    private final java.lang.String installedVersionLabel() {
        return null;
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"}, d2 = {"Lcom/bayyari/tv/ui/settings/SettingsFragment$Companion;", "", "<init>", "()V", "TAG", "", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}