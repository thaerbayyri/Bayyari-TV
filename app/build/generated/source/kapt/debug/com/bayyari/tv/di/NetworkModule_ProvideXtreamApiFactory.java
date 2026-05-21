package com.bayyari.tv.di;

import com.bayyari.tv.data.api.XtreamApiService;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;
import retrofit2.Retrofit;

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
public final class NetworkModule_ProvideXtreamApiFactory implements Factory<XtreamApiService> {
  private final Provider<Retrofit> retrofitProvider;

  private NetworkModule_ProvideXtreamApiFactory(Provider<Retrofit> retrofitProvider) {
    this.retrofitProvider = retrofitProvider;
  }

  @Override
  public XtreamApiService get() {
    return provideXtreamApi(retrofitProvider.get());
  }

  public static NetworkModule_ProvideXtreamApiFactory create(Provider<Retrofit> retrofitProvider) {
    return new NetworkModule_ProvideXtreamApiFactory(retrofitProvider);
  }

  public static XtreamApiService provideXtreamApi(Retrofit retrofit) {
    return Preconditions.checkNotNullFromProvides(NetworkModule.INSTANCE.provideXtreamApi(retrofit));
  }
}
