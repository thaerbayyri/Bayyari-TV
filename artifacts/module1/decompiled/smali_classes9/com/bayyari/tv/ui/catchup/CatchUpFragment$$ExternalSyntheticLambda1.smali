.class public final synthetic Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bayyari/tv/ui/catchup/CatchUpFragment;"
    method = "onViewCreated$lambda$1"
    proto = "(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/domain/model/EpgProgram;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bayyari/tv/ui/catchup/CatchUpFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda1;->f$0:Lcom/bayyari/tv/ui/catchup/CatchUpFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda1;->f$0:Lcom/bayyari/tv/ui/catchup/CatchUpFragment;

    check-cast p1, Lcom/bayyari/tv/domain/model/EpgProgram;

    invoke-static {v0, p1}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->onViewCreated$lambda$1(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/domain/model/EpgProgram;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
