package com.bayyari.tv;

import androidx.hilt.work.HiltWrapper_WorkerFactoryModule;
import com.bayyari.tv.data.work.RefreshWorker_HiltModule;
import com.bayyari.tv.di.CrashReporterModule;
import com.bayyari.tv.di.DatabaseModule;
import com.bayyari.tv.di.NetworkModule;
import com.bayyari.tv.di.PlayerModule;
import com.bayyari.tv.player.PlayerService_GeneratedInjector;
import com.bayyari.tv.ui.MainActivity_GeneratedInjector;
import com.bayyari.tv.ui.TvMainActivity_GeneratedInjector;
import com.bayyari.tv.ui.auth.AddServerFragment_GeneratedInjector;
import com.bayyari.tv.ui.auth.LoginActivity_GeneratedInjector;
import com.bayyari.tv.ui.auth.LoginFragment_GeneratedInjector;
import com.bayyari.tv.ui.auth.LoginViewModel_HiltModules;
import com.bayyari.tv.ui.catchup.CatchUpFragment_GeneratedInjector;
import com.bayyari.tv.ui.catchup.CatchUpPlayerActivity_GeneratedInjector;
import com.bayyari.tv.ui.catchup.CatchUpViewModel_HiltModules;
import com.bayyari.tv.ui.favorites.FavoritesFragment_GeneratedInjector;
import com.bayyari.tv.ui.favorites.FavoritesViewModel_HiltModules;
import com.bayyari.tv.ui.home.HomeFragment_GeneratedInjector;
import com.bayyari.tv.ui.home.HomeViewModel_HiltModules;
import com.bayyari.tv.ui.home.TvHomeFragment_GeneratedInjector;
import com.bayyari.tv.ui.home.TvHomeViewModel_HiltModules;
import com.bayyari.tv.ui.live.EpgFragment_GeneratedInjector;
import com.bayyari.tv.ui.live.LiveFragment_GeneratedInjector;
import com.bayyari.tv.ui.live.LivePlayerActivity_GeneratedInjector;
import com.bayyari.tv.ui.live.LivePlayerViewModel_HiltModules;
import com.bayyari.tv.ui.live.LiveViewModel_HiltModules;
import com.bayyari.tv.ui.live.TvLiveFragment_GeneratedInjector;
import com.bayyari.tv.ui.live.TvLivePlayerActivity_GeneratedInjector;
import com.bayyari.tv.ui.movies.MovieDetailFragment_GeneratedInjector;
import com.bayyari.tv.ui.movies.MovieDetailViewModel_HiltModules;
import com.bayyari.tv.ui.movies.MovieFragment_GeneratedInjector;
import com.bayyari.tv.ui.movies.MoviePlayerActivity_GeneratedInjector;
import com.bayyari.tv.ui.movies.MovieViewModel_HiltModules;
import com.bayyari.tv.ui.movies.TvMovieFragment_GeneratedInjector;
import com.bayyari.tv.ui.movies.TvMoviePlayerActivity_GeneratedInjector;
import com.bayyari.tv.ui.search.SearchFragment_GeneratedInjector;
import com.bayyari.tv.ui.search.SearchResultsFragment_GeneratedInjector;
import com.bayyari.tv.ui.search.SearchViewModel_HiltModules;
import com.bayyari.tv.ui.series.EpisodePlayerActivity_GeneratedInjector;
import com.bayyari.tv.ui.series.SeasonFragment_GeneratedInjector;
import com.bayyari.tv.ui.series.SeriesDetailFragment_GeneratedInjector;
import com.bayyari.tv.ui.series.SeriesDetailViewModel_HiltModules;
import com.bayyari.tv.ui.series.SeriesFragment_GeneratedInjector;
import com.bayyari.tv.ui.series.SeriesViewModel_HiltModules;
import com.bayyari.tv.ui.series.TvSeriesFragment_GeneratedInjector;
import com.bayyari.tv.ui.settings.ServerManagerFragment_GeneratedInjector;
import com.bayyari.tv.ui.settings.SettingsFragment_GeneratedInjector;
import com.bayyari.tv.ui.settings.SettingsViewModel_HiltModules;
import com.bayyari.tv.ui.sync.SyncActivity_GeneratedInjector;
import com.bayyari.tv.ui.sync.SyncViewModel_HiltModules;
import dagger.Binds;
import dagger.Component;
import dagger.Module;
import dagger.Subcomponent;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.components.FragmentComponent;
import dagger.hilt.android.components.ServiceComponent;
import dagger.hilt.android.components.ViewComponent;
import dagger.hilt.android.components.ViewModelComponent;
import dagger.hilt.android.components.ViewWithFragmentComponent;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.flags.HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.android.internal.builders.ViewComponentBuilder;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_DefaultViewModelFactories_ActivityModule;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_HiltViewModelFactory_ActivityCreatorEntryPoint;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_HiltViewModelFactory_ViewModelModule;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedLifecycleEntryPoint;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivityRetainedComponentManager_LifecycleModule;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivitySavedStateHandleModule;
import dagger.hilt.android.internal.managers.ServiceComponentManager;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.android.internal.modules.HiltWrapper_ActivityModule;
import dagger.hilt.android.scopes.ActivityRetainedScoped;
import dagger.hilt.android.scopes.ActivityScoped;
import dagger.hilt.android.scopes.FragmentScoped;
import dagger.hilt.android.scopes.ServiceScoped;
import dagger.hilt.android.scopes.ViewModelScoped;
import dagger.hilt.android.scopes.ViewScoped;
import dagger.hilt.components.SingletonComponent;
import dagger.hilt.internal.GeneratedComponent;
import dagger.hilt.migration.DisableInstallInCheck;
import javax.annotation.processing.Generated;
import javax.inject.Singleton;

