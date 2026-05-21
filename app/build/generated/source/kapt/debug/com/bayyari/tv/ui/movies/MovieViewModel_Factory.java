package com.bayyari.tv.ui.movies;

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
public final class MovieViewModel_Factory implements Factory<MovieViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<MovieRepository> movieRepositoryProvider;

  private MovieViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
  }

  @Override
  public MovieViewModel get() {
    return newInstance(authRepositoryProvider.get(), movieRepositoryProvider.get());
  }

  public static MovieViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider) {
    return new MovieViewModel_Factory(authRepositoryProvider, movieRepositoryProvider);
  }

  public static MovieViewModel newInstance(AuthRepository authRepository,
      MovieRepository movieRepository) {
    return new MovieViewModel(authRepository, movieRepository);
  }
}
