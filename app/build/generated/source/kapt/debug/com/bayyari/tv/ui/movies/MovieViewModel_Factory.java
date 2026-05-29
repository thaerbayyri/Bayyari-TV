package com.bayyari.tv.ui.movies;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.util.EncryptedPrefs;
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

  private final Provider<EncryptedPrefs> prefsProvider;

  private MovieViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider, Provider<EncryptedPrefs> prefsProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
    this.prefsProvider = prefsProvider;
  }

  @Override
  public MovieViewModel get() {
    return newInstance(authRepositoryProvider.get(), movieRepositoryProvider.get(), prefsProvider.get());
  }

  public static MovieViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider, Provider<EncryptedPrefs> prefsProvider) {
    return new MovieViewModel_Factory(authRepositoryProvider, movieRepositoryProvider, prefsProvider);
  }

  public static MovieViewModel newInstance(AuthRepository authRepository,
      MovieRepository movieRepository, EncryptedPrefs prefs) {
    return new MovieViewModel(authRepository, movieRepository, prefs);
  }
}
