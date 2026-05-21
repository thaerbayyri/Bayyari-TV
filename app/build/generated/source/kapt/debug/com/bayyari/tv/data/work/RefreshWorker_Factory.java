package com.bayyari.tv.data.work;

import android.content.Context;
import androidx.work.WorkerParameters;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.LiveRepository;
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

  private RefreshWorker_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.liveRepositoryProvider = liveRepositoryProvider;
  }

  public RefreshWorker get(Context context, WorkerParameters params) {
    return newInstance(context, params, authRepositoryProvider.get(), liveRepositoryProvider.get());
  }

  public static RefreshWorker_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider) {
    return new RefreshWorker_Factory(authRepositoryProvider, liveRepositoryProvider);
  }

  public static RefreshWorker newInstance(Context context, WorkerParameters params,
      AuthRepository authRepository, LiveRepository liveRepository) {
    return new RefreshWorker(context, params, authRepository, liveRepository);
  }
}
