package com.bayyari.tv.ui.series;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import com.bayyari.tv.util.EncryptedPrefs;
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
public final class SeriesViewModel_Factory implements Factory<SeriesViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<SeriesRepository> seriesRepositoryProvider;

  private final Provider<EncryptedPrefs> prefsProvider;

  private SeriesViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider, Provider<EncryptedPrefs> prefsProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.seriesRepositoryProvider = seriesRepositoryProvider;
    this.prefsProvider = prefsProvider;
  }

  @Override
  public SeriesViewModel get() {
    return newInstance(authRepositoryProvider.get(), seriesRepositoryProvider.get(), prefsProvider.get());
  }

  public static SeriesViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider, Provider<EncryptedPrefs> prefsProvider) {
    return new SeriesViewModel_Factory(authRepositoryProvider, seriesRepositoryProvider, prefsProvider);
  }

  public static SeriesViewModel newInstance(AuthRepository authRepository,
      SeriesRepository seriesRepository, EncryptedPrefs prefs) {
    return new SeriesViewModel(authRepository, seriesRepository, prefs);
  }
}
