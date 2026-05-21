package com.bayyari.tv.di;

import com.bayyari.tv.data.local.AppDatabase;
import com.bayyari.tv.data.local.dao.SeriesDao;
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
public final class DatabaseModule_ProvideSeriesDaoFactory implements Factory<SeriesDao> {
  private final Provider<AppDatabase> dbProvider;

  private DatabaseModule_ProvideSeriesDaoFactory(Provider<AppDatabase> dbProvider) {
    this.dbProvider = dbProvider;
  }

  @Override
  public SeriesDao get() {
    return provideSeriesDao(dbProvider.get());
  }

  public static DatabaseModule_ProvideSeriesDaoFactory create(Provider<AppDatabase> dbProvider) {
    return new DatabaseModule_ProvideSeriesDaoFactory(dbProvider);
  }

  public static SeriesDao provideSeriesDao(AppDatabase db) {
    return Preconditions.checkNotNullFromProvides(DatabaseModule.INSTANCE.provideSeriesDao(db));
  }
}
