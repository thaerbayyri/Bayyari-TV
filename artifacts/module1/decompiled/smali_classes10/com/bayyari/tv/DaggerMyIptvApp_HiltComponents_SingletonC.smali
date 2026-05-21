.class public final Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC;
.super Ljava/lang/Object;
.source "DaggerMyIptvApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$Builder;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$SingletonCImpl;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCImpl;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCImpl;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCImpl;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCImpl;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCImpl;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCImpl;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ServiceCBuilder;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewModelCBuilder;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewCBuilder;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$FragmentCBuilder;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityCBuilder;,
        Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method public static builder()Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$Builder;
    .locals 2

    .line 204
    new-instance v0, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC$Builder;-><init>(Lcom/bayyari/tv/DaggerMyIptvApp_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method
