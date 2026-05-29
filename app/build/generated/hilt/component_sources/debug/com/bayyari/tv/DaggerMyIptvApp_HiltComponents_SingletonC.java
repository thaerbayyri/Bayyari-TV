package com.bayyari.tv;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.hilt.work.HiltWorkerFactory;
import androidx.hilt.work.WorkerAssistedFactory;
import androidx.hilt.work.WorkerFactoryModule_ProvideFactoryFactory;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.media3.exoplayer.LoadControl;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.bayyari.tv.data.api.DynamicHostInterceptor;
import com.bayyari.tv.data.api.XtreamApiService;
import com.bayyari.tv.data.local.AppDatabase;
import com.bayyari.tv.data.local.dao.ChannelDao;
import com.bayyari.tv.data.local.dao.EpgDao;
import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.local.dao.MovieDao;
import com.bayyari.tv.data.local.dao.SeriesDao;
import com.bayyari.tv.data.local.dao.WatchHistoryDao;
import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.data.repository.EpgRepository;
import com.bayyari.tv.data.repository.LiveRepository;
import com.bayyari.tv.data.repository.MovieRepository;
import com.bayyari.tv.data.repository.SeriesRepository;
import com.bayyari.tv.data.repository.WatchHistoryRepository;
import com.bayyari.tv.data.work.RefreshScheduler;
import com.bayyari.tv.data.work.RefreshWorker;
import com.bayyari.tv.data.work.RefreshWorker_AssistedFactory;
import com.bayyari.tv.di.CrashReporterModule_ProvideCrashReporterFactory;
import com.bayyari.tv.di.DatabaseModule_ProvideChannelDaoFactory;
import com.bayyari.tv.di.DatabaseModule_ProvideDatabaseFactory;
import com.bayyari.tv.di.DatabaseModule_ProvideEpgDaoFactory;
import com.bayyari.tv.di.DatabaseModule_ProvideFavoriteDaoFactory;
import com.bayyari.tv.di.DatabaseModule_ProvideMovieDaoFactory;
import com.bayyari.tv.di.DatabaseModule_ProvideSeriesDaoFactory;
import com.bayyari.tv.di.DatabaseModule_ProvideWatchHistoryDaoFactory;
import com.bayyari.tv.di.NetworkModule_ProvideGsonFactory;
import com.bayyari.tv.di.NetworkModule_ProvideHttpLoggingFactory;
import com.bayyari.tv.di.NetworkModule_ProvideOkHttpFactory;
import com.bayyari.tv.di.NetworkModule_ProvideRetrofitFactory;
import com.bayyari.tv.di.NetworkModule_ProvideXtreamApiFactory;
import com.bayyari.tv.di.PlayerModule_ProvideLoadControlFactory;
import com.bayyari.tv.domain.usecase.GetCatchUpUseCase;
import com.bayyari.tv.domain.usecase.LoginUseCase;
import com.bayyari.tv.domain.usecase.SearchUseCase;
import com.bayyari.tv.player.IptvPlayer;
import com.bayyari.tv.player.PlayerService;
import com.bayyari.tv.player.PlayerService_MembersInjector;
import com.bayyari.tv.ui.MainActivity;
import com.bayyari.tv.ui.MainActivity_MembersInjector;
import com.bayyari.tv.ui.TvMainActivity;
import com.bayyari.tv.ui.TvMainActivity_MembersInjector;
import com.bayyari.tv.ui.auth.AddServerFragment;
import com.bayyari.tv.ui.auth.AddServerFragment_MembersInjector;
import com.bayyari.tv.ui.auth.LoginActivity;
import com.bayyari.tv.ui.auth.LoginFragment;
import com.bayyari.tv.ui.auth.LoginViewModel;
import com.bayyari.tv.ui.auth.LoginViewModel_HiltModules;
import com.bayyari.tv.ui.auth.LoginViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.auth.LoginViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.catchup.CatchUpFragment;
import com.bayyari.tv.ui.catchup.CatchUpPlayerActivity;
import com.bayyari.tv.ui.catchup.CatchUpPlayerActivity_MembersInjector;
import com.bayyari.tv.ui.catchup.CatchUpViewModel;
import com.bayyari.tv.ui.catchup.CatchUpViewModel_HiltModules;
import com.bayyari.tv.ui.catchup.CatchUpViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.catchup.CatchUpViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.favorites.FavoritesFragment;
import com.bayyari.tv.ui.favorites.FavoritesViewModel;
import com.bayyari.tv.ui.favorites.FavoritesViewModel_HiltModules;
import com.bayyari.tv.ui.favorites.FavoritesViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.favorites.FavoritesViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.home.HomeFragment;
import com.bayyari.tv.ui.home.HomeViewModel;
import com.bayyari.tv.ui.home.HomeViewModel_HiltModules;
import com.bayyari.tv.ui.home.HomeViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.home.HomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.home.TvHomeFragment;
import com.bayyari.tv.ui.home.TvHomeViewModel;
import com.bayyari.tv.ui.home.TvHomeViewModel_HiltModules;
import com.bayyari.tv.ui.home.TvHomeViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.home.TvHomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.live.EpgFragment;
import com.bayyari.tv.ui.live.EpgFragment_MembersInjector;
import com.bayyari.tv.ui.live.LiveFragment;
import com.bayyari.tv.ui.live.LiveFragment_MembersInjector;
import com.bayyari.tv.ui.live.LivePlayerActivity;
import com.bayyari.tv.ui.live.LivePlayerActivity_MembersInjector;
import com.bayyari.tv.ui.live.LivePlayerViewModel;
import com.bayyari.tv.ui.live.LivePlayerViewModel_HiltModules;
import com.bayyari.tv.ui.live.LivePlayerViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.live.LivePlayerViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.live.LiveViewModel;
import com.bayyari.tv.ui.live.LiveViewModel_HiltModules;
import com.bayyari.tv.ui.live.LiveViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.live.LiveViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.live.TvLiveFragment;
import com.bayyari.tv.ui.live.TvLivePlayerActivity;
import com.bayyari.tv.ui.live.TvLivePlayerActivity_MembersInjector;
import com.bayyari.tv.ui.movies.MovieDetailFragment;
import com.bayyari.tv.ui.movies.MovieDetailViewModel;
import com.bayyari.tv.ui.movies.MovieDetailViewModel_HiltModules;
import com.bayyari.tv.ui.movies.MovieDetailViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.movies.MovieDetailViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.movies.MovieFragment;
import com.bayyari.tv.ui.movies.MoviePlayerActivity;
import com.bayyari.tv.ui.movies.MoviePlayerActivity_MembersInjector;
import com.bayyari.tv.ui.movies.MovieViewModel;
import com.bayyari.tv.ui.movies.MovieViewModel_HiltModules;
import com.bayyari.tv.ui.movies.MovieViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.movies.MovieViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.movies.TvMovieFragment;
import com.bayyari.tv.ui.movies.TvMoviePlayerActivity;
import com.bayyari.tv.ui.movies.TvMoviePlayerActivity_MembersInjector;
import com.bayyari.tv.ui.search.SearchFragment;
import com.bayyari.tv.ui.search.SearchResultsFragment;
import com.bayyari.tv.ui.search.SearchResultsFragment_MembersInjector;
import com.bayyari.tv.ui.search.SearchViewModel;
import com.bayyari.tv.ui.search.SearchViewModel_HiltModules;
import com.bayyari.tv.ui.search.SearchViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.search.SearchViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.series.EpisodePlayerActivity;
import com.bayyari.tv.ui.series.EpisodePlayerActivity_MembersInjector;
import com.bayyari.tv.ui.series.SeasonFragment;
import com.bayyari.tv.ui.series.SeriesDetailFragment;
import com.bayyari.tv.ui.series.SeriesDetailViewModel;
import com.bayyari.tv.ui.series.SeriesDetailViewModel_HiltModules;
import com.bayyari.tv.ui.series.SeriesDetailViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.series.SeriesDetailViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.series.SeriesFragment;
import com.bayyari.tv.ui.series.SeriesViewModel;
import com.bayyari.tv.ui.series.SeriesViewModel_HiltModules;
import com.bayyari.tv.ui.series.SeriesViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.series.SeriesViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.series.TvSeriesFragment;
import com.bayyari.tv.ui.settings.ServerManagerFragment;
import com.bayyari.tv.ui.settings.ServerManagerFragment_MembersInjector;
import com.bayyari.tv.ui.settings.SettingsFragment;
import com.bayyari.tv.ui.settings.SettingsViewModel;
import com.bayyari.tv.ui.settings.SettingsViewModel_HiltModules;
import com.bayyari.tv.ui.settings.SettingsViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.settings.SettingsViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.ui.sync.SyncActivity;
import com.bayyari.tv.ui.sync.SyncViewModel;
import com.bayyari.tv.ui.sync.SyncViewModel_HiltModules;
import com.bayyari.tv.ui.sync.SyncViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import com.bayyari.tv.ui.sync.SyncViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import com.bayyari.tv.util.CrashReporter;
import com.bayyari.tv.util.EncryptedPrefs;
import com.bayyari.tv.util.FileCrashReporter;
import com.bayyari.tv.util.NetworkUtils;
import com.bayyari.tv.util.StreamUrlBuilder;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.gson.Gson;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.ViewModelLifecycle;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.android.internal.builders.ViewComponentBuilder;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories_InternalFactoryFactory_Factory;
import dagger.hilt.android.internal.managers.ActivityRetainedComponentManager_LifecycleModule_ProvideActivityRetainedLifecycleFactory;
import dagger.hilt.android.internal.managers.SavedStateHandleHolder;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.android.internal.modules.ApplicationContextModule_ProvideContextFactory;
import dagger.internal.DaggerGenerated;
import dagger.internal.DoubleCheck;
import dagger.internal.LazyClassKeyMap;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.SingleCheck;
import java.util.Map;
import java.util.Set;
import javax.annotation.processing.Generated;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;

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
public final class DaggerMyIptvApp_HiltComponents_SingletonC {
  private DaggerMyIptvApp_HiltComponents_SingletonC() {
  }

