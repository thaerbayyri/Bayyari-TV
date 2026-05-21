package com.bayyari.tv.ui.auth;

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
public final class AddServerFragment_MembersInjector implements MembersInjector<AddServerFragment> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private AddServerFragment_MembersInjector(Provider<AuthRepository> authRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
  }

  @Override
  public void injectMembers(AddServerFragment instance) {
    injectAuthRepository(instance, authRepositoryProvider.get());
  }

  public static MembersInjector<AddServerFragment> create(
      Provider<AuthRepository> authRepositoryProvider) {
    return new AddServerFragment_MembersInjector(authRepositoryProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.auth.AddServerFragment.authRepository")
  public static void injectAuthRepository(AddServerFragment instance,
      AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }
}
