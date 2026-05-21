package com.bayyari.tv.domain.usecase;

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
public final class GetLiveChannelsUseCase_Factory implements Factory<GetLiveChannelsUseCase> {
  private final Provider<LiveRepository> liveRepositoryProvider;

  private GetLiveChannelsUseCase_Factory(Provider<LiveRepository> liveRepositoryProvider) {
    this.liveRepositoryProvider = liveRepositoryProvider;
  }

  @Override
  public GetLiveChannelsUseCase get() {
    return newInstance(liveRepositoryProvider.get());
  }

  public static GetLiveChannelsUseCase_Factory create(
      Provider<LiveRepository> liveRepositoryProvider) {
    return new GetLiveChannelsUseCase_Factory(liveRepositoryProvider);
  }

  public static GetLiveChannelsUseCase newInstance(LiveRepository liveRepository) {
    return new GetLiveChannelsUseCase(liveRepository);
  }
}
