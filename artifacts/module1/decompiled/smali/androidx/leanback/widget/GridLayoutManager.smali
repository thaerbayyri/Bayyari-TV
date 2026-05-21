.class public final Landroidx/leanback/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/GridLayoutManager$LayoutParams;,
        Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;,
        Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;,
        Landroidx/leanback/widget/GridLayoutManager$SavedState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_MAX_PENDING_MOVES:I = 0xa

.field static final MIN_MS_SMOOTH_SCROLL_MAIN_SCREEN:I = 0x1e

.field private static final NEXT_ITEM:I = 0x1

.field private static final NEXT_ROW:I = 0x3

.field static final PF_FAST_RELAYOUT:I = 0x4

.field static final PF_FAST_RELAYOUT_UPDATED_SELECTED_POSITION:I = 0x8

.field static final PF_FOCUS_OUT_BACK:I = 0x1000

.field static final PF_FOCUS_OUT_FRONT:I = 0x800

.field static final PF_FOCUS_OUT_MASKS:I = 0x1800

.field static final PF_FOCUS_OUT_SIDE_END:I = 0x4000

.field static final PF_FOCUS_OUT_SIDE_MASKS:I = 0x6000

.field static final PF_FOCUS_OUT_SIDE_START:I = 0x2000

.field static final PF_FOCUS_SEARCH_DISABLED:I = 0x8000

.field static final PF_FORCE_FULL_LAYOUT:I = 0x100

.field static final PF_IN_LAYOUT_SEARCH_FOCUS:I = 0x10

.field static final PF_IN_SELECTION:I = 0x20

.field static final PF_LAYOUT_EATEN_IN_SLIDING:I = 0x80

.field static final PF_LAYOUT_ENABLED:I = 0x200

.field static final PF_PRUNE_CHILD:I = 0x10000

.field static final PF_REVERSE_FLOW_MASK:I = 0xc0000

.field static final PF_REVERSE_FLOW_PRIMARY:I = 0x40000

.field static final PF_REVERSE_FLOW_SECONDARY:I = 0x80000

.field static final PF_ROW_SECONDARY_SIZE_REFRESH:I = 0x400

.field static final PF_SCROLL_ENABLED:I = 0x20000

.field static final PF_SLIDING:I = 0x40

.field static final PF_STAGE_LAYOUT:I = 0x1

.field static final PF_STAGE_MASK:I = 0x3

.field static final PF_STAGE_SCROLL:I = 0x2

.field private static final PREV_ITEM:I = 0x0

.field private static final PREV_ROW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"

.field private static final sTempRect:Landroid/graphics/Rect;

.field static sTwoInts:[I


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mBaseGridView:Landroidx/leanback/widget/BaseGridView;

.field mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

.field private mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

.field private mChildViewHolderSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/OnChildViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mChildVisibility:I

.field final mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

.field mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

.field mDisappearingPositions:[I

.field private mExtraLayoutSpace:I

.field mExtraLayoutSpaceInPreLayout:I

.field private mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field mFlag:I

.field mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mGravity:I

.field mGrid:Landroidx/leanback/widget/Grid;

.field private final mGridProvider:Landroidx/leanback/widget/Grid$Provider;

.field private mHorizontalSpacing:I

.field private final mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

.field mMaxPendingMoves:I

.field private mMaxSizeSecondary:I

.field private final mMeasuredDimension:[I

.field mNumRows:I

.field private mNumRowsRequested:I

.field mOnLayoutCompletedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field mOrientation:I

.field private mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field mPositionDeltaInPreLayout:I

.field final mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

.field private mPrimaryScrollExtra:I

.field mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field private mSaveContextLevel:I

.field mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field mSmoothScrollSpeedFactor:F

.field private mSpacingPrimary:I

.field private mSpacingSecondary:I

.field mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field mSubFocusPosition:I

.field private mVerticalSpacing:I

.field final mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 467
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    .line 712
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;-><init>(Landroidx/leanback/widget/BaseGridView;)V

    .line 728
    return-void
.end method

.method constructor <init>(Landroidx/leanback/widget/BaseGridView;)V
    .locals 3
    .param p1, "baseGridView"    # Landroidx/leanback/widget/BaseGridView;

    .line 731
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 406
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSmoothScrollSpeedFactor:F

    .line 407
    const/16 v0, 0xa

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 447
    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 460
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    .line 561
    const v1, 0x36200

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 565
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    .line 568
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 570
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    .line 573
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    .line 580
    const/4 v1, -0x1

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 586
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 606
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 669
    const v2, 0x800033

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    .line 678
    const/4 v2, 0x1

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 688
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 692
    new-instance v2, Landroidx/leanback/widget/WindowAlignment;

    invoke-direct {v2}, Landroidx/leanback/widget/WindowAlignment;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 697
    new-instance v2, Landroidx/leanback/widget/ItemAlignment;

    invoke-direct {v2}, Landroidx/leanback/widget/ItemAlignment;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 717
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 719
    new-instance v2, Landroidx/leanback/widget/ViewsStateBundle;

    invoke-direct {v2}, Landroidx/leanback/widget/ViewsStateBundle;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 1501
    new-instance v2, Landroidx/leanback/widget/GridLayoutManager$1;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/GridLayoutManager$1;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1669
    new-instance v2, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/GridLayoutManager$2;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGridProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 732
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 733
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 735
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->setItemPrefetchEnabled(Z)V

    .line 736
    return-void
.end method

.method private addA11yActionMovingBackward(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Z)V
    .locals 1
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p2, "reverseFlowPrimary"    # Z

    .line 3931
    nop

    .line 3932
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    .line 3933
    if-eqz p2, :cond_0

    .line 3935
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_0

    .line 3937
    :cond_0
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3933
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_1

    .line 3939
    :cond_1
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 3945
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3946
    return-void
.end method

.method private addA11yActionMovingForward(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Z)V
    .locals 1
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p2, "reverseFlowPrimary"    # Z

    .line 3950
    nop

    .line 3951
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    .line 3952
    if-eqz p2, :cond_0

    .line 3954
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_0

    .line 3956
    :cond_0
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3952
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_1

    .line 3958
    :cond_1
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 3964
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3965
    return-void
.end method

.method private appendOneColumnVisibleItems()Z
    .locals 1

    .line 1899
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private appendVisibleItems()V
    .locals 3

    .line 1995
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1996
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 1997
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v1, v2

    .line 1995
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Grid;->appendVisibleItems(I)V

    .line 1998
    return-void
.end method

.method private discardLayoutInfo()V
    .locals 1

    .line 3657
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 3658
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 3659
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3660
    return-void
.end method

.method private fastRelayout()V
    .locals 14

    .line 2012
    const/4 v0, 0x0

    .line 2013
    .local v0, "invalidateAfter":Z
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .line 2014
    .local v1, "childCount":I
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v2}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    .line 2015
    .local v2, "position":I
    const/4 v3, 0x0

    .line 2016
    .local v3, "index":I
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2017
    :goto_0
    if-ge v3, v1, :cond_5

    .line 2018
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2024
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v5

    if-eq v2, v5, :cond_0

    .line 2025
    const/4 v0, 0x1

    .line 2026
    goto/16 :goto_3

    .line 2028
    :cond_0
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5, v2}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v5

    .line 2029
    .local v5, "location":Landroidx/leanback/widget/Grid$Location;
    if-nez v5, :cond_1

    .line 2030
    const/4 v0, 0x1

    .line 2031
    goto :goto_3

    .line 2034
    :cond_1
    iget v6, v5, Landroidx/leanback/widget/Grid$Location;->mRow:I

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v6

    iget-object v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 2035
    invoke-virtual {v7}, Landroidx/leanback/widget/WindowAlignment;->secondAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v13, v6, v7

    .line 2037
    .local v13, "startSecondary":I
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    .line 2038
    .local v11, "start":I
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v6

    .line 2040
    .local v6, "oldPrimarySize":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2041
    .local v7, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v7}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->viewNeedsUpdate()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2042
    iget v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2043
    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v4, v8}, Landroidx/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2044
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 2045
    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    move-object v10, v4

    goto :goto_1

    .line 2041
    :cond_2
    move-object v10, v4

    .line 2048
    .end local v4    # "view":Landroid/view/View;
    .local v10, "view":Landroid/view/View;
    :goto_1
    invoke-virtual {p0, v10}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 2049
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_3

    .line 2050
    invoke-virtual {p0, v10}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v4

    .line 2051
    .local v4, "primarySize":I
    add-int v8, v11, v4

    move v12, v8

    .local v8, "end":I
    goto :goto_2

    .line 2053
    .end local v4    # "primarySize":I
    .end local v8    # "end":I
    :cond_3
    invoke-virtual {p0, v10}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v4

    .line 2054
    .restart local v4    # "primarySize":I
    add-int v8, v11, v4

    move v12, v8

    .line 2056
    .local v12, "end":I
    :goto_2
    iget v9, v5, Landroidx/leanback/widget/Grid$Location;->mRow:I

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Landroidx/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    .line 2057
    if-eq v6, v4, :cond_4

    .line 2060
    const/4 v0, 0x1

    .line 2061
    goto :goto_3

    .line 2017
    .end local v4    # "primarySize":I
    .end local v5    # "location":Landroidx/leanback/widget/Grid$Location;
    .end local v6    # "oldPrimarySize":I
    .end local v7    # "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "startSecondary":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2064
    :cond_5
    :goto_3
    if-eqz v0, :cond_8

    .line 2065
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v4}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v4

    .line 2066
    .local v4, "savedLastPos":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_4
    if-lt v5, v3, :cond_6

    .line 2067
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2068
    .local v6, "v":Landroid/view/View;
    iget-object v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v6, v7}, Landroidx/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2066
    .end local v6    # "v":Landroid/view/View;
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 2070
    .end local v5    # "i":I
    :cond_6
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5, v2}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 2071
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    .line 2073
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2074
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v5, :cond_8

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gt v5, v4, :cond_8

    .line 2077
    :goto_5
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v5

    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v5, v6, :cond_8

    .line 2078
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_5

    .line 2083
    :cond_7
    :goto_6
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 2084
    invoke-virtual {v5}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v5

    if-ge v5, v4, :cond_8

    goto :goto_6

    .line 2089
    .end local v4    # "savedLastPos":I
    :cond_8
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2090
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 2091
    return-void
.end method

.method private findImmediateChildIndex(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 3219
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    if-eq p1, v0, :cond_1

    .line 3220
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 3221
    if-eqz p1, :cond_1

    .line 3222
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3223
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 3224
    return v0

    .line 3222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3229
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private focusToViewInLayout(ZZII)V
    .locals 5
    .param p1, "hadFocus"    # Z
    .param p2, "alignToView"    # Z
    .param p3, "extraDelta"    # I
    .param p4, "extraDeltaSecondary"    # I

    .line 2105
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2106
    .local v0, "focusView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2107
    invoke-virtual {p0, v0, v1, p3, p4}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;ZII)V

    .line 2109
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2110
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 2111
    :cond_1
    if-nez p1, :cond_5

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2112
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2113
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1

    .line 2115
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 2116
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2117
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2118
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v4, v0}, Landroidx/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    .line 2119
    goto :goto_1

    .line 2115
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2124
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2125
    invoke-virtual {p0, v0, v1, p3, p4}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;ZII)V

    .line 2128
    :cond_5
    :goto_2
    return-void
.end method

.method private forceRequestLayout()V
    .locals 2

    .line 1498
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1499
    return-void
.end method

