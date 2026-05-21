.class final Landroidx/media3/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "WebViewSubtitleOutput.java"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# static fields
.field private static final CSS_LINE_HEIGHT:F = 1.2f

.field private static final DEFAULT_BACKGROUND_CSS_CLASS:Ljava/lang/String; = "default_bg"


# instance fields
.field private bottomPaddingFraction:F

.field private final canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

.field private defaultTextSize:F

.field private defaultTextSizeType:I

.field private style:Landroidx/media3/ui/CaptionStyleCompat;

.field private textCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 82
    sget-object v0, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 83
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 85
    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 87
    new-instance v1, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1, p2}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    .line 88
    new-instance v1, Landroidx/media3/ui/WebViewSubtitleOutput$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/ui/WebViewSubtitleOutput$1;-><init>(Landroidx/media3/ui/WebViewSubtitleOutput;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 104
    iget-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 106
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/WebViewSubtitleOutput;->addView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/WebViewSubtitleOutput;->addView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method private static anchorTypeToTranslatePercent(I)I
    .locals 1
    .param p0, "anchorType"    # I

    .line 426
    packed-switch p0, :pswitch_data_0

    .line 434
    const/4 v0, 0x0

    return v0

    .line 428
    :pswitch_0
    const/16 v0, -0x64

    return v0

    .line 430
    :pswitch_1
    const/16 v0, -0x32

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;
    .locals 3
    .param p0, "alignment"    # Landroid/text/Layout$Alignment;

    .line 403
    const-string v0, "center"

    if-nez p0, :cond_0

    .line 404
    return-object v0

    .line 406
    :cond_0
    sget-object v1, Landroidx/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 413
    return-object v0

    .line 410
    :pswitch_0
    const-string v0, "end"

    return-object v0

    .line 408
    :pswitch_1
    const-string/jumbo v0, "start"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertCaptionStyleToCssTextShadow(Landroidx/media3/ui/CaptionStyleCompat;)Ljava/lang/String;
    .locals 3
    .param p0, "style"    # Landroidx/media3/ui/CaptionStyleCompat;

    .line 369
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 386
    const-string/jumbo v0, "unset"

    return-object v0

    .line 371
    :pswitch_0
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 372
    invoke-static {v0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 371
    const-string v0, "-0.05em -0.05em 0.15em %s"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :pswitch_1
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 383
    invoke-static {v0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 382
    const-string v0, "0.06em 0.08em 0.15em %s"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :pswitch_2
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    invoke-static {v0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "0.1em 0.12em 0.15em %s"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 378
    :pswitch_3
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 380
    invoke-static {v0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 378
    const-string v0, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertTextSizeToCss(IF)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I
    .param p2, "size"    # F

    .line 358
    nop

    .line 360
    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 359
    invoke-static {p1, p2, v0, v1}, Landroidx/media3/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v0

    .line 361
    .local v0, "sizePx":F
    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 362
    const-string/jumbo v1, "unset"

    return-object v1

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v0, v1

    .line 365
    .local v1, "sizeDp":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%.2fpx"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertVerticalTypeToCss(I)Ljava/lang/String;
    .locals 1
    .param p0, "verticalType"    # I

    .line 391
    packed-switch p0, :pswitch_data_0

    .line 398
    const-string v0, "horizontal-tb"

    return-object v0

    .line 393
    :pswitch_0
    const-string/jumbo v0, "vertical-lr"

    return-object v0

    .line 395
    :pswitch_1
    const-string/jumbo v0, "vertical-rl"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getBlockShearTransformFunction(Landroidx/media3/common/text/Cue;)Ljava/lang/String;
    .locals 5
    .param p0, "cue"    # Landroidx/media3/common/text/Cue;

    .line 338
    iget v0, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 340
    iget v0, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    const-string/jumbo v0, "skewX"

    goto :goto_1

    .line 341
    :cond_1
    :goto_0
    const-string/jumbo v0, "skewY"

    .line 342
    :goto_1
    nop

    .line 343
    .local v0, "direction":Ljava/lang/String;
    iget v3, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    aput-object v3, v2, v1

    const-string v1, "%s(%.2fdeg)"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 345
    .end local v0    # "direction":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private updateWebView()V
    .locals 34

    .line 166
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v1, "html":Ljava/lang/StringBuilder;
    iget-object v2, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v2, v2, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    .line 181
    invoke-static {v2}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    iget v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 182
    invoke-direct {v0, v3, v4}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v3

    .line 183
    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 184
    invoke-static {v6}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertCaptionStyleToCssTextShadow(Landroidx/media3/ui/CaptionStyleCompat;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v3, v8, v2

    const/4 v3, 0x2

    aput-object v5, v8, v3

    const/4 v5, 0x3

    aput-object v6, v8, v5

    .line 168
    const-string v6, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v6, v8}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v6, "cssRuleSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 188
    const-string v8, "default_bg"

    invoke-static {v8}, Landroidx/media3/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v11, v11, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    .line 189
    invoke-static {v11}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v9

    const-string v11, "background-color:%s;"

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 187
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v11, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_f

    .line 191
    iget-object v11, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/common/text/Cue;

    .line 192
    .local v11, "cue":Landroidx/media3/common/text/Cue;
    iget v12, v11, Landroidx/media3/common/text/Cue;->position:F

    const v13, -0x800001

    cmpl-float v12, v12, v13

    const/high16 v14, 0x42c80000    # 100.0f

    if-eqz v12, :cond_0

    iget v12, v11, Landroidx/media3/common/text/Cue;->position:F

    mul-float/2addr v12, v14

    goto :goto_1

    :cond_0
    const/high16 v12, 0x42480000    # 50.0f

    .line 193
    .local v12, "positionPercent":F
    :goto_1
    iget v15, v11, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v15}, Landroidx/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v15

    .line 196
    .local v15, "positionAnchorTranslatePercent":I
    const/16 v16, 0x0

    .line 197
    .local v16, "lineMeasuredFromEnd":Z
    const/16 v17, 0x0

    .line 198
    .local v17, "lineAnchorTranslatePercent":I
    move/from16 v18, v4

    iget v4, v11, Landroidx/media3/common/text/Cue;->line:F

    cmpl-float v4, v4, v13

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v5

    const-string v5, "%.2f%%"

    if-eqz v4, :cond_3

    .line 199
    iget v4, v11, Landroidx/media3/common/text/Cue;->lineType:I

    packed-switch v4, :pswitch_data_0

    .line 211
    move/from16 v21, v7

    move/from16 v22, v13

    iget v4, v11, Landroidx/media3/common/text/Cue;->line:F

    mul-float/2addr v4, v14

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v5, v7}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "lineValue":Ljava/lang/String;
    iget v7, v11, Landroidx/media3/common/text/Cue;->verticalType:I

    if-ne v7, v2, :cond_2

    .line 215
    iget v7, v11, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v7}, Landroidx/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v7

    neg-int v7, v7

    goto :goto_2

    .line 201
    .end local v4    # "lineValue":Ljava/lang/String;
    :pswitch_0
    iget v4, v11, Landroidx/media3/common/text/Cue;->line:F

    const/16 v21, 0x0

    cmpl-float v4, v4, v21

    move/from16 v21, v7

    const-string v7, "%.2fem"

    if-ltz v4, :cond_1

    .line 202
    iget v4, v11, Landroidx/media3/common/text/Cue;->line:F

    mul-float v4, v4, v18

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move/from16 v22, v13

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v9

    invoke-static {v7, v13}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "lineValue":Ljava/lang/String;
    goto :goto_3

    .line 204
    .end local v4    # "lineValue":Ljava/lang/String;
    :cond_1
    move/from16 v22, v13

    iget v4, v11, Landroidx/media3/common/text/Cue;->line:F

    neg-float v4, v4

    sub-float v4, v4, v19

    mul-float v4, v4, v18

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v9

    invoke-static {v7, v13}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .restart local v4    # "lineValue":Ljava/lang/String;
    const/16 v16, 0x1

    .line 207
    goto :goto_3

    .line 216
    :cond_2
    iget v7, v11, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v7}, Landroidx/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v7

    :goto_2
    move/from16 v17, v7

    goto :goto_3

    .line 219
    .end local v4    # "lineValue":Ljava/lang/String;
    :cond_3
    move/from16 v21, v7

    move/from16 v22, v13

    iget v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    sub-float v19, v19, v4

    mul-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v5, v7}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .restart local v4    # "lineValue":Ljava/lang/String;
    const/16 v17, -0x64

    .line 224
    :goto_3
    iget v7, v11, Landroidx/media3/common/text/Cue;->size:F

    cmpl-float v7, v7, v22

    if-eqz v7, :cond_4

    .line 225
    iget v7, v11, Landroidx/media3/common/text/Cue;->size:F

    mul-float/2addr v7, v14

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v7, v13, v9

    invoke-static {v5, v13}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 226
    :cond_4
    const-string v5, "fit-content"

    :goto_4
    nop

    .line 228
    .local v5, "size":Ljava/lang/String;
    iget-object v7, v11, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v7}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "textAlign":Ljava/lang/String;
    iget v13, v11, Landroidx/media3/common/text/Cue;->verticalType:I

    invoke-static {v13}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertVerticalTypeToCss(I)Ljava/lang/String;

    move-result-object v13

    .line 230
    .local v13, "writingMode":Ljava/lang/String;
    iget v14, v11, Landroidx/media3/common/text/Cue;->textSizeType:I

    move/from16 v19, v9

    iget v9, v11, Landroidx/media3/common/text/Cue;->textSize:F

    invoke-direct {v0, v14, v9}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v9

    .line 232
    .local v9, "cueTextSizeCssPx":Ljava/lang/String;
    iget-boolean v14, v11, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-eqz v14, :cond_5

    iget v14, v11, Landroidx/media3/common/text/Cue;->windowColor:I

    goto :goto_5

    :cond_5
    iget-object v14, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v14, v14, Landroidx/media3/ui/CaptionStyleCompat;->windowColor:I

    :goto_5
    invoke-static {v14}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v14

    .line 236
    .local v14, "windowCssColor":Ljava/lang/String;
    iget v2, v11, Landroidx/media3/common/text/Cue;->verticalType:I

    const-string v23, "left"

    const-string/jumbo v24, "right"

    packed-switch v2, :pswitch_data_1

    .line 247
    if-eqz v16, :cond_8

    const-string v2, "bottom"

    goto :goto_7

    .line 238
    :pswitch_1
    if-eqz v16, :cond_6

    move-object/from16 v23, v24

    .line 239
    .local v23, "lineProperty":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "top"

    .line 240
    .local v2, "positionProperty":Ljava/lang/String;
    goto :goto_8

    .line 242
    .end local v2    # "positionProperty":Ljava/lang/String;
    .end local v23    # "lineProperty":Ljava/lang/String;
    :pswitch_2
    if-eqz v16, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v23, v24

    .line 243
    .restart local v23    # "lineProperty":Ljava/lang/String;
    :goto_6
    const-string/jumbo v2, "top"

    .line 244
    .restart local v2    # "positionProperty":Ljava/lang/String;
    goto :goto_8

    .line 247
    .end local v2    # "positionProperty":Ljava/lang/String;
    .end local v23    # "lineProperty":Ljava/lang/String;
    :cond_8
    const-string/jumbo v2, "top"

    :goto_7
    move-object/from16 v23, v2

    .line 248
    .restart local v23    # "lineProperty":Ljava/lang/String;
    const-string v2, "left"

    .line 254
    .restart local v2    # "positionProperty":Ljava/lang/String;
    :goto_8
    move-object/from16 v24, v2

    .end local v2    # "positionProperty":Ljava/lang/String;
    .local v24, "positionProperty":Ljava/lang/String;
    iget v2, v11, Landroidx/media3/common/text/Cue;->verticalType:I

    if-eq v2, v3, :cond_a

    iget v2, v11, Landroidx/media3/common/text/Cue;->verticalType:I

    move/from16 v25, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    goto :goto_9

    .line 259
    :cond_9
    const-string/jumbo v2, "width"

    .line 260
    .local v2, "sizeProperty":Ljava/lang/String;
    move v3, v15

    .line 261
    .local v3, "horizontalTranslatePercent":I
    move/from16 v26, v17

    .local v26, "verticalTranslatePercent":I
    goto :goto_a

    .line 254
    .end local v2    # "sizeProperty":Ljava/lang/String;
    .end local v3    # "horizontalTranslatePercent":I
    .end local v26    # "verticalTranslatePercent":I
    :cond_a
    move/from16 v25, v3

    .line 255
    :goto_9
    const-string v2, "height"

    .line 256
    .restart local v2    # "sizeProperty":Ljava/lang/String;
    move/from16 v3, v17

    .line 257
    .restart local v3    # "horizontalTranslatePercent":I
    move/from16 v26, v15

    .line 264
    .restart local v26    # "verticalTranslatePercent":I
    :goto_a
    move-object/from16 v27, v2

    .end local v2    # "sizeProperty":Ljava/lang/String;
    .local v27, "sizeProperty":Ljava/lang/String;
    iget-object v2, v11, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual {v0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move/from16 v29, v3

    .end local v3    # "horizontalTranslatePercent":I
    .local v29, "horizontalTranslatePercent":I
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 265
    invoke-static {v2, v3}, Landroidx/media3/ui/SpannedToHtmlConverter;->convert(Ljava/lang/CharSequence;F)Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    move-result-object v2

    .line 267
    .local v2, "htmlAndCss":Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v30, v3

    move-object/from16 v3, v28

    check-cast v3, Ljava/lang/String;

    .line 269
    .local v3, "cssSelector":Ljava/lang/String;
    nop

    .line 270
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v31, v4

    .end local v4    # "lineValue":Ljava/lang/String;
    .local v31, "lineValue":Ljava/lang/String;
    move-object/from16 v4, v28

    check-cast v4, Ljava/lang/String;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 271
    .local v4, "previousCssDeclarationBlock":Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 273
    move-object/from16 v28, v5

    .end local v5    # "size":Ljava/lang/String;
    .local v28, "size":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_c

    :cond_b
    move/from16 v5, v19

    goto :goto_d

    .line 271
    .end local v28    # "size":Ljava/lang/String;
    .restart local v5    # "size":Ljava/lang/String;
    :cond_c
    move-object/from16 v28, v5

    .line 273
    .end local v5    # "size":Ljava/lang/String;
    .restart local v28    # "size":Ljava/lang/String;
    :goto_c
    const/4 v5, 0x1

    .line 271
    :goto_d
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 274
    .end local v3    # "cssSelector":Ljava/lang/String;
    .end local v4    # "previousCssDeclarationBlock":Ljava/lang/String;
    move-object/from16 v5, v28

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    goto :goto_b

    .line 276
    .end local v28    # "size":Ljava/lang/String;
    .end local v31    # "lineValue":Ljava/lang/String;
    .local v4, "lineValue":Ljava/lang/String;
    .restart local v5    # "size":Ljava/lang/String;
    :cond_d
    move-object/from16 v31, v4

    move-object/from16 v28, v5

    .line 291
    .end local v4    # "lineValue":Ljava/lang/String;
    .end local v5    # "size":Ljava/lang/String;
    .restart local v28    # "size":Ljava/lang/String;
    .restart local v31    # "lineValue":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 293
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 302
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 303
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 304
    invoke-static {v11}, Landroidx/media3/ui/WebViewSubtitleOutput;->getBlockShearTransformFunction(Landroidx/media3/common/text/Cue;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v33, v3

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v33, v3, v19

    const/16 v22, 0x1

    aput-object v24, v3, v22

    aput-object v4, v3, v25

    aput-object v23, v3, v20

    aput-object v31, v3, v21

    const/4 v4, 0x5

    aput-object v27, v3, v4

    const/4 v4, 0x6

    aput-object v28, v3, v4

    const/4 v4, 0x7

    aput-object v7, v3, v4

    const/16 v4, 0x8

    aput-object v13, v3, v4

    const/16 v4, 0x9

    aput-object v9, v3, v4

    const/16 v4, 0xa

    aput-object v14, v3, v4

    const/16 v4, 0xb

    aput-object v5, v3, v4

    const/16 v4, 0xc

    aput-object v30, v3, v4

    const/16 v4, 0xd

    aput-object v32, v3, v4

    .line 277
    const-string v4, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v19

    .line 305
    const-string v4, "<span class=\'%s\'>"

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v3, v11, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const-string v4, "</span>"

    if-eqz v3, :cond_e

    .line 308
    iget-object v3, v11, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 311
    invoke-static {v3}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v30, v3, v19

    .line 309
    const-string v5, "<span style=\'display:inline-block; text-align:%s;\'>"

    invoke-static {v5, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    .line 312
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 315
    :cond_e
    iget-object v3, v2, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</div>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .end local v2    # "htmlAndCss":Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;
    .end local v7    # "textAlign":Ljava/lang/String;
    .end local v9    # "cueTextSizeCssPx":Ljava/lang/String;
    .end local v11    # "cue":Landroidx/media3/common/text/Cue;
    .end local v12    # "positionPercent":F
    .end local v13    # "writingMode":Ljava/lang/String;
    .end local v14    # "windowCssColor":Ljava/lang/String;
    .end local v15    # "positionAnchorTranslatePercent":I
    .end local v16    # "lineMeasuredFromEnd":Z
    .end local v17    # "lineAnchorTranslatePercent":I
    .end local v23    # "lineProperty":Ljava/lang/String;
    .end local v24    # "positionProperty":Ljava/lang/String;
    .end local v26    # "verticalTranslatePercent":I
    .end local v27    # "sizeProperty":Ljava/lang/String;
    .end local v28    # "size":Ljava/lang/String;
    .end local v29    # "horizontalTranslatePercent":I
    .end local v31    # "lineValue":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v18

    move/from16 v9, v19

    move/from16 v5, v20

    move/from16 v7, v21

    move/from16 v3, v25

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    move/from16 v19, v9

    .line 321
    .end local v10    # "i":I
    const-string v2, "</div></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v2, "htmlHead":Ljava/lang/StringBuilder;
    const-string v3, "<html><head><style>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 326
    .local v4, "cssSelector":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "{"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .end local v4    # "cssSelector":Ljava/lang/String;
    goto :goto_f

    .line 328
    :cond_10
    const-string v3, "</style></head>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v19

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 331
    const-string/jumbo v5, "text/html"

    const-string v7, "base64"

    invoke-virtual {v3, v4, v5, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 163
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 147
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 148
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->updateWebView()V

    .line 153
    :cond_0
    return-void
.end method

.method public update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V
    .locals 7
    .param p2, "style"    # Landroidx/media3/ui/CaptionStyleCompat;
    .param p3, "textSize"    # F
    .param p4, "textSizeType"    # I
    .param p5, "bottomPaddingFraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;",
            "Landroidx/media3/ui/CaptionStyleCompat;",
            "FIF)V"
        }
    .end annotation

    .line 117
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    iput-object p2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 118
    iput p3, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 119
    iput p4, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 120
    iput p5, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 123
    .local v2, "bitmapCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "textCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/text/Cue;

    .line 126
    .local v3, "cue":Landroidx/media3/common/text/Cue;
    iget-object v4, v3, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 127
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v3    # "cue":Landroidx/media3/common/text/Cue;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    :cond_2
    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 138
    invoke-direct {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->updateWebView()V

    .line 140
    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "style":Landroidx/media3/ui/CaptionStyleCompat;
    .end local p3    # "textSize":F
    .end local p4    # "textSizeType":I
    .end local p5    # "bottomPaddingFraction":F
    .local v3, "style":Landroidx/media3/ui/CaptionStyleCompat;
    .local v4, "textSize":F
    .local v5, "textSizeType":I
    .local v6, "bottomPaddingFraction":F
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/ui/CanvasSubtitleOutput;->update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V

    .line 142
    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->invalidate()V

    .line 143
    return-void
.end method
