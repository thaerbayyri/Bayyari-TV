package com.bayyari.tv.ui;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.util.CrashReporter;
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
public final class MainActivity_MembersInjector implements MembersInjector<MainActivity> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<CrashReporter> crashReporterProvider;

  private MainActivity_MembersInjector(Provider<AuthRepository> authRepositoryProvider,
      Provider<CrashReporter> crashReporterProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.crashReporterProvider = crashReporterProvider;
  }

  @Override
  public void injectMembers(MainActivity instance) {
    injectAuthRepository(instance, authRepositoryProvider.get());
    injectCrashReporter(instance, crashReporterProvider.get());
  }

  public static MembersInjector<MainActivity> create(
      Provider<AuthRepository> authRepositoryProvider,
      Provider<CrashReporter> crashReporterProvider) {
    return new MainActivity_MembersInjector(authRepositoryProvider, crashReporterProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.MainActivity.authRepository")
  public static void injectAuthRepository(MainActivity instance, AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.MainActivity.crashReporter")
  public static void injectCrashReporter(MainActivity instance, CrashReporter crashReporter) {
    instance.crashReporter = crashReporter;
  }
}
