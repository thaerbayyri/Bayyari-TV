package com.bayyari.tv.ui.catchup;

import com.bayyari.tv.data.repository.AuthRepository;
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
public final class CatchUpPlayerActivity_MembersInjector implements MembersInjector<CatchUpPlayerActivity> {
  private final Provider<IptvPlayer> iptvPlayerProvider;

  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<StreamUrlBuilder> streamUrlBuilderProvider;

  private final Provider<NetworkUtils> networkUtilsProvider;

  private CatchUpPlayerActivity_MembersInjector(Provider<IptvPlayer> iptvPlayerProvider,
      Provider<AuthRepository> authRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider,
      Provider<NetworkUtils> networkUtilsProvider) {
    this.iptvPlayerProvider = iptvPlayerProvider;
    this.authRepositoryProvider = authRepositoryProvider;
    this.streamUrlBuilderProvider = streamUrlBuilderProvider;
    this.networkUtilsProvider = networkUtilsProvider;
  }

  @Override
  public void injectMembers(CatchUpPlayerActivity instance) {
    injectIptvPlayer(instance, iptvPlayerProvider.get());
    injectAuthRepository(instance, authRepositoryProvider.get());
    injectStreamUrlBuilder(instance, streamUrlBuilderProvider.get());
    injectNetworkUtils(instance, networkUtilsProvider.get());
  }

  public static MembersInjector<CatchUpPlayerActivity> create(
      Provider<IptvPlayer> iptvPlayerProvider, Provider<AuthRepository> authRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider,
      Provider<NetworkUtils> networkUtilsProvider) {
    return new CatchUpPlayerActivity_MembersInjector(iptvPlayerProvider, authRepositoryProvider, streamUrlBuilderProvider, networkUtilsProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.catchup.CatchUpPlayerActivity.iptvPlayer")
  public static void injectIptvPlayer(CatchUpPlayerActivity instance, IptvPlayer iptvPlayer) {
    instance.iptvPlayer = iptvPlayer;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.catchup.CatchUpPlayerActivity.authRepository")
  public static void injectAuthRepository(CatchUpPlayerActivity instance,
      AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.catchup.CatchUpPlayerActivity.streamUrlBuilder")
  public static void injectStreamUrlBuilder(CatchUpPlayerActivity instance,
      StreamUrlBuilder streamUrlBuilder) {
    instance.streamUrlBuilder = streamUrlBuilder;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.catchup.CatchUpPlayerActivity.networkUtils")
  public static void injectNetworkUtils(CatchUpPlayerActivity instance, NetworkUtils networkUtils) {
    instance.networkUtils = networkUtils;
  }
}
