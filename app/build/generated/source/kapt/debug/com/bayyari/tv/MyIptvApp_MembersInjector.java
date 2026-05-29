package com.bayyari.tv;

import androidx.hilt.work.HiltWorkerFactory;
import com.bayyari.tv.data.work.RefreshScheduler;
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
public final class MyIptvApp_MembersInjector implements MembersInjector<MyIptvApp> {
  private final Provider<HiltWorkerFactory> workerFactoryProvider;

  private final Provider<RefreshScheduler> refreshSchedulerProvider;

  private final Provider<CrashReporter> crashReporterProvider;

  private MyIptvApp_MembersInjector(Provider<HiltWorkerFactory> workerFactoryProvider,
      Provider<RefreshScheduler> refreshSchedulerProvider,
      Provider<CrashReporter> crashReporterProvider) {
    this.workerFactoryProvider = workerFactoryProvider;
    this.refreshSchedulerProvider = refreshSchedulerProvider;
    this.crashReporterProvider = crashReporterProvider;
  }

  @Override
  public void injectMembers(MyIptvApp instance) {
    injectWorkerFactory(instance, workerFactoryProvider.get());
    injectRefreshScheduler(instance, refreshSchedulerProvider);
    injectCrashReporter(instance, crashReporterProvider.get());
  }

  public static MembersInjector<MyIptvApp> create(Provider<HiltWorkerFactory> workerFactoryProvider,
      Provider<RefreshScheduler> refreshSchedulerProvider,
      Provider<CrashReporter> crashReporterProvider) {
    return new MyIptvApp_MembersInjector(workerFactoryProvider, refreshSchedulerProvider, crashReporterProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.MyIptvApp.workerFactory")
  public static void injectWorkerFactory(MyIptvApp instance, HiltWorkerFactory workerFactory) {
    instance.workerFactory = workerFactory;
  }

  @InjectedFieldSignature("com.bayyari.tv.MyIptvApp.refreshScheduler")
  public static void injectRefreshScheduler(MyIptvApp instance,
      javax.inject.Provider<RefreshScheduler> refreshScheduler) {
    instance.refreshScheduler = refreshScheduler;
  }

  @InjectedFieldSignature("com.bayyari.tv.MyIptvApp.crashReporter")
  public static void injectCrashReporter(MyIptvApp instance, CrashReporter crashReporter) {
    instance.crashReporter = crashReporter;
  }
}
