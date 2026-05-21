package com.bayyari.tv.di;

import com.bayyari.tv.data.local.AppDatabase;
import com.bayyari.tv.data.local.dao.WatchHistoryDao;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
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
public final class DatabaseModule_ProvideWatchHistoryDaoFactory implements Factory<WatchHistoryDao> {
  private final Provider<AppDatabase> dbProvider;

  private DatabaseModule_ProvideWatchHistoryDaoFactory(Provider<AppDatabase> dbProvider) {
    this.dbProvider = dbProvider;
  }

  @Override
  public WatchHistoryDao get() {
    return provideWatchHistoryDao(dbProvider.get());
  }

  public static DatabaseModule_ProvideWatchHistoryDaoFactory create(
      Provider<AppDatabase> dbProvider) {
    return new DatabaseModule_ProvideWatchHistoryDaoFactory(dbProvider);
  }

  public static WatchHistoryDao provideWatchHistoryDao(AppDatabase db) {
    return Preconditions.checkNotNullFromProvides(DatabaseModule.INSTANCE.provideWatchHistoryDao(db));
  }
}
