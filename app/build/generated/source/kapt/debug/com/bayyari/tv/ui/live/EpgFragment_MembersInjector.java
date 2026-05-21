package com.bayyari.tv.ui.live;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.EpgRepository;
import dagger.MembersInjector;
import dagger.internal.DaggerGenerated;
import dagger.internal.InjectedFieldSignature;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import javax.annotation.processing.Generated;

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
public final class EpgFragment_MembersInjector implements MembersInjector<EpgFragment> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<EpgRepository> epgRepositoryProvider;

  private EpgFragment_MembersInjector(Provider<AuthRepository> authRepositoryProvider,
      Provider<EpgRepository> epgRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.epgRepositoryProvider = epgRepositoryProvider;
  }

  @Override
  public void injectMembers(EpgFragment instance) {
    injectAuthRepository(instance, authRepositoryProvider.get());
    injectEpgRepository(instance, epgRepositoryProvider.get());
  }

  public static MembersInjector<EpgFragment> create(Provider<AuthRepository> authRepositoryProvider,
      Provider<EpgRepository> epgRepositoryProvider) {
    return new EpgFragment_MembersInjector(authRepositoryProvider, epgRepositoryProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.EpgFragment.authRepository")
  public static void injectAuthRepository(EpgFragment instance, AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.EpgFragment.epgRepository")
  public static void injectEpgRepository(EpgFragment instance, EpgRepository epgRepository) {
    instance.epgRepository = epgRepository;
  }
}
