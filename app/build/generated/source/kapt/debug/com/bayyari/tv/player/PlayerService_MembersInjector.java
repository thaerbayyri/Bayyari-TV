package com.bayyari.tv.player;

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
public final class PlayerService_MembersInjector implements MembersInjector<PlayerService> {
  private final Provider<IptvPlayer> iptvPlayerProvider;

  private PlayerService_MembersInjector(Provider<IptvPlayer> iptvPlayerProvider) {
    this.iptvPlayerProvider = iptvPlayerProvider;
  }

  @Override
  public void injectMembers(PlayerService instance) {
    injectIptvPlayer(instance, iptvPlayerProvider.get());
  }

  public static MembersInjector<PlayerService> create(Provider<IptvPlayer> iptvPlayerProvider) {
    return new PlayerService_MembersInjector(iptvPlayerProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.player.PlayerService.iptvPlayer")
  public static void injectIptvPlayer(PlayerService instance, IptvPlayer iptvPlayer) {
    instance.iptvPlayer = iptvPlayer;
  }
}
