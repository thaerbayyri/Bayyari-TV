package com.bayyari.tv.ui.movies;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.data.repository.WatchHistoryRepository;
import com.bayyari.tv.player.IptvPlayer;
import com.bayyari.tv.util.NetworkUtils;
import com.bayyari.tv.util.StreamUrlBuilder;
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
public final class MoviePlayerActivity_MembersInjector implements MembersInjector<MoviePlayerActivity> {
  private final Provider<IptvPlayer> iptvPlayerProvider;

  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<StreamUrlBuilder> streamUrlBuilderProvider;

  private final Provider<MovieRepository> movieRepositoryProvider;

  private final Provider<WatchHistoryRepository> watchHistoryRepositoryProvider;

  private final Provider<NetworkUtils> networkUtilsProvider;

  private MoviePlayerActivity_MembersInjector(Provider<IptvPlayer> iptvPlayerProvider,
      Provider<AuthRepository> authRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<WatchHistoryRepository> watchHistoryRepositoryProvider,
      Provider<NetworkUtils> networkUtilsProvider) {
    this.iptvPlayerProvider = iptvPlayerProvider;
    this.authRepositoryProvider = authRepositoryProvider;
    this.streamUrlBuilderProvider = streamUrlBuilderProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
    this.watchHistoryRepositoryProvider = watchHistoryRepositoryProvider;
    this.networkUtilsProvider = networkUtilsProvider;
  }

  @Override
  public void injectMembers(MoviePlayerActivity instance) {
    injectIptvPlayer(instance, iptvPlayerProvider.get());
    injectAuthRepository(instance, authRepositoryProvider.get());
    injectStreamUrlBuilder(instance, streamUrlBuilderProvider.get());
    injectMovieRepository(instance, movieRepositoryProvider.get());
    injectWatchHistoryRepository(instance, watchHistoryRepositoryProvider.get());
    injectNetworkUtils(instance, networkUtilsProvider.get());
  }

  public static MembersInjector<MoviePlayerActivity> create(Provider<IptvPlayer> iptvPlayerProvider,
      Provider<AuthRepository> authRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<WatchHistoryRepository> watchHistoryRepositoryProvider,
      Provider<NetworkUtils> networkUtilsProvider) {
    return new MoviePlayerActivity_MembersInjector(iptvPlayerProvider, authRepositoryProvider, streamUrlBuilderProvider, movieRepositoryProvider, watchHistoryRepositoryProvider, networkUtilsProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.MoviePlayerActivity.iptvPlayer")
  public static void injectIptvPlayer(MoviePlayerActivity instance, IptvPlayer iptvPlayer) {
    instance.iptvPlayer = iptvPlayer;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.MoviePlayerActivity.authRepository")
  public static void injectAuthRepository(MoviePlayerActivity instance,
      AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.MoviePlayerActivity.streamUrlBuilder")
  public static void injectStreamUrlBuilder(MoviePlayerActivity instance,
      StreamUrlBuilder streamUrlBuilder) {
    instance.streamUrlBuilder = streamUrlBuilder;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.MoviePlayerActivity.movieRepository")
  public static void injectMovieRepository(MoviePlayerActivity instance,
      MovieRepository movieRepository) {
    instance.movieRepository = movieRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.MoviePlayerActivity.watchHistoryRepository")
  public static void injectWatchHistoryRepository(MoviePlayerActivity instance,
      WatchHistoryRepository watchHistoryRepository) {
    instance.watchHistoryRepository = watchHistoryRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.MoviePlayerActivity.networkUtils")
  public static void injectNetworkUtils(MoviePlayerActivity instance, NetworkUtils networkUtils) {
    instance.networkUtils = networkUtils;
  }
}