@Generated("dagger.hilt.processor.internal.root.RootProcessor")
public final class MyIptvApp_HiltComponents {
  private MyIptvApp_HiltComponents() {
  }

  @Module(
      subcomponents = ServiceC.class
  )
  @DisableInstallInCheck
  @Generated("dagger.hilt.processor.internal.root.RootProcessor")
  abstract interface ServiceCBuilderModule {
    @Binds
    ServiceComponentBuilder bind(ServiceC.Builder builder);
  }

  @Module(
      subcomponents = ActivityRetainedC.class
  )
  @DisableInstallInCheck
  @Generated("dagger.hilt.processor.internal.root.RootProcessor")
  abstract interface ActivityRetainedCBuilderModule {
    @Binds
    ActivityRetainedComponentBuilder bind(ActivityRetainedC.Builder builder);
  }

  @Module(
      subcomponents = ActivityC.class
  )
  @DisableInstallInCheck
  @Generated("dagger.hilt.processor.internal.root.RootProcessor")
  abstract interface ActivityCBuilderModule {
    @Binds
    ActivityComponentBuilder bind(ActivityC.Builder builder);
  }

  @Module(
      subcomponents = ViewModelC.class
  )
  @DisableInstallInCheck
  @Generated("dagger.hilt.processor.internal.root.RootProcessor")
  abstract interface ViewModelCBuilderModule {
    @Binds
    ViewModelComponentBuilder bind(ViewModelC.Builder builder);
  }

  @Module(
      subcomponents = ViewC.class
  )
  @DisableInstallInCheck
  @Generated("dagger.hilt.processor.internal.root.RootProcessor")
  abstract interface ViewCBuilderModule {
    @Binds
    ViewComponentBuilder bind(ViewC.Builder builder);
  }

  @Module(
      subcomponents = FragmentC.class
  )
  @DisableInstallInCheck
  @Generated("dagger.hilt.processor.internal.root.RootProcessor")
  abstract interface FragmentCBuilderModule {
    @Binds
    FragmentComponentBuilder bind(FragmentC.Builder builder);
  }

  @Module(
      subcomponents = ViewWithFragmentC.class
  )
  @DisableInstallInCheck
  @Generated("dagger.hilt.processor.internal.root.RootProcessor")
  abstract interface ViewWithFragmentCBuilderModule {
    @Binds
    ViewWithFragmentComponentBuilder bind(ViewWithFragmentC.Builder builder);
  }

  @Component(
      modules = {
          ApplicationContextModule.class,
          CrashReporterModule.class,
          DatabaseModule.class,
          HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule.class,
          HiltWrapper_WorkerFactoryModule.class,
          ActivityRetainedCBuilderModule.class,
          ServiceCBuilderModule.class,
          NetworkModule.class,
          PlayerModule.class,
          RefreshWorker_HiltModule.class
      }
  )
  @Singleton
  @jakarta.inject.Singleton
  public abstract static class SingletonC implements MyIptvApp_GeneratedInjector,
      FragmentGetContextFix.FragmentGetContextFixEntryPoint,
      HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint,
      ServiceComponentManager.ServiceComponentBuilderEntryPoint,
      SingletonComponent,
      GeneratedComponent {
  }

  @Subcomponent
  @ServiceScoped
  public abstract static class ServiceC implements PlayerService_GeneratedInjector,
      ServiceComponent,
      GeneratedComponent {
    @Subcomponent.Builder
    abstract interface Builder extends ServiceComponentBuilder {
    }
  }

  @Subcomponent(
      modules = {
          CatchUpViewModel_HiltModules.KeyModule.class,
          FavoritesViewModel_HiltModules.KeyModule.class,
          HiltWrapper_ActivityRetainedComponentManager_LifecycleModule.class,
          HiltWrapper_ActivitySavedStateHandleModule.class,
          HomeViewModel_HiltModules.KeyModule.class,
          LivePlayerViewModel_HiltModules.KeyModule.class,
          LiveViewModel_HiltModules.KeyModule.class,
          LoginViewModel_HiltModules.KeyModule.class,
          MovieDetailViewModel_HiltModules.KeyModule.class,
          MovieViewModel_HiltModules.KeyModule.class,
          ActivityCBuilderModule.class,
          ViewModelCBuilderModule.class,
          SearchViewModel_HiltModules.KeyModule.class,
          SeriesDetailViewModel_HiltModules.KeyModule.class,
          SeriesViewModel_HiltModules.KeyModule.class,
          SettingsViewModel_HiltModules.KeyModule.class,
          SyncViewModel_HiltModules.KeyModule.class,
          TvHomeViewModel_HiltModules.KeyModule.class
      }
  )
  @ActivityRetainedScoped
  public abstract static class ActivityRetainedC implements ActivityRetainedComponent,
      ActivityComponentManager.ActivityComponentBuilderEntryPoint,
      HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedLifecycleEntryPoint,
      GeneratedComponent {
    @Subcomponent.Builder
    abstract interface Builder extends ActivityRetainedComponentBuilder {
    }
  }

