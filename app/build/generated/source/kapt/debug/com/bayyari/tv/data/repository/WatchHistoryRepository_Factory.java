package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.local.dao.WatchHistoryDao;
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
public final class WatchHistoryRepository_Factory implements Factory<WatchHistoryRepository> {
  private final Provider<WatchHistoryDao> daoProvider;

  private WatchHistoryRepository_Factory(Provider<WatchHistoryDao> daoProvider) {
    this.daoProvider = daoProvider;
  }

  @Override
  public WatchHistoryRepository get() {
    return newInstance(daoProvider.get());
  }

  public static WatchHistoryRepository_Factory create(Provider<WatchHistoryDao> daoProvider) {
    return new WatchHistoryRepository_Factory(daoProvider);
  }

  public static WatchHistoryRepository newInstance(WatchHistoryDao dao) {
    return new WatchHistoryRepository(dao);
  }
}
