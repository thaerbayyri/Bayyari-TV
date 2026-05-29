package com.bayyari.tv.ui.live;

import android.content.Intent;
import android.content.Context;
import android.os.Bundle;
import android.view.inputmethod.InputMethodManager;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.media3.exoplayer.ExoPlayer;
import com.bayyari.tv.R;
import com.bayyari.tv.databinding.FragmentLiveBinding;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.ui.common.adapter.CategoryAdapter;
import com.bayyari.tv.ui.common.adapter.ChannelRowAdapter;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.StreamUrlBuilder;
import dagger.hilt.android.AndroidEntryPoint;
import androidx.media3.exoplayer.LoadControl;
import javax.inject.Inject;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\'H\u0016J\b\u0010(\u001a\u00020#H\u0016J\b\u0010)\u001a\u00020#H\u0016J\b\u0010*\u001a\u00020#H\u0016J\u0010\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020-H\u0002J\u0010\u0010.\u001a\u00020#2\u0006\u0010,\u001a\u00020-H\u0002J\u0010\u0010/\u001a\u00020#2\u0006\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020#2\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u00020#2\u0006\u00103\u001a\u000204H\u0002J\b\u00106\u001a\u00020#H\u0002J\u0012\u00107\u001a\u00020#2\b\u00108\u001a\u0004\u0018\u00010\u001fH\u0002J\u0010\u00109\u001a\u00020#2\u0006\u00108\u001a\u00020\u001fH\u0002J\u0010\u0010:\u001a\u0002012\u0006\u00108\u001a\u00020\u001fH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"}, d2 = {"Lcom/bayyari/tv/ui/live/LiveFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModel", "Lcom/bayyari/tv/ui/live/LiveViewModel;", "getViewModel", "()Lcom/bayyari/tv/ui/live/LiveViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/bayyari/tv/databinding/FragmentLiveBinding;", "streamUrlBuilder", "Lcom/bayyari/tv/util/StreamUrlBuilder;", "getStreamUrlBuilder", "()Lcom/bayyari/tv/util/StreamUrlBuilder;", "setStreamUrlBuilder", "(Lcom/bayyari/tv/util/StreamUrlBuilder;)V", "prefs", "Lcom/bayyari/tv/util/EncryptedPrefs;", "getPrefs", "()Lcom/bayyari/tv/util/EncryptedPrefs;", "setPrefs", "(Lcom/bayyari/tv/util/EncryptedPrefs;)V", "loadControl", "Landroidx/media3/exoplayer/LoadControl;", "getLoadControl", "()Landroidx/media3/exoplayer/LoadControl;", "setLoadControl", "(Landroidx/media3/exoplayer/LoadControl;)V", "selectedChannel", "Lcom/bayyari/tv/domain/model/Channel;", "previewPlayer", "Landroidx/media3/exoplayer/ExoPlayer;", "onViewCreated", "", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onPause", "onDestroyView", "navigateToCatchup", "streamId", "", "navigateToEpg", "showChannelInfo", "name", "", "showCategoryActions", "category", "Lcom/bayyari/tv/domain/model/Category;", "confirmHideCategory", "showSortDialog", "renderPreview", "channel", "openSelectedChannel", "buildLiveUrl", "app"})
public final class LiveFragment extends androidx.fragment.app.Fragment {
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy viewModel$delegate = null;
    @org.jetbrains.annotations.Nullable()
    private com.bayyari.tv.databinding.FragmentLiveBinding binding;
    @javax.inject.Inject()
    public com.bayyari.tv.util.StreamUrlBuilder streamUrlBuilder;
    @javax.inject.Inject()
    public com.bayyari.tv.util.EncryptedPrefs prefs;
    @javax.inject.Inject()
    public androidx.media3.exoplayer.LoadControl loadControl;
    @org.jetbrains.annotations.Nullable()
    private com.bayyari.tv.domain.model.Channel selectedChannel;
    @org.jetbrains.annotations.Nullable()
    private androidx.media3.exoplayer.ExoPlayer previewPlayer;
    
    public LiveFragment() {
        super();
    }
    
    private final com.bayyari.tv.ui.live.LiveViewModel getViewModel() {
        return null;
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.StreamUrlBuilder getStreamUrlBuilder() {
        return null;
    }
    
    public final void setStreamUrlBuilder(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.StreamUrlBuilder p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.util.EncryptedPrefs getPrefs() {
        return null;
    }
    
    public final void setPrefs(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.util.EncryptedPrefs p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final androidx.media3.exoplayer.LoadControl getLoadControl() {
        return null;
    }
    
    public final void setLoadControl(@org.jetbrains.annotations.NotNull()
    androidx.media3.exoplayer.LoadControl p0) {
    }
    
    @java.lang.Override()
    public void onViewCreated(@org.jetbrains.annotations.NotNull()
    android.view.View view, @org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
    
    @java.lang.Override()
    public void onResume() {
    }
    
    @java.lang.Override()
    public void onPause() {
    }
    
    @java.lang.Override()
    public void onDestroyView() {
    }
    
    private final void navigateToCatchup(int streamId) {
    }
    
    private final void navigateToEpg(int streamId) {
    }
    
    private final void showChannelInfo(java.lang.String name) {
    }
    
    private final void showCategoryActions(com.bayyari.tv.domain.model.Category category) {
    }
    
    private final void confirmHideCategory(com.bayyari.tv.domain.model.Category category) {
    }
    
    private final void showSortDialog() {
    }
    
    private final void renderPreview(com.bayyari.tv.domain.model.Channel channel) {
    }
    
    private final void openSelectedChannel(com.bayyari.tv.domain.model.Channel channel) {
    }
    
    private final java.lang.String buildLiveUrl(com.bayyari.tv.domain.model.Channel channel) {
        return null;
    }
}