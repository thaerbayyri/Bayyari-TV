package com.bayyari.tv.domain.usecase;

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
public final class SearchUseCase_Factory implements Factory<SearchUseCase> {
  private final Provider<LiveRepository> liveRepositoryProvider;

  private final Provider<MovieRepository> movieRepositoryProvider;

  private final Provider<SeriesRepository> seriesRepositoryProvider;

  private SearchUseCase_Factory(Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    this.liveRepositoryProvider = liveRepositoryProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
    this.seriesRepositoryProvider = seriesRepositoryProvider;
  }

  @Override
  public SearchUseCase get() {
    return newInstance(liveRepositoryProvider.get(), movieRepositoryProvider.get(), seriesRepositoryProvider.get());
  }

  public static SearchUseCase_Factory create(Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    return new SearchUseCase_Factory(liveRepositoryProvider, movieRepositoryProvider, seriesRepositoryProvider);
  }

  public static SearchUseCase newInstance(LiveRepository liveRepository,
      MovieRepository movieRepository, SeriesRepository seriesRepository) {
    return new SearchUseCase(liveRepository, movieRepository, seriesRepository);
  }
}
