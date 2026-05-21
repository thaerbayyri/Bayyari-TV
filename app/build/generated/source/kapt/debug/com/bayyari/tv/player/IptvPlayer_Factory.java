package com.bayyari.tv.player;

import android.content.Context;
import androidx.media3.exoplayer.LoadControl;
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
public final class IptvPlayer_Factory implements Factory<IptvPlayer> {
  private final Provider<Context> appContextProvider;

  private final Provider<LoadControl> loadControlProvider;

  private IptvPlayer_Factory(Provider<Context> appContextProvider,
      Provider<LoadControl> loadControlProvider) {
    this.appContextProvider = appContextProvider;
    this.loadControlProvider = loadControlProvider;
  }

  @Override
  public IptvPlayer get() {
    return newInstance(appContextProvider.get(), loadControlProvider.get());
  }

  public static IptvPlayer_Factory create(Provider<Context> appContextProvider,
      Provider<LoadControl> loadControlProvider) {
    return new IptvPlayer_Factory(appContextProvider, loadControlProvider);
  }

  public static IptvPlayer newInstance(Context appContext, LoadControl loadControl) {
    return new IptvPlayer(appContext, loadControl);
  }
}
