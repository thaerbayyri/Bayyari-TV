package com.bayyari.tv.ui.movies;

import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.MovieRepository;
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
public final class MovieDetailViewModel_Factory implements Factory<MovieDetailViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<MovieRepository> movieRepositoryProvider;

  private final Provider<FavoriteDao> favoriteDaoProvider;

  private MovieDetailViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<FavoriteDao> favoriteDaoProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
    this.favoriteDaoProvider = favoriteDaoProvider;
  }

  @Override
  public MovieDetailViewModel get() {
    return newInstance(authRepositoryProvider.get(), movieRepositoryProvider.get(), favoriteDaoProvider.get());
  }

  public static MovieDetailViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<FavoriteDao> favoriteDaoProvider) {
    return new MovieDetailViewModel_Factory(authRepositoryProvider, movieRepositoryProvider, favoriteDaoProvider);
  }

  public static MovieDetailViewModel newInstance(AuthRepository authRepository,
      MovieRepository movieRepository, FavoriteDao favoriteDao) {
    return new MovieDetailViewModel(authRepository, movieRepository, favoriteDao);
  }
}
