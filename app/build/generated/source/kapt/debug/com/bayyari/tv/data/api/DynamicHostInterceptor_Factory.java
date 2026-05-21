package com.bayyari.tv.data.api;

import com.bayyari.tv.util.EncryptedPrefs;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
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
public final class DynamicHostInterceptor_Factory implements Factory<DynamicHostInterceptor> {
  private final Provider<EncryptedPrefs> prefsProvider;

  private DynamicHostInterceptor_Factory(Provider<EncryptedPrefs> prefsProvider) {
    this.prefsProvider = prefsProvider;
  }

  @Override
  public DynamicHostInterceptor get() {
    return newInstance(prefsProvider.get());
  }

  public static DynamicHostInterceptor_Factory create(Provider<EncryptedPrefs> prefsProvider) {
    return new DynamicHostInterceptor_Factory(prefsProvider);
  }

  public static DynamicHostInterceptor newInstance(EncryptedPrefs prefs) {
    return new DynamicHostInterceptor(prefs);
  }
}
