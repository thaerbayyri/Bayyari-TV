.class public final synthetic Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bayyari/tv/ui/MainActivity;"
    method = "onCreate$lambda$3"
    proto = "(Lcom/bayyari/tv/ui/MainActivity;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bayyari/tv/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/bayyari/tv/ui/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/bayyari/tv/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bayyari/tv/ui/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/bayyari/tv/ui/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/bayyari/tv/ui/MainActivity;->onCreate$lambda$3(Lcom/bayyari/tv/ui/MainActivity;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    return-void
.end method
