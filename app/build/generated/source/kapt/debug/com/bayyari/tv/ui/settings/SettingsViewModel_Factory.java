package com.bayyari.tv.ui.settings;

import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.dao.SeriesDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.WatchHistoryRepository;
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
public final class SettingsViewModel_Factory implements Factory<SettingsViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<EncryptedPrefs> prefsProvider;

  private final Provider<ChannelDao> channelDaoProvider;

  private final Provider<MovieDao> movieDaoProvider;

  private final Provider<SeriesDao> seriesDaoProvider;

  private final Provider<EpgDao> epgDaoProvider;

  private final Provider<WatchHistoryRepository> watchHistoryRepositoryProvider;

  private SettingsViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<EncryptedPrefs> prefsProvider, Provider<ChannelDao> channelDaoProvider,
      Provider<MovieDao> movieDaoProvider, Provider<SeriesDao> seriesDaoProvider,
      Provider<EpgDao> epgDaoProvider,
      Provider<WatchHistoryRepository> watchHistoryRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.prefsProvider = prefsProvider;
    this.channelDaoProvider = channelDaoProvider;
    this.movieDaoProvider = movieDaoProvider;
    this.seriesDaoProvider = seriesDaoProvider;
    this.epgDaoProvider = epgDaoProvider;
    this.watchHistoryRepositoryProvider = watchHistoryRepositoryProvider;
  }

  @Override
  public SettingsViewModel get() {
    return newInstance(authRepositoryProvider.get(), prefsProvider.get(), channelDaoProvider.get(), movieDaoProvider.get(), seriesDaoProvider.get(), epgDaoProvider.get(), watchHistoryRepositoryProvider.get());
  }

  public static SettingsViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<EncryptedPrefs> prefsProvider, Provider<ChannelDao> channelDaoProvider,
      Provider<MovieDao> movieDaoProvider, Provider<SeriesDao> seriesDaoProvider,
      Provider<EpgDao> epgDaoProvider,
      Provider<WatchHistoryRepository> watchHistoryRepositoryProvider) {
    return new SettingsViewModel_Factory(authRepositoryProvider, prefsProvider, channelDaoProvider, movieDaoProvider, seriesDaoProvider, epgDaoProvider, watchHistoryRepositoryProvider);
  }

  public static SettingsViewModel newInstance(AuthRepository authRepository, EncryptedPrefs prefs,
      ChannelDao channelDao, MovieDao movieDao, SeriesDao seriesDao, EpgDao epgDao,
      WatchHistoryRepository watchHistoryRepository) {
    return new SettingsViewModel(authRepository, prefs, channelDao, movieDao, seriesDao, epgDao, watchHistoryRepository);
  }
}
