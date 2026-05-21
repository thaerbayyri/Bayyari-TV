package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.local.dao.SeriesDao;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

@ScopeMetadata("javax.inject.Singleton")
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
public final class SeriesRepository_Factory implements Factory<SeriesRepository> {
  private final Provider<XtreamApiService> apiProvider;

  private final Provider<SeriesDao> seriesDaoProvider;

  private SeriesRepository_Factory(Provider<XtreamApiService> apiProvider,
      Provider<SeriesDao> seriesDaoProvider) {
    this.apiProvider = apiProvider;
    this.seriesDaoProvider = seriesDaoProvider;
  }

  @Override
  public SeriesRepository get() {
    return newInstance(apiProvider.get(), seriesDaoProvider.get());
  }

  public static SeriesRepository_Factory create(Provider<XtreamApiService> apiProvider,
      Provider<SeriesDao> seriesDaoProvider) {
    return new SeriesRepository_Factory(apiProvider, seriesDaoProvider);
  }

  public static SeriesRepository newInstance(XtreamApiService api, SeriesDao seriesDao) {
    return new SeriesRepository(api, seriesDao);
  }
}
