package com.bayyari.tv.ui.series;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
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
public final class SeriesDetailViewModel_Factory implements Factory<SeriesDetailViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<SeriesRepository> seriesRepositoryProvider;

  private SeriesDetailViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.seriesRepositoryProvider = seriesRepositoryProvider;
  }

  @Override
  public SeriesDetailViewModel get() {
    return newInstance(authRepositoryProvider.get(), seriesRepositoryProvider.get());
  }

  public static SeriesDetailViewModel_Factory create(
      Provider<AuthRepository> authRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    return new SeriesDetailViewModel_Factory(authRepositoryProvider, seriesRepositoryProvider);
  }

  public static SeriesDetailViewModel newInstance(AuthRepository authRepository,
      SeriesRepository seriesRepository) {
    return new SeriesDetailViewModel(authRepository, seriesRepository);
  }
}
