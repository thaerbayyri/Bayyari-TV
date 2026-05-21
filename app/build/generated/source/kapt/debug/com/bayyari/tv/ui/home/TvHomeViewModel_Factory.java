package com.bayyari.tv.ui.home;

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
public final class TvHomeViewModel_Factory implements Factory<TvHomeViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<LiveRepository> liveRepositoryProvider;

  private final Provider<MovieRepository> movieRepositoryProvider;

  private final Provider<SeriesRepository> seriesRepositoryProvider;

  private TvHomeViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.liveRepositoryProvider = liveRepositoryProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
    this.seriesRepositoryProvider = seriesRepositoryProvider;
  }

  @Override
  public TvHomeViewModel get() {
    return newInstance(authRepositoryProvider.get(), liveRepositoryProvider.get(), movieRepositoryProvider.get(), seriesRepositoryProvider.get());
  }

  public static TvHomeViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    return new TvHomeViewModel_Factory(authRepositoryProvider, liveRepositoryProvider, movieRepositoryProvider, seriesRepositoryProvider);
  }

  public static TvHomeViewModel newInstance(AuthRepository authRepository,
      LiveRepository liveRepository, MovieRepository movieRepository,
      SeriesRepository seriesRepository) {
    return new TvHomeViewModel(authRepository, liveRepository, movieRepository, seriesRepository);
  }
}
