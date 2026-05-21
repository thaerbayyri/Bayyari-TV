package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.local.dao.MovieDao;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

@ScopeMetadata("javax.inject.Singleton")
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
public final class MovieRepository_Factory implements Factory<MovieRepository> {
  private final Provider<XtreamApiService> apiProvider;

  private final Provider<MovieDao> movieDaoProvider;

  private MovieRepository_Factory(Provider<XtreamApiService> apiProvider,
      Provider<MovieDao> movieDaoProvider) {
    this.apiProvider = apiProvider;
    this.movieDaoProvider = movieDaoProvider;
  }

  @Override
  public MovieRepository get() {
    return newInstance(apiProvider.get(), movieDaoProvider.get());
  }

  public static MovieRepository_Factory create(Provider<XtreamApiService> apiProvider,
      Provider<MovieDao> movieDaoProvider) {
    return new MovieRepository_Factory(apiProvider, movieDaoProvider);
  }

  public static MovieRepository newInstance(XtreamApiService api, MovieDao movieDao) {
    return new MovieRepository(api, movieDao);
  }
}
