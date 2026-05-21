package com.bayyari.tv.ui.movies;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.player.IptvPlayer;
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
public final class TvMoviePlayerActivity_MembersInjector implements MembersInjector<TvMoviePlayerActivity> {
  private final Provider<IptvPlayer> iptvPlayerProvider;

  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<StreamUrlBuilder> streamUrlBuilderProvider;

  private TvMoviePlayerActivity_MembersInjector(Provider<IptvPlayer> iptvPlayerProvider,
      Provider<AuthRepository> authRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider) {
    this.iptvPlayerProvider = iptvPlayerProvider;
    this.authRepositoryProvider = authRepositoryProvider;
    this.streamUrlBuilderProvider = streamUrlBuilderProvider;
  }

  @Override
  public void injectMembers(TvMoviePlayerActivity instance) {
    injectIptvPlayer(instance, iptvPlayerProvider.get());
    injectAuthRepository(instance, authRepositoryProvider.get());
    injectStreamUrlBuilder(instance, streamUrlBuilderProvider.get());
  }

  public static MembersInjector<TvMoviePlayerActivity> create(
      Provider<IptvPlayer> iptvPlayerProvider, Provider<AuthRepository> authRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider) {
    return new TvMoviePlayerActivity_MembersInjector(iptvPlayerProvider, authRepositoryProvider, streamUrlBuilderProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.TvMoviePlayerActivity.iptvPlayer")
  public static void injectIptvPlayer(TvMoviePlayerActivity instance, IptvPlayer iptvPlayer) {
    instance.iptvPlayer = iptvPlayer;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.TvMoviePlayerActivity.authRepository")
  public static void injectAuthRepository(TvMoviePlayerActivity instance,
      AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.movies.TvMoviePlayerActivity.streamUrlBuilder")
  public static void injectStreamUrlBuilder(TvMoviePlayerActivity instance,
      StreamUrlBuilder streamUrlBuilder) {
    instance.streamUrlBuilder = streamUrlBuilder;
  }
}
