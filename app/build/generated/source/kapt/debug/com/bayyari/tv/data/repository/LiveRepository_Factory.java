package com.bayyari.tv.data.repository;

import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.util.M3uParser;
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
public final class LiveRepository_Factory implements Factory<LiveRepository> {
  private final Provider<XtreamApiService> apiProvider;

  private final Provider<ChannelDao> channelDaoProvider;

  private final Provider<M3uParser> m3uParserProvider;

  private LiveRepository_Factory(Provider<XtreamApiService> apiProvider,
      Provider<ChannelDao> channelDaoProvider, Provider<M3uParser> m3uParserProvider) {
    this.apiProvider = apiProvider;
    this.channelDaoProvider = channelDaoProvider;
    this.m3uParserProvider = m3uParserProvider;
  }

  @Override
  public LiveRepository get() {
    return newInstance(apiProvider.get(), channelDaoProvider.get(), m3uParserProvider.get());
  }

  public static LiveRepository_Factory create(Provider<XtreamApiService> apiProvider,
      Provider<ChannelDao> channelDaoProvider, Provider<M3uParser> m3uParserProvider) {
    return new LiveRepository_Factory(apiProvider, channelDaoProvider, m3uParserProvider);
  }

  public static LiveRepository newInstance(XtreamApiService api, ChannelDao channelDao,
      M3uParser m3uParser) {
    return new LiveRepository(api, channelDao, m3uParser);
  }
}
