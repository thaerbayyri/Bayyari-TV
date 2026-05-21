package com.bayyari.tv.data.work;

import android.content.Context;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

@ScopeMetadata("javax.inject.Singleton")
@QualifierMetadata("dagger.hilt.android.qualifiers.ApplicationContext")
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
public final class RefreshScheduler_Factory implements Factory<RefreshScheduler> {
  private final Provider<Context> contextProvider;

  private RefreshScheduler_Factory(Provider<Context> contextProvider) {
    this.contextProvider = contextProvider;
  }

  @Override
  public RefreshScheduler get() {
    return newInstance(contextProvider.get());
  }

  public static RefreshScheduler_Factory create(Provider<Context> contextProvider) {
    return new RefreshScheduler_Factory(contextProvider);
  }

  public static RefreshScheduler newInstance(Context context) {
    return new RefreshScheduler(context);
  }
}
