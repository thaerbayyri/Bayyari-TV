.class public final synthetic Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bayyari/tv/ui/catchup/CatchUpFragment;"
    method = "onViewCreated$lambda$3$lambda$2"
    proto = "(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Landroid/widget/DatePicker;III)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bayyari/tv/ui/catchup/CatchUpFragment;

.field public final synthetic f$1:Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda0;->f$0:Lcom/bayyari/tv/ui/catchup/CatchUpFragment;

    iput-object p2, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda0;->f$1:Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda0;->f$0:Lcom/bayyari/tv/ui/catchup/CatchUpFragment;

    iget-object v1, p0, Lcom/bayyari/tv/ui/catchup/CatchUpFragment$$ExternalSyntheticLambda0;->f$1:Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/bayyari/tv/ui/catchup/CatchUpFragment;->onViewCreated$lambda$3$lambda$2(Lcom/bayyari/tv/ui/catchup/CatchUpFragment;Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;Landroid/widget/DatePicker;III)V

    return-void
.end method
