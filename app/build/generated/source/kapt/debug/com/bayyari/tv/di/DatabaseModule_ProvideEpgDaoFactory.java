package com.bayyari.tv.di;

import com.bayyari.tv.data.local.AppDatabase;
import com.bayyari.tv.data.local.dao.EpgDao;
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
public final class DatabaseModule_ProvideEpgDaoFactory implements Factory<EpgDao> {
  private final Provider<AppDatabase> dbProvider;

  private DatabaseModule_ProvideEpgDaoFactory(Provider<AppDatabase> dbProvider) {
    this.dbProvider = dbProvider;
  }

  @Override
  public EpgDao get() {
    return provideEpgDao(dbProvider.get());
  }

  public static DatabaseModule_ProvideEpgDaoFactory create(Provider<AppDatabase> dbProvider) {
    return new DatabaseModule_ProvideEpgDaoFactory(dbProvider);
  }

  public static EpgDao provideEpgDao(AppDatabase db) {
    return Preconditions.checkNotNullFromProvides(DatabaseModule.INSTANCE.provideEpgDao(db));
  }
}
