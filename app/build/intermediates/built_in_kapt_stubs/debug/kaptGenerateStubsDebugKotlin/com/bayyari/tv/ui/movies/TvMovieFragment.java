package com.bayyari.tv.ui.movies;

import android.content.Intent;
import android.os.Bundle;
import androidx.leanback.app.VerticalGridSupportFragment;
import androidx.leanback.widget.ArrayObjectAdapter;
import androidx.leanback.widget.VerticalGridPresenter;
import androidx.leanback.widget.OnItemViewClickedListener;
import com.bayyari.tv.ui.home.MediaCardPresenter;
import com.bayyari.tv.domain.model.Movie;
import dagger.hilt.android.AndroidEntryPoint;

@dagger.hilt.android.AndroidEntryPoint()
@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007\u00a8\u0006\u000e"}, d2 = {"Lcom/bayyari/tv/ui/movies/TvMovieFragment;", "Landroidx/leanback/app/VerticalGridSupportFragment;", "<init>", "()V", "viewModel", "Lcom/bayyari/tv/ui/movies/MovieViewModel;", "getViewModel", "()Lcom/bayyari/tv/ui/movies/MovieViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onActivityCreated", "", "savedInstanceState", "Landroid/os/Bundle;", "app"})
public final class TvMovieFragment extends androidx.leanback.app.VerticalGridSupportFragment {
    @org.jetbrains.annotations.NotNull()
    private final kotlin.Lazy viewModel$delegate = null;
    
    public TvMovieFragment() {
        super();
    }
    
    private final com.bayyari.tv.ui.movies.MovieViewModel getViewModel() {
        return null;
    }
    
    @java.lang.Override()
    public void onActivityCreated(@org.jetbrains.annotations.Nullable()
    android.os.Bundle savedInstanceState) {
    }
}