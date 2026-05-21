.class final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;
.super Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewModelC;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewModelCImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field catchUpViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/catchup/CatchUpViewModel;",
            ">;"
        }
    .end annotation
.end field

.field favoritesViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/favorites/FavoritesViewModel;",
            ">;"
        }
    .end annotation
.end field

.field homeViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/home/HomeViewModel;",
            ">;"
        }
    .end annotation
.end field

.field livePlayerViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/live/LivePlayerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field liveViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/live/LiveViewModel;",
            ">;"
        }
    .end annotation
.end field

.field loginViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/auth/LoginViewModel;",
            ">;"
        }
    .end annotation
.end field

.field movieDetailViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/movies/MovieDetailViewModel;",
            ">;"
        }
    .end annotation
.end field

.field movieViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/movies/MovieViewModel;",
            ">;"
        }
    .end annotation
.end field

.field searchViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/search/SearchViewModel;",
            ">;"
        }
    .end annotation
.end field

.field seriesDetailViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/series/SeriesDetailViewModel;",
            ">;"
        }
    .end annotation
.end field

.field seriesViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/series/SeriesViewModel;",
            ">;"
        }
    .end annotation
.end field

.field settingsViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/settings/SettingsViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

.field tvHomeViewModelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/bayyari/tv/ui/home/TvHomeViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "savedStateHandleParam"    # Landroidx/lifecycle/SavedStateHandle;
    .param p4, "viewModelLifecycleParam"    # Ldagger/hilt/android/ViewModelLifecycle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 803
    invoke-direct {p0}, Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewModelC;-><init>()V

    .line 774
    iput-object p0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    .line 804
    iput-object p1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 805
    iput-object p2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 807
    invoke-direct {p0, p3, p4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->initialize(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    .line 809
    return-void
.end method

.method private initialize(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V
    .locals 5
    .param p1, "savedStateHandleParam"    # Landroidx/lifecycle/SavedStateHandle;
    .param p2, "viewModelLifecycleParam"    # Ldagger/hilt/android/ViewModelLifecycle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 844
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->catchUpViewModelProvider:Ldagger/internal/Provider;

    .line 845
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->favoritesViewModelProvider:Ldagger/internal/Provider;

    .line 846
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->homeViewModelProvider:Ldagger/internal/Provider;

    .line 847
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->livePlayerViewModelProvider:Ldagger/internal/Provider;

    .line 848
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->liveViewModelProvider:Ldagger/internal/Provider;

    .line 849
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->loginViewModelProvider:Ldagger/internal/Provider;

    .line 850
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->movieDetailViewModelProvider:Ldagger/internal/Provider;

    .line 851
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->movieViewModelProvider:Ldagger/internal/Provider;

    .line 852
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->searchViewModelProvider:Ldagger/internal/Provider;

    .line 853
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->seriesDetailViewModelProvider:Ldagger/internal/Provider;

    .line 854
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->seriesViewModelProvider:Ldagger/internal/Provider;

    .line 855
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->settingsViewModelProvider:Ldagger/internal/Provider;

    .line 856
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->tvHomeViewModelProvider:Ldagger/internal/Provider;

    .line 857
    return-void
.end method


# virtual methods
.method getCatchUpUseCase()Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;
    .locals 3

    .line 812
    new-instance v0, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->epgRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/EpgRepository;

    invoke-direct {v0, v1, v2}, Lcom/bayyari/tv/domain/usecase/GetCatchUpUseCase;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;Lcom/bayyari/tv/data/repository/EpgRepository;)V

    return-object v0
.end method

.method public getHiltViewModelAssistedMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 866
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getHiltViewModelMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/ViewModel;",
            ">;>;"
        }
    .end annotation

    .line 861
    invoke-virtual {p0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->hiltViewModelMapMapOfClassOfAndProviderOfViewModelBuilder()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/LazyClassKeyMap;->of(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method hiltViewModelMapMapOfClassOfAndProviderOfViewModelBuilder()Lcom/google/common/collect/ImmutableMap;
    .locals 3

    .line 824
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 825
    .local v0, "mapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;
    sget-object v1, Lcom/bayyari/tv/ui/catchup/CatchUpViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->catchUpViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 826
    sget-object v1, Lcom/bayyari/tv/ui/favorites/FavoritesViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->favoritesViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 827
    sget-object v1, Lcom/bayyari/tv/ui/home/HomeViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->homeViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 828
    sget-object v1, Lcom/bayyari/tv/ui/live/LivePlayerViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->livePlayerViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 829
    sget-object v1, Lcom/bayyari/tv/ui/live/LiveViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->liveViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 830
    sget-object v1, Lcom/bayyari/tv/ui/auth/LoginViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->loginViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 831
    sget-object v1, Lcom/bayyari/tv/ui/movies/MovieDetailViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->movieDetailViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 832
    sget-object v1, Lcom/bayyari/tv/ui/movies/MovieViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->movieViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 833
    sget-object v1, Lcom/bayyari/tv/ui/search/SearchViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->searchViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 834
    sget-object v1, Lcom/bayyari/tv/ui/series/SeriesDetailViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->seriesDetailViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 835
    sget-object v1, Lcom/bayyari/tv/ui/series/SeriesViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->seriesViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 836
    sget-object v1, Lcom/bayyari/tv/ui/settings/SettingsViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->settingsViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 837
    sget-object v1, Lcom/bayyari/tv/ui/home/TvHomeViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->tvHomeViewModelProvider:Ldagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 838
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method loginUseCase()Lcom/bayyari/tv/domain/usecase/LoginUseCase;
    .locals 2

    .line 816
    new-instance v0, Lcom/bayyari/tv/domain/usecase/LoginUseCase;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->authRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/AuthRepository;

    invoke-direct {v0, v1}, Lcom/bayyari/tv/domain/usecase/LoginUseCase;-><init>(Lcom/bayyari/tv/data/repository/AuthRepository;)V

    return-object v0
.end method

.method searchUseCase()Lcom/bayyari/tv/domain/usecase/SearchUseCase;
    .locals 4

    .line 820
    new-instance v0, Lcom/bayyari/tv/domain/usecase/SearchUseCase;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->liveRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bayyari/tv/data/repository/LiveRepository;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->movieRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bayyari/tv/data/repository/MovieRepository;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v3, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;->seriesRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bayyari/tv/data/repository/SeriesRepository;

    invoke-direct {v0, v1, v2, v3}, Lcom/bayyari/tv/domain/usecase/SearchUseCase;-><init>(Lcom/bayyari/tv/data/repository/LiveRepository;Lcom/bayyari/tv/data/repository/MovieRepository;Lcom/bayyari/tv/data/repository/SeriesRepository;)V

    return-object v0
.end method
