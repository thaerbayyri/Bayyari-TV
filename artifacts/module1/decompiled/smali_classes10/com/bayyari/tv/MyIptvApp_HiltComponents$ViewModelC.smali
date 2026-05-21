.class public abstract Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewModelC;
.super Ljava/lang/Object;
.source "MyIptvApp_HiltComponents.java"

# interfaces
.implements Ldagger/hilt/android/components/ViewModelComponent;
.implements Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$ViewModelFactoriesEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_HiltModules$BindsModule;,
        Ldagger/hilt/android/internal/lifecycle/HiltWrapper_HiltViewModelFactory_ViewModelModule;,
        Lcom/bayyari/tv/ui/home/HomeViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/live/LivePlayerViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/live/LiveViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/auth/LoginViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/movies/MovieViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/search/SearchViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/series/SeriesDetailViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/series/SeriesViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/settings/SettingsViewModel_HiltModules$BindsModule;,
        Lcom/bayyari/tv/ui/home/TvHomeViewModel_HiltModules$BindsModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/MyIptvApp_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewModelC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewModelC$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
