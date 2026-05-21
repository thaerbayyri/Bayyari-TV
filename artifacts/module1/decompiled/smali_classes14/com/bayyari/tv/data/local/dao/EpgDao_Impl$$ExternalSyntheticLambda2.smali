.class public final synthetic Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;"
    method = "lambda$getForRange$2"
    proto = "(IIJJLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(IIJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p3, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;->f$2:J

    iput-wide p5, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget v0, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v2, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v4, p0, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl$$ExternalSyntheticLambda2;->f$3:J

    move-object v6, p1

    check-cast v6, Landroidx/sqlite/SQLiteConnection;

    invoke-static/range {v0 .. v6}, Lcom/bayyari/tv/data/local/dao/EpgDao_Impl;->lambda$getForRange$2(IIJJLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
