.class final Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
.super Ljava/lang/Object;
.source "SsaDialogueFormat.java"


# instance fields
.field public final endTimeIndex:I

.field public final length:I

.field public final startTimeIndex:I

.field public final styleIndex:I

.field public final textIndex:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0
    .param p1, "startTimeIndex"    # I
    .param p2, "endTimeIndex"    # I
    .param p3, "styleIndex"    # I
    .param p4, "textIndex"    # I
    .param p5, "length"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    .line 44
    iput p2, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    .line 45
    iput p3, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    .line 46
    iput p4, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    .line 47
    iput p5, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    .line 48
    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
    .locals 12
    .param p0, "formatLine"    # Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    .line 58
    .local v0, "startTimeIndex":I
    const/4 v1, -0x1

    .line 59
    .local v1, "endTimeIndex":I
    const/4 v2, -0x1

    .line 60
    .local v2, "styleIndex":I
    const/4 v3, -0x1

    .line 61
    .local v3, "textIndex":I
    const-string v4, "Format:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "keys":[Ljava/lang/String;
    const/4 v5, 0x0

    move v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    .end local v0    # "startTimeIndex":I
    .end local v1    # "endTimeIndex":I
    .end local v2    # "styleIndex":I
    .end local v3    # "textIndex":I
    .local v5, "i":I
    .local v7, "startTimeIndex":I
    .local v8, "endTimeIndex":I
    .local v9, "styleIndex":I
    .local v10, "textIndex":I
    :goto_0
    array-length v0, v4

    const/4 v1, -0x1

    if-ge v5, v0, :cond_1

    .line 64
    aget-object v0, v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "style"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 75
    :pswitch_0
    move v0, v5

    move v10, v0

    .end local v10    # "textIndex":I
    .local v0, "textIndex":I
    goto :goto_2

    .line 72
    .end local v0    # "textIndex":I
    .restart local v10    # "textIndex":I
    :pswitch_1
    move v0, v5

    .line 73
    .end local v9    # "styleIndex":I
    .local v0, "styleIndex":I
    move v9, v0

    goto :goto_2

    .line 69
    .end local v0    # "styleIndex":I
    .restart local v9    # "styleIndex":I
    :pswitch_2
    move v0, v5

    .line 70
    .end local v8    # "endTimeIndex":I
    .local v0, "endTimeIndex":I
    move v8, v0

    goto :goto_2

    .line 66
    .end local v0    # "endTimeIndex":I
    .restart local v8    # "endTimeIndex":I
    :pswitch_3
    move v0, v5

    .line 67
    .end local v7    # "startTimeIndex":I
    .local v0, "startTimeIndex":I
    move v7, v0

    .line 63
    .end local v0    # "startTimeIndex":I
    .restart local v7    # "startTimeIndex":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 79
    .end local v5    # "i":I
    :cond_1
    if-eq v7, v1, :cond_2

    if-eq v8, v1, :cond_2

    if-eq v10, v1, :cond_2

    .line 82
    new-instance v6, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    array-length v11, v4

    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;-><init>(IIIII)V

    goto :goto_3

    .line 83
    :cond_2
    const/4 v6, 0x0

    .line 79
    :goto_3
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_3
        0x36452d -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
