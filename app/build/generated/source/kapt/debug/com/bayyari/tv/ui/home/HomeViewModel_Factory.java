package com.bayyari.tv.ui.home;

import com.bayyari.tv.data.local.dao.WatchHistoryDao;
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
public final class HomeViewModel_Factory implements Factory<HomeViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<LiveRepository> liveRepositoryProvider;

  private final Provider<MovieRepository> movieRepositoryProvider;

  private final Provider<SeriesRepository> seriesRepositoryProvider;

  private final Provider<WatchHistoryDao> watchHistoryDaoProvider;

  private HomeViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider,
      Provider<WatchHistoryDao> watchHistoryDaoProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.liveRepositoryProvider = liveRepositoryProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
    this.seriesRepositoryProvider = seriesRepositoryProvider;
    this.watchHistoryDaoProvider = watchHistoryDaoProvider;
  }

  @Override
  public HomeViewModel get() {
    return newInstance(authRepositoryProvider.get(), liveRepositoryProvider.get(), movieRepositoryProvider.get(), seriesRepositoryProvider.get(), watchHistoryDaoProvider.get());
  }

  public static HomeViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider,
      Provider<WatchHistoryDao> watchHistoryDaoProvider) {
    return new HomeViewModel_Factory(authRepositoryProvider, liveRepositoryProvider, movieRepositoryProvider, seriesRepositoryProvider, watchHistoryDaoProvider);
  }

  public static HomeViewModel newInstance(AuthRepository authRepository,
      LiveRepository liveRepository, MovieRepository movieRepository,
      SeriesRepository seriesRepository, WatchHistoryDao watchHistoryDao) {
    return new HomeViewModel(authRepository, liveRepository, movieRepository, seriesRepository, watchHistoryDao);
  }
}
