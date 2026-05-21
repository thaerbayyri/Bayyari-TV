package com.bayyari.tv.ui.live;

import com.bayyari.tv.player.IptvPlayer;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.NetworkUtils;
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
public final class LivePlayerActivity_MembersInjector implements MembersInjector<LivePlayerActivity> {
  private final Provider<IptvPlayer> iptvPlayerProvider;

  private final Provider<EncryptedPrefs> prefsProvider;

  private final Provider<NetworkUtils> networkUtilsProvider;

  private LivePlayerActivity_MembersInjector(Provider<IptvPlayer> iptvPlayerProvider,
      Provider<EncryptedPrefs> prefsProvider, Provider<NetworkUtils> networkUtilsProvider) {
    this.iptvPlayerProvider = iptvPlayerProvider;
    this.prefsProvider = prefsProvider;
    this.networkUtilsProvider = networkUtilsProvider;
  }

  @Override
  public void injectMembers(LivePlayerActivity instance) {
    injectIptvPlayer(instance, iptvPlayerProvider.get());
    injectPrefs(instance, prefsProvider.get());
    injectNetworkUtils(instance, networkUtilsProvider.get());
  }

  public static MembersInjector<LivePlayerActivity> create(Provider<IptvPlayer> iptvPlayerProvider,
      Provider<EncryptedPrefs> prefsProvider, Provider<NetworkUtils> networkUtilsProvider) {
    return new LivePlayerActivity_MembersInjector(iptvPlayerProvider, prefsProvider, networkUtilsProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.LivePlayerActivity.iptvPlayer")
  public static void injectIptvPlayer(LivePlayerActivity instance, IptvPlayer iptvPlayer) {
    instance.iptvPlayer = iptvPlayer;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.LivePlayerActivity.prefs")
  public static void injectPrefs(LivePlayerActivity instance, EncryptedPrefs prefs) {
    instance.prefs = prefs;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.LivePlayerActivity.networkUtils")
  public static void injectNetworkUtils(LivePlayerActivity instance, NetworkUtils networkUtils) {
    instance.networkUtils = networkUtils;
  }
}
