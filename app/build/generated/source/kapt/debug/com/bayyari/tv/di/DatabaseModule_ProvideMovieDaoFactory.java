package com.bayyari.tv.di;

import com.bayyari.tv.data.local.AppDatabase;
import com.bayyari.tv.data.local.dao.MovieDao;
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
public final class DatabaseModule_ProvideMovieDaoFactory implements Factory<MovieDao> {
  private final Provider<AppDatabase> dbProvider;

  private DatabaseModule_ProvideMovieDaoFactory(Provider<AppDatabase> dbProvider) {
    this.dbProvider = dbProvider;
  }

  @Override
  public MovieDao get() {
    return provideMovieDao(dbProvider.get());
  }

  public static DatabaseModule_ProvideMovieDaoFactory create(Provider<AppDatabase> dbProvider) {
    return new DatabaseModule_ProvideMovieDaoFactory(dbProvider);
  }

  public static MovieDao provideMovieDao(AppDatabase db) {
    return Preconditions.checkNotNullFromProvides(DatabaseModule.INSTANCE.provideMovieDao(db));
  }
}