  public static Builder builder() {
    return new Builder();
  }

  public static final class Builder {
    private ApplicationContextModule applicationContextModule;

    private Builder() {
    }

    public Builder applicationContextModule(ApplicationContextModule applicationContextModule) {
      this.applicationContextModule = Preconditions.checkNotNull(applicationContextModule);
      return this;
    }

    public MyIptvApp_HiltComponents.SingletonC build() {
      Preconditions.checkBuilderRequirement(applicationContextModule, ApplicationContextModule.class);
      return new SingletonCImpl(applicationContextModule);
    }
  }

  private static final class ActivityRetainedCBuilder implements MyIptvApp_HiltComponents.ActivityRetainedC.Builder {
    private final SingletonCImpl singletonCImpl;

    private SavedStateHandleHolder savedStateHandleHolder;

    private ActivityRetainedCBuilder(SingletonCImpl singletonCImpl) {
      this.singletonCImpl = singletonCImpl;
    }

    @Override
    public ActivityRetainedCBuilder savedStateHandleHolder(
        SavedStateHandleHolder savedStateHandleHolder) {
      this.savedStateHandleHolder = Preconditions.checkNotNull(savedStateHandleHolder);
      return this;
    }

    @Override
    public MyIptvApp_HiltComponents.ActivityRetainedC build() {
      Preconditions.checkBuilderRequirement(savedStateHandleHolder, SavedStateHandleHolder.class);
      return new ActivityRetainedCImpl(singletonCImpl, savedStateHandleHolder);
    }
  }

  private static final class ActivityCBuilder implements MyIptvApp_HiltComponents.ActivityC.Builder {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private Activity activity;

    private ActivityCBuilder(SingletonCImpl singletonCImpl,
        ActivityRetainedCImpl activityRetainedCImpl) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;
    }

    @Override
    public ActivityCBuilder activity(Activity activity) {
      this.activity = Preconditions.checkNotNull(activity);
      return this;
    }

