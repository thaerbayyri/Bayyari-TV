package com.bayyari.tv.ui.live;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.LiveRepository;
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
public final class LiveViewModel_Factory implements Factory<LiveViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<LiveRepository> liveRepositoryProvider;

  private LiveViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.liveRepositoryProvider = liveRepositoryProvider;
  }

  @Override
  public LiveViewModel get() {
    return newInstance(authRepositoryProvider.get(), liveRepositoryProvider.get());
  }

  public static LiveViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<LiveRepository> liveRepositoryProvider) {
    return new LiveViewModel_Factory(authRepositoryProvider, liveRepositoryProvider);
  }

  public static LiveViewModel newInstance(AuthRepository authRepository,
      LiveRepository liveRepository) {
    return new LiveViewModel(authRepository, liveRepository);
  }
}
