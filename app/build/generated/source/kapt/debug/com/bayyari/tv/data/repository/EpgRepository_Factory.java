package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.local.dao.EpgDao;
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
public final class EpgRepository_Factory implements Factory<EpgRepository> {
  private final Provider<XtreamApiService> apiProvider;

  private final Provider<EpgDao> epgDaoProvider;

  private EpgRepository_Factory(Provider<XtreamApiService> apiProvider,
      Provider<EpgDao> epgDaoProvider) {
    this.apiProvider = apiProvider;
    this.epgDaoProvider = epgDaoProvider;
  }

  @Override
  public EpgRepository get() {
    return newInstance(apiProvider.get(), epgDaoProvider.get());
  }

  public static EpgRepository_Factory create(Provider<XtreamApiService> apiProvider,
      Provider<EpgDao> epgDaoProvider) {
    return new EpgRepository_Factory(apiProvider, epgDaoProvider);
  }

  public static EpgRepository newInstance(XtreamApiService api, EpgDao epgDao) {
    return new EpgRepository(api, epgDao);
  }
}
