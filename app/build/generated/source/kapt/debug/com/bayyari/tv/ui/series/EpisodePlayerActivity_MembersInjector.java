package com.bayyari.tv.ui.series;

import com.bayyari.tv.data.repository.AuthRepository;
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
public final class EpisodePlayerActivity_MembersInjector implements MembersInjector<EpisodePlayerActivity> {
  private final Provider<IptvPlayer> iptvPlayerProvider;

  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<StreamUrlBuilder> streamUrlBuilderProvider;

  private final Provider<WatchHistoryRepository> watchHistoryRepositoryProvider;

  private final Provider<NetworkUtils> networkUtilsProvider;

  private EpisodePlayerActivity_MembersInjector(Provider<IptvPlayer> iptvPlayerProvider,
      Provider<AuthRepository> authRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider,
      Provider<WatchHistoryRepository> watchHistoryRepositoryProvider,
      Provider<NetworkUtils> networkUtilsProvider) {
    this.iptvPlayerProvider = iptvPlayerProvider;
    this.authRepositoryProvider = authRepositoryProvider;
    this.streamUrlBuilderProvider = streamUrlBuilderProvider;
    this.watchHistoryRepositoryProvider = watchHistoryRepositoryProvider;
    this.networkUtilsProvider = networkUtilsProvider;
  }

  @Override
  public void injectMembers(EpisodePlayerActivity instance) {
    injectIptvPlayer(instance, iptvPlayerProvider.get());
    injectAuthRepository(instance, authRepositoryProvider.get());
    injectStreamUrlBuilder(instance, streamUrlBuilderProvider.get());
    injectWatchHistoryRepository(instance, watchHistoryRepositoryProvider.get());
    injectNetworkUtils(instance, networkUtilsProvider.get());
  }

  public static MembersInjector<EpisodePlayerActivity> create(
      Provider<IptvPlayer> iptvPlayerProvider, Provider<AuthRepository> authRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider,
      Provider<WatchHistoryRepository> watchHistoryRepositoryProvider,
      Provider<NetworkUtils> networkUtilsProvider) {
    return new EpisodePlayerActivity_MembersInjector(iptvPlayerProvider, authRepositoryProvider, streamUrlBuilderProvider, watchHistoryRepositoryProvider, networkUtilsProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.series.EpisodePlayerActivity.iptvPlayer")
  public static void injectIptvPlayer(EpisodePlayerActivity instance, IptvPlayer iptvPlayer) {
    instance.iptvPlayer = iptvPlayer;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.series.EpisodePlayerActivity.authRepository")
  public static void injectAuthRepository(EpisodePlayerActivity instance,
      AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.series.EpisodePlayerActivity.streamUrlBuilder")
  public static void injectStreamUrlBuilder(EpisodePlayerActivity instance,
      StreamUrlBuilder streamUrlBuilder) {
    instance.streamUrlBuilder = streamUrlBuilder;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.series.EpisodePlayerActivity.watchHistoryRepository")
  public static void injectWatchHistoryRepository(EpisodePlayerActivity instance,
      WatchHistoryRepository watchHistoryRepository) {
    instance.watchHistoryRepository = watchHistoryRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.series.EpisodePlayerActivity.networkUtils")
  public static void injectNetworkUtils(EpisodePlayerActivity instance, NetworkUtils networkUtils) {
    instance.networkUtils = networkUtils;
  }
}