    @Override
    public MyIptvApp_HiltComponents.ActivityC build() {
      Preconditions.checkBuilderRequirement(activity, Activity.class);
      return new ActivityCImpl(singletonCImpl, activityRetainedCImpl, activity);
    }
  }

  private static final class FragmentCBuilder implements MyIptvApp_HiltComponents.FragmentC.Builder {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private final ActivityCImpl activityCImpl;

    private Fragment fragment;

    private FragmentCBuilder(SingletonCImpl singletonCImpl,
        ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;
      this.activityCImpl = activityCImpl;
    }

    @Override
    public FragmentCBuilder fragment(Fragment fragment) {
      this.fragment = Preconditions.checkNotNull(fragment);
      return this;
    }

    @Override
    public MyIptvApp_HiltComponents.FragmentC build() {
      Preconditions.checkBuilderRequirement(fragment, Fragment.class);
      return new FragmentCImpl(singletonCImpl, activityRetainedCImpl, activityCImpl, fragment);
    }
  }

  private static final class ViewWithFragmentCBuilder implements MyIptvApp_HiltComponents.ViewWithFragmentC.Builder {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private final ActivityCImpl activityCImpl;

    private final FragmentCImpl fragmentCImpl;

    private View view;

    private ViewWithFragmentCBuilder(SingletonCImpl singletonCImpl,
        ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl,
        FragmentCImpl fragmentCImpl) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;
      this.activityCImpl = activityCImpl;
      this.fragmentCImpl = fragmentCImpl;
    }

    @Override
    public ViewWithFragmentCBuilder view(View view) {
      this.view = Preconditions.checkNotNull(view);
      return this;
    }

    @Override
    public MyIptvApp_HiltComponents.ViewWithFragmentC build() {
      Preconditions.checkBuilderRequirement(view, View.class);
      return new ViewWithFragmentCImpl(singletonCImpl, activityRetainedCImpl, activityCImpl, fragmentCImpl, view);
    }
  }

  private static final class ViewCBuilder implements MyIptvApp_HiltComponents.ViewC.Builder {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private final ActivityCImpl activityCImpl;

    private View view;

    private ViewCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl,
        ActivityCImpl activityCImpl) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;
      this.activityCImpl = activityCImpl;
    }

    @Override
    public ViewCBuilder view(View view) {
      this.view = Preconditions.checkNotNull(view);
      return this;
    }

    @Override
    public MyIptvApp_HiltComponents.ViewC build() {
      Preconditions.checkBuilderRequirement(view, View.class);
      return new ViewCImpl(singletonCImpl, activityRetainedCImpl, activityCImpl, view);
    }
  }

  private static final class ViewModelCBuilder implements MyIptvApp_HiltComponents.ViewModelC.Builder {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private SavedStateHandle savedStateHandle;

    private ViewModelLifecycle viewModelLifecycle;

    private ViewModelCBuilder(SingletonCImpl singletonCImpl,
        ActivityRetainedCImpl activityRetainedCImpl) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;
    }

    @Override
    public ViewModelCBuilder savedStateHandle(SavedStateHandle handle) {
      this.savedStateHandle = Preconditions.checkNotNull(handle);
      return this;
    }

    @Override
    public ViewModelCBuilder viewModelLifecycle(ViewModelLifecycle viewModelLifecycle) {
      this.viewModelLifecycle = Preconditions.checkNotNull(viewModelLifecycle);
      return this;
    }

    @Override
    public MyIptvApp_HiltComponents.ViewModelC build() {
      Preconditions.checkBuilderRequirement(savedStateHandle, SavedStateHandle.class);
      Preconditions.checkBuilderRequirement(viewModelLifecycle, ViewModelLifecycle.class);
      return new ViewModelCImpl(singletonCImpl, activityRetainedCImpl, savedStateHandle, viewModelLifecycle);
    }
  }

  private static final class ServiceCBuilder implements MyIptvApp_HiltComponents.ServiceC.Builder {
    private final SingletonCImpl singletonCImpl;

    private Service service;

    private ServiceCBuilder(SingletonCImpl singletonCImpl) {
      this.singletonCImpl = singletonCImpl;
    }

    @Override
    public ServiceCBuilder service(Service service) {
      this.service = Preconditions.checkNotNull(service);
      return this;
    }

    @Override
    public MyIptvApp_HiltComponents.ServiceC build() {
      Preconditions.checkBuilderRequirement(service, Service.class);
      return new ServiceCImpl(singletonCImpl, service);
    }
  }

  private static final class ViewWithFragmentCImpl extends MyIptvApp_HiltComponents.ViewWithFragmentC {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private final ActivityCImpl activityCImpl;

    private final FragmentCImpl fragmentCImpl;

    private final ViewWithFragmentCImpl viewWithFragmentCImpl = this;

    ViewWithFragmentCImpl(SingletonCImpl singletonCImpl,
        ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl,
        FragmentCImpl fragmentCImpl, View viewParam) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;
      this.activityCImpl = activityCImpl;
      this.fragmentCImpl = fragmentCImpl;


    }
  }

  private static final class FragmentCImpl extends MyIptvApp_HiltComponents.FragmentC {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private final ActivityCImpl activityCImpl;

    private final FragmentCImpl fragmentCImpl = this;

    FragmentCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl,
        ActivityCImpl activityCImpl, Fragment fragmentParam) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;
      this.activityCImpl = activityCImpl;


    }

    @Override
    public void injectAddServerFragment(AddServerFragment addServerFragment) {
      injectAddServerFragment2(addServerFragment);
    }

    @Override
    public void injectLoginFragment(LoginFragment loginFragment) {
    }

    @Override
    public void injectCatchUpFragment(CatchUpFragment catchUpFragment) {
    }

    @Override
    public void injectFavoritesFragment(FavoritesFragment favoritesFragment) {
    }

    @Override
    public void injectHomeFragment(HomeFragment homeFragment) {
    }

    @Override
    public void injectTvHomeFragment(TvHomeFragment tvHomeFragment) {
    }

    @Override
    public void injectEpgFragment(EpgFragment epgFragment) {
      injectEpgFragment2(epgFragment);
    }

    @Override
    public void injectLiveFragment(LiveFragment liveFragment) {
      injectLiveFragment2(liveFragment);
    }

    @Override
    public void injectTvLiveFragment(TvLiveFragment tvLiveFragment) {
    }

    @Override
    public void injectMovieDetailFragment(MovieDetailFragment movieDetailFragment) {
    }

    @Override
    public void injectMovieFragment(MovieFragment movieFragment) {
    }

    @Override
    public void injectTvMovieFragment(TvMovieFragment tvMovieFragment) {
    }

    @Override
    public void injectSearchFragment(SearchFragment searchFragment) {
    }

    @Override
    public void injectSearchResultsFragment(SearchResultsFragment searchResultsFragment) {
      injectSearchResultsFragment2(searchResultsFragment);
    }

    @Override
    public void injectSeasonFragment(SeasonFragment seasonFragment) {
    }

    @Override
    public void injectSeriesDetailFragment(SeriesDetailFragment seriesDetailFragment) {
    }

    @Override
    public void injectSeriesFragment(SeriesFragment seriesFragment) {
    }

    @Override
    public void injectTvSeriesFragment(TvSeriesFragment tvSeriesFragment) {
    }

    @Override
    public void injectServerManagerFragment(ServerManagerFragment serverManagerFragment) {
      injectServerManagerFragment2(serverManagerFragment);
    }

    @Override
    public void injectSettingsFragment(SettingsFragment settingsFragment) {
    }

    @Override
    public DefaultViewModelFactories.InternalFactoryFactory getHiltInternalFactoryFactory() {
      return activityCImpl.getHiltInternalFactoryFactory();
    }

    @Override
    public ViewWithFragmentComponentBuilder viewWithFragmentComponentBuilder() {
      return new ViewWithFragmentCBuilder(singletonCImpl, activityRetainedCImpl, activityCImpl, fragmentCImpl);
    }

    @CanIgnoreReturnValue
    private AddServerFragment injectAddServerFragment2(AddServerFragment instance) {
      AddServerFragment_MembersInjector.injectAuthRepository(instance, singletonCImpl.authRepositoryProvider.get());
      return instance;
    }

    @CanIgnoreReturnValue
    private EpgFragment injectEpgFragment2(EpgFragment instance2) {
      EpgFragment_MembersInjector.injectAuthRepository(instance2, singletonCImpl.authRepositoryProvider.get());
      EpgFragment_MembersInjector.injectEpgRepository(instance2, singletonCImpl.epgRepositoryProvider.get());
      return instance2;
    }

    @CanIgnoreReturnValue
    private LiveFragment injectLiveFragment2(LiveFragment instance3) {
      LiveFragment_MembersInjector.injectStreamUrlBuilder(instance3, singletonCImpl.streamUrlBuilderProvider.get());
      LiveFragment_MembersInjector.injectPrefs(instance3, singletonCImpl.encryptedPrefsProvider.get());
      LiveFragment_MembersInjector.injectLoadControl(instance3, singletonCImpl.provideLoadControlProvider.get());
      return instance3;
    }

    @CanIgnoreReturnValue
    private SearchResultsFragment injectSearchResultsFragment2(SearchResultsFragment instance4) {
      SearchResultsFragment_MembersInjector.injectAuthRepository(instance4, singletonCImpl.authRepositoryProvider.get());
      SearchResultsFragment_MembersInjector.injectPrefs(instance4, singletonCImpl.encryptedPrefsProvider.get());
      SearchResultsFragment_MembersInjector.injectStreamUrlBuilder(instance4, singletonCImpl.streamUrlBuilderProvider.get());
      return instance4;
    }

    @CanIgnoreReturnValue
    private ServerManagerFragment injectServerManagerFragment2(ServerManagerFragment instance5) {
      ServerManagerFragment_MembersInjector.injectAuthRepository(instance5, singletonCImpl.authRepositoryProvider.get());
      ServerManagerFragment_MembersInjector.injectChannelDao(instance5, singletonCImpl.channelDao());
      ServerManagerFragment_MembersInjector.injectMovieDao(instance5, singletonCImpl.movieDao());
      ServerManagerFragment_MembersInjector.injectSeriesDao(instance5, singletonCImpl.seriesDao());
      ServerManagerFragment_MembersInjector.injectEpgDao(instance5, singletonCImpl.epgDao());
      ServerManagerFragment_MembersInjector.injectWatchHistoryRepository(instance5, singletonCImpl.watchHistoryRepositoryProvider.get());
      return instance5;
    }
  }

  private static final class ViewCImpl extends MyIptvApp_HiltComponents.ViewC {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private final ActivityCImpl activityCImpl;

    private final ViewCImpl viewCImpl = this;

    ViewCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl,
        ActivityCImpl activityCImpl, View viewParam) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;
      this.activityCImpl = activityCImpl;


    }
  }

  private static final class ActivityCImpl extends MyIptvApp_HiltComponents.ActivityC {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private final ActivityCImpl activityCImpl = this;

    ActivityCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl,
        Activity activityParam) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;


    }

    ImmutableMap keySetMapOfClassOfAndBooleanBuilder() {
      ImmutableMap.Builder mapBuilder = ImmutableMap.<String, Boolean>builderWithExpectedSize(14);
      mapBuilder.put(CatchUpViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, CatchUpViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(FavoritesViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, FavoritesViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(HomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, HomeViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(LivePlayerViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, LivePlayerViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(LiveViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, LiveViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(LoginViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, LoginViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(MovieDetailViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, MovieDetailViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(MovieViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, MovieViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(SearchViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, SearchViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(SeriesDetailViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, SeriesDetailViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(SeriesViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, SeriesViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(SettingsViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, SettingsViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(SyncViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, SyncViewModel_HiltModules.KeyModule.provide());
      mapBuilder.put(TvHomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, TvHomeViewModel_HiltModules.KeyModule.provide());
      return mapBuilder.build();
    }

    @Override
    public void injectMainActivity(MainActivity mainActivity) {
      injectMainActivity2(mainActivity);
    }

    @Override
    public void injectTvMainActivity(TvMainActivity tvMainActivity) {
      injectTvMainActivity2(tvMainActivity);
    }

    @Override
    public void injectLoginActivity(LoginActivity loginActivity) {
    }

    @Override
    public void injectCatchUpPlayerActivity(CatchUpPlayerActivity catchUpPlayerActivity) {
      injectCatchUpPlayerActivity2(catchUpPlayerActivity);
    }

    @Override
    public void injectLivePlayerActivity(LivePlayerActivity livePlayerActivity) {
      injectLivePlayerActivity2(livePlayerActivity);
    }

    @Override
    public void injectTvLivePlayerActivity(TvLivePlayerActivity tvLivePlayerActivity) {
      injectTvLivePlayerActivity2(tvLivePlayerActivity);
    }

    @Override
    public void injectMoviePlayerActivity(MoviePlayerActivity moviePlayerActivity) {
      injectMoviePlayerActivity2(moviePlayerActivity);
    }

    @Override
    public void injectTvMoviePlayerActivity(TvMoviePlayerActivity tvMoviePlayerActivity) {
      injectTvMoviePlayerActivity2(tvMoviePlayerActivity);
    }

    @Override
    public void injectEpisodePlayerActivity(EpisodePlayerActivity episodePlayerActivity) {
      injectEpisodePlayerActivity2(episodePlayerActivity);
    }

    @Override
    public void injectSyncActivity(SyncActivity syncActivity) {
    }

    @Override
    public DefaultViewModelFactories.InternalFactoryFactory getHiltInternalFactoryFactory() {
      return DefaultViewModelFactories_InternalFactoryFactory_Factory.newInstance(getViewModelKeys(), new ViewModelCBuilder(singletonCImpl, activityRetainedCImpl));
    }

    @Override
    public Map<Class<?>, Boolean> getViewModelKeys() {
      return LazyClassKeyMap.<Boolean>of(keySetMapOfClassOfAndBooleanBuilder());
    }

    @Override
    public ViewModelComponentBuilder getViewModelComponentBuilder() {
      return new ViewModelCBuilder(singletonCImpl, activityRetainedCImpl);
    }

    @Override
    public FragmentComponentBuilder fragmentComponentBuilder() {
      return new FragmentCBuilder(singletonCImpl, activityRetainedCImpl, activityCImpl);
    }

    @Override
    public ViewComponentBuilder viewComponentBuilder() {
      return new ViewCBuilder(singletonCImpl, activityRetainedCImpl, activityCImpl);
    }

    @CanIgnoreReturnValue
    private MainActivity injectMainActivity2(MainActivity instance) {
      MainActivity_MembersInjector.injectCrashReporter(instance, singletonCImpl.provideCrashReporterProvider.get());
      return instance;
    }

    @CanIgnoreReturnValue
    private TvMainActivity injectTvMainActivity2(TvMainActivity instance2) {
      TvMainActivity_MembersInjector.injectAuthRepository(instance2, singletonCImpl.authRepositoryProvider.get());
      return instance2;
    }

    @CanIgnoreReturnValue
    private CatchUpPlayerActivity injectCatchUpPlayerActivity2(CatchUpPlayerActivity instance3) {
      CatchUpPlayerActivity_MembersInjector.injectIptvPlayer(instance3, singletonCImpl.iptvPlayerProvider.get());
      CatchUpPlayerActivity_MembersInjector.injectAuthRepository(instance3, singletonCImpl.authRepositoryProvider.get());
      CatchUpPlayerActivity_MembersInjector.injectStreamUrlBuilder(instance3, singletonCImpl.streamUrlBuilderProvider.get());
      CatchUpPlayerActivity_MembersInjector.injectNetworkUtils(instance3, singletonCImpl.networkUtilsProvider.get());
      return instance3;
    }

    @CanIgnoreReturnValue
    private LivePlayerActivity injectLivePlayerActivity2(LivePlayerActivity instance4) {
      LivePlayerActivity_MembersInjector.injectIptvPlayer(instance4, singletonCImpl.iptvPlayerProvider.get());
      LivePlayerActivity_MembersInjector.injectPrefs(instance4, singletonCImpl.encryptedPrefsProvider.get());
      LivePlayerActivity_MembersInjector.injectAuthRepository(instance4, singletonCImpl.authRepositoryProvider.get());
      LivePlayerActivity_MembersInjector.injectStreamUrlBuilder(instance4, singletonCImpl.streamUrlBuilderProvider.get());
      LivePlayerActivity_MembersInjector.injectNetworkUtils(instance4, singletonCImpl.networkUtilsProvider.get());
      return instance4;
    }

    @CanIgnoreReturnValue
    private TvLivePlayerActivity injectTvLivePlayerActivity2(TvLivePlayerActivity instance5) {
      TvLivePlayerActivity_MembersInjector.injectIptvPlayer(instance5, singletonCImpl.iptvPlayerProvider.get());
      return instance5;
    }

    @CanIgnoreReturnValue
    private MoviePlayerActivity injectMoviePlayerActivity2(MoviePlayerActivity instance6) {
      MoviePlayerActivity_MembersInjector.injectIptvPlayer(instance6, singletonCImpl.iptvPlayerProvider.get());
      MoviePlayerActivity_MembersInjector.injectAuthRepository(instance6, singletonCImpl.authRepositoryProvider.get());
      MoviePlayerActivity_MembersInjector.injectStreamUrlBuilder(instance6, singletonCImpl.streamUrlBuilderProvider.get());
      MoviePlayerActivity_MembersInjector.injectMovieRepository(instance6, singletonCImpl.movieRepositoryProvider.get());
      MoviePlayerActivity_MembersInjector.injectWatchHistoryRepository(instance6, singletonCImpl.watchHistoryRepositoryProvider.get());
      MoviePlayerActivity_MembersInjector.injectNetworkUtils(instance6, singletonCImpl.networkUtilsProvider.get());
      return instance6;
    }

    @CanIgnoreReturnValue
    private TvMoviePlayerActivity injectTvMoviePlayerActivity2(TvMoviePlayerActivity instance7) {
      TvMoviePlayerActivity_MembersInjector.injectIptvPlayer(instance7, singletonCImpl.iptvPlayerProvider.get());
      TvMoviePlayerActivity_MembersInjector.injectAuthRepository(instance7, singletonCImpl.authRepositoryProvider.get());
      TvMoviePlayerActivity_MembersInjector.injectStreamUrlBuilder(instance7, singletonCImpl.streamUrlBuilderProvider.get());
      return instance7;
    }

    @CanIgnoreReturnValue
    private EpisodePlayerActivity injectEpisodePlayerActivity2(EpisodePlayerActivity instance8) {
      EpisodePlayerActivity_MembersInjector.injectIptvPlayer(instance8, singletonCImpl.iptvPlayerProvider.get());
      EpisodePlayerActivity_MembersInjector.injectAuthRepository(instance8, singletonCImpl.authRepositoryProvider.get());
      EpisodePlayerActivity_MembersInjector.injectStreamUrlBuilder(instance8, singletonCImpl.streamUrlBuilderProvider.get());
      EpisodePlayerActivity_MembersInjector.injectWatchHistoryRepository(instance8, singletonCImpl.watchHistoryRepositoryProvider.get());
      EpisodePlayerActivity_MembersInjector.injectNetworkUtils(instance8, singletonCImpl.networkUtilsProvider.get());
      return instance8;
    }
  }

  private static final class ViewModelCImpl extends MyIptvApp_HiltComponents.ViewModelC {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl;

    private final ViewModelCImpl viewModelCImpl = this;

    Provider<CatchUpViewModel> catchUpViewModelProvider;

    Provider<FavoritesViewModel> favoritesViewModelProvider;

    Provider<HomeViewModel> homeViewModelProvider;

    Provider<LivePlayerViewModel> livePlayerViewModelProvider;

    Provider<LiveViewModel> liveViewModelProvider;

    Provider<LoginViewModel> loginViewModelProvider;

    Provider<MovieDetailViewModel> movieDetailViewModelProvider;

    Provider<MovieViewModel> movieViewModelProvider;

    Provider<SearchViewModel> searchViewModelProvider;

    Provider<SeriesDetailViewModel> seriesDetailViewModelProvider;

    Provider<SeriesViewModel> seriesViewModelProvider;

    Provider<SettingsViewModel> settingsViewModelProvider;

    Provider<SyncViewModel> syncViewModelProvider;

    Provider<TvHomeViewModel> tvHomeViewModelProvider;

    ViewModelCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl,
        SavedStateHandle savedStateHandleParam, ViewModelLifecycle viewModelLifecycleParam) {
      this.singletonCImpl = singletonCImpl;
      this.activityRetainedCImpl = activityRetainedCImpl;

      initialize(savedStateHandleParam, viewModelLifecycleParam);

    }

    GetCatchUpUseCase getCatchUpUseCase() {
      return new GetCatchUpUseCase(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.epgRepositoryProvider.get());
    }

    LoginUseCase loginUseCase() {
      return new LoginUseCase(singletonCImpl.authRepositoryProvider.get());
    }

    SearchUseCase searchUseCase() {
      return new SearchUseCase(singletonCImpl.liveRepositoryProvider.get(), singletonCImpl.movieRepositoryProvider.get(), singletonCImpl.seriesRepositoryProvider.get());
    }

    ImmutableMap hiltViewModelMapMapOfClassOfAndProviderOfViewModelBuilder() {
      ImmutableMap.Builder mapBuilder = ImmutableMap.<String, javax.inject.Provider<ViewModel>>builderWithExpectedSize(14);
      mapBuilder.put(CatchUpViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (catchUpViewModelProvider)));
      mapBuilder.put(FavoritesViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (favoritesViewModelProvider)));
      mapBuilder.put(HomeViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (homeViewModelProvider)));
      mapBuilder.put(LivePlayerViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (livePlayerViewModelProvider)));
      mapBuilder.put(LiveViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (liveViewModelProvider)));
      mapBuilder.put(LoginViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (loginViewModelProvider)));
      mapBuilder.put(MovieDetailViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (movieDetailViewModelProvider)));
      mapBuilder.put(MovieViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (movieViewModelProvider)));
      mapBuilder.put(SearchViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (searchViewModelProvider)));
      mapBuilder.put(SeriesDetailViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (seriesDetailViewModelProvider)));
      mapBuilder.put(SeriesViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (seriesViewModelProvider)));
      mapBuilder.put(SettingsViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (settingsViewModelProvider)));
      mapBuilder.put(SyncViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (syncViewModelProvider)));
      mapBuilder.put(TvHomeViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, ((Provider) (tvHomeViewModelProvider)));
      return mapBuilder.build();
    }

    @SuppressWarnings("unchecked")
    private void initialize(final SavedStateHandle savedStateHandleParam,
        final ViewModelLifecycle viewModelLifecycleParam) {
      this.catchUpViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 0);
      this.favoritesViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 1);
      this.homeViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 2);
      this.livePlayerViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 3);
      this.liveViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 4);
      this.loginViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 5);
      this.movieDetailViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 6);
      this.movieViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 7);
      this.searchViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 8);
      this.seriesDetailViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 9);
      this.seriesViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 10);
      this.settingsViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 11);
      this.syncViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 12);
      this.tvHomeViewModelProvider = new SwitchingProvider<>(singletonCImpl, activityRetainedCImpl, viewModelCImpl, 13);
    }

    @Override
    public Map<Class<?>, javax.inject.Provider<ViewModel>> getHiltViewModelMap() {
      return LazyClassKeyMap.<javax.inject.Provider<ViewModel>>of(hiltViewModelMapMapOfClassOfAndProviderOfViewModelBuilder());
    }

    @Override
    public Map<Class<?>, Object> getHiltViewModelAssistedMap() {
      return ImmutableMap.<Class<?>, Object>of();
    }

    private static final class SwitchingProvider<T> implements Provider<T> {
      private final SingletonCImpl singletonCImpl;

      private final ActivityRetainedCImpl activityRetainedCImpl;

      private final ViewModelCImpl viewModelCImpl;

      private final int id;

      SwitchingProvider(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl,
          ViewModelCImpl viewModelCImpl, int id) {
        this.singletonCImpl = singletonCImpl;
        this.activityRetainedCImpl = activityRetainedCImpl;
        this.viewModelCImpl = viewModelCImpl;
        this.id = id;
      }

      @Override
      @SuppressWarnings("unchecked")
      public T get() {
        switch (id) {
          case 0: // com.bayyari.tv.ui.catchup.CatchUpViewModel
          return (T) new CatchUpViewModel(viewModelCImpl.getCatchUpUseCase());

          case 1: // com.bayyari.tv.ui.favorites.FavoritesViewModel
          return (T) new FavoritesViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.favoriteDao(), singletonCImpl.liveRepositoryProvider.get(), singletonCImpl.movieRepositoryProvider.get(), singletonCImpl.seriesRepositoryProvider.get());

          case 2: // com.bayyari.tv.ui.home.HomeViewModel
          return (T) new HomeViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.liveRepositoryProvider.get(), singletonCImpl.movieRepositoryProvider.get(), singletonCImpl.seriesRepositoryProvider.get(), singletonCImpl.watchHistoryRepositoryProvider.get(), singletonCImpl.favoriteDao());

          case 3: // com.bayyari.tv.ui.live.LivePlayerViewModel
          return (T) new LivePlayerViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.liveRepositoryProvider.get(), singletonCImpl.epgRepositoryProvider.get(), singletonCImpl.streamUrlBuilderProvider.get(), singletonCImpl.encryptedPrefsProvider.get());

          case 4: // com.bayyari.tv.ui.live.LiveViewModel
          return (T) new LiveViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.liveRepositoryProvider.get(), singletonCImpl.favoriteDao(), singletonCImpl.encryptedPrefsProvider.get(), singletonCImpl.streamUrlBuilderProvider.get());

          case 5: // com.bayyari.tv.ui.auth.LoginViewModel
          return (T) new LoginViewModel(viewModelCImpl.loginUseCase());

          case 6: // com.bayyari.tv.ui.movies.MovieDetailViewModel
          return (T) new MovieDetailViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.movieRepositoryProvider.get(), singletonCImpl.favoriteDao());

          case 7: // com.bayyari.tv.ui.movies.MovieViewModel
          return (T) new MovieViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.movieRepositoryProvider.get(), singletonCImpl.encryptedPrefsProvider.get());

          case 8: // com.bayyari.tv.ui.search.SearchViewModel
          return (T) new SearchViewModel(singletonCImpl.authRepositoryProvider.get(), viewModelCImpl.searchUseCase());

          case 9: // com.bayyari.tv.ui.series.SeriesDetailViewModel
          return (T) new SeriesDetailViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.seriesRepositoryProvider.get(), singletonCImpl.favoriteDao());

          case 10: // com.bayyari.tv.ui.series.SeriesViewModel
          return (T) new SeriesViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.seriesRepositoryProvider.get(), singletonCImpl.encryptedPrefsProvider.get());

          case 11: // com.bayyari.tv.ui.settings.SettingsViewModel
          return (T) new SettingsViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.encryptedPrefsProvider.get(), singletonCImpl.channelDao(), singletonCImpl.movieDao(), singletonCImpl.seriesDao(), singletonCImpl.epgDao(), singletonCImpl.watchHistoryRepositoryProvider.get());

          case 12: // com.bayyari.tv.ui.sync.SyncViewModel
          return (T) new SyncViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.liveRepositoryProvider.get(), singletonCImpl.movieRepositoryProvider.get(), singletonCImpl.seriesRepositoryProvider.get());

          case 13: // com.bayyari.tv.ui.home.TvHomeViewModel
          return (T) new TvHomeViewModel(singletonCImpl.authRepositoryProvider.get(), singletonCImpl.liveRepositoryProvider.get(), singletonCImpl.movieRepositoryProvider.get(), singletonCImpl.seriesRepositoryProvider.get());

          default: throw new AssertionError(id);
        }
      }
    }
  }

  private static final class ActivityRetainedCImpl extends MyIptvApp_HiltComponents.ActivityRetainedC {
    private final SingletonCImpl singletonCImpl;

    private final ActivityRetainedCImpl activityRetainedCImpl = this;

    Provider<ActivityRetainedLifecycle> provideActivityRetainedLifecycleProvider;

    ActivityRetainedCImpl(SingletonCImpl singletonCImpl,
        SavedStateHandleHolder savedStateHandleHolderParam) {
      this.singletonCImpl = singletonCImpl;

      initialize(savedStateHandleHolderParam);

    }

    @SuppressWarnings("unchecked")
    private void initialize(final SavedStateHandleHolder savedStateHandleHolderParam) {
      this.provideActivityRetainedLifecycleProvider = DoubleCheck.provider(new SwitchingProvider<ActivityRetainedLifecycle>(singletonCImpl, activityRetainedCImpl, 0));
    }

    @Override
    public ActivityComponentBuilder activityComponentBuilder() {
      return new ActivityCBuilder(singletonCImpl, activityRetainedCImpl);
    }

    @Override
    public ActivityRetainedLifecycle getActivityRetainedLifecycle() {
      return provideActivityRetainedLifecycleProvider.get();
    }

    private static final class SwitchingProvider<T> implements Provider<T> {
      private final SingletonCImpl singletonCImpl;

      private final ActivityRetainedCImpl activityRetainedCImpl;

      private final int id;

      SwitchingProvider(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl,
          int id) {
        this.singletonCImpl = singletonCImpl;
        this.activityRetainedCImpl = activityRetainedCImpl;
        this.id = id;
      }

      @Override
      @SuppressWarnings("unchecked")
      public T get() {
        switch (id) {
          case 0: // dagger.hilt.android.ActivityRetainedLifecycle
          return (T) ActivityRetainedComponentManager_LifecycleModule_ProvideActivityRetainedLifecycleFactory.provideActivityRetainedLifecycle();

          default: throw new AssertionError(id);
        }
      }
    }
  }

  private static final class ServiceCImpl extends MyIptvApp_HiltComponents.ServiceC {
    private final SingletonCImpl singletonCImpl;

    private final ServiceCImpl serviceCImpl = this;

    ServiceCImpl(SingletonCImpl singletonCImpl, Service serviceParam) {
      this.singletonCImpl = singletonCImpl;


    }

    @Override
    public void injectPlayerService(PlayerService playerService) {
      injectPlayerService2(playerService);
    }

    @CanIgnoreReturnValue
    private PlayerService injectPlayerService2(PlayerService instance) {
      PlayerService_MembersInjector.injectIptvPlayer(instance, singletonCImpl.iptvPlayerProvider.get());
      return instance;
    }
  }

  private static final class SingletonCImpl extends MyIptvApp_HiltComponents.SingletonC {
    private final ApplicationContextModule applicationContextModule;

    private final SingletonCImpl singletonCImpl = this;

    Provider<Gson> provideGsonProvider;

    Provider<EncryptedPrefs> encryptedPrefsProvider;

    Provider<DynamicHostInterceptor> dynamicHostInterceptorProvider;

    Provider<HttpLoggingInterceptor> provideHttpLoggingProvider;

    Provider<OkHttpClient> provideOkHttpProvider;

    Provider<Retrofit> provideRetrofitProvider;

    Provider<XtreamApiService> provideXtreamApiProvider;

    Provider<AuthRepository> authRepositoryProvider;

    Provider<AppDatabase> provideDatabaseProvider;

    Provider<LiveRepository> liveRepositoryProvider;

    Provider<MovieRepository> movieRepositoryProvider;

    Provider<SeriesRepository> seriesRepositoryProvider;

    Provider<RefreshWorker_AssistedFactory> refreshWorker_AssistedFactoryProvider;

    Provider<RefreshScheduler> refreshSchedulerProvider;

    Provider<FileCrashReporter> fileCrashReporterProvider;

    Provider<CrashReporter> provideCrashReporterProvider;

    Provider<LoadControl> provideLoadControlProvider;

    Provider<IptvPlayer> iptvPlayerProvider;

    Provider<StreamUrlBuilder> streamUrlBuilderProvider;

    Provider<NetworkUtils> networkUtilsProvider;

    Provider<WatchHistoryRepository> watchHistoryRepositoryProvider;

    Provider<EpgRepository> epgRepositoryProvider;

    SingletonCImpl(ApplicationContextModule applicationContextModuleParam) {
      this.applicationContextModule = applicationContextModuleParam;
      initialize(applicationContextModuleParam);

    }

    ChannelDao channelDao() {
      return DatabaseModule_ProvideChannelDaoFactory.provideChannelDao(provideDatabaseProvider.get());
    }

    MovieDao movieDao() {
      return DatabaseModule_ProvideMovieDaoFactory.provideMovieDao(provideDatabaseProvider.get());
    }

    SeriesDao seriesDao() {
      return DatabaseModule_ProvideSeriesDaoFactory.provideSeriesDao(provideDatabaseProvider.get());
    }

    Map<String, javax.inject.Provider<WorkerAssistedFactory<? extends ListenableWorker>>> mapOfStringAndProviderOfWorkerAssistedFactoryOf(
        ) {
      return ImmutableMap.<String, javax.inject.Provider<WorkerAssistedFactory<? extends ListenableWorker>>>of("com.bayyari.tv.data.work.RefreshWorker", ((Provider) (refreshWorker_AssistedFactoryProvider)));
    }

    HiltWorkerFactory hiltWorkerFactory() {
      return WorkerFactoryModule_ProvideFactoryFactory.provideFactory(mapOfStringAndProviderOfWorkerAssistedFactoryOf());
    }

    WatchHistoryDao watchHistoryDao() {
      return DatabaseModule_ProvideWatchHistoryDaoFactory.provideWatchHistoryDao(provideDatabaseProvider.get());
    }

    EpgDao epgDao() {
      return DatabaseModule_ProvideEpgDaoFactory.provideEpgDao(provideDatabaseProvider.get());
    }

    FavoriteDao favoriteDao() {
      return DatabaseModule_ProvideFavoriteDaoFactory.provideFavoriteDao(provideDatabaseProvider.get());
    }

    @SuppressWarnings("unchecked")
    private void initialize(final ApplicationContextModule applicationContextModuleParam) {
      this.provideGsonProvider = DoubleCheck.provider(new SwitchingProvider<Gson>(singletonCImpl, 7));
      this.encryptedPrefsProvider = DoubleCheck.provider(new SwitchingProvider<EncryptedPrefs>(singletonCImpl, 6));
      this.dynamicHostInterceptorProvider = DoubleCheck.provider(new SwitchingProvider<DynamicHostInterceptor>(singletonCImpl, 5));
      this.provideHttpLoggingProvider = DoubleCheck.provider(new SwitchingProvider<HttpLoggingInterceptor>(singletonCImpl, 8));
      this.provideOkHttpProvider = DoubleCheck.provider(new SwitchingProvider<OkHttpClient>(singletonCImpl, 4));
      this.provideRetrofitProvider = DoubleCheck.provider(new SwitchingProvider<Retrofit>(singletonCImpl, 3));
      this.provideXtreamApiProvider = DoubleCheck.provider(new SwitchingProvider<XtreamApiService>(singletonCImpl, 2));
      this.authRepositoryProvider = DoubleCheck.provider(new SwitchingProvider<AuthRepository>(singletonCImpl, 1));
      this.provideDatabaseProvider = DoubleCheck.provider(new SwitchingProvider<AppDatabase>(singletonCImpl, 10));
      this.liveRepositoryProvider = DoubleCheck.provider(new SwitchingProvider<LiveRepository>(singletonCImpl, 9));
      this.movieRepositoryProvider = DoubleCheck.provider(new SwitchingProvider<MovieRepository>(singletonCImpl, 11));
      this.seriesRepositoryProvider = DoubleCheck.provider(new SwitchingProvider<SeriesRepository>(singletonCImpl, 12));
      this.refreshWorker_AssistedFactoryProvider = SingleCheck.provider(new SwitchingProvider<RefreshWorker_AssistedFactory>(singletonCImpl, 0));
      this.refreshSchedulerProvider = DoubleCheck.provider(new SwitchingProvider<RefreshScheduler>(singletonCImpl, 13));
      this.fileCrashReporterProvider = DoubleCheck.provider(new SwitchingProvider<FileCrashReporter>(singletonCImpl, 15));
      this.provideCrashReporterProvider = DoubleCheck.provider(new SwitchingProvider<CrashReporter>(singletonCImpl, 14));
      this.provideLoadControlProvider = DoubleCheck.provider(new SwitchingProvider<LoadControl>(singletonCImpl, 17));
      this.iptvPlayerProvider = DoubleCheck.provider(new SwitchingProvider<IptvPlayer>(singletonCImpl, 16));
      this.streamUrlBuilderProvider = DoubleCheck.provider(new SwitchingProvider<StreamUrlBuilder>(singletonCImpl, 18));
      this.networkUtilsProvider = DoubleCheck.provider(new SwitchingProvider<NetworkUtils>(singletonCImpl, 19));
      this.watchHistoryRepositoryProvider = DoubleCheck.provider(new SwitchingProvider<WatchHistoryRepository>(singletonCImpl, 20));
      this.epgRepositoryProvider = DoubleCheck.provider(new SwitchingProvider<EpgRepository>(singletonCImpl, 21));
    }

    @Override
    public void injectMyIptvApp(MyIptvApp myIptvApp) {
      injectMyIptvApp2(myIptvApp);
    }

    @Override
    public Set<Boolean> getDisableFragmentGetContextFix() {
      return ImmutableSet.<Boolean>of();
    }

    @Override
    public ActivityRetainedComponentBuilder retainedComponentBuilder() {
      return new ActivityRetainedCBuilder(singletonCImpl);
    }

    @Override
    public ServiceComponentBuilder serviceComponentBuilder() {
      return new ServiceCBuilder(singletonCImpl);
    }

    @CanIgnoreReturnValue
    private MyIptvApp injectMyIptvApp2(MyIptvApp instance) {
      MyIptvApp_MembersInjector.injectWorkerFactory(instance, hiltWorkerFactory());
      MyIptvApp_MembersInjector.injectRefreshScheduler(instance, refreshSchedulerProvider);
      MyIptvApp_MembersInjector.injectCrashReporter(instance, provideCrashReporterProvider.get());
      return instance;
    }

    private static final class SwitchingProvider<T> implements Provider<T> {
      private final SingletonCImpl singletonCImpl;

      private final int id;

      SwitchingProvider(SingletonCImpl singletonCImpl, int id) {
        this.singletonCImpl = singletonCImpl;
        this.id = id;
      }

      @Override
      @SuppressWarnings("unchecked")
      public T get() {
        switch (id) {
          case 0: // com.bayyari.tv.data.work.RefreshWorker_AssistedFactory
          return (T) new RefreshWorker_AssistedFactory() {
            @Override
            public RefreshWorker create(Context context, WorkerParameters params) {
              return new RefreshWorker(context, params, singletonCImpl.authRepositoryProvider.get(), singletonCImpl.liveRepositoryProvider.get(), singletonCImpl.movieRepositoryProvider.get(), singletonCImpl.seriesRepositoryProvider.get());
            }
          };

          case 1: // com.bayyari.tv.data.repository.AuthRepository
          return (T) new AuthRepository(singletonCImpl.provideXtreamApiProvider.get(), singletonCImpl.encryptedPrefsProvider.get());

          case 2: // com.bayyari.tv.data.api.XtreamApiService
          return (T) NetworkModule_ProvideXtreamApiFactory.provideXtreamApi(singletonCImpl.provideRetrofitProvider.get());

          case 3: // retrofit2.Retrofit
          return (T) NetworkModule_ProvideRetrofitFactory.provideRetrofit(singletonCImpl.provideOkHttpProvider.get(), singletonCImpl.provideGsonProvider.get());

          case 4: // okhttp3.OkHttpClient
          return (T) NetworkModule_ProvideOkHttpFactory.provideOkHttp(singletonCImpl.dynamicHostInterceptorProvider.get(), singletonCImpl.provideHttpLoggingProvider.get());

          case 5: // com.bayyari.tv.data.api.DynamicHostInterceptor
          return (T) new DynamicHostInterceptor(singletonCImpl.encryptedPrefsProvider.get());

          case 6: // com.bayyari.tv.util.EncryptedPrefs
          return (T) new EncryptedPrefs(ApplicationContextModule_ProvideContextFactory.provideContext(singletonCImpl.applicationContextModule), singletonCImpl.provideGsonProvider.get());

          case 7: // com.google.gson.Gson
          return (T) NetworkModule_ProvideGsonFactory.provideGson();

          case 8: // okhttp3.logging.HttpLoggingInterceptor
          return (T) NetworkModule_ProvideHttpLoggingFactory.provideHttpLogging();

          case 9: // com.bayyari.tv.data.repository.LiveRepository
          return (T) new LiveRepository(singletonCImpl.provideXtreamApiProvider.get(), singletonCImpl.channelDao());

          case 10: // com.bayyari.tv.data.local.AppDatabase
          return (T) DatabaseModule_ProvideDatabaseFactory.provideDatabase(ApplicationContextModule_ProvideContextFactory.provideContext(singletonCImpl.applicationContextModule));

          case 11: // com.bayyari.tv.data.repository.MovieRepository
          return (T) new MovieRepository(singletonCImpl.provideXtreamApiProvider.get(), singletonCImpl.movieDao());

          case 12: // com.bayyari.tv.data.repository.SeriesRepository
          return (T) new SeriesRepository(singletonCImpl.provideXtreamApiProvider.get(), singletonCImpl.seriesDao());

          case 13: // com.bayyari.tv.data.work.RefreshScheduler
          return (T) new RefreshScheduler(ApplicationContextModule_ProvideContextFactory.provideContext(singletonCImpl.applicationContextModule));

          case 14: // com.bayyari.tv.util.CrashReporter
          return (T) CrashReporterModule_ProvideCrashReporterFactory.provideCrashReporter(singletonCImpl.fileCrashReporterProvider.get());

          case 15: // com.bayyari.tv.util.FileCrashReporter
          return (T) new FileCrashReporter(ApplicationContextModule_ProvideContextFactory.provideContext(singletonCImpl.applicationContextModule));

          case 16: // com.bayyari.tv.player.IptvPlayer
          return (T) new IptvPlayer(ApplicationContextModule_ProvideContextFactory.provideContext(singletonCImpl.applicationContextModule), singletonCImpl.provideLoadControlProvider.get());

          case 17: // androidx.media3.exoplayer.LoadControl
          return (T) PlayerModule_ProvideLoadControlFactory.provideLoadControl(singletonCImpl.encryptedPrefsProvider.get());

          case 18: // com.bayyari.tv.util.StreamUrlBuilder
          return (T) new StreamUrlBuilder();

          case 19: // com.bayyari.tv.util.NetworkUtils
          return (T) new NetworkUtils(ApplicationContextModule_ProvideContextFactory.provideContext(singletonCImpl.applicationContextModule));

          case 20: // com.bayyari.tv.data.repository.WatchHistoryRepository
          return (T) new WatchHistoryRepository(singletonCImpl.watchHistoryDao());

          case 21: // com.bayyari.tv.data.repository.EpgRepository
          return (T) new EpgRepository(singletonCImpl.provideXtreamApiProvider.get(), singletonCImpl.epgDao());

          default: throw new AssertionError(id);
        }
      }
    }
  }
}
