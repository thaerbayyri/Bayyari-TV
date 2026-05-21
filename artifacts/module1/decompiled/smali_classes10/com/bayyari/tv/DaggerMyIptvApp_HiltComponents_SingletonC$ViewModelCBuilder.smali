.class final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;
.super Ljava/lang/Object;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewModelC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewModelCBuilder"
.end annotation


# instance fields
.field private final activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

.field private final singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

.field private viewModelLifecycle:Ldagger/hilt/android/ViewModelLifecycle;


# direct methods
.method private constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl"
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 376
    iput-object p2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 377
    return-void
.end method

.method synthetic constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewModelC;
    .locals 5

    .line 393
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    const-class v1, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 394
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->viewModelLifecycle:Ldagger/hilt/android/ViewModelLifecycle;

    const-class v1, Ldagger/hilt/android/ViewModelLifecycle;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 395
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    iget-object v4, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->viewModelLifecycle:Ldagger/hilt/android/ViewModelLifecycle;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ViewModelComponent;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->build()Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewModelC;

    move-result-object v0

    return-object v0
.end method

.method public savedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;
    .locals 1
    .param p1, "handle"    # Landroidx/lifecycle/SavedStateHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 381
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/SavedStateHandle;

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    .line 382
    return-object p0
.end method

.method public bridge synthetic savedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "handle"
        }
    .end annotation

    .line 364
    invoke-virtual {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->savedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;

    move-result-object p1

    return-object p1
.end method

.method public viewModelLifecycle(Ldagger/hilt/android/ViewModelLifecycle;)Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;
    .locals 1
    .param p1, "viewModelLifecycle"    # Ldagger/hilt/android/ViewModelLifecycle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModelLifecycle"
        }
    .end annotation

    .line 387
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/ViewModelLifecycle;

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->viewModelLifecycle:Ldagger/hilt/android/ViewModelLifecycle;

    .line 388
    return-object p0
.end method

.method public bridge synthetic viewModelLifecycle(Ldagger/hilt/android/ViewModelLifecycle;)Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "viewModelLifecycle"
        }
    .end annotation

    .line 364
    invoke-virtual {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;->viewModelLifecycle(Ldagger/hilt/android/ViewModelLifecycle;)Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;

    move-result-object p1

    return-object p1
.end method
