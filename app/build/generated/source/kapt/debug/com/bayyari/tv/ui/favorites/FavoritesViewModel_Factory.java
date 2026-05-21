package com.bayyari.tv.ui.favorites;

import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.LiveRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

@ScopeMetadata
@QualifierMetadata
@DaggerGenerated
@Generated(
    value = "dagger.internal.codegen.ComponentProcessor",
    comments = "https://dagger.dev"
)
@SuppressWarnings({
    "unchecked",
    "rawtypes",
    "KotlinInternal",
    "KotlinInternalInJava",
    "cast",
    "deprecation",
    "nullness:initialization.field.uninitialized"
})
public final class FavoritesViewModel_Factory implements Factory<FavoritesViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<FavoriteDao> favoriteDaoProvider;

  private final Provider<LiveRepository> liveRepositoryProvider;

  private final Provider<MovieRepository> movieRepositoryProvider;

  private final Provider<SeriesRepository> seriesRepositoryProvider;

  private FavoritesViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<FavoriteDao> favoriteDaoProvider, Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.favoriteDaoProvider = favoriteDaoProvider;
    this.liveRepositoryProvider = liveRepositoryProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
    this.seriesRepositoryProvider = seriesRepositoryProvider;
  }

  @Override
  public FavoritesViewModel get() {
    return newInstance(authRepositoryProvider.get(), favoriteDaoProvider.get(), liveRepositoryProvider.get(), movieRepositoryProvider.get(), seriesRepositoryProvider.get());
  }

  public static FavoritesViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<FavoriteDao> favoriteDaoProvider, Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    return new FavoritesViewModel_Factory(authRepositoryProvider, favoriteDaoProvider, liveRepositoryProvider, movieRepositoryProvider, seriesRepositoryProvider);
  }

  public static FavoritesViewModel newInstance(AuthRepository authRepository,
      FavoriteDao favoriteDao, LiveRepository liveRepository, MovieRepository movieRepository,
      SeriesRepository seriesRepository) {
    return new FavoritesViewModel(authRepository, favoriteDao, liveRepository, movieRepository, seriesRepository);
  }
}
