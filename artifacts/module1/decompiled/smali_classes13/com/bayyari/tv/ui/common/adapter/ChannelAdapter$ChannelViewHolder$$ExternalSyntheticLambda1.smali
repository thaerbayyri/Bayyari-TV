.class public final synthetic Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;"
    method = "bind$lambda$2"
    proto = "(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/domain/model/Channel;Landroid/view/View;)Z"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "4b55be2c9864cfa0f3e2262a2208567ab6bc862a59e7853c580a1f24fbae9ba1"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

.field public final synthetic f$1:Lcom/bayyari/tv/domain/model/Channel;


# direct methods
.method public synthetic constructor <init>(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/domain/model/Channel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    iput-object p2, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda1;->f$1:Lcom/bayyari/tv/domain/model/Channel;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;

    iget-object v1, p0, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder$$ExternalSyntheticLambda1;->f$1:Lcom/bayyari/tv/domain/model/Channel;

    invoke-static {v0, v1, p1}, Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;->bind$lambda$2(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/domain/model/Channel;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
