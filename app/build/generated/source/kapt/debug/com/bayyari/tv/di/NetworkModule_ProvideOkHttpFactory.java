package com.bayyari.tv.di;

import com.bayyari.tv.data.api.DynamicHostInterceptor;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;

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
public final class NetworkModule_ProvideOkHttpFactory implements Factory<OkHttpClient> {
  private final Provider<DynamicHostInterceptor> dynamicHostProvider;

  private final Provider<HttpLoggingInterceptor> loggingProvider;

  private NetworkModule_ProvideOkHttpFactory(Provider<DynamicHostInterceptor> dynamicHostProvider,
      Provider<HttpLoggingInterceptor> loggingProvider) {
    this.dynamicHostProvider = dynamicHostProvider;
    this.loggingProvider = loggingProvider;
  }

  @Override
  public OkHttpClient get() {
    return provideOkHttp(dynamicHostProvider.get(), loggingProvider.get());
  }

  public static NetworkModule_ProvideOkHttpFactory create(
      Provider<DynamicHostInterceptor> dynamicHostProvider,
      Provider<HttpLoggingInterceptor> loggingProvider) {
    return new NetworkModule_ProvideOkHttpFactory(dynamicHostProvider, loggingProvider);
  }

  public static OkHttpClient provideOkHttp(DynamicHostInterceptor dynamicHost,
      HttpLoggingInterceptor logging) {
    return Preconditions.checkNotNullFromProvides(NetworkModule.INSTANCE.provideOkHttp(dynamicHost, logging));
  }
}
