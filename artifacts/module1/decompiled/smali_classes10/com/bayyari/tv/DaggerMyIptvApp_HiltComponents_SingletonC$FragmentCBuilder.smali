.class final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;
.super Ljava/lang/Object;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/bayyari/tv/MyIptvApp_HiltComponents$FragmentC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentCBuilder"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private fragment:Landroidx/fragment/app/Fragment;

.field private final singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 285
    iput-object p2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 286
    iput-object p3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/bayyari/tv/MyIptvApp_HiltComponents$FragmentC;
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->fragment:Landroidx/fragment/app/Fragment;

    const-class v1, Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 298
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;

    iget-object v1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v4, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/FragmentComponent;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->build()Lcom/bayyari/tv/MyIptvApp_HiltComponents$FragmentC;

    move-result-object v0

    return-object v0
.end method

.method public fragment(Landroidx/fragment/app/Fragment;)Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 291
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->fragment:Landroidx/fragment/app/Fragment;

    .line 292
    return-object p0
.end method

.method public bridge synthetic fragment(Landroidx/fragment/app/Fragment;)Ldagger/hilt/android/internal/builders/FragmentComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 273
    invoke-virtual {p0, p1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;->fragment(Landroidx/fragment/app/Fragment;)Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;

    move-result-object p1

    return-object p1
.end method
