package com.bayyari.tv.ui.home;

import android.content.Intent;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.bayyari.tv.R;
import com.bayyari.tv.databinding.FragmentHomeBinding;
import com.bayyari.tv.databinding.IncludeStatCellBinding;
import com.bayyari.tv.domain.model.Movie;
import com.bayyari.tv.domain.model.WatchEntry;
import com.bayyari.tv.ui.common.adapter.ChannelAdapter;
import com.bayyari.tv.ui.common.adapter.ContinueWatchingAdapter;
import com.bayyari.tv.ui.common.adapter.HomeFavoriteAdapter;
import com.bayyari.tv.ui.common.adapter.MovieAdapter;
import com.bayyari.tv.ui.common.adapter.SeriesAdapter;
import com.bayyari.tv.ui.favorites.FavoriteItem;
import com.bayyari.tv.ui.live.LivePlayerActivity;
import com.bayyari.tv.ui.MainActivity;
import com.bayyari.tv.ui.movies.MoviePlayerActivity;
import com.bayyari.tv.ui.series.EpisodePlayerActivity;
import com.bumptech.glide.Glide;
import dagger.hilt.android.AndroidEntryPoint;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J\b\u0010\u0015\u001a\u00020\rH\u0002J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020!H\u0002J\b\u0010%\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"}, d2 = {"Lcom/bayyari/tv/ui/home/HomeFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModel", "Lcom/bayyari/tv/ui/home/HomeViewModel;", "getViewModel", "()Lcom/bayyari/tv/ui/home/HomeViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/bayyari/tv/databinding/FragmentHomeBinding;", "onViewCreated", "", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "bindHero", "item", "Lcom/bayyari/tv/ui/home/FeaturedItem;", "showWelcomePopupAfterLogin", "openMovieDetail", "movie", "Lcom/bayyari/tv/domain/model/Movie;", "openWatchEntry", "entry", "Lcom/bayyari/tv/domain/model/WatchEntry;", "openFavoriteItem", "Lcom/bayyari/tv/ui/favorites/FavoriteItem;", "openMoviePlayer", "safeNavigate", "destId", "", "formatCount", "", "n", "onDestroyView", "app"})
public final class HomeFragment extends androidx.fragment.app.Fragment {
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy viewModel$delegate = null;
    @org.jetbrains.annotations.Nullable()
    private com.bayyari.tv.databinding.FragmentHomeBinding binding;
    
    public HomeFragment() {
        super();
    }
    
    private final com.bayyari.tv.ui.home.HomeViewModel getViewModel() {
        return null;
    }
    
    @java.lang.Override()
    public void onViewCreated(@org.jetbrains.annotations.NotNull()
    android.view.View view, @org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
    
    private final void bindHero(com.bayyari.tv.ui.home.FeaturedItem item) {
    }
    
    private final void showWelcomePopupAfterLogin() {
    }
    
    private final void openMovieDetail(com.bayyari.tv.domain.model.Movie movie) {
    }
    
    private final void openWatchEntry(com.bayyari.tv.domain.model.WatchEntry entry) {
    }
    
    private final void openFavoriteItem(com.bayyari.tv.ui.favorites.FavoriteItem item) {
    }
    
    private final void openMoviePlayer(com.bayyari.tv.domain.model.Movie movie) {
    }
    
    private final void safeNavigate(int destId) {
    }
    
    private final java.lang.String formatCount(int n) {
        return null;
    }
    
    @java.lang.Override()
    public void onDestroyView() {
    }
}