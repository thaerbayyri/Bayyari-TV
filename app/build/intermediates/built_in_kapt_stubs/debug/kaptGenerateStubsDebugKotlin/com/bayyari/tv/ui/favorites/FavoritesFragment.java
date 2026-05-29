package com.bayyari.tv.ui.favorites;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.bayyari.tv.R;
import com.bayyari.tv.databinding.FragmentFavoritesBinding;
import com.bayyari.tv.ui.live.LivePlayerActivity;
import dagger.hilt.android.AndroidEntryPoint;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"}, d2 = {"Lcom/bayyari/tv/ui/favorites/FavoritesFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "viewModel", "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;", "getViewModel", "()Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lcom/bayyari/tv/databinding/FragmentFavoritesBinding;", "onViewCreated", "", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "openFavorite", "item", "Lcom/bayyari/tv/ui/favorites/FavoriteItem;", "onDestroyView", "app"})
public final class FavoritesFragment extends androidx.fragment.app.Fragment {
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy viewModel$delegate = null;
    @org.jetbrains.annotations.Nullable()
    private com.bayyari.tv.databinding.FragmentFavoritesBinding binding;
    
    public FavoritesFragment() {
        super();
    }
    
    private final com.bayyari.tv.ui.favorites.FavoritesViewModel getViewModel() {
        return null;
    }
    
    @java.lang.Override()
    public void onViewCreated(@org.jetbrains.annotations.NotNull()
    android.view.View view, @org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
    
    private final void openFavorite(com.bayyari.tv.ui.favorites.FavoriteItem item) {
    }
    
    @java.lang.Override()
    public void onDestroyView() {
    }
}