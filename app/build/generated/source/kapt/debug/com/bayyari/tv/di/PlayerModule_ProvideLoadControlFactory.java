package com.bayyari.tv.di;

import androidx.media3.exoplayer.LoadControl;
import com.bayyari.tv.util.EncryptedPrefs;
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
public final class PlayerModule_ProvideLoadControlFactory implements Factory<LoadControl> {
  private final Provider<EncryptedPrefs> prefsProvider;

  private PlayerModule_ProvideLoadControlFactory(Provider<EncryptedPrefs> prefsProvider) {
    this.prefsProvider = prefsProvider;
  }

  @Override
  public LoadControl get() {
    return provideLoadControl(prefsProvider.get());
  }

  public static PlayerModule_ProvideLoadControlFactory create(
      Provider<EncryptedPrefs> prefsProvider) {
    return new PlayerModule_ProvideLoadControlFactory(prefsProvider);
  }

  public static LoadControl provideLoadControl(EncryptedPrefs prefs) {
    return Preconditions.checkNotNullFromProvides(PlayerModule.INSTANCE.provideLoadControl(prefs));
  }
}
