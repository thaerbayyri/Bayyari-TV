package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
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
public final class AuthRepository_Factory implements Factory<AuthRepository> {
  private final Provider<XtreamApiService> apiProvider;

  private final Provider<EncryptedPrefs> prefsProvider;

  private AuthRepository_Factory(Provider<XtreamApiService> apiProvider,
      Provider<EncryptedPrefs> prefsProvider) {
    this.apiProvider = apiProvider;
    this.prefsProvider = prefsProvider;
  }

  @Override
  public AuthRepository get() {
    return newInstance(apiProvider.get(), prefsProvider.get());
  }

  public static AuthRepository_Factory create(Provider<XtreamApiService> apiProvider,
      Provider<EncryptedPrefs> prefsProvider) {
    return new AuthRepository_Factory(apiProvider, prefsProvider);
  }

  public static AuthRepository newInstance(XtreamApiService api, EncryptedPrefs prefs) {
    return new AuthRepository(api, prefs);
  }
}
