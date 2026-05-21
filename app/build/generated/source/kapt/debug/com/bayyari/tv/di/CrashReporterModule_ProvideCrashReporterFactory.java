package com.bayyari.tv.di;

import com.bayyari.tv.util.CrashReporter;
import com.bayyari.tv.util.FileCrashReporter;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

@ScopeMetadata("javax.inject.Singleton")
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
public final class CrashReporterModule_ProvideCrashReporterFactory implements Factory<CrashReporter> {
  private final Provider<FileCrashReporter> implProvider;

  private CrashReporterModule_ProvideCrashReporterFactory(
      Provider<FileCrashReporter> implProvider) {
    this.implProvider = implProvider;
  }

  @Override
  public CrashReporter get() {
    return provideCrashReporter(implProvider.get());
  }

  public static CrashReporterModule_ProvideCrashReporterFactory create(
      Provider<FileCrashReporter> implProvider) {
    return new CrashReporterModule_ProvideCrashReporterFactory(implProvider);
  }

  public static CrashReporter provideCrashReporter(FileCrashReporter impl) {
    return Preconditions.checkNotNullFromProvides(CrashReporterModule.INSTANCE.provideCrashReporter(impl));
  }
}
