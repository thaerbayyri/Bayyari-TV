package com.bayyari.tv.ui.live;

import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.repository.AuthRepository;
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
public final class LiveViewModel_Factory implements Factory<LiveViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<LiveRepository> liveRepositoryProvider;

  private final Provider<FavoriteDao> favoriteDaoProvider;

  private final Provider<EncryptedPrefs> prefsProvider;

  private final Provider<StreamUrlBuilder> streamUrlBuilderProvider;

  private LiveViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider, Provider<FavoriteDao> favoriteDaoProvider,
      Provider<EncryptedPrefs> prefsProvider, Provider<StreamUrlBuilder> streamUrlBuilderProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.liveRepositoryProvider = liveRepositoryProvider;
    this.favoriteDaoProvider = favoriteDaoProvider;
    this.prefsProvider = prefsProvider;
    this.streamUrlBuilderProvider = streamUrlBuilderProvider;
  }

  @Override
  public LiveViewModel get() {
    return newInstance(authRepositoryProvider.get(), liveRepositoryProvider.get(), favoriteDaoProvider.get(), prefsProvider.get(), streamUrlBuilderProvider.get());
  }

  public static LiveViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider, Provider<FavoriteDao> favoriteDaoProvider,
      Provider<EncryptedPrefs> prefsProvider, Provider<StreamUrlBuilder> streamUrlBuilderProvider) {
    return new LiveViewModel_Factory(authRepositoryProvider, liveRepositoryProvider, favoriteDaoProvider, prefsProvider, streamUrlBuilderProvider);
  }

  public static LiveViewModel newInstance(AuthRepository authRepository,
      LiveRepository liveRepository, FavoriteDao favoriteDao, EncryptedPrefs prefs,
      StreamUrlBuilder streamUrlBuilder) {
    return new LiveViewModel(authRepository, liveRepository, favoriteDao, prefs, streamUrlBuilder);
  }
}
