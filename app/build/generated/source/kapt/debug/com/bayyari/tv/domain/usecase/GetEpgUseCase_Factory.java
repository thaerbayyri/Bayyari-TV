package com.bayyari.tv.domain.usecase;

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
public final class GetEpgUseCase_Factory implements Factory<GetEpgUseCase> {
  private final Provider<EpgRepository> epgRepositoryProvider;

  private GetEpgUseCase_Factory(Provider<EpgRepository> epgRepositoryProvider) {
    this.epgRepositoryProvider = epgRepositoryProvider;
  }

  @Override
  public GetEpgUseCase get() {
    return newInstance(epgRepositoryProvider.get());
  }

  public static GetEpgUseCase_Factory create(Provider<EpgRepository> epgRepositoryProvider) {
    return new GetEpgUseCase_Factory(epgRepositoryProvider);
  }

  public static GetEpgUseCase newInstance(EpgRepository epgRepository) {
    return new GetEpgUseCase(epgRepository);
  }
}