.method private getAdapterPositionByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1032
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getAdapterPositionByView(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 995
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 996
    return v0

    .line 998
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 999
    .local v1, "params":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1003
    :cond_1
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAbsoluteAdapterPosition()I

    move-result v0

    return v0

    .line 1001
    :cond_2
    :goto_0
    return v0
.end method

.method private getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "scrollPrimary"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "childView"    # Landroid/view/View;

    .line 2992
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 2993
    .local v0, "subindex":I
    if-eqz v0, :cond_0

    .line 2994
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2995
    .local v1, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 2997
    .end local v1    # "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    :cond_0
    return p1
.end method

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "deltas"    # [I

    .line 3145
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    .line 3146
    .local v0, "scrollPrimary":I
    if-eqz p2, :cond_0

    .line 3147
    invoke-direct {p0, v0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 3149
    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v1

    .line 3154
    .local v1, "scrollSecondary":I
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, v2

    .line 3155
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3160
    :cond_1
    aput v3, p3, v3

    .line 3161
    aput v3, p3, v2

    .line 3163
    return v3

    .line 3156
    :cond_2
    :goto_0
    aput v0, p3, v3

    .line 3157
    aput v1, p3, v2

    .line 3158
    return v2
.end method

.method private getMovement(I)I
    .locals 5
    .param p1, "direction"    # I

    .line 3584
    const/16 v0, 0x11

    .line 3586
    .local v0, "movement":I
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 3587
    const/4 v1, 0x0

    const/high16 v3, 0x40000

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 3598
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_1

    .line 3592
    :sswitch_1
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 3593
    goto :goto_1

    .line 3595
    :sswitch_2
    const/4 v0, 0x2

    .line 3596
    goto :goto_1

    .line 3589
    :sswitch_3
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    move v2, v1

    :cond_1
    move v0, v2

    .line 3590
    nop

    .line 3599
    :goto_1
    goto :goto_3

    .line 3601
    :cond_2
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_5

    .line 3602
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/high16 v3, 0x80000

    sparse-switch p1, :sswitch_data_1

    goto :goto_3

    .line 3613
    :sswitch_4
    const/4 v0, 0x1

    goto :goto_3

    .line 3607
    :sswitch_5
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    move v0, v1

    .line 3608
    goto :goto_3

    .line 3610
    :sswitch_6
    const/4 v0, 0x0

    .line 3611
    goto :goto_3

    .line 3604
    :sswitch_7
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    move v0, v1

    .line 3605
    nop

    .line 3618
    :cond_5
    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_7
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_4
    .end sparse-switch
.end method

.method private getNoneAlignedPosition(Landroid/view/View;[I)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "deltas"    # [I

    .line 3071
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    .line 3072
    .local v0, "pos":I
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v1

    .line 3073
    .local v1, "viewMin":I
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v2

    .line 3076
    .local v2, "viewMax":I
    const/4 v3, 0x0

    .line 3077
    .local v3, "firstView":Landroid/view/View;
    const/4 v4, 0x0

    .line 3078
    .local v4, "lastView":Landroid/view/View;
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v5}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v5

    .line 3079
    .local v5, "paddingMin":I
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v6}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v6

    .line 3080
    .local v6, "clientSize":I
    iget-object v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v7, v0}, Landroidx/leanback/widget/Grid;->getRowIndex(I)I

    move-result v7

    .line 3081
    .local v7, "row":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ge v1, v5, :cond_1

    .line 3083
    move-object v3, p1

    .line 3084
    iget v11, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-ne v11, v10, :cond_6

    .line 3087
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->prependOneColumnVisibleItems()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3088
    iget-object v11, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-object v12, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 3089
    invoke-virtual {v12}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v12

    invoke-virtual {v11, v12, v0}, Landroidx/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object v11

    aget-object v11, v11, v7

    .line 3090
    .local v11, "positions":Landroidx/collection/CircularIntArray;
    invoke-virtual {v11, v9}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 3091
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v12, v2, v12

    if-le v12, v6, :cond_0

    .line 3092
    invoke-virtual {v11}, Landroidx/collection/CircularIntArray;->size()I

    move-result v12

    if-le v12, v10, :cond_6

    .line 3093
    invoke-virtual {v11, v10}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v10

    invoke-virtual {p0, v10}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 3097
    .end local v11    # "positions":Landroidx/collection/CircularIntArray;
    :cond_0
    goto :goto_0

    .line 3099
    :cond_1
    add-int v11, v6, v5

    if-le v2, v11, :cond_6

    .line 3101
    iget v11, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-ne v11, v10, :cond_5

    .line 3103
    move-object v10, p1

    .line 3105
    .end local v3    # "firstView":Landroid/view/View;
    .local v10, "firstView":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-object v11, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 3106
    invoke-virtual {v11}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v11

    invoke-virtual {v3, v0, v11}, Landroidx/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object v3

    aget-object v3, v3, v7

    .line 3107
    .local v3, "positions":Landroidx/collection/CircularIntArray;
    invoke-virtual {v3}, Landroidx/collection/CircularIntArray;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v3, v11}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v11

    invoke-virtual {p0, v11}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 3108
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v11, v1

    if-le v11, v6, :cond_3

    .line 3109
    const/4 v4, 0x0

    .line 3110
    goto :goto_1

    .line 3112
    .end local v3    # "positions":Landroidx/collection/CircularIntArray;
    :cond_3
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3113
    :goto_1
    if-eqz v4, :cond_4

    .line 3115
    const/4 v3, 0x0

    .end local v10    # "firstView":Landroid/view/View;
    .local v3, "firstView":Landroid/view/View;
    goto :goto_2

    .line 3113
    .end local v3    # "firstView":Landroid/view/View;
    .restart local v10    # "firstView":Landroid/view/View;
    :cond_4
    move-object v3, v10

    goto :goto_2

    .line 3118
    .end local v10    # "firstView":Landroid/view/View;
    .restart local v3    # "firstView":Landroid/view/View;
    :cond_5
    move-object v4, p1

    .line 3121
    :cond_6
    :goto_2
    const/4 v10, 0x0

    .line 3122
    .local v10, "scrollPrimary":I
    if-eqz v3, :cond_7

    .line 3123
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    sub-int v10, v11, v5

    goto :goto_3

    .line 3124
    :cond_7
    if-eqz v4, :cond_8

    .line 3125
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v11

    add-int v12, v5, v6

    sub-int v10, v11, v12

    .line 3128
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 3129
    move-object v11, v3

    .local v11, "secondaryAlignedView":Landroid/view/View;
    goto :goto_4

    .line 3130
    .end local v11    # "secondaryAlignedView":Landroid/view/View;
    :cond_9
    if-eqz v4, :cond_a

    .line 3131
    move-object v11, v4

    .restart local v11    # "secondaryAlignedView":Landroid/view/View;
    goto :goto_4

    .line 3133
    .end local v11    # "secondaryAlignedView":Landroid/view/View;
    :cond_a
    move-object v11, p1

    .line 3135
    .restart local v11    # "secondaryAlignedView":Landroid/view/View;
    :goto_4
    invoke-direct {p0, v11}, Landroidx/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v12

    .line 3136
    .local v12, "scrollSecondary":I
    if-nez v10, :cond_c

    if-eqz v12, :cond_b

    goto :goto_5

    .line 3141
    :cond_b
    return v9

    .line 3137
    :cond_c
    :goto_5
    aput v10, p2, v9

    .line 3138
    aput v12, p2, v8

    .line 3139
    return v8
.end method

