package com.bayyari.tv.domain.usecase;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.EpgRepository;
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
public final class GetCatchUpUseCase_Factory implements Factory<GetCatchUpUseCase> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<EpgRepository> epgRepositoryProvider;

  private GetCatchUpUseCase_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<EpgRepository> epgRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.epgRepositoryProvider = epgRepositoryProvider;
  }

  @Override
  public GetCatchUpUseCase get() {
    return newInstance(authRepositoryProvider.get(), epgRepositoryProvider.get());
  }

  public static GetCatchUpUseCase_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<EpgRepository> epgRepositoryProvider) {
    return new GetCatchUpUseCase_Factory(authRepositoryProvider, epgRepositoryProvider);
  }

  public static GetCatchUpUseCase newInstance(AuthRepository authRepository,
      EpgRepository epgRepository) {
    return new GetCatchUpUseCase(authRepository, epgRepository);
  }
}
