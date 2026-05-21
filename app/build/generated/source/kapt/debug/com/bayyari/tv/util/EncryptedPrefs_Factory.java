package com.bayyari.tv.util;

import android.content.Context;
import com.google.gson.Gson;
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
public final class EncryptedPrefs_Factory implements Factory<EncryptedPrefs> {
  private final Provider<Context> contextProvider;

  private final Provider<Gson> gsonProvider;

  private EncryptedPrefs_Factory(Provider<Context> contextProvider, Provider<Gson> gsonProvider) {
    this.contextProvider = contextProvider;
    this.gsonProvider = gsonProvider;
  }

  @Override
  public EncryptedPrefs get() {
    return newInstance(contextProvider.get(), gsonProvider.get());
  }

  public static EncryptedPrefs_Factory create(Provider<Context> contextProvider,
      Provider<Gson> gsonProvider) {
    return new EncryptedPrefs_Factory(contextProvider, gsonProvider);
  }

  public static EncryptedPrefs newInstance(Context context, Gson gson) {
    return new EncryptedPrefs(context, gson);
  }
}