  @Subcomponent(
      modules = {
          HiltWrapper_ActivityModule.class,
          HiltWrapper_DefaultViewModelFactories_ActivityModule.class,
          FragmentCBuilderModule.class,
          ViewCBuilderModule.class
      }
  )
  @ActivityScoped
  public abstract static class ActivityC implements MainActivity_GeneratedInjector,
      TvMainActivity_GeneratedInjector,
      LoginActivity_GeneratedInjector,
      CatchUpPlayerActivity_GeneratedInjector,
      LivePlayerActivity_GeneratedInjector,
      TvLivePlayerActivity_GeneratedInjector,
      MoviePlayerActivity_GeneratedInjector,
      TvMoviePlayerActivity_GeneratedInjector,
      EpisodePlayerActivity_GeneratedInjector,
      SyncActivity_GeneratedInjector,
      ActivityComponent,
      DefaultViewModelFactories.ActivityEntryPoint,
      HiltWrapper_HiltViewModelFactory_ActivityCreatorEntryPoint,
      FragmentComponentManager.FragmentComponentBuilderEntryPoint,
      ViewComponentManager.ViewComponentBuilderEntryPoint,
      GeneratedComponent {
    @Subcomponent.Builder
    abstract interface Builder extends ActivityComponentBuilder {
    }
  }

  @Subcomponent(
      modules = {
          CatchUpViewModel_HiltModules.BindsModule.class,
          FavoritesViewModel_HiltModules.BindsModule.class,
          HiltWrapper_HiltViewModelFactory_ViewModelModule.class,
          HomeViewModel_HiltModules.BindsModule.class,
          LivePlayerViewModel_HiltModules.BindsModule.class,
          LiveViewModel_HiltModules.BindsModule.class,
          LoginViewModel_HiltModules.BindsModule.class,
          MovieDetailViewModel_HiltModules.BindsModule.class,
          MovieViewModel_HiltModules.BindsModule.class,
          SearchViewModel_HiltModules.BindsModule.class,
          SeriesDetailViewModel_HiltModules.BindsModule.class,
          SeriesViewModel_HiltModules.BindsModule.class,
          SettingsViewModel_HiltModules.BindsModule.class,
          SyncViewModel_HiltModules.BindsModule.class,
          TvHomeViewModel_HiltModules.BindsModule.class
      }
  )
  @ViewModelScoped
  public abstract static class ViewModelC implements ViewModelComponent,
      HiltViewModelFactory.ViewModelFactoriesEntryPoint,
      GeneratedComponent {
    @Subcomponent.Builder
    abstract interface Builder extends ViewModelComponentBuilder {
    }
  }

  @Subcomponent
  @ViewScoped
  public abstract static class ViewC implements ViewComponent,
      GeneratedComponent {
    @Subcomponent.Builder
    abstract interface Builder extends ViewComponentBuilder {
    }
  }

  @Subcomponent(
      modules = ViewWithFragmentCBuilderModule.class
  )
  @FragmentScoped
  public abstract static class FragmentC implements AddServerFragment_GeneratedInjector,
      LoginFragment_GeneratedInjector,
      CatchUpFragment_GeneratedInjector,
      FavoritesFragment_GeneratedInjector,
      HomeFragment_GeneratedInjector,
      TvHomeFragment_GeneratedInjector,
      EpgFragment_GeneratedInjector,
      LiveFragment_GeneratedInjector,
      TvLiveFragment_GeneratedInjector,
      MovieDetailFragment_GeneratedInjector,
      MovieFragment_GeneratedInjector,
      TvMovieFragment_GeneratedInjector,
      SearchFragment_GeneratedInjector,
      SearchResultsFragment_GeneratedInjector,
      SeasonFragment_GeneratedInjector,
      SeriesDetailFragment_GeneratedInjector,
      SeriesFragment_GeneratedInjector,
      TvSeriesFragment_GeneratedInjector,
      ServerManagerFragment_GeneratedInjector,
      SettingsFragment_GeneratedInjector,
      FragmentComponent,
      DefaultViewModelFactories.FragmentEntryPoint,
      ViewComponentManager.ViewWithFragmentComponentBuilderEntryPoint,
      GeneratedComponent {
    @Subcomponent.Builder
    abstract interface Builder extends FragmentComponentBuilder {
    }
  }

  @Subcomponent
  @ViewScoped
  public abstract static class ViewWithFragmentC implements ViewWithFragmentComponent,
      GeneratedComponent {
    @Subcomponent.Builder
    abstract interface Builder extends ViewWithFragmentComponentBuilder {
    }
  }
}
