package com.bayyari.tv.ui;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.contract.ActivityResultContracts;
import com.bayyari.tv.R;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.update.StartupUpdateController;
import com.bayyari.tv.update.UpdateManager;
import com.bayyari.tv.ui.home.TvHomeFragment;
import com.bayyari.tv.util.Constants;
import dagger.hilt.android.AndroidEntryPoint;
import javax.inject.Inject;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cJ\b\u0010\u001d\u001a\u00020\u0017H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0012\u001a\u0010\u0012\f\u0012\n \u0015*\u0004\u0018\u00010\u00140\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"}, d2 = {"Lcom/bayyari/tv/ui/TvMainActivity;", "Lcom/bayyari/tv/ui/BaseActivity;", "<init>", "()V", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "getAuthRepository", "()Lcom/bayyari/tv/data/repository/AuthRepository;", "setAuthRepository", "(Lcom/bayyari/tv/data/repository/AuthRepository;)V", "updateController", "Lcom/bayyari/tv/update/StartupUpdateController;", "updateManager", "Lcom/bayyari/tv/update/UpdateManager;", "getUpdateManager", "()Lcom/bayyari/tv/update/UpdateManager;", "updateManager$delegate", "Lkotlin/Lazy;", "installPermissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "showTvSection", "fragment", "Landroidx/fragment/app/Fragment;", "onStart", "Companion", "app"})
public final class TvMainActivity extends com.bayyari.tv.ui.BaseActivity {
    @javax.inject.Inject()
    public com.bayyari.tv.data.repository.AuthRepository authRepository;
    private com.bayyari.tv.update.StartupUpdateController updateController;
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy updateManager$delegate = null;
    @org.jetbrains.annotations.NotNull()
    private final androidx.activity.result.ActivityResultLauncher<android.content.Intent> installPermissionLauncher = null;
    @org.jetbrains.annotations.NotNull()
    private static final java.lang.String TAG = "TvMainActivity";
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.ui.TvMainActivity.Companion Companion = null;
    
    public TvMainActivity() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.repository.AuthRepository getAuthRepository() {
        return null;
    }
    
    public final void setAuthRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository p0) {
    }
    
    private final com.bayyari.tv.update.UpdateManager getUpdateManager() {
        return null;
    }
    
    @java.lang.Override()
    protected void onCreate(@org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
    
    public final void showTvSection(@org.jetbrains.annotations.NotNull()
    androidx.fragment.app.Fragment fragment) {
    }
    
    @java.lang.Override()
    protected void onStart() {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"}, d2 = {"Lcom/bayyari/tv/ui/TvMainActivity$Companion;", "", "<init>", "()V", "TAG", "", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
    }
}