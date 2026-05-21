package com.bayyari.tv.ui;

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
public final class TvMainActivity_MembersInjector implements MembersInjector<TvMainActivity> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private TvMainActivity_MembersInjector(Provider<AuthRepository> authRepositoryProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
  }

  @Override
  public void injectMembers(TvMainActivity instance) {
    injectAuthRepository(instance, authRepositoryProvider.get());
  }

  public static MembersInjector<TvMainActivity> create(
      Provider<AuthRepository> authRepositoryProvider) {
    return new TvMainActivity_MembersInjector(authRepositoryProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.TvMainActivity.authRepository")
  public static void injectAuthRepository(TvMainActivity instance, AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }
}