.method private getPrimaryAlignedScrollDistance(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2983
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v0

    return v0
.end method

.method private getRowSizeSecondary(I)I
    .locals 1
    .param p1, "rowIndex"    # I

    .line 1319
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_0

    .line 1320
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    return v0

    .line 1322
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v0, :cond_1

    .line 1323
    const/4 v0, 0x0

    return v0

    .line 1325
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v0, v0, p1

    return v0
.end method

.method private getSecondaryScrollDistance(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 3001
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v0

    .line 3002
    .local v0, "viewCenterSecondary":I
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment;->secondAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v1

    return v1
.end method

.method private getSizeSecondary()I
    .locals 3

    .line 1345
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    .line 1346
    .local v0, "rightmostIndex":I
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1221
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getViewCenterSecondary(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1225
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1229
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1230
    .local v0, "p":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignX()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1234
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1235
    .local v0, "p":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignY()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private gridOnRequestFocusInDescendantsAligned(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3536
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 3537
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3538
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3539
    .local v1, "result":Z
    nop

    .line 3542
    return v1

    .line 3544
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private gridOnRequestFocusInDescendantsUnaligned(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3553
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 3554
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 3555
    const/4 v1, 0x0

    .line 3556
    .local v1, "index":I
    const/4 v2, 0x1

    .line 3557
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_0

    .line 3559
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 3560
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 3561
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 3563
    .restart local v3    # "end":I
    :goto_0
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v4}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v4

    .line 3564
    .local v4, "left":I
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v5}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v5

    add-int/2addr v5, v4

    .line 3565
    .local v5, "right":I
    move v6, v1

    .local v6, "i":I
    :goto_1
    if-eq v6, v3, :cond_2

    .line 3566
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3567
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 3568
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-lt v8, v4, :cond_1

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    if-gt v8, v5, :cond_1

    .line 3569
    invoke-virtual {v7, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3570
    const/4 v8, 0x1

    return v8

    .line 3565
    .end local v7    # "child":Landroid/view/View;
    :cond_1
    add-int/2addr v6, v2

    goto :goto_1

    .line 3575
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    return v6
.end method

.method private initScrollController()V
    .locals 3

    .line 2643
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->reset()V

    .line 2644
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2645
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2646
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2647
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2648
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    .line 2649
    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2655
    return-void
.end method

.method private layoutInit()Z
    .locals 6

    .line 1280
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 1281
    .local v0, "newItemCount":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1282
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1283
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 1284
    :cond_0
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v3, v0, :cond_1

    .line 1285
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1286
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 1287
    :cond_1
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v3, v1, :cond_2

    if-lez v0, :cond_2

    .line 1289
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1290
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1292
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_3

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 1293
    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v1

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v1, v4, :cond_3

    .line 1294
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollController()V

    .line 1295
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1296
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/Grid;->setSpacing(I)V

    .line 1297
    return v3

    .line 1299
    :cond_3
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1301
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    const/high16 v4, 0x40000

    if-eqz v1, :cond_5

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v5

    if-ne v1, v5, :cond_5

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 1302
    invoke-virtual {v5}, Landroidx/leanback/widget/Grid;->isReversedFlow()Z

    move-result v5

    if-eq v1, v5, :cond_7

    .line 1303
    :cond_5
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-static {v1}, Landroidx/leanback/widget/Grid;->createGrid(I)Landroidx/leanback/widget/Grid;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 1304
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGridProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-virtual {v1, v5}, Landroidx/leanback/widget/Grid;->setProvider(Landroidx/leanback/widget/Grid$Provider;)V

    .line 1305
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroidx/leanback/widget/Grid;->setReversedFlow(Z)V

    .line 1307
    :cond_7
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->initScrollController()V

    .line 1308
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1309
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/Grid;->setSpacing(I)V

    .line 1310
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1311
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->resetVisibleIndex()V

    .line 1312
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    .line 1313
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    .line 1314
    return v2
.end method

.method private leaveContext()V
    .locals 1

    .line 1263
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    .line 1264
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    if-nez v0, :cond_0

    .line 1265
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 1266
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1267
    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 1268
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 1270
    :cond_0
    return-void
.end method

.method private measureScrapChild(III[I)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "measuredDimension"    # [I

    .line 1361
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1362
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1364
    .local v1, "p":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    sget-object v2, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1365
    iget v2, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v3, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sget-object v3, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    sget-object v3, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    .line 1366
    .local v2, "widthUsed":I
    iget v3, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v4, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    sget-object v4, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget-object v4, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    .line 1368
    .local v3, "heightUsed":I
    nop

    .line 1369
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    iget v5, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    .line 1368
    invoke-static {p2, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1370
    .local v4, "childWidthSpec":I
    nop

    .line 1371
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    iget v6, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    .line 1370
    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1372
    .local v5, "childHeightSpec":I
    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1374
    const/4 v6, 0x0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v7

    aput v7, p4, v6

    .line 1375
    const/4 v6, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v7

    aput v7, p4, v6

    .line 1376
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 1378
    .end local v1    # "p":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v2    # "widthUsed":I
    .end local v3    # "heightUsed":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "childHeightSpec":I
    :cond_0
    return-void
.end method

.method private offsetChildrenPrimary(I)V
    .locals 3
    .param p1, "increment"    # I

    .line 2422
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2423
    .local v0, "childCount":I
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2424
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2425
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 2428
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 2429
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2432
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private offsetChildrenSecondary(I)V
    .locals 3
    .param p1, "increment"    # I

    .line 2409
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2410
    .local v0, "childCount":I
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    .line 2411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2412
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 2415
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 2416
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2419
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private prependOneColumnVisibleItems()Z
    .locals 1

    .line 1991
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->prependOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private prependVisibleItems()V
    .locals 3

    .line 2001
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 2002
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 2003
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v1, v2

    .line 2001
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Grid;->prependVisibleItems(I)V

    .line 2004
    return-void
.end method

.method private processRowSizeSecondary(Z)Z
    .locals 16
    .param p1, "measure"    # Z

    .line 1381
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/4 v2, 0x0

    if-nez v1, :cond_15

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 1385
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getItemPositionsInRows()[Landroidx/collection/CircularIntArray;

    move-result-object v1

    .line 1386
    .local v1, "rows":[Landroidx/collection/CircularIntArray;
    :goto_0
    const/4 v4, 0x0

    .line 1387
    .local v4, "changed":Z
    const/4 v5, -0x1

    .line 1389
    .local v5, "scrapeChildSize":I
    const/4 v6, 0x0

    .local v6, "rowIndex":I
    :goto_1
    iget v7, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ge v6, v7, :cond_14

    .line 1390
    if-nez v1, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    aget-object v7, v1, v6

    .line 1391
    .local v7, "row":Landroidx/collection/CircularIntArray;
    :goto_2
    if-nez v7, :cond_3

    move v8, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Landroidx/collection/CircularIntArray;->size()I

    move-result v8

    .line 1392
    .local v8, "rowItemsPairCount":I
    :goto_3
    const/4 v9, -0x1

    .line 1393
    .local v9, "rowSize":I
    const/4 v10, 0x0

    .local v10, "rowItemPairIndex":I
    :goto_4
    if-ge v10, v8, :cond_9

    .line 1395
    invoke-virtual {v7, v10}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v11

    .line 1396
    .local v11, "rowIndexStart":I
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v7, v12}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v12

    .line 1397
    .local v12, "rowIndexEnd":I
    move v13, v11

    .local v13, "i":I
    :goto_5
    if-gt v13, v12, :cond_8

    .line 1398
    iget v14, v0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v14, v13, v14

    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v14

    .line 1399
    .local v14, "view":Landroid/view/View;
    if-nez v14, :cond_4

    .line 1400
    goto :goto_7

    .line 1402
    :cond_4
    if-eqz p1, :cond_5

    .line 1403
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1405
    :cond_5
    iget v15, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v15, :cond_6

    .line 1406
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v15

    goto :goto_6

    .line 1407
    :cond_6
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v15

    :goto_6
    nop

    .line 1408
    .local v15, "secondarySize":I
    if-le v15, v9, :cond_7

    .line 1409
    move v9, v15

    .line 1397
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "secondarySize":I
    :cond_7
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1394
    .end local v11    # "rowIndexStart":I
    .end local v12    # "rowIndexEnd":I
    .end local v13    # "i":I
    :cond_8
    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    .line 1414
    .end local v10    # "rowItemPairIndex":I
    :cond_9
    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    .line 1415
    .local v10, "itemCount":I
    iget-object v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v11}, Landroidx/leanback/widget/BaseGridView;->hasFixedSize()Z

    move-result v11

    if-nez v11, :cond_11

    if-eqz p1, :cond_11

    if-gez v9, :cond_11

    if-lez v10, :cond_11

    .line 1416
    if-gez v5, :cond_10

    .line 1418
    iget v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1419
    .local v11, "position":I
    if-gez v11, :cond_a

    .line 1420
    const/4 v11, 0x0

    goto :goto_8

    .line 1421
    :cond_a
    if-lt v11, v10, :cond_b

    .line 1422
    add-int/lit8 v11, v10, -0x1

    .line 1424
    :cond_b
    :goto_8
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v12

    const/4 v13, 0x1

    if-lez v12, :cond_e

    .line 1425
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 1426
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1425
    invoke-virtual {v12, v14}, Landroidx/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 1426
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v12

    .line 1427
    .local v12, "firstPos":I
    iget-object v14, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 1428
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-virtual {v0, v15}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1427
    invoke-virtual {v14, v15}, Landroidx/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 1428
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v14

    .line 1431
    .local v14, "lastPos":I
    if-lt v11, v12, :cond_e

    if-gt v11, v14, :cond_e

    .line 1432
    sub-int v15, v11, v12

    sub-int v3, v14, v11

    if-gt v15, v3, :cond_c

    .line 1433
    add-int/lit8 v3, v12, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v3, v14, 0x1

    :goto_9
    move v11, v3

    .line 1436
    if-gez v11, :cond_d

    add-int/lit8 v3, v10, -0x1

    if-ge v14, v3, :cond_d

    .line 1437
    add-int/lit8 v11, v14, 0x1

    goto :goto_a

    .line 1438
    :cond_d
    if-lt v11, v10, :cond_e

    if-lez v12, :cond_e

    .line 1439
    add-int/lit8 v11, v12, -0x1

    .line 1443
    .end local v12    # "firstPos":I
    .end local v14    # "lastPos":I
    :cond_e
    :goto_a
    if-ltz v11, :cond_10

    if-ge v11, v10, :cond_10

    .line 1444
    nop

    .line 1445
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1446
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    iget-object v14, v0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 1444
    invoke-direct {v0, v11, v3, v12, v14}, Landroidx/leanback/widget/GridLayoutManager;->measureScrapChild(III[I)V

    .line 1448
    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 1449
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 1448
    if-nez v3, :cond_f

    aget v3, v12, v13

    goto :goto_b

    .line 1449
    :cond_f
    aget v3, v12, v2

    :goto_b
    move v5, v3

    .line 1456
    .end local v11    # "position":I
    :cond_10
    if-ltz v5, :cond_11

    .line 1457
    move v9, v5

    .line 1460
    :cond_11
    if-gez v9, :cond_12

    .line 1461
    const/4 v9, 0x0

    .line 1463
    :cond_12
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v3, v3, v6

    if-eq v3, v9, :cond_13

    .line 1468
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aput v9, v3, v6

    .line 1469
    const/4 v3, 0x1

    move v4, v3

    .line 1389
    .end local v7    # "row":Landroidx/collection/CircularIntArray;
    .end local v8    # "rowItemsPairCount":I
    .end local v9    # "rowSize":I
    .end local v10    # "itemCount":I
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1473
    .end local v6    # "rowIndex":I
    :cond_14
    return v4

    .line 1382
    .end local v1    # "rows":[Landroidx/collection/CircularIntArray;
    .end local v4    # "changed":Z
    .end local v5    # "scrapeChildSize":I
    :cond_15
    :goto_c
    return v2
.end method

.method private removeInvisibleViewsAtEnd()V
    .locals 4

    .line 1885
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x10040

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 1886
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1887
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v2, v2

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v2, v3

    .line 1886
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/Grid;->removeInvisibleItemsAtEnd(II)V

    .line 1889
    :cond_1
    return-void
.end method

.method private removeInvisibleViewsAtFront()V
    .locals 4

    .line 1892
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x10040

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 1893
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1894
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v2, v2

    .line 1893
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/Grid;->removeInvisibleItemsAtFront(II)V

    .line 1896
    :cond_1
    return-void
.end method

.method private saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1250
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    if-nez v0, :cond_0

    .line 1251
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 1252
    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1253
    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 1254
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 1256
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    .line 1257
    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .locals 6
    .param p1, "da"    # I

    .line 2481
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v1, :cond_2

    .line 2482
    if-lez p1, :cond_1

    .line 2483
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2484
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getMaxScroll()I

    move-result v0

    .line 2485
    .local v0, "maxScroll":I
    if-le p1, v0, :cond_0

    .line 2486
    move p1, v0

    .line 2488
    .end local v0    # "maxScroll":I
    :cond_0
    goto :goto_0

    .line 2489
    :cond_1
    if-gez p1, :cond_2

    .line 2490
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2491
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getMinScroll()I

    move-result v0

    .line 2492
    .local v0, "minScroll":I
    if-ge p1, v0, :cond_2

    .line 2493
    move p1, v0

    .line 2498
    .end local v0    # "minScroll":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 2499
    return v0

    .line 2501
    :cond_3
    neg-int v2, p1

    invoke-direct {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->offsetChildrenPrimary(I)V

    .line 2502
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x3

    if-ne v2, v1, :cond_4

    .line 2503
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2504
    return p1

    .line 2507
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 2510
    .local v2, "childCount":I
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    if-lez p1, :cond_6

    goto :goto_1

    :cond_5
    if-gez p1, :cond_6

    .line 2511
    :goto_1
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    goto :goto_2

    .line 2513
    :cond_6
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2515
    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v0

    .line 2516
    .local v3, "updated":Z
    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 2518
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    if-lez p1, :cond_9

    goto :goto_4

    :cond_8
    if-gez p1, :cond_9

    .line 2519
    :goto_4
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    goto :goto_5

    .line 2521
    :cond_9
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2523
    :goto_5
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    if-ge v4, v2, :cond_a

    goto :goto_6

    :cond_a
    move v1, v0

    :goto_6
    or-int v0, v3, v1

    .line 2524
    .end local v3    # "updated":Z
    .local v0, "updated":Z
    if-eqz v0, :cond_b

    .line 2525
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2528
    :cond_b
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroidx/leanback/widget/BaseGridView;->invalidate()V

    .line 2529
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2530
    return p1
.end method

.method private scrollDirectionSecondary(I)I
    .locals 1
    .param p1, "dy"    # I

    .line 2535
    if-nez p1, :cond_0

    .line 2536
    const/4 v0, 0x0

    return v0

    .line 2538
    :cond_0
    neg-int v0, p1

    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->offsetChildrenSecondary(I)V

    .line 2539
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2540
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 2541
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->invalidate()V

    .line 2542
    return p1
.end method

.method private scrollGrid(IIZ)V
    .locals 3
    .param p1, "scrollPrimary"    # I
    .param p2, "scrollSecondary"    # I
    .param p3, "smooth"    # Z

    .line 3167
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3168
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 3169
    invoke-direct {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    goto :goto_1

    .line 3173
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    .line 3174
    move v0, p1

    .line 3175
    .local v0, "scrollX":I
    move v1, p2

    .local v1, "scrollY":I
    goto :goto_0

    .line 3177
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :cond_1
    move v0, p2

    .line 3178
    .restart local v0    # "scrollX":I
    move v1, p1

    .line 3180
    .restart local v1    # "scrollY":I
    :goto_0
    nop

    .line 3183
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 3180
    if-eqz p3, :cond_2

    .line 3181
    invoke-virtual {v2, v0, v1}, Landroidx/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto :goto_1

    .line 3183
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroidx/leanback/widget/BaseGridView;->scrollBy(II)V

    .line 3184
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    .line 3187
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :goto_1
    return-void
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "smooth"    # Z

    .line 3018
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "childView":Landroid/view/View;
    .end local p3    # "smooth":Z
    .local v1, "view":Landroid/view/View;
    .local v2, "childView":Landroid/view/View;
    .local v3, "smooth":Z
    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    .line 3019
    return-void
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "smooth"    # Z
    .param p4, "extraDelta"    # I
    .param p5, "extraDeltaSecondary"    # I

    .line 3026
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 3027
    return-void

    .line 3029
    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    .line 3030
    .local v0, "newFocusPosition":I
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 3031
    .local v1, "newSubFocusPosition":I
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_3

    .line 3032
    :cond_1
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3033
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 3034
    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3035
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x3

    if-eq v2, v3, :cond_2

    .line 3036
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 3038
    :cond_2
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3039
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->invalidate()V

    .line 3042
    :cond_3
    if-nez p1, :cond_4

    .line 3043
    return-void

    .line 3045
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3048
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3050
    :cond_5
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v5, 0x20000

    and-int/2addr v2, v5

    if-nez v2, :cond_6

    if-eqz p3, :cond_6

    .line 3051
    return-void

    .line 3053
    :cond_6
    sget-object v2, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v2}, Landroidx/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez p4, :cond_7

    if-eqz p5, :cond_8

    .line 3055
    :cond_7
    sget-object v2, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v2, v4

    add-int/2addr v2, p4

    sget-object v4, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v3, v4, v3

    add-int/2addr v3, p5

    invoke-direct {p0, v2, v3, p3}, Landroidx/leanback/widget/GridLayoutManager;->scrollGrid(IIZ)V

    .line 3057
    :cond_8
    return-void
.end method

.method private sendTypeViewScrolledAccessibilityEvent()V
    .locals 3

    .line 3870
    const/16 v0, 0x1000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3871
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3872
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/BaseGridView;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 3873
    return-void
.end method

.method private updateChildAlignments()V
    .locals 3

    .line 1865
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .local v1, "c":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1866
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    .line 1865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1868
    .end local v0    # "i":I
    .end local v1    # "c":I
    :cond_0
    return-void
.end method

.method private updateChildAlignments(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1848
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1849
    .local v0, "p":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroidx/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1851
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    .line 1852
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1855
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->calculateItemAlignments(ILandroid/view/View;)V

    .line 1856
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 1859
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    .line 1856
    if-nez v1, :cond_1

    .line 1857
    iget-object v1, v2, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1859
    :cond_1
    iget-object v1, v2, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    .line 1862
    :goto_0
    return-void
.end method

.method private updateRowSecondarySizeRefresh()V
    .locals 4

    .line 1480
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x401

    .line 1481
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1482
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 1484
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    .line 1486
    :cond_1
    return-void
.end method

.method private updateScrollController()V
    .locals 3

    .line 2658
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2659
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2660
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2661
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2662
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    .line 2668
    return-void
.end method

.method private updateSecondaryScrollLimits()V
    .locals 3

    .line 2636
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->secondAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    .line 2637
    .local v0, "secondAxis":Landroidx/leanback/widget/WindowAlignment$Axis;
    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v1, v2

    .line 2638
    .local v1, "minEdge":I
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v2

    add-int/2addr v2, v1

    .line 2639
    .local v2, "maxEdge":I
    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    .line 2640
    return-void
.end method


# virtual methods
.method addOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    .line 937
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 940
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    return-void
.end method

.method addOnLayoutCompletedListener(Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;

    .line 978
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    .line 981
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .line 1104
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method canScrollTo(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3517
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1111
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1097
    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 2549
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2550
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 2551
    .local v0, "da":I
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_2

    .line 2556
    :cond_1
    if-gez v0, :cond_2

    .line 2557
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    goto :goto_1

    .line 2558
    :cond_2
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    :goto_1
    nop

    .line 2559
    .local v1, "fromLimit":I
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v2, v1, v0, p4}, Landroidx/leanback/widget/Grid;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    .end local v0    # "da":I
    .end local v1    # "fromLimit":I
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2562
    nop

    .line 2563
    return-void

    .line 2561
    .restart local v0    # "da":I
    :cond_3
    :goto_2
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2553
    return-void

    .line 2561
    .end local v0    # "da":I
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2562
    throw v0
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 2568
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v0, v0, Landroidx/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 2569
    .local v0, "numToPrefetch":I
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2571
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2573
    .local v1, "initialPos":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    add-int v4, v1, v0

    if-ge v3, v4, :cond_0

    .line 2574
    invoke-interface {p2, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 2573
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2577
    .end local v1    # "initialPos":I
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method dispatchChildSelected()V
    .locals 12

    .line 1036
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    return-void

    .line 1040
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 1041
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 1042
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1043
    .local v0, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    if-eqz v1, :cond_3

    .line 1044
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1045
    if-nez v0, :cond_2

    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    .line 1044
    invoke-interface/range {v3 .. v8}, Landroidx/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1047
    :cond_3
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v1, v0, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 1048
    .end local v0    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    goto :goto_2

    .line 1049
    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_5

    .line 1050
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    iget-object v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    invoke-interface/range {v6 .. v11}, Landroidx/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1052
    :cond_5
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 1064
    :goto_2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1065
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 1066
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_7

    .line 1067
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1068
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    .line 1069
    goto :goto_4

    .line 1066
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1073
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_7
    :goto_4
    return-void
.end method

.method dispatchChildSelectedAndPositioned()V
    .locals 10

    .line 1077
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    return-void

    .line 1081
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1082
    .local v0, "view":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 1083
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1084
    .local v1, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v2, v1, v3, v4}, Landroidx/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 1086
    .end local v1    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    goto :goto_1

    .line 1087
    :cond_2
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    if-eqz v3, :cond_3

    .line 1088
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v9}, Landroidx/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1090
    :cond_3
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroidx/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 1093
    :goto_1
    return-void
.end method

.method fillScrapViewsInPostLayout()V
    .locals 7

    .line 2160
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v0

    .line 2161
    .local v0, "scrapList":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2162
    .local v1, "scrapSize":I
    if-nez v1, :cond_0

    .line 2163
    return-void

    .line 2166
    :cond_0
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v2, v2

    if-le v1, v2, :cond_4

    .line 2167
    :cond_1
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-nez v2, :cond_2

    const/16 v2, 0x10

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v2, v2

    .line 2168
    .local v2, "length":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2169
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2171
    :cond_3
    new-array v3, v2, [I

    iput-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    .line 2173
    .end local v2    # "length":I
    :cond_4
    const/4 v2, 0x0

    .line 2174
    .local v2, "totalItems":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 2175
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v4

    .line 2176
    .local v4, "pos":I
    if-ltz v4, :cond_5

    .line 2177
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "totalItems":I
    .local v6, "totalItems":I
    aput v4, v5, v2

    move v2, v6

    .line 2174
    .end local v4    # "pos":I
    .end local v6    # "totalItems":I
    .restart local v2    # "totalItems":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2181
    .end local v3    # "i":I
    :cond_6
    if-lez v2, :cond_7

    .line 2182
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Ljava/util/Arrays;->sort([III)V

    .line 2183
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v2, v5}, Landroidx/leanback/widget/Grid;->fillDisappearingItems([IILandroid/util/SparseIntArray;)V

    .line 2186
    :cond_7
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 2187
    return-void
.end method

.method fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 2
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "child"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 957
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 958
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 961
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 960
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 964
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 2
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "child"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 968
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 969
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 972
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 971
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 975
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1120
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1131
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1140
    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 1141
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroidx/leanback/widget/GridLayoutManager$LayoutParams;)V

    return-object v0

    .line 1142
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    .line 1143
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 1144
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1145
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1147
    :cond_2
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 1239
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1240
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1241
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1243
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getChildDrawingOrder(Landroidx/recyclerview/widget/RecyclerView;II)I
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "childCount"    # I
    .param p3, "i"    # I

    .line 3622
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 3623
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 3624
    return p3

    .line 3626
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3629
    .local v1, "focusIndex":I
    if-ge p3, v1, :cond_1

    .line 3630
    return p3

    .line 3631
    :cond_1
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_2

    .line 3632
    add-int v2, v1, p2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p3

    return v2

    .line 3634
    :cond_2
    return v1
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 3773
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_0

    .line 3774
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    .line 3776
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1193
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v0, v1

    .line 1193
    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 1199
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1201
    .local v0, "params":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 1202
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 1203
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 1204
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 1205
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1177
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1356
    .local v0, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1350
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1351
    .local v0, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1187
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    .line 1187
    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1182
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExtraLayoutSpace()I
    .locals 1

    .line 1881
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    return v0
.end method

.method getFacet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "vh"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/lang/Class<",
            "+TE;>;)TE;"
        }
    .end annotation

    .line 1656
    .local p2, "facetClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    const/4 v0, 0x0

    .line 1657
    .local v0, "facet":Ljava/lang/Object;, "TE;"
    instance-of v1, p1, Landroidx/leanback/widget/FacetProvider;

    if-eqz v1, :cond_0

    .line 1658
    move-object v1, p1

    check-cast v1, Landroidx/leanback/widget/FacetProvider;

    invoke-interface {v1, p2}, Landroidx/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1660
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

    if-eqz v1, :cond_1

    .line 1661
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/leanback/widget/FacetProviderAdapter;->getFacetProvider(I)Landroidx/leanback/widget/FacetProvider;

    move-result-object v1

    .line 1662
    .local v1, "p":Landroidx/leanback/widget/FacetProvider;
    if-eqz v1, :cond_1

    .line 1663
    invoke-interface {v1, p2}, Landroidx/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1666
    .end local v1    # "p":Landroidx/leanback/widget/FacetProvider;
    :cond_1
    return-object v0
.end method

.method getFocusScrollStrategy()I
    .locals 1

    .line 792
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    return v0
.end method

.method getHorizontalSpacing()I
    .locals 1

    .line 907
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    return v0
.end method

.method getItemAlignmentOffset()I
    .locals 1

    .line 829
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment$Axis;->getItemAlignmentOffset()I

    move-result v0

    return v0
.end method

.method getItemAlignmentOffsetPercent()F
    .locals 1

    .line 847
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment$Axis;->getItemAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method getItemAlignmentViewId()I
    .locals 1

    .line 856
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment$Axis;->getItemAlignmentViewId()I

    move-result v0

    return v0
.end method

.method getOpticalBottom(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalBottom(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getOpticalLeft(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getOpticalRight(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1164
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getOpticalTop(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1168
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getPruneChild()Z
    .locals 2

    .line 3199
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 3764
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_0

    .line 3765
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    .line 3767
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method getRowStartSecondary(I)I
    .locals 4
    .param p1, "rowIndex"    # I

    .line 1329
    const/4 v0, 0x0

    .line 1332
    .local v0, "start":I
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1333
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-le v1, p1, :cond_0

    .line 1334
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1333
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 1337
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 1338
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1337
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1341
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return v0
.end method

.method getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "deltas"    # [I

    .line 3060
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_0

    .line 3063
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    return v0

    .line 3066
    :pswitch_0
    invoke-direct {p0, p1, p3}, Landroidx/leanback/widget/GridLayoutManager;->getNoneAlignedPosition(Landroid/view/View;[I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getSelection()I
    .locals 1

    .line 2700
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method getSlideOutDistance()I
    .locals 3

    .line 1933
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1934
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 1935
    .local v0, "distance":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1936
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1937
    .local v1, "top":I
    if-gez v1, :cond_0

    .line 1939
    add-int/2addr v0, v1

    .line 1941
    .end local v1    # "top":I
    :cond_0
    goto :goto_0

    .line 1943
    .end local v0    # "distance":I
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 1944
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v0

    .line 1945
    .restart local v0    # "distance":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1946
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1947
    .local v1, "start":I
    if-le v1, v0, :cond_2

    .line 1949
    move v0, v1

    .line 1951
    .end local v1    # "start":I
    :cond_2
    goto :goto_0

    .line 1953
    .end local v0    # "distance":I
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v0

    neg-int v0, v0

    .line 1954
    .restart local v0    # "distance":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1955
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1956
    .restart local v1    # "start":I
    if-gez v1, :cond_4

    .line 1958
    add-int/2addr v0, v1

    .line 1963
    .end local v1    # "start":I
    :cond_4
    :goto_0
    return v0
.end method

.method getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;

    .line 1007
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 1010
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1011
    .local v1, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroidx/leanback/widget/ItemAlignmentFacet;

    move-result-object v2

    .line 1012
    .local v2, "facet":Landroidx/leanback/widget/ItemAlignmentFacet;
    if-eqz v2, :cond_3

    .line 1013
    invoke-virtual {v2}, Landroidx/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v3

    .line 1014
    .local v3, "defs":[Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 1015
    :goto_0
    if-eq p2, p1, :cond_3

    .line 1016
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    .line 1017
    .local v4, "id":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1018
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 1019
    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentFocusViewId()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1020
    return v5

    .line 1018
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1024
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object p2, v5

    check-cast p2, Landroid/view/View;

    .line 1025
    .end local v4    # "id":I
    goto :goto_0

    .line 1028
    .end local v3    # "defs":[Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    :cond_3
    return v0

    .line 1008
    .end local v1    # "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v2    # "facet":Landroidx/leanback/widget/ItemAlignmentFacet;
    :cond_4
    :goto_2
    return v0
.end method

.method getSubSelection()I
    .locals 1

    .line 2704
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    return v0
.end method

.method getTag()Ljava/lang/String;
    .locals 2

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroidx/leanback/widget/BaseGridView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVerticalSpacing()I
    .locals 1

    .line 903
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    return v0
.end method

.method getViewForPosition(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 1152
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1153
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1154
    .local v1, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1155
    .local v2, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const-class v3, Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {p0, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->getFacet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Landroidx/leanback/widget/ItemAlignmentFacet;)V

    .line 1156
    return-object v0
.end method

.method getViewMax(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1212
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewMin(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1208
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewPrimarySize(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1216
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1217
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0
.end method

.method getViewSelectedOffsets(Landroid/view/View;[I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offsets"    # [I

    .line 2969
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2970
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v1

    .line 2971
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v2

    goto :goto_0

    .line 2973
    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v2

    .line 2974
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v1

    .line 2976
    :goto_0
    return-void
.end method

.method getWindowAlignment()I
    .locals 1

    .line 804
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getWindowAlignment()I

    move-result v0

    return v0
.end method

.method getWindowAlignmentOffset()I
    .locals 1

    .line 812
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getWindowAlignmentOffset()I

    move-result v0

    return v0
.end method

.method getWindowAlignmentOffsetPercent()F
    .locals 1

    .line 820
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getWindowAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method gridOnRequestFocusInDescendants(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3522
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_0

    .line 3525
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsAligned(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 3529
    :pswitch_0
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsUnaligned(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method hasCreatedFirstItem()Z
    .locals 3

    .line 3502
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    .line 3503
    .local v0, "count":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method hasCreatedLastItem()Z
    .locals 3

    .line 3497
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    .line 3498
    .local v0, "count":I
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method hasDoneFirstLayout()Z
    .locals 1

    .line 915
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasOnChildViewHolderSelectedListener()Z
    .locals 1

    .line 951
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 952
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 951
    :goto_0
    return v0
.end method

.method hasPreviousViewInSameRow(I)Z
    .locals 7
    .param p1, "pos"    # I

    .line 3333
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 3336
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 3337
    return v2

    .line 3339
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v0

    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->mRow:I

    .line 3340
    .local v0, "focusedRow":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 3341
    invoke-direct {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v4

    .line 3342
    .local v4, "position":I
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5, v4}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v5

    .line 3343
    .local v5, "loc":Landroidx/leanback/widget/Grid$Location;
    if-eqz v5, :cond_2

    iget v6, v5, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-ne v6, v0, :cond_2

    .line 3344
    if-ge v4, p1, :cond_2

    .line 3345
    return v2

    .line 3340
    .end local v4    # "position":I
    .end local v5    # "loc":Landroidx/leanback/widget/Grid$Location;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3349
    .end local v3    # "i":I
    :cond_3
    return v1

    .line 3334
    .end local v0    # "focusedRow":I
    :cond_4
    :goto_1
    return v1
.end method

.method isFocusSearchDisabled()Z
    .locals 2

    .line 3255
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isItemAlignmentOffsetWithPadding()Z
    .locals 1

    .line 838
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment$Axis;->isItemAlignmentOffsetWithPadding()Z

    move-result v0

    return v0
.end method

.method isItemFullyVisible(I)Z
    .locals 4
    .param p1, "pos"    # I

    .line 3507
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3508
    .local v0, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3509
    return v1

    .line 3511
    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v3}, Landroidx/leanback/widget/BaseGridView;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3512
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 3513
    invoke-virtual {v3}, Landroidx/leanback/widget/BaseGridView;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 3511
    :goto_0
    return v1
.end method

.method isScrollEnabled()Z
    .locals 2

    .line 3215
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSlidingChildViews()Z
    .locals 1

    .line 1967
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method layoutChild(ILandroid/view/View;III)V
    .locals 15
    .param p1, "rowIndex"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "startSecondary"    # I

    .line 1804
    move-object/from16 v1, p2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 1805
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v0

    :goto_0
    nop

    .line 1806
    .local v0, "sizeSecondary":I
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v2, :cond_1

    .line 1807
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    goto :goto_1

    .line 1806
    :cond_1
    move v6, v0

    .line 1809
    .end local v0    # "sizeSecondary":I
    .local v6, "sizeSecondary":I
    :goto_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v7, v0, 0x70

    .line 1810
    .local v7, "verticalGravity":I
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0xc0000

    and-int/2addr v0, v2

    .line 1813
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    .line 1810
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1811
    const v0, 0x800007

    and-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    goto :goto_2

    .line 1813
    :cond_2
    and-int/lit8 v0, v2, 0x7

    :goto_2
    move v8, v0

    .line 1814
    .local v8, "horizontalGravity":I
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    const/16 v0, 0x30

    if-eq v7, v0, :cond_a

    :cond_3
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x3

    if-ne v8, v0, :cond_4

    goto :goto_3

    .line 1817
    :cond_4
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_5

    const/16 v0, 0x50

    if-eq v7, v0, :cond_6

    :cond_5
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_7

    const/4 v0, 0x5

    if-ne v8, v0, :cond_7

    .line 1819
    :cond_6
    invoke-direct/range {p0 .. p1}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v6

    add-int v0, p5, v0

    move v9, v0

    .end local p5    # "startSecondary":I
    .local v0, "startSecondary":I
    goto :goto_4

    .line 1820
    .end local v0    # "startSecondary":I
    .restart local p5    # "startSecondary":I
    :cond_7
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_8

    const/16 v0, 0x10

    if-eq v7, v0, :cond_9

    :cond_8
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v3, :cond_a

    if-ne v8, v3, :cond_a

    .line 1822
    :cond_9
    invoke-direct/range {p0 .. p1}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    add-int v0, p5, v0

    move v9, v0

    .end local p5    # "startSecondary":I
    .restart local v0    # "startSecondary":I
    goto :goto_4

    .line 1825
    .end local v0    # "startSecondary":I
    .restart local p5    # "startSecondary":I
    :cond_a
    :goto_3
    move/from16 v9, p5

    .end local p5    # "startSecondary":I
    .local v9, "startSecondary":I
    :goto_4
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_b

    .line 1826
    move/from16 v0, p3

    .line 1827
    .local v0, "left":I
    move v2, v9

    .line 1828
    .local v2, "top":I
    move/from16 v3, p4

    .line 1829
    .local v3, "right":I
    add-int v4, v9, v6

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .local v4, "bottom":I
    goto :goto_5

    .line 1831
    .end local v0    # "left":I
    .end local v2    # "top":I
    .end local v3    # "right":I
    .end local v4    # "bottom":I
    :cond_b
    move/from16 v2, p3

    .line 1832
    .restart local v2    # "top":I
    move v0, v9

    .line 1833
    .restart local v0    # "left":I
    move/from16 v4, p4

    .line 1834
    .restart local v4    # "bottom":I
    add-int v3, v9, v6

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 1836
    .end local v0    # "left":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "right":I
    .local v5, "bottom":I
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1837
    .local v10, "params":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1841
    sget-object v11, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-super {p0, v1, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1842
    sget-object v11, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v2, v11

    sget-object v12, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int v12, v3, v12

    sget-object v13, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v4

    sget-object v14, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setOpticalInsets(IIII)V

    .line 1844
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    .line 1845
    return-void
.end method

.method measureChild(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 1620
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1621
    .local v0, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1622
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sget-object v2, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    sget-object v2, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 1623
    .local v1, "widthUsed":I
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sget-object v3, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sget-object v3, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 1626
    .local v2, "heightUsed":I
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 1627
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    .line 1628
    :cond_0
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_0
    nop

    .line 1631
    .local v3, "secondarySpec":I
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_1

    .line 1632
    nop

    .line 1633
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    .line 1632
    invoke-static {v4, v1, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1634
    .local v4, "widthSpec":I
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .local v5, "heightSpec":I
    goto :goto_1

    .line 1636
    .end local v4    # "widthSpec":I
    .end local v5    # "heightSpec":I
    :cond_1
    nop

    .line 1637
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    .line 1636
    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1638
    .restart local v5    # "heightSpec":I
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v3, v1, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1640
    .restart local v4    # "widthSpec":I
    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1649
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3642
    if-eqz p1, :cond_0

    .line 3643
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 3644
    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3645
    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3646
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    .line 3648
    :cond_0
    instance-of v0, p2, Landroidx/leanback/widget/FacetProviderAdapter;

    if-eqz v0, :cond_1

    .line 3649
    move-object v0, p2

    check-cast v0, Landroidx/leanback/widget/FacetProviderAdapter;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

    goto :goto_0

    .line 3651
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

    .line 3653
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3654
    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 22
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 3356
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 3357
    return v5

    .line 3366
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3367
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_1

    .line 3369
    return v5

    .line 3371
    :cond_1
    invoke-direct {v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v4

    .line 3372
    .local v4, "movement":I
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v6

    .line 3373
    .local v6, "focused":Landroid/view/View;
    invoke-direct {v0, v6}, Landroidx/leanback/widget/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v7

    .line 3374
    .local v7, "focusedIndex":I
    invoke-direct {v0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v8

    .line 3377
    .local v8, "focusedPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    .line 3378
    :cond_2
    invoke-virtual {v0, v8}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    :goto_0
    nop

    .line 3380
    .local v10, "immediateFocusedChild":Landroid/view/View;
    if-eqz v10, :cond_3

    .line 3381
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3383
    :cond_3
    iget-object v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v11, :cond_1d

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v20, v6

    move/from16 v21, v7

    goto/16 :goto_b

    .line 3387
    :cond_4
    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v4, v12, :cond_5

    if-ne v4, v11, :cond_6

    :cond_5
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v13}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v13

    if-gt v13, v5, :cond_6

    .line 3389
    return v5

    .line 3392
    :cond_6
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v13, :cond_7

    if-eqz v10, :cond_7

    .line 3393
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v13, v8}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v13

    iget v13, v13, Landroidx/leanback/widget/Grid$Location;->mRow:I

    goto :goto_1

    :cond_7
    move v13, v9

    .line 3394
    .local v13, "focusedRow":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3395
    .local v14, "focusableCount":I
    if-eq v4, v5, :cond_9

    if-ne v4, v12, :cond_8

    goto :goto_2

    :cond_8
    move v15, v9

    goto :goto_3

    :cond_9
    :goto_2
    move v15, v5

    .line 3396
    .local v15, "inc":I
    :goto_3
    const/16 v16, 0x0

    if-lez v15, :cond_a

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    :cond_a
    move/from16 v17, v16

    :goto_4
    move/from16 v18, v17

    .line 3398
    .local v18, "loop_end":I
    if-ne v7, v9, :cond_c

    .line 3399
    if-lez v15, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v9

    add-int/lit8 v16, v9, -0x1

    .local v16, "loop_start":I
    :goto_5
    goto :goto_6

    .line 3401
    .end local v16    # "loop_start":I
    :cond_c
    add-int v16, v7, v15

    .line 3403
    .restart local v16    # "loop_start":I
    :goto_6
    move/from16 v9, v16

    .local v9, "i":I
    :goto_7
    if-lez v15, :cond_d

    move/from16 v11, v18

    .end local v18    # "loop_end":I
    .local v11, "loop_end":I
    if-gt v9, v11, :cond_1c

    goto :goto_8

    .end local v11    # "loop_end":I
    .restart local v18    # "loop_end":I
    :cond_d
    move/from16 v11, v18

    .end local v18    # "loop_end":I
    .restart local v11    # "loop_end":I
    if-lt v9, v11, :cond_1b

    .line 3404
    :goto_8
    invoke-virtual {v0, v9}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3405
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_19

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_e

    .line 3406
    move-object/from16 v20, v6

    move/from16 v21, v7

    goto/16 :goto_9

    .line 3410
    :cond_e
    if-nez v10, :cond_10

    .line 3411
    invoke-virtual {v12, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3412
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v14, :cond_f

    .line 3413
    goto/16 :goto_a

    .line 3412
    :cond_f
    move-object/from16 v20, v6

    move/from16 v21, v7

    goto/16 :goto_9

    .line 3417
    :cond_10
    invoke-direct {v0, v9}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v5

    .line 3418
    .local v5, "position":I
    move-object/from16 v20, v6

    .end local v6    # "focused":Landroid/view/View;
    .local v20, "focused":Landroid/view/View;
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v6, v5}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v6

    .line 3419
    .local v6, "loc":Landroidx/leanback/widget/Grid$Location;
    if-nez v6, :cond_11

    .line 3420
    move/from16 v21, v7

    goto :goto_9

    .line 3422
    :cond_11
    move/from16 v21, v7

    const/4 v7, 0x1

    .end local v7    # "focusedIndex":I
    .local v21, "focusedIndex":I
    if-ne v4, v7, :cond_12

    .line 3424
    iget v7, v6, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-ne v7, v13, :cond_1a

    if-le v5, v8, :cond_1a

    .line 3425
    invoke-virtual {v12, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3426
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v14, :cond_1a

    .line 3427
    goto :goto_a

    .line 3430
    :cond_12
    if-nez v4, :cond_13

    .line 3432
    iget v7, v6, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-ne v7, v13, :cond_1a

    if-ge v5, v8, :cond_1a

    .line 3433
    invoke-virtual {v12, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3434
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v14, :cond_1a

    .line 3435
    goto :goto_a

    .line 3438
    :cond_13
    const/4 v7, 0x3

    if-ne v4, v7, :cond_16

    .line 3440
    iget v7, v6, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-ne v7, v13, :cond_14

    .line 3441
    goto :goto_9

    .line 3442
    :cond_14
    iget v7, v6, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-ge v7, v13, :cond_15

    .line 3443
    goto :goto_a

    .line 3445
    :cond_15
    invoke-virtual {v12, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_9

    .line 3446
    :cond_16
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1a

    .line 3448
    iget v7, v6, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-ne v7, v13, :cond_17

    .line 3449
    goto :goto_9

    .line 3450
    :cond_17
    iget v7, v6, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-le v7, v13, :cond_18

    .line 3451
    goto :goto_a

    .line 3453
    :cond_18
    invoke-virtual {v12, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_9

    .line 3405
    .end local v5    # "position":I
    .end local v20    # "focused":Landroid/view/View;
    .end local v21    # "focusedIndex":I
    .local v6, "focused":Landroid/view/View;
    .restart local v7    # "focusedIndex":I
    :cond_19
    move-object/from16 v20, v6

    move/from16 v21, v7

    .line 3403
    .end local v6    # "focused":Landroid/view/View;
    .end local v7    # "focusedIndex":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v20    # "focused":Landroid/view/View;
    .restart local v21    # "focusedIndex":I
    :cond_1a
    :goto_9
    add-int/2addr v9, v15

    move/from16 v18, v11

    move-object/from16 v6, v20

    move/from16 v7, v21

    const/4 v5, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_7

    .end local v20    # "focused":Landroid/view/View;
    .end local v21    # "focusedIndex":I
    .restart local v6    # "focused":Landroid/view/View;
    .restart local v7    # "focusedIndex":I
    :cond_1b
    move-object/from16 v20, v6

    move/from16 v21, v7

    .line 3456
    .end local v4    # "movement":I
    .end local v6    # "focused":Landroid/view/View;
    .end local v7    # "focusedIndex":I
    .end local v8    # "focusedPos":I
    .end local v9    # "i":I
    .end local v10    # "immediateFocusedChild":Landroid/view/View;
    .end local v11    # "loop_end":I
    .end local v13    # "focusedRow":I
    .end local v14    # "focusableCount":I
    .end local v15    # "inc":I
    .end local v16    # "loop_start":I
    :cond_1c
    :goto_a
    move-object/from16 v5, p1

    const/16 v19, 0x1

    goto/16 :goto_f

    .line 3383
    .restart local v4    # "movement":I
    .restart local v6    # "focused":Landroid/view/View;
    .restart local v7    # "focusedIndex":I
    .restart local v8    # "focusedPos":I
    .restart local v10    # "immediateFocusedChild":Landroid/view/View;
    :cond_1d
    move-object/from16 v20, v6

    move/from16 v21, v7

    .line 3385
    .end local v6    # "focused":Landroid/view/View;
    .end local v7    # "focusedIndex":I
    .restart local v20    # "focused":Landroid/view/View;
    .restart local v21    # "focusedIndex":I
    :goto_b
    const/16 v19, 0x1

    return v19

    .line 3457
    .end local v4    # "movement":I
    .end local v8    # "focusedPos":I
    .end local v10    # "immediateFocusedChild":Landroid/view/View;
    .end local v20    # "focused":Landroid/view/View;
    .end local v21    # "focusedIndex":I
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3458
    .local v4, "focusableCount":I
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-eqz v5, :cond_23

    .line 3460
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v5}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v5

    .line 3461
    .local v5, "left":I
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v6}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v6

    add-int/2addr v6, v5

    .line 3462
    .local v6, "right":I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    .local v8, "count":I
    :goto_c
    if-ge v7, v8, :cond_20

    .line 3463
    invoke-virtual {v0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3464
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1f

    .line 3465
    invoke-virtual {v0, v9}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v10

    if-lt v10, v5, :cond_1f

    invoke-virtual {v0, v9}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v10

    if-gt v10, v6, :cond_1f

    .line 3466
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3462
    .end local v9    # "child":Landroid/view/View;
    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 3471
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v4, :cond_22

    .line 3472
    const/4 v7, 0x0

    .restart local v7    # "i":I
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    .restart local v8    # "count":I
    :goto_d
    if-ge v7, v8, :cond_22

    .line 3473
    invoke-virtual {v0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3474
    .restart local v9    # "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_21

    .line 3475
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3472
    .end local v9    # "child":Landroid/view/View;
    :cond_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 3479
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_22
    goto :goto_e

    .line 3480
    :cond_23
    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 3481
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_24

    .line 3482
    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3486
    .end local v5    # "view":Landroid/view/View;
    :cond_24
    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v4, :cond_25

    .line 3487
    const/16 v19, 0x1

    return v19

    .line 3489
    :cond_25
    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 3490
    move-object/from16 v5, p1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 3489
    :cond_26
    move-object/from16 v5, p1

    .line 3493
    .end local v4    # "focusableCount":I
    :goto_f
    return v19
.end method

.method onChildRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3741
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    .line 3742
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3743
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/ViewsStateBundle;->saveOffscreenView(Landroid/view/View;I)V

    .line 3745
    :cond_0
    return-void
.end method

.method onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3233
    if-eqz p1, :cond_2

    .line 3235
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3237
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 3238
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 3239
    goto :goto_1

    .line 3241
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3242
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3243
    goto :goto_1

    .line 3245
    :cond_1
    nop

    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    .line 3246
    goto :goto_0

    .line 3248
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3970
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 3971
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 3973
    .local v0, "count":I
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3976
    .local v1, "reverseFlowPrimary":Z
    :goto_0
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_1

    if-le v0, v3, :cond_2

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->isItemFullyVisible(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3977
    :cond_1
    invoke-direct {p0, p3, v1}, Landroidx/leanback/widget/GridLayoutManager;->addA11yActionMovingBackward(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Z)V

    .line 3979
    :cond_2
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_3

    if-le v0, v3, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->isItemFullyVisible(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3980
    :cond_3
    invoke-direct {p0, p3, v1}, Landroidx/leanback/widget/GridLayoutManager;->addA11yActionMovingForward(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Z)V

    .line 3982
    :cond_4
    nop

    .line 3984
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    .line 3985
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v3

    .line 3986
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v4

    .line 3987
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v5

    .line 3984
    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v2

    .line 3988
    .local v2, "collectionInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 3992
    const-class v3, Landroid/widget/GridView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3993
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 3994
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3783
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3784
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v1, :cond_4

    instance-of v1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_2

    .line 3787
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 3788
    .local v1, "glp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAbsoluteAdapterPosition()I

    move-result v2

    .line 3789
    .local v2, "position":I
    if-ltz v2, :cond_1

    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/Grid;->getRowIndex(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    move v4, v3

    .line 3790
    .local v4, "rowIndex":I
    if-gez v4, :cond_2

    .line 3791
    return-void

    .line 3793
    :cond_2
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v3}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v3

    div-int v6, v2, v3

    .line 3794
    .local v6, "guessSpanIndex":I
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_3

    .line 3795
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-static/range {v4 .. v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_1

    .line 3798
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    move v10, v6

    move v6, v4

    move v4, v10

    .local v4, "guessSpanIndex":I
    .local v6, "rowIndex":I
    invoke-static/range {v4 .. v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    move v10, v6

    move v6, v4

    move v4, v10

    .local v4, "rowIndex":I
    .local v6, "guessSpanIndex":I
    invoke-virtual {p4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 3801
    :goto_1
    return-void

    .line 3785
    .end local v1    # "glp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v2    # "position":I
    .end local v4    # "rowIndex":I
    .end local v6    # "guessSpanIndex":I
    :cond_4
    :goto_2
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 3261
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3262
    return-object p1

    .line 3265
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 3266
    .local v0, "ff":Landroid/view/FocusFinder;
    const/4 v1, 0x0

    .line 3267
    .local v1, "result":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v3, :cond_2

    if-ne p2, v4, :cond_1

    goto :goto_0

    .line 3282
    :cond_1
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v5, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 3270
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3272
    if-ne p2, v3, :cond_3

    const/16 v5, 0x82

    goto :goto_1

    :cond_3
    const/16 v5, 0x21

    .line 3273
    .local v5, "absDir":I
    :goto_1
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v6, p1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3275
    .end local v5    # "absDir":I
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3276
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getLayoutDirection()I

    move-result v5

    if-ne v5, v4, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v2

    .line 3277
    .local v5, "rtl":Z
    :goto_2
    if-ne p2, v3, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    xor-int/2addr v6, v5

    if-eqz v6, :cond_7

    .line 3278
    const/16 v6, 0x42

    goto :goto_4

    :cond_7
    const/16 v6, 0x11

    .line 3279
    .local v6, "absDir":I
    :goto_4
    iget-object v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v7, p1, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3280
    .end local v5    # "rtl":Z
    .end local v6    # "absDir":I
    nop

    .line 3284
    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    .line 3285
    return-object v1

    .line 3288
    :cond_9
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v5}, Landroidx/leanback/widget/BaseGridView;->getDescendantFocusability()I

    move-result v5

    const/high16 v6, 0x60000

    if-ne v5, v6, :cond_a

    .line 3289
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 3293
    :cond_a
    invoke-direct {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v5

    .line 3294
    .local v5, "movement":I
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroidx/leanback/widget/BaseGridView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v4

    goto :goto_6

    :cond_b
    move v6, v2

    .line 3295
    .local v6, "isScroll":Z
    :goto_6
    const/high16 v7, 0x20000

    if-ne v5, v4, :cond_e

    .line 3296
    if-nez v6, :cond_c

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_d

    .line 3297
    :cond_c
    move-object v1, p1

    .line 3299
    :cond_d
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3300
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3301
    move-object v1, p1

    goto :goto_7

    .line 3303
    :cond_e
    if-nez v5, :cond_11

    .line 3304
    if-nez v6, :cond_f

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v3, v3, 0x800

    if-nez v3, :cond_10

    .line 3305
    :cond_f
    move-object v1, p1

    .line 3307
    :cond_10
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v3

    if-nez v3, :cond_15

    .line 3308
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3309
    move-object v1, p1

    goto :goto_7

    .line 3311
    :cond_11
    const/4 v2, 0x3

    if-ne v5, v2, :cond_13

    .line 3312
    if-nez v6, :cond_12

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_15

    .line 3313
    :cond_12
    move-object v1, p1

    goto :goto_7

    .line 3315
    :cond_13
    if-ne v5, v3, :cond_15

    .line 3316
    if-nez v6, :cond_14

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_15

    .line 3317
    :cond_14
    move-object v1, p1

    .line 3320
    :cond_15
    :goto_7
    if-eqz v1, :cond_16

    .line 3321
    return-object v1

    .line 3325
    :cond_16
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3326
    if-eqz v1, :cond_17

    .line 3327
    return-object v1

    .line 3329
    :cond_17
    if-eqz p1, :cond_18

    move-object v2, p1

    goto :goto_8

    :cond_18
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    :goto_8
    return-object v2
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 2869
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2871
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v0, v1

    .line 2872
    .local v0, "pos":I
    if-gt p2, v0, :cond_0

    .line 2873
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2876
    .end local v0    # "pos":I
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    .line 2877
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 2882
    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2883
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    .line 2884
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I

    .line 2917
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 2918
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v0, v1

    .line 2919
    .local v0, "pos":I
    if-gt p2, v0, :cond_0

    add-int v1, p2, p4

    if-ge v0, v1, :cond_0

    .line 2921
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    .line 2922
    :cond_0
    if-ge p2, v0, :cond_1

    sub-int v1, v0, p4

    if-le p3, v1, :cond_1

    .line 2924
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p4

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    .line 2925
    :cond_1
    if-le p2, v0, :cond_2

    if-ge p3, v0, :cond_2

    .line 2927
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p4

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2930
    .end local v0    # "pos":I
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    .line 2931
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 2893
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2895
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v0, v2

    .line 2896
    .local v0, "pos":I
    if-gt p2, v0, :cond_1

    .line 2897
    add-int v2, p2, p3

    .line 2903
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2897
    if-le v2, v0, :cond_0

    .line 2899
    sub-int v2, p2, v0

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2900
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2901
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    .line 2903
    :cond_0
    sub-int/2addr v3, p3

    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2907
    .end local v0    # "pos":I
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    .line 2908
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 2940
    move v0, p2

    .local v0, "i":I
    add-int v1, p2, p3

    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2941
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/ViewsStateBundle;->remove(I)V

    .line 2940
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2943
    .end local v0    # "i":I
    .end local v1    # "end":I
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 2217
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-nez v1, :cond_0

    .line 2219
    return-void

    .line 2221
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 2222
    .local v1, "itemCount":I
    if-gez v1, :cond_1

    .line 2223
    return-void

    .line 2226
    :cond_1
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    .line 2229
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 2230
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2231
    return-void

    .line 2234
    :cond_2
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_3

    .line 2235
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 2236
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2237
    return-void

    .line 2239
    :cond_3
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x4

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2241
    invoke-direct/range {p0 .. p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2242
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    .line 2243
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->updatePositionDeltaInPreLayout()V

    .line 2244
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 2245
    .local v2, "childCount":I
    iget-object v3, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v3, :cond_a

    if-lez v2, :cond_a

    .line 2246
    const v3, 0x7fffffff

    .line 2247
    .local v3, "minChangedEdge":I
    const/high16 v5, -0x80000000

    .line 2248
    .local v5, "maxChangeEdge":I
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 2249
    invoke-virtual {v0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2248
    invoke-virtual {v6, v4}, Landroidx/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 2249
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v4

    .line 2250
    .local v4, "minOldAdapterPosition":I
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    add-int/lit8 v7, v2, -0x1

    .line 2251
    invoke-virtual {v0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2250
    invoke-virtual {v6, v7}, Landroidx/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 2251
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v6

    .line 2252
    .local v6, "maxOldAdapterPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_8

    .line 2253
    invoke-virtual {v0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2254
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2255
    .local v9, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v10, v8}, Landroidx/leanback/widget/BaseGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    .line 2261
    .local v10, "newAdapterPosition":I
    invoke-virtual {v9}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->isLayoutRequested()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2262
    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-nez v11, :cond_4

    iget v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2263
    invoke-virtual {v9}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAbsoluteAdapterPosition()I

    move-result v12

    if-eq v11, v12, :cond_6

    .line 2264
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-eqz v11, :cond_5

    iget v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2265
    invoke-virtual {v9}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAbsoluteAdapterPosition()I

    move-result v12

    if-ne v11, v12, :cond_6

    :cond_5
    if-lt v10, v4, :cond_6

    if-le v10, v6, :cond_7

    .line 2268
    :cond_6
    invoke-virtual {v0, v8}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2269
    invoke-virtual {v0, v8}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2252
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v10    # "newAdapterPosition":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2272
    .end local v7    # "i":I
    :cond_8
    if-le v5, v3, :cond_9

    .line 2273
    sub-int v7, v5, v3

    iput v7, v0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 2276
    :cond_9
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2277
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2279
    .end local v3    # "minChangedEdge":I
    .end local v4    # "minOldAdapterPosition":I
    .end local v5    # "maxChangeEdge":I
    .end local v6    # "maxOldAdapterPosition":I
    :cond_a
    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v3, v3, -0x4

    iput v3, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2280
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2282
    return-void

    .line 2286
    .end local v2    # "childCount":I
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2287
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->updatePositionToRowMapInPostLayout()V

    .line 2290
    :cond_c
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez v2, :cond_d

    goto :goto_1

    :cond_d
    move v3, v4

    .line 2292
    .local v3, "scrollToFocus":Z
    :goto_1
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_e

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v6, -0x80000000

    if-eq v2, v6, :cond_e

    .line 2293
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v2, v6

    iput v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2294
    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2296
    :cond_e
    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2298
    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 2299
    .local v2, "savedFocusView":Landroid/view/View;
    iget v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2300
    .local v6, "savedFocusPos":I
    iget v7, v0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2301
    .local v7, "savedSubFocusPos":I
    iget-object v8, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v8}, Landroidx/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v8

    .line 2302
    .local v8, "hadFocus":Z
    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v9, :cond_f

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v9}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v9

    goto :goto_2

    :cond_f
    move v9, v5

    .line 2303
    .local v9, "firstVisibleIndex":I
    :goto_2
    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v10, :cond_10

    iget-object v10, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v10}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v10

    goto :goto_3

    :cond_10
    move v10, v5

    .line 2306
    .local v10, "lastVisibleIndex":I
    :goto_3
    iget v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v11, :cond_11

    .line 2307
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v11

    .line 2308
    .local v11, "deltaPrimary":I
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v12

    .local v12, "deltaSecondary":I
    goto :goto_4

    .line 2310
    .end local v11    # "deltaPrimary":I
    .end local v12    # "deltaSecondary":I
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v12

    .line 2311
    .restart local v12    # "deltaSecondary":I
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v11

    .line 2313
    .restart local v11    # "deltaPrimary":I
    :goto_4
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->layoutInit()Z

    move-result v13

    .line 2319
    iget v14, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2313
    const/16 v15, 0x10

    if-eqz v13, :cond_12

    .line 2314
    or-int/lit8 v4, v14, 0x4

    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2316
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v5, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v4, v5}, Landroidx/leanback/widget/Grid;->setStart(I)V

    .line 2317
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->fastRelayout()V

    goto :goto_7

    .line 2319
    :cond_12
    and-int/lit8 v13, v14, -0x5

    iput v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2321
    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, -0x11

    .line 2322
    if-eqz v3, :cond_13

    move v4, v15

    :cond_13
    or-int/2addr v4, v13

    iput v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2324
    if-eqz v3, :cond_15

    if-ltz v9, :cond_14

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gt v4, v10, :cond_14

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v4, v9, :cond_15

    .line 2326
    :cond_14
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move v13, v4

    .local v4, "startFromPosition":I
    .local v13, "endPos":I
    goto :goto_5

    .line 2328
    .end local v4    # "startFromPosition":I
    .end local v13    # "endPos":I
    :cond_15
    move v4, v9

    .line 2329
    .restart local v4    # "startFromPosition":I
    move v13, v10

    .line 2331
    .restart local v13    # "endPos":I
    :goto_5
    iget-object v14, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v14, v4}, Landroidx/leanback/widget/Grid;->setStart(I)V

    .line 2332
    if-eq v13, v5, :cond_16

    .line 2333
    :goto_6
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v0, v13}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_16

    goto :goto_6

    .line 2344
    .end local v4    # "startFromPosition":I
    .end local v13    # "endPos":I
    :cond_16
    :goto_7
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2345
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v4}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    .line 2346
    .local v4, "oldFirstVisible":I
    iget-object v5, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v5

    .line 2347
    .local v5, "oldLastVisible":I
    neg-int v13, v11

    neg-int v14, v12

    invoke-direct {v0, v8, v3, v13, v14}, Landroidx/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZII)V

    .line 2348
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2349
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2364
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v13}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v13

    if-ne v13, v4, :cond_16

    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 2365
    invoke-virtual {v13}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v13

    if-ne v13, v5, :cond_16

    .line 2366
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2367
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2369
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 2370
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->fillScrapViewsInPostLayout()V

    .line 2380
    :cond_17
    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_18

    .line 2381
    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v13, v13, -0x401

    iput v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto :goto_8

    .line 2383
    :cond_18
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2388
    :goto_8
    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_1a

    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v13, v6, :cond_19

    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v13, v7, :cond_19

    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2389
    invoke-virtual {v0, v13}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    if-ne v13, v2, :cond_19

    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_1a

    .line 2391
    :cond_19
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_9

    .line 2392
    :cond_1a
    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, 0x14

    if-ne v13, v15, :cond_1b

    .line 2396
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 2398
    :cond_1b
    :goto_9
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    .line 2399
    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_1c

    .line 2400
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v13

    invoke-direct {v0, v13}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2403
    :cond_1c
    iget v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, -0x4

    iput v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2404
    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2406
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 2132
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2134
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;

    invoke-interface {v1, p1}, Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2133
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2137
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 9
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .line 1513
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1517
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1518
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1519
    .local v0, "sizePrimary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1520
    .local v1, "sizeSecondary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1521
    .local v2, "modeSecondary":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .local v3, "paddingSecondary":I
    goto :goto_0

    .line 1523
    .end local v0    # "sizePrimary":I
    .end local v1    # "sizeSecondary":I
    .end local v2    # "modeSecondary":I
    .end local v3    # "paddingSecondary":I
    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1524
    .restart local v1    # "sizeSecondary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1525
    .restart local v0    # "sizePrimary":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1526
    .restart local v2    # "modeSecondary":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1535
    .restart local v3    # "paddingSecondary":I
    :goto_0
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1537
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v5, -0x2

    const-string/jumbo v6, "wrong spec"

    const/4 v7, 0x1

    if-ne v4, v5, :cond_5

    .line 1538
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v4, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    :goto_1
    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1539
    const/4 v4, 0x0

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1541
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    array-length v4, v4

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-eq v4, v5, :cond_3

    .line 1542
    :cond_2
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    new-array v4, v4, [I

    iput-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 1545
    :cond_3
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1546
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updatePositionDeltaInPreLayout()V

    .line 1549
    :cond_4
    invoke-direct {p0, v7}, Landroidx/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    .line 1551
    sparse-switch v2, :sswitch_data_0

    .line 1563
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1560
    :sswitch_0
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1561
    .local v4, "measuredSizeSecondary":I
    goto/16 :goto_5

    .line 1553
    .end local v4    # "measuredSizeSecondary":I
    :sswitch_1
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v4

    add-int/2addr v4, v3

    .line 1554
    .restart local v4    # "measuredSizeSecondary":I
    goto/16 :goto_5

    .line 1556
    .end local v4    # "measuredSizeSecondary":I
    :sswitch_2
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1558
    .restart local v4    # "measuredSizeSecondary":I
    goto/16 :goto_5

    .line 1567
    .end local v4    # "measuredSizeSecondary":I
    :cond_5
    sparse-switch v2, :sswitch_data_1

    .line 1602
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1569
    :sswitch_3
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v4, :cond_6

    .line 1570
    sub-int v4, v1, v3

    goto :goto_2

    :cond_6
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    :goto_2
    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1571
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v4, :cond_7

    move v4, v7

    goto :goto_3

    :cond_7
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    :goto_3
    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1572
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v4, v5

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 1574
    .restart local v4    # "measuredSizeSecondary":I
    goto :goto_5

    .line 1577
    .end local v4    # "measuredSizeSecondary":I
    :sswitch_4
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v4, :cond_8

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v4, :cond_8

    .line 1578
    iput v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1579
    sub-int v4, v1, v3

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_4

    .line 1580
    :cond_8
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 1584
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    .line 1580
    if-nez v4, :cond_9

    .line 1581
    iput v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1582
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v4, v1

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_4

    .line 1584
    :cond_9
    nop

    .line 1589
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 1584
    if-nez v5, :cond_a

    .line 1585
    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1586
    sub-int v4, v1, v3

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    div-int/2addr v4, v5

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_4

    .line 1589
    :cond_a
    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1590
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1592
    :goto_4
    move v4, v1

    .line 1593
    .restart local v4    # "measuredSizeSecondary":I
    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_c

    .line 1594
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int/2addr v8, v7

    mul-int/2addr v6, v8

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 1596
    .local v5, "childrenSize":I
    if-ge v5, v4, :cond_b

    .line 1597
    move v4, v5

    .line 1599
    .end local v5    # "childrenSize":I
    :cond_b
    nop

    .line 1605
    :cond_c
    :goto_5
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_d

    .line 1606
    invoke-virtual {p0, v0, v4}, Landroidx/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    goto :goto_6

    .line 1608
    :cond_d
    invoke-virtual {p0, v4, v0}, Landroidx/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 1616
    :goto_6
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 1617
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .line 2948
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2949
    return v1

    .line 2951
    :cond_0
    invoke-direct {p0, p3}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2953
    return v1

    .line 2955
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x23

    if-nez v0, :cond_2

    .line 2956
    invoke-direct {p0, p3, p4, v1}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    .line 2958
    :cond_2
    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 3749
    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 3750
    return-void

    .line 3752
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    .line 3753
    .local v0, "loadingState":Landroidx/leanback/widget/GridLayoutManager$SavedState;
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->mIndex:I

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3754
    const/4 v1, 0x0

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3755
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    iget-object v2, v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->mChildStates:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ViewsStateBundle;->loadFromBundle(Landroid/os/Bundle;)V

    .line 3756
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3757
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 3759
    return-void
.end method

.method onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .line 778
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 779
    if-ne p1, v2, :cond_0

    const/high16 v0, 0x40000

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "flags":I
    :goto_0
    goto :goto_1

    .line 781
    .end local v0    # "flags":I
    :cond_1
    if-ne p1, v2, :cond_2

    const/high16 v0, 0x80000

    goto :goto_1

    :cond_2
    move v0, v1

    .line 783
    .restart local v0    # "flags":I
    :goto_1
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0xc0000

    and-int/2addr v3, v4

    if-ne v3, v0, :cond_3

    .line 784
    return-void

    .line 786
    :cond_3
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v4, -0xc0001

    and-int/2addr v3, v4

    or-int/2addr v3, v0

    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 787
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 788
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    if-ne p1, v2, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v3, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setReversedFlow(Z)V

    .line 789
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 3723
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager$SavedState;-><init>()V

    .line 3725
    .local v0, "ss":Landroidx/leanback/widget/GridLayoutManager$SavedState;
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->mIndex:I

    .line 3727
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroidx/leanback/widget/ViewsStateBundle;->saveAsBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3729
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3730
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3731
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v5

    .line 3732
    .local v5, "position":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 3733
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6, v1, v4, v5}, Landroidx/leanback/widget/ViewsStateBundle;->saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v1

    .line 3729
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3736
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    iput-object v1, v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->mChildStates:Landroid/os/Bundle;

    .line 3737
    return-object v0
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .line 3810
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->isScrollEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3812
    return v1

    .line 3814
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 3815
    move v0, p3

    .line 3816
    .local v0, "translatedAction":I
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3817
    .local v2, "reverseFlowPrimary":Z
    :goto_0
    nop

    .line 3818
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/16 v5, 0x1000

    const/16 v6, 0x2000

    if-nez v4, :cond_5

    .line 3819
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3820
    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne p3, v4, :cond_3

    .line 3821
    if-eqz v2, :cond_2

    .line 3822
    move v4, v5

    goto :goto_1

    .line 3823
    :cond_2
    move v4, v6

    :goto_1
    move v0, v4

    goto :goto_3

    .line 3824
    :cond_3
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3825
    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne p3, v4, :cond_7

    .line 3826
    if-eqz v2, :cond_4

    .line 3827
    move v4, v6

    goto :goto_2

    .line 3828
    :cond_4
    move v4, v5

    :goto_2
    move v0, v4

    goto :goto_3

    .line 3831
    :cond_5
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3832
    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne p3, v4, :cond_6

    .line 3833
    const/16 v0, 0x2000

    goto :goto_3

    .line 3834
    :cond_6
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3835
    invoke-virtual {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne p3, v4, :cond_7

    .line 3836
    const/16 v0, 0x1000

    .line 3840
    :cond_7
    :goto_3
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-nez v4, :cond_8

    if-ne v0, v6, :cond_8

    move v4, v1

    goto :goto_4

    :cond_8
    move v4, v3

    .line 3842
    .local v4, "scrollingReachedBeginning":Z
    :goto_4
    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v1

    if-ne v6, v7, :cond_9

    if-ne v0, v5, :cond_9

    move v5, v1

    goto :goto_5

    :cond_9
    move v5, v3

    .line 3844
    .local v5, "scrollingReachedEnd":Z
    :goto_5
    if-nez v4, :cond_b

    if-eqz v5, :cond_a

    goto :goto_6

    .line 3853
    :cond_a
    sparse-switch v0, :sswitch_data_0

    goto :goto_7

    .line 3855
    :sswitch_0
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3856
    const/4 v6, -0x1

    invoke-virtual {p0, v3, v6}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    .line 3857
    goto :goto_7

    .line 3859
    :sswitch_1
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3860
    invoke-virtual {p0, v3, v1}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_7

    .line 3851
    :cond_b
    :goto_6
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->sendTypeViewScrolledAccessibilityEvent()V

    .line 3864
    :goto_7
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 3865
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method processPendingMovement(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .line 2830
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2831
    :goto_0
    return-void

    .line 2833
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 2834
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 2835
    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v4, v2, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-direct {v0, p0, v3, v4}, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Landroidx/leanback/widget/GridLayoutManager;IZ)V

    .line 2836
    .local v0, "linearSmoothScroller":Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2837
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2838
    .end local v0    # "linearSmoothScroller":Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    goto :goto_3

    .line 2839
    :cond_4
    nop

    .line 2842
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 2839
    if-eqz p1, :cond_5

    .line 2840
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->increasePendingMoves()V

    goto :goto_3

    .line 2842
    :cond_5
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->decreasePendingMoves()V

    .line 2846
    :goto_3
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_a

    .line 2847
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v1, v2

    .line 2848
    .local v1, "rtl":Z
    :cond_6
    const/4 v0, 0x4

    const/4 v2, 0x3

    if-eqz v1, :cond_8

    .line 2849
    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_4

    .line 2850
    :cond_7
    nop

    :goto_4
    nop

    .local v0, "soundEffect":I
    goto :goto_6

    .line 2852
    .end local v0    # "soundEffect":I
    :cond_8
    if-eqz p1, :cond_9

    goto :goto_5

    .line 2853
    :cond_9
    move v0, v2

    :goto_5
    nop

    .line 2855
    .end local v1    # "rtl":Z
    .restart local v0    # "soundEffect":I
    :goto_6
    goto :goto_8

    .line 2856
    .end local v0    # "soundEffect":I
    :cond_a
    if-eqz p1, :cond_b

    const/4 v2, 0x2

    goto :goto_7

    .line 2857
    :cond_b
    nop

    :goto_7
    move v0, v2

    .line 2859
    .restart local v0    # "soundEffect":I
    :goto_8
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2860
    return-void
.end method

.method processSelectionMoves(ZI)I
    .locals 10
    .param p1, "preventScroll"    # Z
    .param p2, "moves"    # I

    .line 3881
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-nez v0, :cond_0

    .line 3882
    return p2

    .line 3884
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3885
    .local v0, "focusPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3886
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/Grid;->getRowIndex(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 3887
    .local v2, "focusedRow":I
    :goto_0
    const/4 v3, 0x0

    .line 3888
    .local v3, "newSelected":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    .local v5, "count":I
    :goto_1
    if-ge v4, v5, :cond_9

    if-eqz p2, :cond_9

    .line 3889
    if-lez p2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v5, -0x1

    sub-int/2addr v6, v4

    .line 3890
    .local v6, "index":I
    :goto_2
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3891
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3892
    goto :goto_3

    .line 3894
    :cond_3
    invoke-direct {p0, v6}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v8

    .line 3895
    .local v8, "position":I
    iget-object v9, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v9, v8}, Landroidx/leanback/widget/Grid;->getRowIndex(I)I

    move-result v9

    .line 3896
    .local v9, "rowIndex":I
    if-ne v2, v1, :cond_4

    .line 3897
    move v0, v8

    .line 3898
    move-object v3, v7

    .line 3899
    move v2, v9

    goto :goto_3

    .line 3900
    :cond_4
    if-ne v9, v2, :cond_8

    .line 3901
    if-lez p2, :cond_5

    if-gt v8, v0, :cond_6

    :cond_5
    if-gez p2, :cond_8

    if-ge v8, v0, :cond_8

    .line 3903
    :cond_6
    move v0, v8

    .line 3904
    move-object v3, v7

    .line 3905
    if-lez p2, :cond_7

    .line 3906
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 3908
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 3888
    .end local v6    # "index":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "position":I
    .end local v9    # "rowIndex":I
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3913
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_9
    if-eqz v3, :cond_c

    .line 3914
    if-eqz p1, :cond_b

    .line 3915
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3916
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3917
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 3918
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3920
    :cond_a
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3921
    const/4 v1, 0x0

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_4

    .line 3923
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 3926
    :cond_c
    :goto_4
    return p2
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 2096
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2097
    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2096
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2099
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method removeOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    .line 945
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 948
    :cond_0
    return-void
.end method

.method removeOnLayoutCompletedListener(Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;

    .line 985
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 988
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 2965
    const/4 v0, 0x0

    return v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 2438
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2441
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2442
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2444
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    .line 2445
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 2447
    .end local v0    # "result":I
    :cond_1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    .line 2449
    .restart local v0    # "result":I
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2450
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2451
    return v0

    .line 2439
    .end local v0    # "result":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 2672
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2673
    return-void
.end method

.method scrollToSelection(IIZI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "smooth"    # Z
    .param p4, "primaryScrollExtra"    # I

    .line 2717
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    .line 2719
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2724
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2725
    .local v1, "notSmoothScrolling":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 2726
    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2727
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2728
    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2729
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto/16 :goto_0

    .line 2731
    :cond_0
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x200

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_7

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2737
    :cond_1
    if-eqz p3, :cond_3

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2738
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2739
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2740
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2741
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2742
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    return-void

    .line 2746
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I

    move-result p1

    .line 2747
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq p1, v2, :cond_6

    .line 2749
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2750
    const/4 v2, 0x0

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 2755
    :cond_3
    if-nez v1, :cond_4

    .line 2756
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->skipSmoothScrollerOnStopInternal()V

    .line 2757
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->stopScroll()V

    .line 2759
    :cond_4
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroidx/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 2760
    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 2761
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2762
    invoke-virtual {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2763
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto :goto_0

    .line 2765
    :cond_5
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2766
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2767
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2768
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2769
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 2773
    :cond_6
    :goto_0
    return-void

    .line 2732
    :cond_7
    :goto_1
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2733
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2734
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2735
    return-void
.end method

.method scrollToView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "smooth"    # Z

    .line 3009
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    .line 3010
    return-void
.end method

.method scrollToView(Landroid/view/View;ZII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "smooth"    # Z
    .param p3, "extraDelta"    # I
    .param p4, "extraDeltaSecondary"    # I

    .line 3013
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "smooth":Z
    .end local p3    # "extraDelta":I
    .end local p4    # "extraDeltaSecondary":I
    .local v2, "view":Landroid/view/View;
    .local v4, "smooth":Z
    .local v5, "extraDelta":I
    .local v6, "extraDeltaSecondary":I
    invoke-direct/range {v1 .. v6}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    .line 3015
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 2458
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2461
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2462
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2464
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2465
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 2467
    .end local v0    # "result":I
    :cond_1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    .line 2469
    .restart local v0    # "result":I
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2470
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2471
    return v0

    .line 2459
    .end local v0    # "result":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method setChildrenVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 3670
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 3671
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3672
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 3673
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3674
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3677
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method setExtraLayoutSpace(I)V
    .locals 2
    .param p1, "extraLayoutSpace"    # I

    .line 1871
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    if-ne v0, p1, :cond_0

    .line 1872
    return-void

    .line 1873
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    if-ltz v0, :cond_1

    .line 1876
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    .line 1877
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 1878
    return-void

    .line 1874
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtraLayoutSpace must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusOutAllowed(ZZ)V
    .locals 3
    .param p1, "throughFront"    # Z
    .param p2, "throughBack"    # Z

    .line 771
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x1801

    .line 772
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x800

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    .line 773
    if-eqz p2, :cond_1

    const/16 v1, 0x1000

    :cond_1
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 774
    return-void
.end method

.method setFocusOutSideAllowed(ZZ)V
    .locals 3
    .param p1, "throughStart"    # Z
    .param p2, "throughEnd"    # Z

    .line 860
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x6001

    .line 861
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x2000

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    .line 862
    if-eqz p2, :cond_1

    const/16 v1, 0x4000

    :cond_1
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 863
    return-void
.end method

.method setFocusScrollStrategy(I)V
    .locals 0
    .param p1, "focusScrollStrategy"    # I

    .line 796
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 797
    return-void
.end method

.method setFocusSearchDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z

    .line 3251
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, -0x8001

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const v1, 0x8000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3252
    return-void
.end method

.method setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 911
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    .line 912
    return-void
.end method

.method setGridView(Landroidx/leanback/widget/BaseGridView;)V
    .locals 1
    .param p1, "baseGridView"    # Landroidx/leanback/widget/BaseGridView;

    .line 739
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 741
    return-void
.end method

.method setHorizontalSpacing(I)V
    .locals 1
    .param p1, "space"    # I

    .line 895
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 896
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    goto :goto_0

    .line 898
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 900
    :goto_0
    return-void
.end method

.method setItemAlignmentOffset(I)V
    .locals 1
    .param p1, "alignmentOffset"    # I

    .line 824
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffset(I)V

    .line 825
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    .line 826
    return-void
.end method

.method setItemAlignmentOffsetPercent(F)V
    .locals 1
    .param p1, "offsetPercent"    # F

    .line 842
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffsetPercent(F)V

    .line 843
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    .line 844
    return-void
.end method

.method setItemAlignmentOffsetWithPadding(Z)V
    .locals 1
    .param p1, "withPadding"    # Z

    .line 833
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffsetWithPadding(Z)V

    .line 834
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    .line 835
    return-void
.end method

.method setItemAlignmentViewId(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 851
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->setItemAlignmentViewId(I)V

    .line 852
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    .line 853
    return-void
.end method

.method setItemSpacing(I)V
    .locals 0
    .param p1, "space"    # I

    .line 882
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 883
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    .line 884
    return-void
.end method

.method setLayoutEnabled(Z)V
    .locals 3
    .param p1, "layoutEnabled"    # Z

    .line 3663
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, p1, :cond_2

    .line 3664
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x201

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3665
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 3667
    :cond_2
    return-void
.end method

.method setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .line 866
    if-ltz p1, :cond_0

    .line 867
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 868
    return-void

    .line 866
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method setOnChildLaidOutListener(Landroidx/leanback/widget/OnChildLaidOutListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/leanback/widget/OnChildLaidOutListener;

    .line 991
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    .line 992
    return-void
.end method

.method setOnChildSelectedListener(Landroidx/leanback/widget/OnChildSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/leanback/widget/OnChildSelectedListener;

    .line 920
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    .line 921
    return-void
.end method

.method setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    .line 924
    if-nez p1, :cond_0

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 926
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    goto :goto_0

    .line 931
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 933
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 747
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 749
    return-void

    .line 752
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 753
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 754
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/WindowAlignment;->setOrientation(I)V

    .line 755
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignment;->setOrientation(I)V

    .line 756
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 757
    return-void
.end method

.method setPruneChild(Z)V
    .locals 4
    .param p1, "pruneChild"    # Z

    .line 3190
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, p1, :cond_2

    .line 3191
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v3, -0x10001

    and-int/2addr v0, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3192
    if-eqz p1, :cond_2

    .line 3193
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 3196
    :cond_2
    return-void
.end method

.method setRowHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .line 874
    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    .line 879
    return-void
.end method

.method setScrollEnabled(Z)V
    .locals 5
    .param p1, "scrollEnabled"    # Z

    .line 3203
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eq v0, p1, :cond_2

    .line 3204
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v4, -0x20001

    and-int/2addr v0, v4

    if-eqz p1, :cond_1

    move v3, v1

    :cond_1
    or-int/2addr v0, v3

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3205
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3208
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    .line 3212
    :cond_2
    return-void
.end method

.method setSelection(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "primaryScrollExtra"    # I

    .line 2683
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2684
    return-void
.end method

.method setSelection(IIZI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "smooth"    # Z
    .param p4, "primaryScrollExtra"    # I

    .line 2709
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eq p4, v0, :cond_2

    .line 2711
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    .line 2713
    :cond_2
    return-void
.end method

.method setSelectionSmooth(I)V
    .locals 2
    .param p1, "position"    # I

    .line 2687
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2688
    return-void
.end method

.method setSelectionSmoothWithSub(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "subposition"    # I

    .line 2696
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2697
    return-void
.end method

.method setSelectionWithSub(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "primaryScrollExtra"    # I

    .line 2692
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2693
    return-void
.end method

.method setVerticalSpacing(I)V
    .locals 2
    .param p1, "space"    # I

    .line 887
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 888
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    goto :goto_0

    .line 890
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 892
    :goto_0
    return-void
.end method

.method setWindowAlignment(I)V
    .locals 1
    .param p1, "windowAlignment"    # I

    .line 800
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setWindowAlignment(I)V

    .line 801
    return-void
.end method

.method setWindowAlignmentOffset(I)V
    .locals 1
    .param p1, "alignmentOffset"    # I

    .line 808
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setWindowAlignmentOffset(I)V

    .line 809
    return-void
.end method

.method setWindowAlignmentOffsetPercent(F)V
    .locals 1
    .param p1, "offsetPercent"    # F

    .line 816
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setWindowAlignmentOffsetPercent(F)V

    .line 817
    return-void
.end method

.method skipSmoothScrollerOnStopInternal()V
    .locals 2

    .line 2807
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz v0, :cond_0

    .line 2808
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    .line 2810
    :cond_0
    return-void
.end method

.method slideIn()V
    .locals 4

    .line 1903
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 1904
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1905
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v0, :cond_0

    .line 1906
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    const/4 v2, 0x1

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    goto :goto_0

    .line 1908
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1909
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 1911
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 1912
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1913
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1925
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_2

    .line 1914
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    new-instance v1, Landroidx/leanback/widget/GridLayoutManager$3;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/GridLayoutManager$3;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1929
    :cond_3
    :goto_2
    return-void
.end method

.method slideOut()V
    .locals 4

    .line 1974
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 1975
    return-void

    .line 1977
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1978
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1979
    return-void

    .line 1981
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 1985
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 1981
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 1982
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v0

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Landroidx/leanback/widget/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 1985
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v0

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Landroidx/leanback/widget/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1988
    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 2678
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, v1, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2679
    return-void
.end method

.method startPositionSmoothScroller(I)I
    .locals 2
    .param p1, "position"    # I

    .line 2776
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$4;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/GridLayoutManager$4;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    .line 2797
    .local v0, "linearSmoothScroller":Landroidx/recyclerview/widget/LinearSmoothScroller;
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2798
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2799
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    return v1
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 2
    .param p1, "smoothScroller"    # Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 2814
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->skipSmoothScrollerOnStopInternal()V

    .line 2815
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2816
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz v0, :cond_1

    .line 2817
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    .line 2818
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    instance-of v0, v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v0, :cond_0

    .line 2819
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_0

    .line 2821
    :cond_0
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_0

    .line 2824
    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    .line 2825
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 2827
    :goto_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 2141
    const/4 v0, 0x1

    return v0
.end method

.method updatePositionDeltaInPreLayout()V
    .locals 4

    .line 2195
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2196
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2197
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2198
    .local v1, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v2}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    .line 2199
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 2200
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    goto :goto_0

    .line 2201
    :cond_0
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 2203
    :goto_0
    return-void
.end method

.method updatePositionToRowMapInPostLayout()V
    .locals 6

    .line 2145
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2146
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2147
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2149
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v2

    .line 2150
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2151
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v3

    .line 2152
    .local v3, "loc":Landroidx/leanback/widget/Grid$Location;
    if-eqz v3, :cond_0

    .line 2153
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iget v5, v3, Landroidx/leanback/widget/Grid$Location;->mRow:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2147
    .end local v2    # "position":I
    .end local v3    # "loc":Landroidx/leanback/widget/Grid$Location;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2157
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method updateScrollLimits()V
    .locals 15

    .line 2580
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2581
    return-void

    .line 2585
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    .line 2591
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 2585
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2586
    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v0

    .line 2587
    .local v0, "highVisiblePos":I
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 2588
    .local v1, "highMaxPos":I
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v3}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v3

    .line 2589
    .local v3, "lowVisiblePos":I
    const/4 v4, 0x0

    .local v4, "lowMinPos":I
    goto :goto_0

    .line 2591
    .end local v0    # "highVisiblePos":I
    .end local v1    # "highMaxPos":I
    .end local v3    # "lowVisiblePos":I
    .end local v4    # "lowMinPos":I
    :cond_1
    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    .line 2592
    .restart local v0    # "highVisiblePos":I
    const/4 v1, 0x0

    .line 2593
    .restart local v1    # "highMaxPos":I
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v3}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v3

    .line 2594
    .restart local v3    # "lowVisiblePos":I
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    .line 2596
    .restart local v4    # "lowMinPos":I
    :goto_0
    if-ltz v0, :cond_9

    if-gez v3, :cond_2

    goto/16 :goto_5

    .line 2599
    :cond_2
    const/4 v5, 0x0

    if-ne v0, v1, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v5

    .line 2600
    .local v6, "highAvailable":Z
    :goto_1
    if-ne v3, v4, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v5

    .line 2601
    .local v7, "lowAvailable":Z
    :goto_2
    if-nez v6, :cond_5

    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v7, :cond_5

    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 2602
    invoke-virtual {v8}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2603
    return-void

    .line 2606
    :cond_5
    if-eqz v6, :cond_7

    .line 2607
    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    sget-object v9, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v8, v2, v9}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v8

    .line 2608
    .local v8, "maxEdge":I
    sget-object v9, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v9, v9, v2

    invoke-virtual {p0, v9}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    .line 2609
    .local v9, "maxChild":Landroid/view/View;
    invoke-direct {p0, v9}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v10

    .line 2610
    .local v10, "maxViewCenter":I
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2611
    .local v11, "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v11}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v12

    .line 2612
    .local v12, "multipleAligns":[I
    if-eqz v12, :cond_6

    array-length v13, v12

    if-lez v13, :cond_6

    .line 2613
    array-length v13, v12

    sub-int/2addr v13, v2

    aget v13, v12, v13

    aget v14, v12, v5

    sub-int/2addr v13, v14

    add-int/2addr v10, v13

    .line 2615
    .end local v9    # "maxChild":Landroid/view/View;
    .end local v11    # "lp":Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v12    # "multipleAligns":[I
    :cond_6
    goto :goto_3

    .line 2616
    .end local v8    # "maxEdge":I
    .end local v10    # "maxViewCenter":I
    :cond_7
    const v8, 0x7fffffff

    .line 2617
    .restart local v8    # "maxEdge":I
    const v10, 0x7fffffff

    .line 2620
    .restart local v10    # "maxViewCenter":I
    :goto_3
    if-eqz v7, :cond_8

    .line 2621
    iget-object v9, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    sget-object v11, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v9, v5, v11}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v5

    .line 2622
    .local v5, "minEdge":I
    sget-object v9, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v9, v2

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 2623
    .local v2, "minChild":Landroid/view/View;
    invoke-direct {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v2

    .line 2624
    .local v2, "minViewCenter":I
    goto :goto_4

    .line 2625
    .end local v2    # "minViewCenter":I
    .end local v5    # "minEdge":I
    :cond_8
    const/high16 v5, -0x80000000

    .line 2626
    .restart local v5    # "minEdge":I
    const/high16 v2, -0x80000000

    .line 2628
    .restart local v2    # "minViewCenter":I
    :goto_4
    iget-object v9, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v5, v8, v2, v10}, Landroidx/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    .line 2629
    return-void

    .line 2597
    .end local v2    # "minViewCenter":I
    .end local v5    # "minEdge":I
    .end local v6    # "highAvailable":Z
    .end local v7    # "lowAvailable":Z
    .end local v8    # "maxEdge":I
    .end local v10    # "maxViewCenter":I
    :cond_9
    :goto_5
    return-void
.end method
