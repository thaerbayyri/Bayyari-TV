package com.bayyari.tv.data.work;

import android.content.Context;
import androidx.work.WorkerParameters;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.LiveRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import dagger.internal.DaggerGenerated;
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
public final class RefreshWorker_Factory {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<LiveRepository> liveRepositoryProvider;

  private final Provider<MovieRepository> movieRepositoryProvider;

  private final Provider<SeriesRepository> seriesRepositoryProvider;

  private RefreshWorker_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.liveRepositoryProvider = liveRepositoryProvider;
    this.movieRepositoryProvider = movieRepositoryProvider;
    this.seriesRepositoryProvider = seriesRepositoryProvider;
  }

  public RefreshWorker get(Context context, WorkerParameters params) {
    return newInstance(context, params, authRepositoryProvider.get(), liveRepositoryProvider.get(), movieRepositoryProvider.get(), seriesRepositoryProvider.get());
  }

  public static RefreshWorker_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider,
      Provider<MovieRepository> movieRepositoryProvider,
      Provider<SeriesRepository> seriesRepositoryProvider) {
    return new RefreshWorker_Factory(authRepositoryProvider, liveRepositoryProvider, movieRepositoryProvider, seriesRepositoryProvider);
  }

  public static RefreshWorker newInstance(Context context, WorkerParameters params,
      AuthRepository authRepository, LiveRepository liveRepository, MovieRepository movieRepository,
      SeriesRepository seriesRepository) {
    return new RefreshWorker(context, params, authRepository, liveRepository, movieRepository, seriesRepository);
  }
}
