.class Landroidx/media3/session/PlayerWrapper$1;
.super Landroidx/media/VolumeProviderCompat;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/PlayerWrapper;->createVolumeProviderCompat()Landroidx/media/VolumeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/PlayerWrapper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$legacyVolumeFlag:I


# direct methods
.method constructor <init>(Landroidx/media3/session/PlayerWrapper;IIILjava/lang/String;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/session/PlayerWrapper;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Ljava/lang/String;

    .line 1089
    iput-object p1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    iput-object p6, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iput p7, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/media/VolumeProviderCompat;-><init>(IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdjustVolume$1$androidx-media3-session-PlayerWrapper$1(II)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "legacyVolumeFlag"    # I

    .line 1112
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0x22

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1113
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    return-void

    .line 1116
    :cond_0
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdjustVolume: Ignoring unknown direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeProviderCompat"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1146
    :sswitch_0
    iget-object v2, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v2, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    .line 1149
    iget-object v2, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1146
    if-eqz v1, :cond_1

    .line 1147
    iget-object v1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    .line 1149
    :cond_1
    iget-object v1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->isDeviceMutedWithCommandCheck()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    .line 1151
    goto :goto_0

    .line 1139
    :sswitch_1
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    .line 1142
    iget-object v1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1139
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1140
    invoke-virtual {v1, v2, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    .line 1142
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    .line 1144
    goto :goto_0

    .line 1118
    :sswitch_2
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    .line 1121
    iget-object v1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1118
    if-eqz v0, :cond_3

    .line 1119
    invoke-virtual {v1, p2}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume(I)V

    goto :goto_0

    .line 1121
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume()V

    .line 1123
    goto :goto_0

    .line 1125
    :sswitch_3
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    .line 1128
    iget-object v1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1125
    if-eqz v0, :cond_4

    .line 1126
    invoke-virtual {v1, p2}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume(I)V

    goto :goto_0

    .line 1128
    :cond_4
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume()V

    .line 1130
    goto :goto_0

    .line 1132
    :sswitch_4
    iget-object v2, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v2, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    .line 1135
    iget-object v2, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1132
    if-eqz v1, :cond_5

    .line 1133
    invoke-virtual {v2, v0, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    goto :goto_0

    .line 1135
    :cond_5
    invoke-virtual {v2, v0}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    .line 1137
    nop

    .line 1158
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_4
        -0x1 -> :sswitch_3
        0x1 -> :sswitch_2
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic lambda$onSetVolumeTo$0$androidx-media3-session-PlayerWrapper$1(II)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "legacyVolumeFlag"    # I

    .line 1095
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1096
    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    .line 1102
    iget-object v1, p0, Landroidx/media3/session/PlayerWrapper$1;->this$0:Landroidx/media3/session/PlayerWrapper;

    .line 1099
    if-eqz v0, :cond_1

    .line 1100
    invoke-virtual {v1, p1, p2}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(II)V

    goto :goto_0

    .line 1102
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(I)V

    .line 1104
    :goto_0
    return-void
.end method

.method public onAdjustVolume(I)V
    .locals 3
    .param p1, "direction"    # I

    .line 1109
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    new-instance v2, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/PlayerWrapper$1;II)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 1159
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 1092
    iget-object v0, p0, Landroidx/media3/session/PlayerWrapper$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Landroidx/media3/session/PlayerWrapper$1;->val$legacyVolumeFlag:I

    new-instance v2, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media3/session/PlayerWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/PlayerWrapper$1;II)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 1105
    return-void
.end method
