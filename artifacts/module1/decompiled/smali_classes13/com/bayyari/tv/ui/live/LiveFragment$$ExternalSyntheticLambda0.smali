.class public final synthetic Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bayyari/tv/ui/live/LiveFragment;"
    method = "onViewCreated$lambda$4$lambda$3"
    proto = "(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/domain/model/Channel;Landroid/content/DialogInterface;I)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bayyari/tv/ui/live/LiveFragment;

.field public final synthetic f$1:Lcom/bayyari/tv/domain/model/Channel;


# direct methods
.method public synthetic constructor <init>(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/domain/model/Channel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda0;->f$0:Lcom/bayyari/tv/ui/live/LiveFragment;

    iput-object p2, p0, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda0;->f$1:Lcom/bayyari/tv/domain/model/Channel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda0;->f$0:Lcom/bayyari/tv/ui/live/LiveFragment;

    iget-object v1, p0, Lcom/bayyari/tv/ui/live/LiveFragment$$ExternalSyntheticLambda0;->f$1:Lcom/bayyari/tv/domain/model/Channel;

    invoke-static {v0, v1, p1, p2}, Lcom/bayyari/tv/ui/live/LiveFragment;->onViewCreated$lambda$4$lambda$3(Lcom/bayyari/tv/ui/live/LiveFragment;Lcom/bayyari/tv/domain/model/Channel;Landroid/content/DialogInterface;I)V

    return-void
.end method
