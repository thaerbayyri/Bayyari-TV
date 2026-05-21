package com.bayyari.tv.ui.live;

import com.bayyari.tv.player.IptvPlayer;
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
public final class TvLivePlayerActivity_MembersInjector implements MembersInjector<TvLivePlayerActivity> {
  private final Provider<IptvPlayer> iptvPlayerProvider;

  private TvLivePlayerActivity_MembersInjector(Provider<IptvPlayer> iptvPlayerProvider) {
    this.iptvPlayerProvider = iptvPlayerProvider;
  }

  @Override
  public void injectMembers(TvLivePlayerActivity instance) {
    injectIptvPlayer(instance, iptvPlayerProvider.get());
  }

  public static MembersInjector<TvLivePlayerActivity> create(
      Provider<IptvPlayer> iptvPlayerProvider) {
    return new TvLivePlayerActivity_MembersInjector(iptvPlayerProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.TvLivePlayerActivity.iptvPlayer")
  public static void injectIptvPlayer(TvLivePlayerActivity instance, IptvPlayer iptvPlayer) {
    instance.iptvPlayer = iptvPlayer;
  }
}
