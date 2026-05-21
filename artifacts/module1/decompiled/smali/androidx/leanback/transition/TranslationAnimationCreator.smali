.class Landroidx/leanback/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .locals 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroid/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p9, "transition"    # Landroid/transition/Transition;

    .line 47
    move-object/from16 v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v8

    .line 48
    .local v8, "terminalX":F
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v9

    .line 49
    .local v9, "terminalY":F
    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Landroidx/leanback/R$id;->transitionPosition:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, [I

    .line 50
    .local v10, "startPosition":[I
    if-eqz v10, :cond_0

    .line 51
    const/4 v3, 0x0

    aget v3, v10, v3

    sub-int v3, v3, p2

    int-to-float v3, v3

    add-float/2addr v3, v8

    .line 52
    .end local p4    # "startX":F
    .local v3, "startX":F
    const/4 v4, 0x1

    aget v4, v10, v4

    sub-int v4, v4, p3

    int-to-float v4, v4

    add-float/2addr v4, v9

    move v11, v3

    move v12, v4

    .end local p5    # "startY":F
    .local v4, "startY":F
    goto :goto_0

    .line 50
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .restart local p4    # "startX":F
    .restart local p5    # "startY":F
    :cond_0
    move/from16 v11, p4

    move/from16 v12, p5

    .line 55
    .end local p4    # "startX":F
    .end local p5    # "startY":F
    .local v11, "startX":F
    .local v12, "startY":F
    :goto_0
    sub-float v3, v11, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v6, p2, v3

    .line 56
    .local v6, "startPosX":I
    sub-float v3, v12, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v7, p3, v3

    .line 58
    .local v7, "startPosY":I
    invoke-virtual {p0, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 59
    invoke-virtual {p0, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    cmpl-float v3, v11, v1

    if-nez v3, :cond_1

    cmpl-float v3, v12, v2

    if-nez v3, :cond_1

    .line 61
    const/4 v3, 0x0

    return-object v3

    .line 63
    :cond_1
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v13, v3

    .line 64
    .local v13, "path":Landroid/graphics/Path;
    invoke-virtual {v13, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 65
    invoke-virtual {v13, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, v3, v4, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 69
    .local v14, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v5, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 71
    .local v3, "listener":Landroidx/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object/from16 v4, p9

    invoke-virtual {v4, v3}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 72
    invoke-virtual {v14, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    invoke-virtual {v14, v3}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 74
    move-object/from16 v5, p8

    invoke-virtual {v14, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    return-object v14
.end method
