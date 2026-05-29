package com.bayyari.tv.ui.settings;

import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.dao.SeriesDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.WatchHistoryRepository;
import dagger.MembersInjector;
import dagger.internal.DaggerGenerated;
import dagger.internal.InjectedFieldSignature;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import javax.annotation.processing.Generated;

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
public final class ServerManagerFragment_MembersInjector implements MembersInjector<ServerManagerFragment> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<ChannelDao> channelDaoProvider;

  private final Provider<MovieDao> movieDaoProvider;

  private final Provider<SeriesDao> seriesDaoProvider;

  private final Provider<EpgDao> epgDaoProvider;

  private final Provider<WatchHistoryRepository> watchHistoryRepositoryProvider;

  private ServerManagerFragment_MembersInjector(Provider<AuthRepository> authRepositoryProvider,
      Provider<ChannelDao> channelDaoProvider, Provider<MovieDao> movieDaoProvider,
      Provider<SeriesDao> seriesDaoProvider, Provider<EpgDao> epgDaoProvider,
      Provider<WatchHistoryRepository> watchHistoryRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.channelDaoProvider = channelDaoProvider;
    this.movieDaoProvider = movieDaoProvider;
    this.seriesDaoProvider = seriesDaoProvider;
    this.epgDaoProvider = epgDaoProvider;
    this.watchHistoryRepositoryProvider = watchHistoryRepositoryProvider;
  }

  @Override
  public void injectMembers(ServerManagerFragment instance) {
    injectAuthRepository(instance, authRepositoryProvider.get());
    injectChannelDao(instance, channelDaoProvider.get());
    injectMovieDao(instance, movieDaoProvider.get());
    injectSeriesDao(instance, seriesDaoProvider.get());
    injectEpgDao(instance, epgDaoProvider.get());
    injectWatchHistoryRepository(instance, watchHistoryRepositoryProvider.get());
  }

  public static MembersInjector<ServerManagerFragment> create(
      Provider<AuthRepository> authRepositoryProvider, Provider<ChannelDao> channelDaoProvider,
      Provider<MovieDao> movieDaoProvider, Provider<SeriesDao> seriesDaoProvider,
      Provider<EpgDao> epgDaoProvider,
      Provider<WatchHistoryRepository> watchHistoryRepositoryProvider) {
    return new ServerManagerFragment_MembersInjector(authRepositoryProvider, channelDaoProvider, movieDaoProvider, seriesDaoProvider, epgDaoProvider, watchHistoryRepositoryProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.settings.ServerManagerFragment.authRepository")
  public static void injectAuthRepository(ServerManagerFragment instance,
      AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.settings.ServerManagerFragment.channelDao")
  public static void injectChannelDao(ServerManagerFragment instance, ChannelDao channelDao) {
    instance.channelDao = channelDao;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.settings.ServerManagerFragment.movieDao")
  public static void injectMovieDao(ServerManagerFragment instance, MovieDao movieDao) {
    instance.movieDao = movieDao;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.settings.ServerManagerFragment.seriesDao")
  public static void injectSeriesDao(ServerManagerFragment instance, SeriesDao seriesDao) {
    instance.seriesDao = seriesDao;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.settings.ServerManagerFragment.epgDao")
  public static void injectEpgDao(ServerManagerFragment instance, EpgDao epgDao) {
    instance.epgDao = epgDao;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.settings.ServerManagerFragment.watchHistoryRepository")
  public static void injectWatchHistoryRepository(ServerManagerFragment instance,
      WatchHistoryRepository watchHistoryRepository) {
    instance.watchHistoryRepository = watchHistoryRepository;
  }
}
