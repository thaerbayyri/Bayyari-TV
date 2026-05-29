package com.bayyari.tv.ui.settings;

import android.os.Bundle;
import android.view.View;
import android.content.Intent;
import android.view.LayoutInflater;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.bayyari.tv.R;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.dao.SeriesDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.WatchHistoryRepository;
import com.bayyari.tv.databinding.DialogAddPlaylistBinding;
import com.bayyari.tv.databinding.FragmentServerManagerBinding;
import com.bayyari.tv.domain.model.Server;
import com.bayyari.tv.ui.auth.LoginActivity;
import com.bayyari.tv.ui.sync.SyncActivity;
import dagger.hilt.android.AndroidEntryPoint;
import kotlinx.coroutines.Dispatchers;
import javax.inject.Inject;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101H\u0016J\b\u00102\u001a\u00020-H\u0002J(\u00103\u001a\u00020-2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u0002052\u0006\u00108\u001a\u000205H\u0002J\u0010\u00109\u001a\u00020-2\u0006\u0010:\u001a\u00020;H\u0002J\u0010\u0010<\u001a\u00020-2\u0006\u0010:\u001a\u00020;H\u0002J\b\u0010=\u001a\u00020-H\u0002J\b\u0010>\u001a\u00020-H\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001e\u0010\"\u001a\u00020#8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010\'R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"}, d2 = {"Lcom/bayyari/tv/ui/settings/ServerManagerFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "authRepository", "Lcom/bayyari/tv/data/repository/AuthRepository;", "getAuthRepository", "()Lcom/bayyari/tv/data/repository/AuthRepository;", "setAuthRepository", "(Lcom/bayyari/tv/data/repository/AuthRepository;)V", "channelDao", "Lcom/bayyari/tv/data/local/dao/ChannelDao;", "getChannelDao", "()Lcom/bayyari/tv/data/local/dao/ChannelDao;", "setChannelDao", "(Lcom/bayyari/tv/data/local/dao/ChannelDao;)V", "movieDao", "Lcom/bayyari/tv/data/local/dao/MovieDao;", "getMovieDao", "()Lcom/bayyari/tv/data/local/dao/MovieDao;", "setMovieDao", "(Lcom/bayyari/tv/data/local/dao/MovieDao;)V", "seriesDao", "Lcom/bayyari/tv/data/local/dao/SeriesDao;", "getSeriesDao", "()Lcom/bayyari/tv/data/local/dao/SeriesDao;", "setSeriesDao", "(Lcom/bayyari/tv/data/local/dao/SeriesDao;)V", "epgDao", "Lcom/bayyari/tv/data/local/dao/EpgDao;", "getEpgDao", "()Lcom/bayyari/tv/data/local/dao/EpgDao;", "setEpgDao", "(Lcom/bayyari/tv/data/local/dao/EpgDao;)V", "watchHistoryRepository", "Lcom/bayyari/tv/data/repository/WatchHistoryRepository;", "getWatchHistoryRepository", "()Lcom/bayyari/tv/data/repository/WatchHistoryRepository;", "setWatchHistoryRepository", "(Lcom/bayyari/tv/data/repository/WatchHistoryRepository;)V", "binding", "Lcom/bayyari/tv/databinding/FragmentServerManagerBinding;", "adapter", "Lcom/bayyari/tv/ui/settings/ServerAdapter;", "onViewCreated", "", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "showAddPlaylistDialog", "addServer", "label", "", "url", "username", "password", "confirmDelete", "server", "Lcom/bayyari/tv/domain/model/Server;", "deleteServer", "refreshServers", "onDestroyView", "app"})
public final class ServerManagerFragment extends androidx.fragment.app.Fragment {
    @javax.inject.Inject()
    public com.bayyari.tv.data.repository.AuthRepository authRepository;
    @javax.inject.Inject()
    public com.bayyari.tv.data.local.dao.ChannelDao channelDao;
    @javax.inject.Inject()
    public com.bayyari.tv.data.local.dao.MovieDao movieDao;
    @javax.inject.Inject()
    public com.bayyari.tv.data.local.dao.SeriesDao seriesDao;
    @javax.inject.Inject()
    public com.bayyari.tv.data.local.dao.EpgDao epgDao;
    @javax.inject.Inject()
    public com.bayyari.tv.data.repository.WatchHistoryRepository watchHistoryRepository;
    @org.jetbrains.annotations.Nullable()
    private com.bayyari.tv.databinding.FragmentServerManagerBinding binding;
    private com.bayyari.tv.ui.settings.ServerAdapter adapter;
    
    public ServerManagerFragment() {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.repository.AuthRepository getAuthRepository() {
        return null;
    }
    
    public final void setAuthRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.AuthRepository p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.ChannelDao getChannelDao() {
        return null;
    }
    
    public final void setChannelDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.ChannelDao p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.MovieDao getMovieDao() {
        return null;
    }
    
    public final void setMovieDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.MovieDao p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.SeriesDao getSeriesDao() {
        return null;
    }
    
    public final void setSeriesDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.SeriesDao p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.local.dao.EpgDao getEpgDao() {
        return null;
    }
    
    public final void setEpgDao(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.local.dao.EpgDao p0) {
    }
    
    @org.jetbrains.annotations.NotNull()
    public final com.bayyari.tv.data.repository.WatchHistoryRepository getWatchHistoryRepository() {
        return null;
    }
    
    public final void setWatchHistoryRepository(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.WatchHistoryRepository p0) {
    }
    
    @java.lang.Override()
    public void onViewCreated(@org.jetbrains.annotations.NotNull()
    android.view.View view, @org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
    
    private final void showAddPlaylistDialog() {
    }
    
    private final void addServer(java.lang.String label, java.lang.String url, java.lang.String username, java.lang.String password) {
    }
    
    private final void confirmDelete(com.bayyari.tv.domain.model.Server server) {
    }
    
    private final void deleteServer(com.bayyari.tv.domain.model.Server server) {
    }
    
    private final void refreshServers() {
    }
    
    @java.lang.Override()
    public void onDestroyView() {
    }
}