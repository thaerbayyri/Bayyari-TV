package com.bayyari.tv.ui;

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
  private final Provider<CrashReporter> crashReporterProvider;

  private MainActivity_MembersInjector(Provider<CrashReporter> crashReporterProvider) {
    this.crashReporterProvider = crashReporterProvider;
  }

  @Override
  public void injectMembers(MainActivity instance) {
    injectCrashReporter(instance, crashReporterProvider.get());
  }

  public static MembersInjector<MainActivity> create(
      Provider<CrashReporter> crashReporterProvider) {
    return new MainActivity_MembersInjector(crashReporterProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.MainActivity.crashReporter")
  public static void injectCrashReporter(MainActivity instance, CrashReporter crashReporter) {
    instance.crashReporter = crashReporter;
  }
}
