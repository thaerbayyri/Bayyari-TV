package com.bayyari.tv.ui.settings;

import com.bayyari.tv.data.repository.AuthRepository;
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
public final class ServerManagerFragment_MembersInjector implements MembersInjector<ServerManagerFragment> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private ServerManagerFragment_MembersInjector(Provider<AuthRepository> authRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
  }

  @Override
  public void injectMembers(ServerManagerFragment instance) {
    injectAuthRepository(instance, authRepositoryProvider.get());
  }

  public static MembersInjector<ServerManagerFragment> create(
      Provider<AuthRepository> authRepositoryProvider) {
    return new ServerManagerFragment_MembersInjector(authRepositoryProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.settings.ServerManagerFragment.authRepository")
  public static void injectAuthRepository(ServerManagerFragment instance,
      AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }
}
