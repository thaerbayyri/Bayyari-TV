package com.bayyari.tv.domain.usecase;

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
public final class GetMoviesUseCase_Factory implements Factory<GetMoviesUseCase> {
  private final Provider<MovieRepository> movieRepositoryProvider;

  private GetMoviesUseCase_Factory(Provider<MovieRepository> movieRepositoryProvider) {
    this.movieRepositoryProvider = movieRepositoryProvider;
  }

  @Override
  public GetMoviesUseCase get() {
    return newInstance(movieRepositoryProvider.get());
  }

  public static GetMoviesUseCase_Factory create(Provider<MovieRepository> movieRepositoryProvider) {
    return new GetMoviesUseCase_Factory(movieRepositoryProvider);
  }

  public static GetMoviesUseCase newInstance(MovieRepository movieRepository) {
    return new GetMoviesUseCase(movieRepository);
  }
}
