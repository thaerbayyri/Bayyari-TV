.class final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCImpl;
.super Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewC;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCImpl;


# direct methods
.method constructor <init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "singletonCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "viewParam"    # Landroid/view/View;
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
            "activityCImpl",
            "viewParam"
        }
    .end annotation

    .line 593
    invoke-direct {p0}, Lcom/bayyari/tv/MyIptvApp_HiltComponents$ViewC;-><init>()V

    .line 590
    iput-object p0, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCImpl;->viewCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCImpl;

    .line 594
    iput-object p1, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCImpl;->singletonCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 595
    iput-object p2, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCImpl;->activityRetainedCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 596
    iput-object p3, p0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCImpl;->activityCImpl:Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 599
    return-void
.end method
