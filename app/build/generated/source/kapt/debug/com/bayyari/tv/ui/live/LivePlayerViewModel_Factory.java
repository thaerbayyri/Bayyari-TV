package com.bayyari.tv.ui.live;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.EpgRepository;
import com.bayyari.tv.data.repository.LiveRepository;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.StreamUrlBuilder;
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
public final class LivePlayerViewModel_Factory implements Factory<LivePlayerViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<LiveRepository> liveRepositoryProvider;

  private final Provider<EpgRepository> epgRepositoryProvider;

  private final Provider<StreamUrlBuilder> streamUrlBuilderProvider;

  private final Provider<EncryptedPrefs> prefsProvider;

  private LivePlayerViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider,
      Provider<EpgRepository> epgRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider, Provider<EncryptedPrefs> prefsProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.liveRepositoryProvider = liveRepositoryProvider;
    this.epgRepositoryProvider = epgRepositoryProvider;
    this.streamUrlBuilderProvider = streamUrlBuilderProvider;
    this.prefsProvider = prefsProvider;
  }

  @Override
  public LivePlayerViewModel get() {
    return newInstance(authRepositoryProvider.get(), liveRepositoryProvider.get(), epgRepositoryProvider.get(), streamUrlBuilderProvider.get(), prefsProvider.get());
  }

  public static LivePlayerViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider,
      Provider<EpgRepository> epgRepositoryProvider,
      Provider<StreamUrlBuilder> streamUrlBuilderProvider, Provider<EncryptedPrefs> prefsProvider) {
    return new LivePlayerViewModel_Factory(authRepositoryProvider, liveRepositoryProvider, epgRepositoryProvider, streamUrlBuilderProvider, prefsProvider);
  }

  public static LivePlayerViewModel newInstance(AuthRepository authRepository,
      LiveRepository liveRepository, EpgRepository epgRepository, StreamUrlBuilder streamUrlBuilder,
      EncryptedPrefs prefs) {
    return new LivePlayerViewModel(authRepository, liveRepository, epgRepository, streamUrlBuilder, prefs);
  }
}
