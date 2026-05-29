package com.bayyari.tv.ui.live;

import androidx.media3.exoplayer.LoadControl;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.StreamUrlBuilder;
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
public final class LiveFragment_MembersInjector implements MembersInjector<LiveFragment> {
  private final Provider<StreamUrlBuilder> streamUrlBuilderProvider;

  private final Provider<EncryptedPrefs> prefsProvider;

  private final Provider<LoadControl> loadControlProvider;

  private LiveFragment_MembersInjector(Provider<StreamUrlBuilder> streamUrlBuilderProvider,
      Provider<EncryptedPrefs> prefsProvider, Provider<LoadControl> loadControlProvider) {
    this.streamUrlBuilderProvider = streamUrlBuilderProvider;
    this.prefsProvider = prefsProvider;
    this.loadControlProvider = loadControlProvider;
  }

  @Override
  public void injectMembers(LiveFragment instance) {
    injectStreamUrlBuilder(instance, streamUrlBuilderProvider.get());
    injectPrefs(instance, prefsProvider.get());
    injectLoadControl(instance, loadControlProvider.get());
  }

  public static MembersInjector<LiveFragment> create(
      Provider<StreamUrlBuilder> streamUrlBuilderProvider, Provider<EncryptedPrefs> prefsProvider,
      Provider<LoadControl> loadControlProvider) {
    return new LiveFragment_MembersInjector(streamUrlBuilderProvider, prefsProvider, loadControlProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.LiveFragment.streamUrlBuilder")
  public static void injectStreamUrlBuilder(LiveFragment instance,
      StreamUrlBuilder streamUrlBuilder) {
    instance.streamUrlBuilder = streamUrlBuilder;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.LiveFragment.prefs")
  public static void injectPrefs(LiveFragment instance, EncryptedPrefs prefs) {
    instance.prefs = prefs;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.LiveFragment.loadControl")
  public static void injectLoadControl(LiveFragment instance, LoadControl loadControl) {
    instance.loadControl = loadControl;
  }
}
