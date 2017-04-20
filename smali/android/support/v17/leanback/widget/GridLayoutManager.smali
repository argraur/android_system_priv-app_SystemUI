.class final Landroid/support/v17/leanback/widget/GridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GridLayoutManager$1;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$2;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    }
.end annotation


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;

.field static sTwoInts:[I


# instance fields
.field final mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

.field mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

.field private mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field private mChildViewHolderSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mChildVisibility:I

.field final mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

.field private mExtraLayoutSpace:I

.field private mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field private mFocusOutEnd:Z

.field private mFocusOutFront:Z

.field private mFocusOutSideEnd:Z

.field private mFocusOutSideStart:Z

.field mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mFocusSearchDisabled:Z

.field private mForceFullLayout:Z

.field private mGravity:I

.field mGrid:Landroid/support/v17/leanback/widget/Grid;

.field private mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field private mHorizontalMargin:I

.field mInFastRelayout:Z

.field mInLayout:Z

.field mInLayoutSearchFocus:Z

.field private mInScroll:Z

.field mInSelection:Z

.field private final mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

.field private mLayoutEnabled:Z

.field private mMarginPrimary:I

.field private mMarginSecondary:I

.field private mMaxSizeSecondary:I

.field private mMeasuredDimension:[I

.field mNumRows:I

.field private mNumRowsRequested:I

.field mOrientation:I

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field private mPrimaryScrollExtra:I

.field private mPruneChild:Z

.field mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field mReverseFlowPrimary:Z

.field private mReverseFlowSecondary:Z

.field private mRowSecondarySizeRefresh:Z

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field private mScrollEnabled:Z

.field private mScrollOffsetPrimary:I

.field mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field mState:Landroid/support/v7/widget/RecyclerView$State;

.field mSubFocusPosition:I

.field private mVerticalMargin:I

.field final mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 417
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    .line 615
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseGridView;)V
    .registers 7
    .param p1, "baseGridView"    # Landroid/support/v17/leanback/widget/BaseGridView;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 639
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 411
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 412
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 427
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 429
    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    .line 431
    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 433
    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    .line 440
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 446
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 460
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 475
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    .line 480
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 535
    const v0, 0x800033

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    .line 544
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 554
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 558
    new-instance v0, Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    .line 563
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    .line 590
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    .line 595
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    .line 605
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    .line 610
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    .line 620
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    .line 625
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    .line 630
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 632
    new-instance v0, Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    .line 1294
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$1;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1453
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$2;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 640
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 639
    return-void
.end method

.method private appendOneColumnVisibleItems()Z
    .registers 2

    .prologue
    .line 1694
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private appendVisibleItems()V
    .registers 4

    .prologue
    .line 1702
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(I)V

    .line 1701
    return-void

    .line 1703
    :cond_d
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v2

    goto :goto_9
.end method

.method private discardLayoutInfo()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3121
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 3122
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 3123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    .line 3120
    return-void
.end method

.method private fastRelayout()V
    .registers 19

    .prologue
    .line 1717
    const/4 v10, 0x0

    .line 1718
    .local v10, "invalidateAfter":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    .line 1719
    .local v8, "childCount":I
    const/4 v14, -0x1

    .line 1720
    .local v14, "position":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_7
    if-ge v9, v8, :cond_20

    .line 1721
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1722
    .local v4, "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByIndex(I)I

    move-result v14

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v14}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v11

    .line 1724
    .local v11, "location":Landroid/support/v17/leanback/widget/Grid$Location;
    if-nez v11, :cond_5e

    .line 1726
    const/4 v10, 0x1

    .line 1759
    .end local v4    # "view":Landroid/view/View;
    .end local v11    # "location":Landroid/support/v17/leanback/widget/Grid$Location;
    :cond_20
    :goto_20
    if-eqz v10, :cond_e4

    .line 1760
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v16

    .line 1761
    .local v16, "savedLastPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v14}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 1762
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v2, :cond_ce

    .line 1764
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 1765
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v2, :cond_e4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v0, v16

    if-gt v2, v0, :cond_e4

    .line 1768
    :goto_48
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v2, v3, :cond_e4

    .line 1769
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_48

    .line 1730
    .end local v16    # "savedLastPos":I
    .restart local v4    # "view":Landroid/view/View;
    .restart local v11    # "location":Landroid/support/v17/leanback/widget/Grid$Location;
    :cond_5e
    iget v2, v11, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v7, v2, v3

    .line 1732
    .local v7, "startSecondary":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v5

    .line 1733
    .local v5, "start":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v13

    .line 1735
    .local v13, "oldPrimarySize":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1736
    .local v12, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->viewNeedsUpdate()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 1737
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->indexOfChild(Landroid/view/View;)I

    move-result v17

    .line 1738
    .local v17, "viewIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1739
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 1740
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1743
    .end local v17    # "viewIndex":I
    :cond_a2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1744
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_c1

    .line 1745
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v15

    .line 1746
    .local v15, "primarySize":I
    add-int v6, v5, v15

    .line 1751
    .local v6, "end":I
    :goto_b5
    iget v3, v11, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    .line 1752
    if-eq v13, v15, :cond_ca

    .line 1755
    const/4 v10, 0x1

    .line 1756
    goto/16 :goto_20

    .line 1748
    .end local v6    # "end":I
    .end local v15    # "primarySize":I
    :cond_c1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v15

    .line 1749
    .restart local v15    # "primarySize":I
    add-int v6, v5, v15

    .restart local v6    # "end":I
    goto :goto_b5

    .line 1720
    :cond_ca
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 1774
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "startSecondary":I
    .end local v11    # "location":Landroid/support/v17/leanback/widget/Grid$Location;
    .end local v12    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v13    # "oldPrimarySize":I
    .end local v15    # "primarySize":I
    .restart local v16    # "savedLastPos":I
    :cond_ce
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 1775
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, v16

    if-lt v2, v0, :cond_ce

    .line 1778
    .end local v16    # "savedLastPos":I
    :cond_e4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    .line 1779
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    .line 1780
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollSecondAxis()V

    .line 1716
    return-void
.end method

.method private findImmediateChildIndex(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2705
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eq p1, v2, :cond_1f

    .line 2706
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 2707
    if-eqz p1, :cond_1f

    .line 2708
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 2709
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1c

    .line 2710
    return v1

    .line 2708
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2715
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1f
    const/4 v2, -0x1

    return v2
.end method

.method private forceRequestLayout()V
    .registers 3

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1281
    return-void
.end method

.method private getAdjustedPrimaryScrollPosition(ILandroid/view/View;Landroid/view/View;)I
    .registers 9
    .param p1, "scrollPrimary"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "childView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2481
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 2482
    .local v1, "subindex":I
    if-eqz v1, :cond_1b

    .line 2483
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2484
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v3

    aget v3, v3, v4

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 2486
    .end local v0    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    :cond_1b
    return p1
.end method

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "deltas"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2633
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v0

    .line 2634
    .local v0, "scrollPrimary":I
    if-eqz p2, :cond_c

    .line 2635
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryScrollPosition(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 2637
    :cond_c
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondarySystemScrollPosition(Landroid/view/View;)I

    move-result v1

    .line 2643
    .local v1, "scrollSecondary":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int/2addr v0, v2

    .line 2644
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v1, v2

    .line 2645
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, v2

    .line 2646
    if-nez v0, :cond_1d

    if-eqz v1, :cond_22

    .line 2647
    :cond_1d
    aput v0, p3, v3

    .line 2648
    aput v1, p3, v4

    .line 2649
    return v4

    .line 2651
    :cond_22
    return v3
.end method

.method private getMovement(I)I
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 3048
    const/16 v0, 0x11

    .line 3050
    .local v0, "movement":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1e

    .line 3051
    sparse-switch p1, :sswitch_data_3c

    .line 3082
    :cond_9
    :goto_9
    return v0

    .line 3053
    :sswitch_a
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v1, :cond_10

    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    const/4 v0, 0x1

    goto :goto_9

    .line 3056
    :sswitch_12
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v1, :cond_18

    const/4 v0, 0x1

    goto :goto_9

    :cond_18
    const/4 v0, 0x0

    goto :goto_9

    .line 3059
    :sswitch_1a
    const/4 v0, 0x2

    .line 3060
    goto :goto_9

    .line 3062
    :sswitch_1c
    const/4 v0, 0x3

    .line 3063
    goto :goto_9

    .line 3065
    :cond_1e
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 3066
    sparse-switch p1, :sswitch_data_4e

    goto :goto_9

    .line 3068
    :sswitch_27
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v1, :cond_2d

    const/4 v0, 0x2

    goto :goto_9

    :cond_2d
    const/4 v0, 0x3

    goto :goto_9

    .line 3071
    :sswitch_2f
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v1, :cond_35

    const/4 v0, 0x3

    goto :goto_9

    :cond_35
    const/4 v0, 0x2

    goto :goto_9

    .line 3074
    :sswitch_37
    const/4 v0, 0x0

    .line 3075
    goto :goto_9

    .line 3077
    :sswitch_39
    const/4 v0, 0x1

    .line 3078
    goto :goto_9

    .line 3051
    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_a
        0x21 -> :sswitch_1a
        0x42 -> :sswitch_12
        0x82 -> :sswitch_1c
    .end sparse-switch

    .line 3066
    :sswitch_data_4e
    .sparse-switch
        0x11 -> :sswitch_27
        0x21 -> :sswitch_37
        0x42 -> :sswitch_2f
        0x82 -> :sswitch_39
    .end sparse-switch
.end method

.method private getNoneAlignedPosition(Landroid/view/View;[I)Z
    .registers 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "deltas"    # [I

    .prologue
    .line 2557
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v4

    .line 2558
    .local v4, "pos":I
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    .line 2559
    .local v11, "viewMin":I
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v10

    .line 2562
    .local v10, "viewMax":I
    const/4 v1, 0x0

    .line 2563
    .local v1, "firstView":Landroid/view/View;
    const/4 v2, 0x0

    .line 2564
    .local v2, "lastView":Landroid/view/View;
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    .line 2565
    .local v3, "paddingLow":I
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v0

    .line 2566
    .local v0, "clientSize":I
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v12, v4}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v6

    .line 2567
    .local v6, "row":I
    if-ge v11, v3, :cond_85

    .line 2569
    move-object v1, p1

    .line 2570
    .local v1, "firstView":Landroid/view/View;
    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_65

    .line 2573
    :cond_30
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_65

    .line 2575
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v13, v4}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    .line 2574
    aget-object v5, v12, v6

    .line 2576
    .local v5, "positions":Landroid/support/v4/util/CircularIntArray;
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2577
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v12, v10, v12

    if-le v12, v0, :cond_30

    .line 2578
    invoke-virtual {v5}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_65

    .line 2579
    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2607
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "lastView":Landroid/view/View;
    .end local v5    # "positions":Landroid/support/v4/util/CircularIntArray;
    :cond_65
    :goto_65
    const/4 v7, 0x0

    .line 2608
    .local v7, "scrollPrimary":I
    const/4 v8, 0x0

    .line 2609
    .local v8, "scrollSecondary":I
    if-eqz v1, :cond_c0

    .line 2610
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v7, v12, v3

    .line 2615
    :cond_6f
    :goto_6f
    if-eqz v1, :cond_cb

    .line 2616
    move-object v9, v1

    .line 2622
    .local v9, "secondaryAlignedView":Landroid/view/View;
    :goto_72
    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondarySystemScrollPosition(Landroid/view/View;)I

    move-result v8

    .line 2623
    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v8, v12

    .line 2624
    if-nez v7, :cond_7d

    if-eqz v8, :cond_d1

    .line 2625
    :cond_7d
    const/4 v12, 0x0

    aput v7, p2, v12

    .line 2626
    const/4 v12, 0x1

    aput v8, p2, v12

    .line 2627
    const/4 v12, 0x1

    return v12

    .line 2585
    .end local v7    # "scrollPrimary":I
    .end local v8    # "scrollSecondary":I
    .end local v9    # "secondaryAlignedView":Landroid/view/View;
    .local v1, "firstView":Landroid/view/View;
    .restart local v2    # "lastView":Landroid/view/View;
    :cond_85
    add-int v12, v0, v3

    if-le v10, v12, :cond_65

    .line 2587
    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_be

    .line 2589
    move-object v1, p1

    .line 2592
    .end local v2    # "lastView":Landroid/view/View;
    .local v1, "firstView":Landroid/view/View;
    :goto_8f
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v4, v13}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    .line 2591
    aget-object v5, v12, v6

    .line 2593
    .restart local v5    # "positions":Landroid/support/v4/util/CircularIntArray;
    invoke-virtual {v5}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 2594
    .local v2, "lastView":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v12, v11

    if-le v12, v0, :cond_b7

    .line 2595
    const/4 v2, 0x0

    .line 2599
    .end local v2    # "lastView":Landroid/view/View;
    :cond_b3
    if-eqz v2, :cond_65

    .line 2601
    const/4 v1, 0x0

    .local v1, "firstView":Landroid/view/View;
    goto :goto_65

    .line 2598
    .local v1, "firstView":Landroid/view/View;
    .restart local v2    # "lastView":Landroid/view/View;
    :cond_b7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_b3

    goto :goto_8f

    .line 2604
    .end local v5    # "positions":Landroid/support/v4/util/CircularIntArray;
    .local v1, "firstView":Landroid/view/View;
    .local v2, "lastView":Landroid/view/View;
    :cond_be
    move-object v2, p1

    .local v2, "lastView":Landroid/view/View;
    goto :goto_65

    .line 2611
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "lastView":Landroid/view/View;
    .restart local v7    # "scrollPrimary":I
    .restart local v8    # "scrollSecondary":I
    :cond_c0
    if-eqz v2, :cond_6f

    .line 2612
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    add-int v13, v3, v0

    sub-int v7, v12, v13

    goto :goto_6f

    .line 2617
    :cond_cb
    if-eqz v2, :cond_cf

    .line 2618
    move-object v9, v2

    .restart local v9    # "secondaryAlignedView":Landroid/view/View;
    goto :goto_72

    .line 2620
    .end local v9    # "secondaryAlignedView":Landroid/view/View;
    :cond_cf
    move-object v9, p1

    .restart local v9    # "secondaryAlignedView":Landroid/view/View;
    goto :goto_72

    .line 2629
    :cond_d1
    const/4 v12, 0x0

    return v12
.end method

.method private getPositionByIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getPositionByView(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 850
    if-nez p1, :cond_4

    .line 851
    return v2

    .line 853
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 854
    .local v0, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 856
    :cond_12
    return v2

    .line 858
    :cond_13
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewPosition()I

    move-result v1

    return v1
.end method

.method private getPrimarySystemScrollPosition(Landroid/view/View;)I
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2437
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v8

    add-int v4, v7, v8

    .line 2438
    .local v4, "viewCenterPrimary":I
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v6

    .line 2439
    .local v6, "viewMin":I
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v5

    .line 2442
    .local v5, "viewMax":I
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v7, :cond_52

    .line 2443
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v7

    if-nez v7, :cond_47

    const/4 v2, 0x1

    .line 2444
    .local v2, "isMin":Z
    :goto_1d
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v8

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-nez v7, :cond_49

    .line 2445
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v7

    .line 2444
    :goto_2b
    add-int/lit8 v7, v7, -0x1

    if-ne v8, v7, :cond_50

    const/4 v1, 0x1

    .line 2451
    .local v1, "isMax":Z
    :goto_30
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_36
    if-nez v2, :cond_3a

    if-eqz v1, :cond_8d

    :cond_3a
    if-ltz v0, :cond_8d

    .line 2452
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2453
    .local v3, "v":Landroid/view/View;
    if-eq v3, p1, :cond_44

    if-nez v3, :cond_7a

    .line 2451
    :cond_44
    :goto_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 2443
    .end local v0    # "i":I
    .end local v1    # "isMax":Z
    .end local v2    # "isMin":Z
    .end local v3    # "v":Landroid/view/View;
    :cond_47
    const/4 v2, 0x0

    .restart local v2    # "isMin":Z
    goto :goto_1d

    .line 2445
    :cond_49
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    goto :goto_2b

    .line 2444
    :cond_50
    const/4 v1, 0x0

    .restart local v1    # "isMax":Z
    goto :goto_30

    .line 2447
    .end local v1    # "isMax":Z
    .end local v2    # "isMin":Z
    :cond_52
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v7

    if-nez v7, :cond_6f

    const/4 v1, 0x1

    .line 2448
    .restart local v1    # "isMax":Z
    :goto_5b
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v8

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-nez v7, :cond_71

    .line 2449
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v7

    .line 2448
    :goto_69
    add-int/lit8 v7, v7, -0x1

    if-ne v8, v7, :cond_78

    const/4 v2, 0x1

    .restart local v2    # "isMin":Z
    goto :goto_30

    .line 2447
    .end local v1    # "isMax":Z
    .end local v2    # "isMin":Z
    :cond_6f
    const/4 v1, 0x0

    .restart local v1    # "isMax":Z
    goto :goto_5b

    .line 2449
    :cond_71
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    goto :goto_69

    .line 2448
    :cond_78
    const/4 v2, 0x0

    .restart local v2    # "isMin":Z
    goto :goto_30

    .line 2456
    .restart local v0    # "i":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_7a
    if-eqz v2, :cond_83

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v7

    if-ge v7, v6, :cond_83

    .line 2457
    const/4 v2, 0x0

    .line 2459
    :cond_83
    if-eqz v1, :cond_44

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v7

    if-le v7, v5, :cond_44

    .line 2460
    const/4 v1, 0x0

    goto :goto_44

    .line 2463
    .end local v3    # "v":Landroid/view/View;
    :cond_8d
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7, v4, v2, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSystemScrollPos(IZZ)I

    move-result v7

    return v7
.end method

.method private getPrimarySystemScrollPositionOfChildMax(Landroid/view/View;)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2467
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v2

    .line 2468
    .local v2, "scrollPosition":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2469
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v1

    .line 2470
    .local v1, "multipleAligns":[I
    if-eqz v1, :cond_1d

    array-length v3, v1

    if-lez v3, :cond_1d

    .line 2471
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    aget v4, v1, v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2473
    :cond_1d
    return v2
.end method

.method private getRowSizeSecondary(I)I
    .registers 4
    .param p1, "rowIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1136
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_8

    .line 1137
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    return v0

    .line 1139
    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v0, :cond_d

    .line 1140
    return v1

    .line 1142
    :cond_d
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v0, v0, p1

    return v0
.end method

.method private getSecondarySystemScrollPosition(Landroid/view/View;)I
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2490
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v7

    add-int v5, v6, v7

    .line 2491
    .local v5, "viewCenterSecondary":I
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v3

    .line 2492
    .local v3, "pos":I
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v6, v3}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v2

    .line 2493
    .local v2, "location":Landroid/support/v17/leanback/widget/Grid$Location;
    iget v4, v2, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    .line 2495
    .local v4, "row":I
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v6, :cond_35

    .line 2496
    if-nez v4, :cond_31

    const/4 v1, 0x1

    .line 2497
    .local v1, "isMin":Z
    :goto_1b
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_33

    const/4 v0, 0x1

    .line 2502
    .local v0, "isMax":Z
    :goto_26
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSystemScrollPos(IZZ)I

    move-result v6

    return v6

    .line 2496
    .end local v0    # "isMax":Z
    .end local v1    # "isMin":Z
    :cond_31
    const/4 v1, 0x0

    .restart local v1    # "isMin":Z
    goto :goto_1b

    .line 2497
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "isMax":Z
    goto :goto_26

    .line 2499
    .end local v0    # "isMax":Z
    .end local v1    # "isMin":Z
    :cond_35
    if-nez v4, :cond_44

    const/4 v0, 0x1

    .line 2500
    .restart local v0    # "isMax":Z
    :goto_38
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_46

    const/4 v1, 0x1

    .restart local v1    # "isMin":Z
    goto :goto_26

    .line 2499
    .end local v0    # "isMax":Z
    .end local v1    # "isMin":Z
    :cond_44
    const/4 v0, 0x0

    .restart local v0    # "isMax":Z
    goto :goto_38

    .line 2500
    :cond_46
    const/4 v1, 0x0

    .restart local v1    # "isMin":Z
    goto :goto_26
.end method

.method private getSizeSecondary()I
    .registers 4

    .prologue
    .line 1162
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    .line 1163
    .local v0, "rightmostIndex":I
    :goto_5
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 1162
    .end local v0    # "rightmostIndex":I
    :cond_f
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_5
.end method

.method private getViewCenter(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1036
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    goto :goto_8
.end method

.method private getViewCenterSecondary(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1040
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    goto :goto_8
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1044
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1045
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignX()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1050
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignY()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3000
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 3001
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_f

    .line 3002
    invoke-virtual {v1, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 3003
    .local v0, "result":Z
    if-nez v0, :cond_e

    .line 3006
    :cond_e
    return v0

    .line 3008
    .end local v0    # "result":Z
    :cond_f
    const/4 v2, 0x0

    return v2
.end method

.method private gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .registers 14
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 3017
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .line 3018
    .local v1, "count":I
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_43

    .line 3019
    const/4 v5, 0x0

    .line 3020
    .local v5, "index":I
    const/4 v4, 0x1

    .line 3021
    .local v4, "increment":I
    move v2, v1

    .line 3027
    .local v2, "end":I
    :goto_c
    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v6

    .line 3028
    .local v6, "left":I
    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v8

    add-int v7, v8, v6

    .line 3029
    .local v7, "right":I
    move v3, v5

    .local v3, "i":I
    :goto_23
    if-eq v3, v2, :cond_4a

    .line 3030
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3031
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_48

    .line 3032
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-lt v8, v6, :cond_48

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    if-gt v8, v7, :cond_48

    .line 3033
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 3034
    const/4 v8, 0x1

    return v8

    .line 3023
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "increment":I
    .end local v5    # "index":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    :cond_43
    add-int/lit8 v5, v1, -0x1

    .line 3024
    .restart local v5    # "index":I
    const/4 v4, -0x1

    .line 3025
    .restart local v4    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_c

    .line 3029
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v6    # "left":I
    .restart local v7    # "right":I
    :cond_48
    add-int/2addr v3, v4

    goto :goto_23

    .line 3039
    .end local v0    # "child":Landroid/view/View;
    :cond_4a
    return v9
.end method

.method private initScrollController()V
    .registers 4

    .prologue
    .line 2161
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->reset()V

    .line 2162
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2163
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2164
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2165
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2166
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    .line 2167
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    .line 2168
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2160
    return-void
.end method

.method private layoutInit()Z
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1079
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v3, :cond_ae

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v3, :cond_ae

    .line 1080
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    if-lt v3, v4, :cond_ae

    .line 1081
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v4

    if-gt v3, v4, :cond_ab

    const/4 v1, 0x1

    .line 1082
    .local v1, "focusViewWasInTree":Z
    :goto_1f
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    .line 1083
    .local v2, "newItemCount":I
    if-nez v2, :cond_b1

    .line 1084
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1085
    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1094
    :cond_2b
    :goto_2b
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v3

    if-ltz v3, :cond_3f

    .line 1095
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    if-eqz v3, :cond_c9

    .line 1104
    :cond_3f
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 1105
    if-eqz v1, :cond_f3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    .line 1107
    .local v0, "firstVisibleIndex":I
    :goto_49
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v3, :cond_57

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v4

    if-eq v3, v4, :cond_f6

    .line 1109
    :cond_57
    :goto_57
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-static {v3}, Landroid/support/v17/leanback/widget/Grid;->createGrid(I)Landroid/support/v17/leanback/widget/Grid;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 1110
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V

    .line 1111
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setReversedFlow(Z)V

    .line 1113
    :cond_6d
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->initScrollController()V

    .line 1114
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollSecondAxis()V

    .line 1115
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginPrimary:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setMargin(I)V

    .line 1116
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1117
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    .line 1118
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v3, v6, :cond_8d

    .line 1119
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/BaseGridView;->clearFocus()V

    .line 1121
    :cond_8d
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    .line 1122
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    .line 1123
    if-eqz v1, :cond_102

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gt v0, v3, :cond_102

    .line 1125
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 1131
    :goto_aa
    return v5

    .line 1081
    .end local v0    # "firstVisibleIndex":I
    .end local v1    # "focusViewWasInTree":Z
    .end local v2    # "newItemCount":I
    :cond_ab
    const/4 v1, 0x0

    .restart local v1    # "focusViewWasInTree":Z
    goto/16 :goto_1f

    .line 1079
    .end local v1    # "focusViewWasInTree":Z
    :cond_ae
    const/4 v1, 0x0

    .restart local v1    # "focusViewWasInTree":Z
    goto/16 :goto_1f

    .line 1086
    .restart local v2    # "newItemCount":I
    :cond_b1
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v3, v2, :cond_bd

    .line 1087
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1088
    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto/16 :goto_2b

    .line 1089
    :cond_bd
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v3, v6, :cond_2b

    if-lez v2, :cond_2b

    .line 1091
    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1092
    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto/16 :goto_2b

    .line 1095
    :cond_c9
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v3, v4, :cond_3f

    .line 1096
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollController()V

    .line 1097
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollSecondAxis()V

    .line 1098
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginPrimary:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setMargin(I)V

    .line 1099
    if-nez v1, :cond_f1

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v3, v6, :cond_f1

    .line 1100
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 1102
    :cond_f1
    const/4 v3, 0x1

    return v3

    .line 1105
    :cond_f3
    const/4 v0, 0x0

    .restart local v0    # "firstVisibleIndex":I
    goto/16 :goto_49

    .line 1108
    :cond_f6
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v4

    if-eq v3, v4, :cond_6d

    goto/16 :goto_57

    .line 1129
    :cond_102
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    goto :goto_aa
.end method

.method private leaveContext()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1068
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 1069
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 1067
    return-void
.end method

.method private measureScrapChild(III[I)V
    .registers 13
    .param p1, "position"    # I
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "measuredDimension"    # [I

    .prologue
    .line 1178
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 1179
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_69

    .line 1180
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1181
    .local v3, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    sget-object v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1182
    iget v6, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    .line 1183
    .local v5, "widthUsed":I
    iget v6, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v2, v6, v7

    .line 1186
    .local v2, "heightUsed":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    .line 1185
    invoke-static {p2, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1188
    .local v1, "childWidthSpec":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    .line 1187
    invoke-static {p3, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1189
    .local v0, "childHeightSpec":I
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1191
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, p4, v7

    .line 1192
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    aput v6, p4, v7

    .line 1193
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 1177
    .end local v0    # "childHeightSpec":I
    .end local v1    # "childWidthSpec":I
    .end local v2    # "heightUsed":I
    .end local v3    # "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v5    # "widthUsed":I
    :cond_69
    return-void
.end method

.method private offsetChildrenPrimary(I)V
    .registers 6
    .param p1, "increment"    # I

    .prologue
    .line 1969
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 1970
    .local v0, "childCount":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 1971
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_23

    .line 1972
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1971
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1975
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_17
    if-ge v1, v0, :cond_23

    .line 1976
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1975
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1968
    :cond_23
    return-void
.end method

.method private offsetChildrenSecondary(I)V
    .registers 5
    .param p1, "increment"    # I

    .prologue
    .line 1956
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 1957
    .local v0, "childCount":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_15

    .line 1958
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_22

    .line 1959
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1958
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1962
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_16
    if-ge v1, v0, :cond_22

    .line 1963
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1962
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1955
    :cond_22
    return-void
.end method

.method private prependOneColumnVisibleItems()Z
    .registers 2

    .prologue
    .line 1698
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->prependOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private prependVisibleItems()V
    .registers 4

    .prologue
    .line 1707
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v2

    :goto_b
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(I)V

    .line 1706
    return-void

    .line 1708
    :cond_f
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    goto :goto_b
.end method

.method private processPendingMovement(Z)V
    .registers 7
    .param p1, "forward"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2303
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    :goto_8
    if-eqz v1, :cond_10

    .line 2304
    return-void

    .line 2303
    :cond_b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    goto :goto_8

    .line 2306
    :cond_10
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v1, :cond_37

    .line 2308
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    .line 2309
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 2310
    if-eqz p1, :cond_33

    move v1, v2

    :goto_1e
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v4, v2, :cond_35

    .line 2309
    :goto_22
    invoke-direct {v0, p0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;IZ)V

    .line 2311
    .local v0, "linearSmoothScroller":Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2312
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2313
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2314
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 2302
    .end local v0    # "linearSmoothScroller":Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    :cond_32
    :goto_32
    return-void

    .line 2310
    :cond_33
    const/4 v1, -0x1

    goto :goto_1e

    :cond_35
    move v2, v3

    goto :goto_22

    .line 2317
    :cond_37
    if-eqz p1, :cond_3f

    .line 2318
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->increasePendingMoves()V

    goto :goto_32

    .line 2320
    :cond_3f
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->decreasePendingMoves()V

    goto :goto_32
.end method

.method private processRowSizeSecondary(Z)Z
    .registers 25
    .param p1, "measure"    # Z

    .prologue
    .line 1198
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    move/from16 v20, v0

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_13

    .line 1199
    :cond_10
    const/16 v20, 0x0

    return v20

    .line 1203
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v20, v0

    if-nez v20, :cond_50

    const/4 v15, 0x0

    .line 1204
    :goto_1c
    const/4 v4, 0x0

    .line 1205
    .local v4, "changed":Z
    const/16 v17, -0x1

    .line 1206
    .local v17, "scrapChildWidth":I
    const/16 v16, -0x1

    .line 1208
    .local v16, "scrapChildHeight":I
    const/4 v9, 0x0

    .local v9, "rowIndex":I
    :goto_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_12e

    .line 1209
    if-nez v15, :cond_5b

    const/4 v8, 0x0

    .line 1210
    .local v8, "row":Landroid/support/v4/util/CircularIntArray;
    :goto_2f
    if-nez v8, :cond_5e

    const/4 v13, 0x0

    .line 1211
    .local v13, "rowItemsPairCount":I
    :goto_32
    const/4 v14, -0x1

    .line 1212
    .local v14, "rowSize":I
    const/4 v12, 0x0

    .local v12, "rowItemPairIndex":I
    :goto_34
    if-ge v12, v13, :cond_8f

    .line 1214
    invoke-virtual {v8, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v11

    .line 1215
    .local v11, "rowIndexStart":I
    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v10

    .line 1216
    .local v10, "rowIndexEnd":I
    move v5, v11

    .local v5, "i":I
    :goto_43
    if-gt v5, v10, :cond_8c

    .line 1217
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v19

    .line 1218
    .local v19, "view":Landroid/view/View;
    if-nez v19, :cond_63

    .line 1216
    :cond_4d
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 1203
    .end local v4    # "changed":Z
    .end local v5    # "i":I
    .end local v8    # "row":Landroid/support/v4/util/CircularIntArray;
    .end local v9    # "rowIndex":I
    .end local v10    # "rowIndexEnd":I
    .end local v11    # "rowIndexStart":I
    .end local v12    # "rowItemPairIndex":I
    .end local v13    # "rowItemsPairCount":I
    .end local v14    # "rowSize":I
    .end local v16    # "scrapChildHeight":I
    .end local v17    # "scrapChildWidth":I
    .end local v19    # "view":Landroid/view/View;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;

    move-result-object v15

    .local v15, "rows":[Landroid/support/v4/util/CircularIntArray;
    goto :goto_1c

    .line 1209
    .end local v15    # "rows":[Landroid/support/v4/util/CircularIntArray;
    .restart local v4    # "changed":Z
    .restart local v9    # "rowIndex":I
    .restart local v16    # "scrapChildHeight":I
    .restart local v17    # "scrapChildWidth":I
    :cond_5b
    aget-object v8, v15, v9

    goto :goto_2f

    .line 1210
    .restart local v8    # "row":Landroid/support/v4/util/CircularIntArray;
    :cond_5e
    invoke-virtual {v8}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v13

    .restart local v13    # "rowItemsPairCount":I
    goto :goto_32

    .line 1221
    .restart local v5    # "i":I
    .restart local v10    # "rowIndexEnd":I
    .restart local v11    # "rowIndexStart":I
    .restart local v12    # "rowItemPairIndex":I
    .restart local v14    # "rowSize":I
    .restart local v19    # "view":Landroid/view/View;
    :cond_63
    if-eqz p1, :cond_6c

    .line 1222
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1224
    :cond_6c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    if-nez v20, :cond_83

    .line 1225
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v18

    .line 1227
    .local v18, "secondarySize":I
    :goto_7c
    move/from16 v0, v18

    if-le v0, v14, :cond_4d

    .line 1228
    move/from16 v14, v18

    goto :goto_4d

    .line 1226
    .end local v18    # "secondarySize":I
    :cond_83
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v18

    goto :goto_7c

    .line 1213
    .end local v19    # "view":Landroid/view/View;
    :cond_8c
    add-int/lit8 v12, v12, 0x2

    goto :goto_34

    .line 1233
    .end local v5    # "i":I
    .end local v10    # "rowIndexEnd":I
    .end local v11    # "rowIndexStart":I
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    .line 1234
    .local v6, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFixedSize()Z

    move-result v20

    if-nez v20, :cond_fd

    if-eqz p1, :cond_fd

    if-gez v14, :cond_fd

    if-lez v6, :cond_fd

    .line 1235
    if-gez v17, :cond_f3

    if-gez v16, :cond_f3

    .line 1237
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_119

    .line 1238
    const/4 v7, 0x0

    .line 1245
    .local v7, "position":I
    :goto_be
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1246
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v22, v0

    .line 1244
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureScrapChild(III[I)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v17, v20, v21

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v16, v20, v21

    .line 1253
    .end local v7    # "position":I
    :cond_f3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    if-nez v20, :cond_12b

    move/from16 v14, v16

    .line 1255
    :cond_fd
    :goto_fd
    if-gez v14, :cond_100

    .line 1256
    const/4 v14, 0x0

    .line 1258
    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move/from16 v0, v20

    if-eq v0, v14, :cond_115

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    aput v14, v20, v9

    .line 1262
    const/4 v4, 0x1

    .line 1208
    :cond_115
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_22

    .line 1239
    :cond_119
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v0, v6, :cond_126

    .line 1240
    add-int/lit8 v7, v6, -0x1

    .restart local v7    # "position":I
    goto :goto_be

    .line 1242
    .end local v7    # "position":I
    :cond_126
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .restart local v7    # "position":I
    goto :goto_be

    .line 1253
    .end local v7    # "position":I
    :cond_12b
    move/from16 v14, v17

    goto :goto_fd

    .line 1267
    .end local v6    # "itemCount":I
    .end local v8    # "row":Landroid/support/v4/util/CircularIntArray;
    .end local v12    # "rowItemPairIndex":I
    .end local v13    # "rowItemsPairCount":I
    .end local v14    # "rowSize":I
    :cond_12e
    return v4
.end method

.method private removeInvisibleViewsAtEnd()V
    .registers 5

    .prologue
    .line 1680
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_12

    .line 1681
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1682
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    .line 1681
    :goto_f
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtEnd(II)V

    .line 1679
    :cond_12
    return-void

    .line 1682
    :cond_13
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v3

    goto :goto_f
.end method

.method private removeInvisibleViewsAtFront()V
    .registers 5

    .prologue
    .line 1687
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_14

    .line 1688
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1689
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v3

    .line 1688
    :goto_11
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtFront(II)V

    .line 1686
    :cond_14
    return-void

    .line 1689
    :cond_15
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    goto :goto_11
.end method

.method private saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1057
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_11

    .line 1058
    :cond_8
    const-string/jumbo v0, "GridLayoutManager"

    const-string/jumbo v1, "Recycler information was not released, bug!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_11
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 1061
    iput-object p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 1056
    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .registers 10
    .param p1, "da"    # I

    .prologue
    const/4 v6, 0x0

    .line 2022
    const/4 v1, 0x0

    .local v1, "isMaxUnknown":Z
    const/4 v2, 0x0

    .line 2023
    .local v2, "isMinUnknown":Z
    const/4 v4, 0x0

    .local v4, "minScroll":I
    const/4 v3, 0x0

    .line 2024
    .local v3, "maxScroll":I
    if-lez p1, :cond_29

    .line 2025
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    .line 2026
    .local v1, "isMaxUnknown":Z
    if-nez v1, :cond_26

    .line 2027
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMaxScroll()I

    move-result v3

    .line 2028
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v7, p1

    if-le v7, v3, :cond_26

    .line 2029
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int p1, v3, v7

    .line 2041
    .end local v1    # "isMaxUnknown":Z
    .end local v2    # "isMinUnknown":Z
    :cond_26
    :goto_26
    if-nez p1, :cond_4b

    .line 2043
    return v6

    .line 2032
    .local v1, "isMaxUnknown":Z
    .restart local v2    # "isMinUnknown":Z
    :cond_29
    if-gez p1, :cond_26

    .line 2033
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    .line 2034
    .local v2, "isMinUnknown":Z
    if-nez v2, :cond_26

    .line 2035
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMinScroll()I

    move-result v4

    .line 2036
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v7, p1

    if-ge v7, v4, :cond_26

    .line 2037
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int p1, v4, v7

    goto :goto_26

    .line 2045
    .end local v1    # "isMaxUnknown":Z
    .end local v2    # "isMinUnknown":Z
    :cond_4b
    neg-int v7, p1

    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenPrimary(I)V

    .line 2046
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    .line 2047
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v7, :cond_59

    .line 2049
    return p1

    .line 2052
    :cond_59
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2055
    .local v0, "childCount":I
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v7, :cond_8d

    if-lez p1, :cond_8f

    .line 2056
    :cond_63
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2060
    :goto_66
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    if-le v7, v0, :cond_93

    const/4 v5, 0x1

    .line 2061
    .local v5, "updated":Z
    :goto_6d
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2064
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v7, :cond_95

    if-lez p1, :cond_97

    .line 2065
    :cond_77
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2070
    :goto_7a
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    if-ge v7, v0, :cond_81

    const/4 v6, 0x1

    :cond_81
    or-int/2addr v5, v6

    .line 2071
    .local v5, "updated":Z
    if-eqz v5, :cond_87

    .line 2072
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2075
    :cond_87
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2077
    return p1

    .line 2055
    .end local v5    # "updated":Z
    :cond_8d
    if-ltz p1, :cond_63

    .line 2058
    :cond_8f
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    goto :goto_66

    .line 2060
    :cond_93
    const/4 v5, 0x0

    .local v5, "updated":Z
    goto :goto_6d

    .line 2064
    :cond_95
    if-ltz p1, :cond_77

    .line 2067
    :cond_97
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    goto :goto_7a
.end method

.method private scrollDirectionSecondary(I)I
    .registers 3
    .param p1, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 2082
    if-nez p1, :cond_4

    .line 2083
    return v0

    .line 2085
    :cond_4
    neg-int v0, p1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenSecondary(I)V

    .line 2086
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2087
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2088
    return p1
.end method

.method private scrollGrid(IIZ)V
    .registers 7
    .param p1, "scrollPrimary"    # I
    .param p2, "scrollSecondary"    # I
    .param p3, "smooth"    # Z

    .prologue
    .line 2655
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v2, :cond_b

    .line 2656
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2657
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    .line 2654
    :goto_a
    return-void

    .line 2661
    :cond_b
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_19

    .line 2662
    move v0, p1

    .line 2663
    .local v0, "scrollX":I
    move v1, p2

    .line 2668
    .local v1, "scrollY":I
    :goto_11
    if-eqz p3, :cond_1c

    .line 2669
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto :goto_a

    .line 2665
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :cond_19
    move v0, p2

    .line 2666
    .restart local v0    # "scrollX":I
    move v1, p1

    .restart local v1    # "scrollY":I
    goto :goto_11

    .line 2671
    :cond_1c
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->scrollBy(II)V

    goto :goto_a
.end method

.method private scrollToFocusViewInLayout(ZZ)V
    .registers 8
    .param p1, "hadFocus"    # Z
    .param p2, "alignToView"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1796
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1797
    .local v1, "focusView":Landroid/view/View;
    if-eqz v1, :cond_e

    if-eqz p2, :cond_e

    .line 1798
    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 1800
    :cond_e
    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1802
    :cond_18
    if-nez p1, :cond_22

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1795
    :cond_22
    :goto_22
    return-void

    .line 1801
    :cond_23
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    .line 1803
    :cond_27
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1804
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_22

    .line 1806
    :cond_35
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_3a
    if-ge v2, v0, :cond_4d

    .line 1807
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1808
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1809
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    .line 1814
    :cond_4d
    if-eqz p2, :cond_22

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1815
    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_22

    .line 1806
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "smooth"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2516
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v0

    .line 2517
    .local v0, "newFocusPosition":I
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 2518
    .local v1, "newSubFocusPosition":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v2, :cond_11

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_2b

    .line 2519
    :cond_11
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2520
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2521
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2522
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_1e

    .line 2523
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 2525
    :cond_1e
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2526
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2529
    :cond_2b
    if-nez p1, :cond_2e

    .line 2530
    return-void

    .line 2532
    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2535
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2537
    :cond_3f
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-nez v2, :cond_46

    if-eqz p3, :cond_46

    .line 2538
    return-void

    .line 2540
    :cond_46
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2541
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollGrid(IIZ)V

    .line 2515
    :cond_5a
    return-void
.end method

.method private updateChildAlignments(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1643
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1644
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-nez v1, :cond_23

    .line 1646
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    .line 1647
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    .line 1642
    :goto_22
    return-void

    .line 1650
    :cond_23
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->calculateItemAlignments(ILandroid/view/View;)V

    .line 1651
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_38

    .line 1652
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_22

    .line 1654
    :cond_38
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    goto :goto_22
.end method

.method private updateRowSecondarySizeRefresh()V
    .registers 2

    .prologue
    .line 1274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    .line 1275
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    if-eqz v0, :cond_e

    .line 1277
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    .line 1273
    :cond_e
    return-void
.end method

.method private updateScrollController()V
    .registers 6

    .prologue
    .line 2184
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_6b

    .line 2185
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    sub-int v0, v2, v3

    .line 2186
    .local v0, "paddingPrimaryDiff":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    sub-int v1, v2, v3

    .line 2191
    .local v1, "paddingSecondaryDiff":I
    :goto_20
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    .line 2192
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2194
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2195
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2196
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2197
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2198
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    .line 2177
    return-void

    .line 2188
    .end local v0    # "paddingPrimaryDiff":I
    .end local v1    # "paddingSecondaryDiff":I
    :cond_6b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    sub-int v0, v2, v3

    .line 2189
    .restart local v0    # "paddingPrimaryDiff":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1    # "paddingSecondaryDiff":I
    goto :goto_20
.end method

.method private updateScrollSecondAxis()V
    .registers 3

    .prologue
    .line 2156
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinEdge(I)V

    .line 2157
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxEdge(I)V

    .line 2155
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 936
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v2, v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method canScrollTo(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 2981
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public canScrollVertically()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 943
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_9

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method dispatchChildSelected()V
    .registers 14

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 891
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 896
    :cond_e
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v7, :cond_42

    move-object v2, v6

    .line 897
    .local v2, "view":Landroid/view/View;
    :goto_13
    if-eqz v2, :cond_4e

    .line 898
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 899
    .local v12, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_2b

    .line 900
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 901
    if-nez v12, :cond_49

    move-wide v4, v8

    .line 900
    :goto_28
    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 903
    :cond_2b
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v0, v12, v1, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 921
    .end local v12    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_34
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 890
    :cond_40
    :goto_40
    return-void

    .line 892
    .end local v2    # "view":Landroid/view/View;
    :cond_41
    return-void

    .line 896
    :cond_42
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    goto :goto_13

    .line 901
    .restart local v2    # "view":Landroid/view/View;
    .restart local v12    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_49
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    goto :goto_28

    .line 905
    .end local v12    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4e
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_59

    .line 906
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 908
    :cond_59
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v6, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    goto :goto_34

    .line 922
    :cond_60
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v10

    .line 923
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_65
    if-ge v11, v10, :cond_40

    .line 924
    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 925
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    goto :goto_40

    .line 923
    :cond_75
    add-int/lit8 v11, v11, 0x1

    goto :goto_65
.end method

.method fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .registers 7
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .prologue
    .line 836
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    .line 837
    return-void

    .line 839
    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1d

    .line 840
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 839
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 835
    :cond_1d
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 948
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 954
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 959
    instance-of v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_c

    .line 960
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)V

    return-object v0

    .line 961
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_18

    .line 962
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 963
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_24

    .line 964
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 966
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_24
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildDrawingOrder(Landroid/support/v7/widget/RecyclerView;II)I
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "childCount"    # I
    .param p3, "i"    # I

    .prologue
    .line 3086
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 3087
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_9

    .line 3088
    return p3

    .line 3090
    :cond_9
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3093
    .local v0, "focusIndex":I
    if-ge p3, v0, :cond_10

    .line 3094
    return p3

    .line 3095
    :cond_10
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_1a

    .line 3096
    add-int v2, v0, p2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p3

    return v2

    .line 3098
    :cond_1a
    return v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 3235
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_10

    .line 3236
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    .line 3238
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1008
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    .line 1008
    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1014
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1015
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1016
    .local v0, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 1017
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 1018
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 1019
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 1013
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 992
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1173
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1167
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1168
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1002
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    .line 1003
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 1002
    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 997
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 1440
    .local p2, "facetClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    const/4 v0, 0x0

    .line 1441
    .local v0, "facet":Ljava/lang/Object;, "TE;"
    instance-of v2, p1, Landroid/support/v17/leanback/widget/FacetProvider;

    if-eqz v2, :cond_c

    move-object v2, p1

    .line 1442
    check-cast v2, Landroid/support/v17/leanback/widget/FacetProvider;

    invoke-interface {v2, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1444
    .end local v0    # "facet":Ljava/lang/Object;, "TE;"
    :cond_c
    if-nez v0, :cond_22

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v2, :cond_22

    .line 1445
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/FacetProviderAdapter;->getFacetProvider(I)Landroid/support/v17/leanback/widget/FacetProvider;

    move-result-object v1

    .line 1446
    .local v1, "p":Landroid/support/v17/leanback/widget/FacetProvider;
    if-eqz v1, :cond_22

    .line 1447
    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1450
    .end local v1    # "p":Landroid/support/v17/leanback/widget/FacetProvider;
    :cond_22
    return-object v0
.end method

.method final getOpticalLeft(Landroid/view/View;)I
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 975
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method final getOpticalRight(Landroid/view/View;)I
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 3226
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_f

    .line 3227
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    .line 3229
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method getRowStartSecondary(I)I
    .registers 6
    .param p1, "rowIndex"    # I

    .prologue
    .line 1146
    const/4 v1, 0x0

    .line 1149
    .local v1, "start":I
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v2, :cond_16

    .line 1150
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-le v0, p1, :cond_24

    .line 1151
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1150
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1154
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_17
    if-ge v0, p1, :cond_24

    .line 1155
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1154
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1158
    :cond_24
    return v1
.end method

.method getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "deltas"    # [I

    .prologue
    .line 2546
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_10

    .line 2549
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    return v0

    .line 2552
    :pswitch_a
    invoke-direct {p0, p1, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getNoneAlignedPosition(Landroid/view/View;[I)Z

    move-result v0

    return v0

    .line 2546
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public getSelection()I
    .registers 2

    .prologue
    .line 2231
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 862
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 863
    :cond_5
    return v7

    .line 865
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 866
    .local v4, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    .line 867
    .local v1, "facet":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    if-eqz v1, :cond_3a

    .line 868
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    .line 869
    .local v0, "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_3a

    .line 870
    :goto_1a
    if-eq p2, p1, :cond_3a

    .line 871
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    .line 872
    .local v3, "id":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_33

    .line 873
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_24
    array-length v5, v0

    if-ge v2, v5, :cond_33

    .line 874
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentFocusViewId()I

    move-result v5

    if-ne v5, v3, :cond_30

    .line 875
    return v2

    .line 873
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 879
    .end local v2    # "i":I
    :cond_33
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .end local p2    # "childView":Landroid/view/View;
    check-cast p2, Landroid/view/View;

    .restart local p2    # "childView":Landroid/view/View;
    goto :goto_1a

    .line 883
    .end local v0    # "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    .end local v3    # "id":I
    :cond_3a
    return v7
.end method

.method getTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 971
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewMax(Landroid/view/View;)I
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1027
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewMin(Landroid/view/View;)I
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewPrimarySize(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1031
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1032
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_10

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_f
.end method

.method gridOnRequestFocusInDescendants(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2986
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_10

    .line 2989
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 2993
    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 2986
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method hasCreatedFirstItem()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2976
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    .line 2977
    .local v0, "count":I
    if-eqz v0, :cond_10

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_11

    :cond_10
    :goto_10
    return v1

    :cond_11
    move v1, v2

    goto :goto_10
.end method

.method hasCreatedLastItem()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2971
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    .line 2972
    .local v0, "count":I
    if-eqz v0, :cond_12

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_13

    :cond_12
    :goto_12
    return v1

    :cond_13
    move v1, v2

    goto :goto_12
.end method

.method protected hasDoneFirstLayout()Z
    .registers 2

    .prologue
    .line 795
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hasOnChildViewHolderSelectedListener()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 830
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 831
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    .line 830
    :cond_e
    return v0
.end method

.method layoutChild(ILandroid/view/View;III)V
    .registers 18
    .param p1, "rowIndex"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "startSecondary"    # I

    .prologue
    .line 1599
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_69

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v8

    .line 1601
    .local v8, "sizeSecondary":I
    :goto_8
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v0, :cond_12

    .line 1602
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1604
    :cond_12
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v9, v0, 0x70

    .line 1605
    .local v9, "verticalGravity":I
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v0, :cond_6e

    .line 1606
    :cond_1e
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 1608
    .local v6, "horizontalGravity":I
    :goto_29
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_73

    const/16 v0, 0x30

    if-ne v9, v0, :cond_73

    .line 1619
    :cond_31
    :goto_31
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_ae

    .line 1620
    move v2, p3

    .line 1621
    .local v2, "left":I
    move/from16 v3, p5

    .line 1622
    .local v3, "top":I
    move/from16 v4, p4

    .line 1623
    .local v4, "right":I
    add-int v5, p5, v8

    .line 1630
    .local v5, "bottom":I
    :goto_3c
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .local v7, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    move-object v0, p0

    move-object v1, p2

    .line 1631
    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1635
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-super {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1636
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    sget-object v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    .line 1637
    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v4

    sget-object v11, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v5

    .line 1636
    invoke-virtual {v7, v0, v1, v10, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setOpticalInsets(IIII)V

    .line 1638
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    .line 1597
    return-void

    .line 1600
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    .end local v6    # "horizontalGravity":I
    .end local v7    # "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v8    # "sizeSecondary":I
    .end local v9    # "verticalGravity":I
    :cond_69
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v8

    .restart local v8    # "sizeSecondary":I
    goto :goto_8

    .line 1607
    .restart local v9    # "verticalGravity":I
    :cond_6e
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v6, v0, 0x7

    .restart local v6    # "horizontalGravity":I
    goto :goto_29

    .line 1609
    :cond_73
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7b

    const/4 v0, 0x3

    if-eq v6, v0, :cond_31

    .line 1611
    :cond_7b
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_8b

    const/16 v0, 0x50

    if-ne v9, v0, :cond_8b

    .line 1613
    :cond_83
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v8

    add-int p5, p5, v0

    .line 1612
    goto :goto_31

    :cond_8b
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_93

    const/4 v0, 0x5

    if-eq v6, v0, :cond_83

    .line 1614
    :cond_93
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_a5

    const/16 v0, 0x10

    if-ne v9, v0, :cond_a5

    .line 1616
    :goto_9b
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    add-int p5, p5, v0

    goto :goto_31

    .line 1615
    :cond_a5
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    const/4 v0, 0x1

    if-ne v6, v0, :cond_31

    goto :goto_9b

    .line 1625
    :cond_ae
    move v3, p3

    .line 1626
    .restart local v3    # "top":I
    move/from16 v2, p5

    .line 1627
    .restart local v2    # "left":I
    move/from16 v5, p4

    .line 1628
    .restart local v5    # "bottom":I
    add-int v4, p5, v8

    .restart local v4    # "right":I
    goto :goto_3c
.end method

.method measureChild(Landroid/view/View;)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 1407
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1408
    .local v2, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    sget-object v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1409
    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    .line 1410
    .local v5, "widthUsed":I
    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v1, v6, v7

    .line 1412
    .local v1, "heightUsed":I
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_4d

    .line 1413
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1417
    .local v3, "secondarySpec":I
    :goto_35
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_56

    .line 1419
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    .line 1418
    invoke-static {v6, v5, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1420
    .local v4, "widthSpec":I
    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v1, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1426
    .local v0, "heightSpec":I
    :goto_49
    invoke-virtual {p1, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1405
    return-void

    .line 1414
    .end local v0    # "heightSpec":I
    .end local v3    # "secondarySpec":I
    .end local v4    # "widthSpec":I
    :cond_4d
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "secondarySpec":I
    goto :goto_35

    .line 1423
    :cond_56
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    .line 1422
    invoke-static {v6, v1, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1424
    .restart local v0    # "heightSpec":I
    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .restart local v4    # "widthSpec":I
    goto :goto_49
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 5
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 3106
    if-eqz p1, :cond_11

    .line 3107
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 3108
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3109
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3110
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 3112
    :cond_11
    instance-of v0, p2, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v0, :cond_1e

    move-object v0, p2

    .line 3113
    check-cast v0, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    .line 3117
    :goto_1a
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 3104
    return-void

    .line 3115
    :cond_1e
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    goto :goto_1a
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 28
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 2834
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 2835
    const/16 v21, 0x1

    return v21

    .line 2844
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v21

    if-eqz v21, :cond_1ae

    .line 2845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 2847
    const/16 v21, 0x1

    return v21

    .line 2849
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v17

    .line 2850
    .local v17, "movement":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 2851
    .local v7, "focused":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v8

    .line 2852
    .local v8, "focusedIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByIndex(I)I

    move-result v9

    .line 2854
    .local v9, "focusedPos":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_4b

    .line 2855
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2857
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    if-eqz v21, :cond_59

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v21

    if-nez v21, :cond_5c

    .line 2859
    :cond_59
    const/16 v21, 0x1

    return v21

    .line 2861
    :cond_5c
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_6c

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_81

    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_81

    .line 2863
    const/16 v21, 0x1

    return v21

    .line 2866
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f8

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v9, v0, :cond_f8

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v21

    move-object/from16 v0, v21

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    .line 2868
    .local v10, "focusedRow":I
    :goto_9f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2869
    .local v6, "focusableCount":I
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b3

    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_fa

    :cond_b3
    const/4 v12, 0x1

    .line 2870
    .local v12, "inc":I
    :goto_b4
    if-lez v12, :cond_fc

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v21

    add-int/lit8 v15, v21, -0x1

    .line 2872
    .local v15, "loop_end":I
    :goto_bc
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_105

    .line 2873
    if-lez v12, :cond_fe

    const/16 v16, 0x0

    .line 2877
    .local v16, "loop_start":I
    :goto_c6
    move/from16 v11, v16

    .local v11, "i":I
    :goto_c8
    if-lez v12, :cond_108

    if-gt v11, v15, :cond_f5

    .line 2878
    :goto_cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2879
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_121

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v21

    if-eqz v21, :cond_121

    .line 2884
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_10b

    .line 2885
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2886
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_121

    .line 2967
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "focused":Landroid/view/View;
    .end local v8    # "focusedIndex":I
    .end local v9    # "focusedPos":I
    .end local v10    # "focusedRow":I
    .end local v11    # "i":I
    .end local v12    # "inc":I
    .end local v15    # "loop_end":I
    .end local v16    # "loop_start":I
    .end local v17    # "movement":I
    :cond_f5
    :goto_f5
    const/16 v21, 0x1

    return v21

    .line 2867
    .end local v6    # "focusableCount":I
    .restart local v7    # "focused":Landroid/view/View;
    .restart local v8    # "focusedIndex":I
    .restart local v9    # "focusedPos":I
    .restart local v17    # "movement":I
    :cond_f8
    const/4 v10, -0x1

    .restart local v10    # "focusedRow":I
    goto :goto_9f

    .line 2869
    .restart local v6    # "focusableCount":I
    :cond_fa
    const/4 v12, -0x1

    goto :goto_b4

    .line 2870
    .restart local v12    # "inc":I
    :cond_fc
    const/4 v15, 0x0

    .restart local v15    # "loop_end":I
    goto :goto_bc

    .line 2873
    :cond_fe
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v21

    add-int/lit8 v16, v21, -0x1

    .restart local v16    # "loop_start":I
    goto :goto_c6

    .line 2875
    .end local v16    # "loop_start":I
    :cond_105
    add-int v16, v8, v12

    .restart local v16    # "loop_start":I
    goto :goto_c6

    .line 2877
    .restart local v11    # "i":I
    :cond_108
    if-lt v11, v15, :cond_f5

    goto :goto_cc

    .line 2891
    .restart local v4    # "child":Landroid/view/View;
    :cond_10b
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByIndex(I)I

    move-result v18

    .line 2892
    .local v18, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v14

    .line 2893
    .local v14, "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    if-nez v14, :cond_123

    .line 2877
    .end local v14    # "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    .end local v18    # "position":I
    :cond_121
    :goto_121
    add-int/2addr v11, v12

    goto :goto_c8

    .line 2896
    .restart local v14    # "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    .restart local v18    # "position":I
    :cond_123
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_149

    .line 2898
    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v10, :cond_121

    move/from16 v0, v18

    if-le v0, v9, :cond_121

    .line 2899
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2900
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_121

    goto :goto_f5

    .line 2904
    :cond_149
    if-nez v17, :cond_169

    .line 2906
    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v10, :cond_121

    move/from16 v0, v18

    if-ge v0, v9, :cond_121

    .line 2907
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2908
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_121

    goto :goto_f5

    .line 2912
    :cond_169
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_18b

    .line 2914
    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v10, :cond_121

    .line 2916
    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v0, v10, :cond_f5

    .line 2919
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_121

    .line 2920
    :cond_18b
    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_121

    .line 2922
    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v10, :cond_121

    .line 2924
    iget v0, v14, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v0, v10, :cond_f5

    .line 2927
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_121

    .line 2931
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "focusableCount":I
    .end local v7    # "focused":Landroid/view/View;
    .end local v8    # "focusedIndex":I
    .end local v9    # "focusedPos":I
    .end local v10    # "focusedRow":I
    .end local v11    # "i":I
    .end local v12    # "inc":I
    .end local v14    # "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    .end local v15    # "loop_end":I
    .end local v16    # "loop_start":I
    .end local v17    # "movement":I
    .end local v18    # "position":I
    :cond_1ae
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2932
    .restart local v6    # "focusableCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    move/from16 v21, v0

    if-eqz v21, :cond_234

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result v13

    .line 2935
    .local v13, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v21

    add-int v19, v21, v13

    .line 2936
    .local v19, "right":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    .local v5, "count":I
    :goto_1dd
    if-ge v11, v5, :cond_20d

    .line 2937
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2938
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_20a

    .line 2939
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    if-lt v0, v13, :cond_20a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-gt v0, v1, :cond_20a

    .line 2940
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2936
    :cond_20a
    add-int/lit8 v11, v11, 0x1

    goto :goto_1dd

    .line 2945
    .end local v4    # "child":Landroid/view/View;
    :cond_20d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v6, :cond_24f

    .line 2946
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    :goto_21a
    if-ge v11, v5, :cond_24f

    .line 2947
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2948
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_231

    .line 2949
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2946
    :cond_231
    add-int/lit8 v11, v11, 0x1

    goto :goto_21a

    .line 2954
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "count":I
    .end local v11    # "i":I
    .end local v13    # "left":I
    .end local v19    # "right":I
    :cond_234
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v20

    .line 2955
    .local v20, "view":Landroid/view/View;
    if-eqz v20, :cond_24f

    .line 2956
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2960
    .end local v20    # "view":Landroid/view/View;
    :cond_24f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v6, :cond_25a

    .line 2961
    const/16 v21, 0x1

    return v21

    .line 2963
    :cond_25a
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->isFocusable()Z

    move-result v21

    if-eqz v21, :cond_f5

    .line 2964
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f5
.end method

.method onChildRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3203
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3204
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 3205
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOffscreenView(Landroid/view/View;I)V

    .line 3202
    :cond_e
    return-void
.end method

.method onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2719
    if-eqz p1, :cond_a

    .line 2721
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2722
    .local v0, "i":I
    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2723
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_b

    .line 2718
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_a
    :goto_a
    return-void

    .line 2726
    .restart local v0    # "i":I
    .restart local v1    # "view":Landroid/view/View;
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2727
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a

    .line 2721
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v2, 0x1

    .line 3340
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3341
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3345
    :cond_e
    :goto_e
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 3351
    :cond_18
    :goto_18
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 3352
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    .line 3353
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    .line 3354
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    .line 3350
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 3355
    .local v0, "collectionInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 3356
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 3339
    return-void

    .line 3342
    .end local v0    # "collectionInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    :cond_33
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3343
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    goto :goto_e

    .line 3346
    :cond_3c
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3347
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    goto :goto_18
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 16
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 3244
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 3245
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_31

    instance-of v1, v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v1, :cond_31

    move-object v8, v9

    .line 3249
    check-cast v8, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 3250
    .local v8, "glp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v10

    .line 3251
    .local v10, "position":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1, v10}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v0

    .line 3252
    .local v0, "rowIndex":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    div-int v2, v10, v1

    .line 3253
    .local v2, "guessSpanIndex":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_35

    .line 3255
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3254
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 3243
    :goto_30
    return-void

    .line 3246
    .end local v0    # "rowIndex":I
    .end local v2    # "guessSpanIndex":I
    .end local v8    # "glp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v10    # "position":I
    :cond_31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3247
    return-void

    .line 3258
    .restart local v0    # "rowIndex":I
    .restart local v2    # "guessSpanIndex":I
    .restart local v8    # "glp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .restart local v10    # "position":I
    :cond_35
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v0

    .line 3257
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_30
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 13
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2744
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v6, :cond_8

    .line 2745
    return-object p1

    .line 2748
    :cond_8
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    .line 2749
    .local v1, "ff":Landroid/view/FocusFinder;
    const/4 v4, 0x0

    .line 2750
    .local v4, "result":Landroid/view/View;
    if-eq p2, v9, :cond_11

    if-ne p2, v7, :cond_49

    .line 2753
    :cond_11
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 2755
    if-ne p2, v9, :cond_3f

    const/16 v0, 0x82

    .line 2756
    .local v0, "absDir":I
    :goto_1b
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2758
    .end local v0    # "absDir":I
    .end local v4    # "result":Landroid/view/View;
    :cond_21
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2759
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getLayoutDirection()I

    move-result v6

    if-ne v6, v7, :cond_42

    const/4 v5, 0x1

    .line 2760
    .local v5, "rtl":Z
    :goto_2e
    if-ne p2, v9, :cond_44

    move v6, v7

    :goto_31
    xor-int/2addr v6, v5

    if-eqz v6, :cond_46

    .line 2761
    const/16 v0, 0x42

    .line 2762
    .restart local v0    # "absDir":I
    :goto_36
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2767
    .end local v0    # "absDir":I
    .end local v5    # "rtl":Z
    :cond_3c
    :goto_3c
    if-eqz v4, :cond_50

    .line 2768
    return-object v4

    .line 2755
    .restart local v4    # "result":Landroid/view/View;
    :cond_3f
    const/16 v0, 0x21

    .restart local v0    # "absDir":I
    goto :goto_1b

    .line 2759
    .end local v0    # "absDir":I
    .end local v4    # "result":Landroid/view/View;
    :cond_42
    const/4 v5, 0x0

    .restart local v5    # "rtl":Z
    goto :goto_2e

    :cond_44
    move v6, v8

    .line 2760
    goto :goto_31

    .line 2761
    :cond_46
    const/16 v0, 0x11

    .restart local v0    # "absDir":I
    goto :goto_36

    .line 2765
    .end local v0    # "absDir":I
    .end local v5    # "rtl":Z
    .restart local v4    # "result":Landroid/view/View;
    :cond_49
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .local v4, "result":Landroid/view/View;
    goto :goto_3c

    .line 2772
    .end local v4    # "result":Landroid/view/View;
    :cond_50
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v3

    .line 2773
    .local v3, "movement":I
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_72

    const/4 v2, 0x1

    .line 2774
    .local v2, "isScroll":Z
    :goto_5d
    if-ne v3, v7, :cond_7b

    .line 2775
    if-nez v2, :cond_74

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    if-eqz v6, :cond_74

    .line 2778
    :goto_65
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_6f

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 2799
    :cond_6f
    :goto_6f
    if-eqz v4, :cond_a9

    .line 2800
    return-object v4

    .line 2773
    .end local v2    # "isScroll":Z
    :cond_72
    const/4 v2, 0x0

    .restart local v2    # "isScroll":Z
    goto :goto_5d

    .line 2776
    :cond_74
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_65

    .line 2779
    .end local v4    # "result":Landroid/view/View;
    :cond_76
    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 2780
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_6f

    .line 2782
    .end local v4    # "result":Landroid/view/View;
    :cond_7b
    if-nez v3, :cond_94

    .line 2783
    if-nez v2, :cond_92

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    if-eqz v6, :cond_92

    .line 2786
    :goto_83
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_6f

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v6

    if-nez v6, :cond_6f

    .line 2787
    invoke-direct {p0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 2788
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_6f

    .line 2784
    .end local v4    # "result":Landroid/view/View;
    :cond_92
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_83

    .line 2790
    .end local v4    # "result":Landroid/view/View;
    :cond_94
    const/4 v6, 0x3

    if-ne v3, v6, :cond_9f

    .line 2791
    if-nez v2, :cond_9d

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    if-nez v6, :cond_6f

    .line 2792
    :cond_9d
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_6f

    .line 2794
    .end local v4    # "result":Landroid/view/View;
    :cond_9f
    if-ne v3, v9, :cond_6f

    .line 2795
    if-nez v2, :cond_a7

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    if-nez v6, :cond_6f

    .line 2796
    :cond_a7
    move-object v4, p1

    .restart local v4    # "result":Landroid/view/View;
    goto :goto_6f

    .line 2804
    .end local v4    # "result":Landroid/view/View;
    :cond_a9
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2805
    .restart local v4    # "result":Landroid/view/View;
    if-eqz v4, :cond_b6

    .line 2806
    return-object v4

    .line 2808
    :cond_b6
    if-eqz p1, :cond_b9

    .end local p1    # "focused":Landroid/view/View;
    :goto_b8
    return-object p1

    .restart local p1    # "focused":Landroid/view/View;
    :cond_b9
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    goto :goto_b8
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 2329
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_24

    .line 2330
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_24

    .line 2331
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    .line 2332
    .local v0, "pos":I
    if-gt p2, v0, :cond_24

    .line 2333
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2336
    .end local v0    # "pos":I
    :cond_24
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2326
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 2342
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2343
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2340
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .registers 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 2370
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1e

    .line 2371
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    .line 2372
    .local v0, "pos":I
    if-gt p2, v0, :cond_24

    add-int v1, p2, p4

    if-ge v0, v1, :cond_24

    .line 2374
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2383
    .end local v0    # "pos":I
    :cond_1e
    :goto_1e
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2367
    return-void

    .line 2375
    .restart local v0    # "pos":I
    :cond_24
    if-ge p2, v0, :cond_30

    sub-int v1, v0, p4

    if-le p3, v1, :cond_30

    .line 2377
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_1e

    .line 2378
    :cond_30
    if-le p2, v0, :cond_1e

    if-ge p3, v0, :cond_1e

    .line 2380
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_1e
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 2350
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_25

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_25

    .line 2351
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    if-eq v1, v3, :cond_25

    .line 2352
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    .line 2353
    .local v0, "pos":I
    if-gt p2, v0, :cond_25

    .line 2354
    add-int v1, p2, p3

    if-le v1, v0, :cond_2b

    .line 2356
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2362
    .end local v0    # "pos":I
    :cond_25
    :goto_25
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2347
    return-void

    .line 2358
    .restart local v0    # "pos":I
    :cond_2b
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_25
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 2390
    move v1, p2

    .local v1, "i":I
    add-int v0, p2, p3

    .local v0, "end":I
    :goto_3
    if-ge v1, v0, :cond_d

    .line 2391
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->remove(I)V

    .line 2390
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2387
    :cond_d
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 15
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1833
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-nez v10, :cond_5

    .line 1835
    return-void

    .line 1837
    :cond_5
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    .line 1838
    .local v3, "itemCount":I
    if-gez v3, :cond_c

    .line 1839
    return-void

    .line 1842
    :cond_c
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-nez v10, :cond_17

    .line 1843
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 1844
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1845
    return-void

    .line 1847
    :cond_17
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    .line 1849
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v10

    if-eqz v10, :cond_25

    .line 1855
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    .line 1857
    :cond_25
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v10

    if-nez v10, :cond_cd

    .line 1858
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez v10, :cond_ca

    const/4 v9, 0x1

    .line 1859
    .local v9, "scrollToFocus":Z
    :goto_30
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_45

    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v11, -0x80000000

    if-eq v10, v11, :cond_45

    .line 1860
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v11, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v10, v11

    iput v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1861
    const/4 v10, 0x0

    iput v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1863
    :cond_45
    const/4 v10, 0x0

    iput v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 1864
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1866
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 1867
    .local v7, "savedFocusView":Landroid/view/View;
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1868
    .local v6, "savedFocusPos":I
    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1869
    .local v8, "savedSubFocusPos":I
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    .line 1875
    .local v2, "hadFocus":Z
    const/4 v0, 0x0

    .local v0, "delta":I
    const/4 v1, 0x0

    .line 1876
    .local v1, "deltaSecondary":I
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_84

    if-eqz v9, :cond_84

    .line 1877
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v10

    if-eqz v10, :cond_84

    .line 1879
    if-eqz v7, :cond_84

    .line 1880
    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v10

    sget-object v11, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, v7, v10, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v10

    if-eqz v10, :cond_84

    .line 1881
    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v11, 0x0

    aget v0, v10, v11

    .line 1882
    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v11, 0x1

    aget v1, v10, v11

    .line 1887
    :cond_84
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutInit()Z

    move-result v10

    iput-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v10, :cond_d0

    .line 1888
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fastRelayout()V

    .line 1890
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_97

    .line 1891
    invoke-direct {p0, v2, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToFocusViewInLayout(ZZ)V

    .line 1918
    :cond_97
    if-eqz v9, :cond_a1

    .line 1919
    neg-int v10, v0

    invoke-direct {p0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 1920
    neg-int v10, v1

    invoke-direct {p0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    .line 1922
    :cond_a1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 1923
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 1924
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 1925
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 1934
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    if-eqz v10, :cond_118

    .line 1935
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    .line 1941
    :goto_b4
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v10, :cond_124

    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v10, v6, :cond_c0

    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v10, v8, :cond_11c

    .line 1943
    :cond_c0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 1950
    :cond_c3
    :goto_c3
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    .line 1951
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 1823
    return-void

    .line 1858
    .end local v0    # "delta":I
    .end local v1    # "deltaSecondary":I
    .end local v2    # "hadFocus":Z
    .end local v6    # "savedFocusPos":I
    .end local v7    # "savedFocusView":Landroid/view/View;
    .end local v8    # "savedSubFocusPos":I
    .end local v9    # "scrollToFocus":Z
    :cond_ca
    const/4 v9, 0x0

    .restart local v9    # "scrollToFocus":Z
    goto/16 :goto_30

    .line 1857
    .end local v9    # "scrollToFocus":Z
    :cond_cd
    const/4 v9, 0x0

    .restart local v9    # "scrollToFocus":Z
    goto/16 :goto_30

    .line 1894
    .restart local v0    # "delta":I
    .restart local v1    # "deltaSecondary":I
    .restart local v2    # "hadFocus":Z
    .restart local v6    # "savedFocusPos":I
    .restart local v7    # "savedFocusView":Landroid/view/View;
    .restart local v8    # "savedSubFocusPos":I
    :cond_d0
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    .line 1895
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_e5

    .line 1897
    :cond_d7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_e5

    .line 1898
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_d7

    .line 1905
    :cond_e5
    :goto_e5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    .line 1906
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    .line 1907
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    .line 1908
    .local v4, "oldFirstVisible":I
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v5

    .line 1909
    .local v5, "oldLastVisible":I
    const/4 v10, 0x1

    invoke-direct {p0, v2, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToFocusViewInLayout(ZZ)V

    .line 1910
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 1911
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 1912
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 1913
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 1914
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v10

    if-ne v10, v4, :cond_e5

    .line 1915
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v10

    if-eq v10, v5, :cond_97

    goto :goto_e5

    .line 1937
    .end local v4    # "oldFirstVisible":I
    .end local v5    # "oldLastVisible":I
    :cond_118
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    goto :goto_b4

    .line 1942
    :cond_11c
    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    if-ne v10, v7, :cond_c0

    .line 1944
    :cond_124
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-nez v10, :cond_c3

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v10, :cond_c3

    .line 1947
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_c3
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .registers 15
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1304
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1308
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_4f

    .line 1309
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1310
    .local v4, "sizePrimary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1311
    .local v5, "sizeSecondary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1312
    .local v2, "modeSecondary":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v8

    add-int v3, v6, v8

    .line 1324
    .local v3, "paddingSecondary":I
    :goto_1f
    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1326
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_89

    .line 1327
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_66

    move v6, v7

    :goto_2b
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1328
    iput v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1330
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz v6, :cond_3a

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    array-length v6, v6

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-eq v6, v8, :cond_40

    .line 1331
    :cond_3a
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 1335
    :cond_40
    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    .line 1337
    sparse-switch v2, :sswitch_data_11a

    .line 1349
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "wrong spec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1314
    .end local v2    # "modeSecondary":I
    .end local v3    # "paddingSecondary":I
    .end local v4    # "sizePrimary":I
    .end local v5    # "sizeSecondary":I
    :cond_4f
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1315
    .restart local v5    # "sizeSecondary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1316
    .restart local v4    # "sizePrimary":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1317
    .restart local v2    # "modeSecondary":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v8

    add-int v3, v6, v8

    .restart local v3    # "paddingSecondary":I
    goto :goto_1f

    .line 1327
    :cond_66
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    goto :goto_2b

    .line 1339
    :sswitch_69
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v6

    add-int v1, v6, v3

    .line 1391
    .local v1, "measuredSizeSecondary":I
    :cond_6f
    :goto_6f
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_114

    .line 1392
    invoke-virtual {p0, v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 1402
    :goto_76
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 1303
    return-void

    .line 1342
    .end local v1    # "measuredSizeSecondary":I
    :sswitch_7a
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v6

    add-int/2addr v6, v3

    .line 1343
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1342
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "measuredSizeSecondary":I
    goto :goto_6f

    .line 1346
    .end local v1    # "measuredSizeSecondary":I
    :sswitch_86
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .restart local v1    # "measuredSizeSecondary":I
    goto :goto_6f

    .line 1353
    .end local v1    # "measuredSizeSecondary":I
    :cond_89
    sparse-switch v2, :sswitch_data_128

    .line 1388
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "wrong spec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1355
    :sswitch_95
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_b3

    .line 1356
    sub-int v6, v5, v3

    .line 1355
    :goto_9b
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1357
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_b6

    :goto_a1
    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1358
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    .line 1359
    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    .line 1358
    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int v1, v6, v3

    .line 1360
    .restart local v1    # "measuredSizeSecondary":I
    goto :goto_6f

    .line 1356
    .end local v1    # "measuredSizeSecondary":I
    :cond_b3
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    goto :goto_9b

    .line 1357
    :cond_b6
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    goto :goto_a1

    .line 1363
    :sswitch_b9
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_df

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_df

    .line 1364
    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1365
    sub-int v6, v5, v3

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1378
    :goto_c7
    move v1, v5

    .line 1379
    .restart local v1    # "measuredSizeSecondary":I
    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_6f

    .line 1380
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    .line 1381
    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    .line 1380
    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int v0, v6, v3

    .line 1382
    .local v0, "childrenSize":I
    if-ge v0, v1, :cond_6f

    .line 1383
    move v1, v0

    goto :goto_6f

    .line 1366
    .end local v0    # "childrenSize":I
    .end local v1    # "measuredSizeSecondary":I
    :cond_df
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_f3

    .line 1367
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1368
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    add-int/2addr v6, v5

    .line 1369
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    add-int/2addr v7, v8

    .line 1368
    div-int/2addr v6, v7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_c7

    .line 1370
    :cond_f3
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_10b

    .line 1371
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1372
    sub-int v6, v5, v3

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    .line 1373
    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    .line 1372
    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1373
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1372
    div-int/2addr v6, v7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_c7

    .line 1375
    :cond_10b
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1376
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_c7

    .line 1394
    .restart local v1    # "measuredSizeSecondary":I
    :cond_114
    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    goto/16 :goto_76

    .line 1337
    nop

    :sswitch_data_11a
    .sparse-switch
        -0x80000000 -> :sswitch_7a
        0x0 -> :sswitch_69
        0x40000000 -> :sswitch_86
    .end sparse-switch

    .line 1353
    :sswitch_data_128
    .sparse-switch
        -0x80000000 -> :sswitch_b9
        0x0 -> :sswitch_95
        0x40000000 -> :sswitch_b9
    .end sparse-switch
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .registers 7
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 2397
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v0, :cond_6

    .line 2398
    return v2

    .line 2400
    :cond_6
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 2403
    return v2

    .line 2405
    :cond_e
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    if-eqz v0, :cond_17

    .line 2408
    :cond_16
    :goto_16
    return v2

    .line 2405
    :cond_17
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    if-nez v0, :cond_16

    .line 2406
    invoke-direct {p0, p2, p3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_16
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 3211
    instance-of v1, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    if-nez v1, :cond_5

    .line 3212
    return-void

    :cond_5
    move-object v0, p1

    .line 3214
    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    .line 3215
    .local v0, "loadingState":Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3216
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3217
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadFromBundle(Landroid/os/Bundle;)V

    .line 3218
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 3219
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 3210
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 5
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 657
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_19

    .line 658
    if-ne p1, v1, :cond_17

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    .line 659
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    .line 664
    :goto_d
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    if-ne p1, v1, :cond_23

    :goto_13
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setReversedFlow(Z)V

    .line 656
    return-void

    :cond_17
    move v0, v2

    .line 658
    goto :goto_9

    .line 661
    :cond_19
    if-ne p1, v1, :cond_21

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    .line 662
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    goto :goto_d

    :cond_21
    move v0, v2

    .line 661
    goto :goto_1c

    :cond_23
    move v1, v2

    .line 664
    goto :goto_13
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    .prologue
    .line 3185
    new-instance v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;-><init>()V

    .line 3187
    .local v4, "ss":Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v6

    iput v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    .line 3189
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveAsBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 3191
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_16
    if-ge v2, v1, :cond_2c

    .line 3192
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3193
    .local v5, "view":Landroid/view/View;
    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByView(Landroid/view/View;)I

    move-result v3

    .line 3194
    .local v3, "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_29

    .line 3195
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6, v0, v5, v3}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v0

    .line 3191
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 3198
    .end local v3    # "position":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2c
    iput-object v0, v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    .line 3199
    return-object v4
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 3269
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3270
    sparse-switch p3, :sswitch_data_22

    .line 3279
    :goto_7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 3280
    const/4 v0, 0x1

    return v0

    .line 3273
    :sswitch_c
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_7

    .line 3276
    :sswitch_17
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_7

    .line 3270
    nop

    :sswitch_data_22
    .sparse-switch
        0x1000 -> :sswitch_17
        0x2000 -> :sswitch_c
    .end sparse-switch
.end method

.method processSelectionMoves(ZI)I
    .registers 16
    .param p1, "preventScroll"    # Z
    .param p2, "moves"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 3289
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-nez v9, :cond_8

    .line 3290
    return p2

    .line 3292
    :cond_8
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3293
    .local v2, "focusPosition":I
    if-eq v2, v11, :cond_2c

    .line 3294
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v2}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v3

    .line 3295
    .local v3, "focusedRow":I
    :goto_12
    const/4 v6, 0x0

    .line 3296
    .local v6, "newSelected":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .end local v6    # "newSelected":Landroid/view/View;
    .local v1, "count":I
    :goto_18
    if-ge v4, v1, :cond_58

    if-eqz p2, :cond_58

    .line 3297
    if-lez p2, :cond_2e

    move v5, v4

    .line 3298
    .local v5, "index":I
    :goto_1f
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3299
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 3296
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 3294
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v3    # "focusedRow":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_2c
    const/4 v3, -0x1

    .restart local v3    # "focusedRow":I
    goto :goto_12

    .line 3297
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    :cond_2e
    add-int/lit8 v9, v1, -0x1

    sub-int v5, v9, v4

    goto :goto_1f

    .line 3302
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "index":I
    :cond_33
    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPositionByIndex(I)I

    move-result v7

    .line 3303
    .local v7, "position":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v7}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v8

    .line 3304
    .local v8, "rowIndex":I
    if-ne v3, v11, :cond_43

    .line 3305
    move v2, v7

    .line 3306
    move-object v6, v0

    .line 3307
    .local v6, "newSelected":Landroid/view/View;
    move v3, v8

    goto :goto_29

    .line 3308
    .end local v6    # "newSelected":Landroid/view/View;
    :cond_43
    if-ne v8, v3, :cond_29

    .line 3309
    if-lez p2, :cond_50

    if-le v7, v2, :cond_50

    .line 3311
    :goto_49
    move v2, v7

    .line 3312
    move-object v6, v0

    .line 3313
    .restart local v6    # "newSelected":Landroid/view/View;
    if-lez p2, :cond_55

    .line 3314
    add-int/lit8 p2, p2, -0x1

    goto :goto_29

    .line 3310
    .end local v6    # "newSelected":Landroid/view/View;
    :cond_50
    if-gez p2, :cond_29

    if-ge v7, v2, :cond_29

    goto :goto_49

    .line 3316
    .restart local v6    # "newSelected":Landroid/view/View;
    :cond_55
    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    .line 3321
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "index":I
    .end local v6    # "newSelected":Landroid/view/View;
    .end local v7    # "position":I
    .end local v8    # "rowIndex":I
    :cond_58
    if-eqz v6, :cond_6d

    .line 3322
    if-eqz p1, :cond_6e

    .line 3323
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_69

    .line 3324
    iput-boolean v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 3325
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 3326
    iput-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 3328
    :cond_69
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3329
    iput v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 3334
    :cond_6d
    :goto_6d
    return p2

    .line 3331
    :cond_6e
    invoke-virtual {p0, v6, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_6d
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 1787
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_e

    .line 1788
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1787
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1784
    :cond_e
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 2415
    const/4 v0, 0x0

    return v0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 7
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 1984
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1987
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1988
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    .line 1990
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_20

    .line 1991
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    .line 1995
    .local v0, "result":I
    :goto_19
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 1996
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    .line 1997
    return v0

    .line 1985
    .end local v0    # "result":I
    :cond_1f
    return v2

    .line 1993
    :cond_20
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_19
.end method

.method public scrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 2209
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2208
    return-void
.end method

.method scrollToSelection(IIZI)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "smooth"    # Z
    .param p4, "primaryScrollExtra"    # I

    .prologue
    const/4 v2, 0x1

    .line 2249
    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    .line 2250
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2251
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 2252
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 2253
    invoke-virtual {p0, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2254
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 2247
    :goto_11
    return-void

    .line 2256
    :cond_12
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2257
    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2258
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2259
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-nez v1, :cond_1f

    .line 2260
    return-void

    .line 2262
    :cond_1f
    if-eqz p3, :cond_36

    .line 2263
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-nez v1, :cond_32

    .line 2264
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    return-void

    .line 2268
    :cond_32
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)V

    goto :goto_11

    .line 2270
    :cond_36
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 2271
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_11
.end method

.method scrollToView(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "smooth"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2509
    if-nez p1, :cond_7

    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    .line 2508
    return-void

    .line 2509
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 8
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2003
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2006
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    .line 2007
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2009
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v3, :cond_20

    .line 2010
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    .line 2014
    .local v0, "result":I
    :goto_19
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2015
    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    .line 2016
    return v0

    .line 2004
    .end local v0    # "result":I
    :cond_1f
    return v2

    .line 2012
    :cond_20
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_19
.end method

.method public setFocusOutAllowed(ZZ)V
    .registers 3
    .param p1, "throughFront"    # Z
    .param p2, "throughEnd"    # Z

    .prologue
    .line 736
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    .line 737
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    .line 735
    return-void
.end method

.method public setFocusOutSideAllowed(ZZ)V
    .registers 3
    .param p1, "throughStart"    # Z
    .param p2, "throughEnd"    # Z

    .prologue
    .line 741
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    .line 742
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    .line 740
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .prologue
    .line 791
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    .line 790
    return-void
.end method

.method public setHorizontalMargin(I)V
    .registers 3
    .param p1, "margin"    # I

    .prologue
    .line 775
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_9

    .line 776
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalMargin:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginPrimary:I

    .line 774
    :goto_8
    return-void

    .line 778
    :cond_9
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalMargin:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    goto :goto_8
.end method

.method public setNumRows(I)V
    .registers 3
    .param p1, "numRows"    # I

    .prologue
    .line 746
    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 747
    :cond_8
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 745
    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .prologue
    const/4 v0, 0x0

    .line 803
    if-nez p1, :cond_6

    .line 804
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 805
    return-void

    .line 807
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 812
    :goto_11
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    return-void

    .line 810
    :cond_17
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_11
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 644
    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_6

    .line 646
    return-void

    .line 649
    :cond_6
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 650
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 651
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment;->setOrientation(I)V

    .line 652
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment;->setOrientation(I)V

    .line 653
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    .line 643
    return-void
.end method

.method public setRowHeight(I)V
    .registers 5
    .param p1, "height"    # I

    .prologue
    .line 754
    if-gez p1, :cond_5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_8

    .line 755
    :cond_5
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    .line 753
    return-void

    .line 757
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelection(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "primaryScrollExtra"    # I

    .prologue
    const/4 v0, 0x0

    .line 2214
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2213
    return-void
.end method

.method public setSelection(IIZI)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "smooth"    # Z
    .param p4, "primaryScrollExtra"    # I

    .prologue
    .line 2240
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_b

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 2242
    :cond_7
    :goto_7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    .line 2239
    :cond_a
    return-void

    .line 2241
    :cond_b
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v0, :cond_7

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eq p4, v0, :cond_a

    goto :goto_7
.end method

.method public setSelectionSmooth(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 2218
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2217
    return-void
.end method

.method public setVerticalMargin(I)V
    .registers 3
    .param p1, "margin"    # I

    .prologue
    .line 767
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_9

    .line 768
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalMargin:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginSecondary:I

    .line 766
    :goto_8
    return-void

    .line 770
    :cond_9
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalMargin:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMarginPrimary:I

    goto :goto_8
.end method

.method public setWindowAlignment(I)V
    .registers 3
    .param p1, "windowAlignment"    # I

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignment(I)V

    .line 675
    return-void
.end method

.method startPositionSmoothScroller(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2278
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;

    invoke-direct {v0, p0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$3;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    .line 2298
    .local v0, "linearSmoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2299
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2277
    return-void
.end method

.method updateScrollMax()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2092
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v9, :cond_1b

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    .line 2094
    .local v2, "highVisiblePos":I
    :goto_c
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v9, :cond_22

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .line 2095
    .local v1, "highMaxPos":I
    :goto_18
    if-gez v2, :cond_24

    .line 2096
    return-void

    .line 2093
    .end local v1    # "highMaxPos":I
    .end local v2    # "highVisiblePos":I
    :cond_1b
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    .restart local v2    # "highVisiblePos":I
    goto :goto_c

    .line 2094
    :cond_22
    const/4 v1, 0x0

    .restart local v1    # "highMaxPos":I
    goto :goto_18

    .line 2098
    :cond_24
    if-ne v2, v1, :cond_36

    const/4 v0, 0x1

    .line 2099
    .local v0, "highAvailable":Z
    :goto_27
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v5

    .line 2100
    .local v5, "maxUnknown":Z
    if-nez v0, :cond_38

    if-eqz v5, :cond_38

    .line 2101
    return-void

    .line 2098
    .end local v0    # "highAvailable":Z
    .end local v5    # "maxUnknown":Z
    :cond_36
    const/4 v0, 0x0

    .restart local v0    # "highAvailable":Z
    goto :goto_27

    .line 2103
    .restart local v5    # "maxUnknown":Z
    :cond_38
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v9, v12, v10}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int v3, v9, v10

    .line 2104
    .local v3, "maxEdge":I
    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v7, v9, v11

    .line 2105
    .local v7, "rowIndex":I
    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v6, v9, v12

    .line 2106
    .local v6, "pos":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMaxEdge()I

    move-result v8

    .line 2107
    .local v8, "savedMaxEdge":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxEdge(I)V

    .line 2108
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimarySystemScrollPositionOfChildMax(Landroid/view/View;)I

    move-result v4

    .line 2109
    .local v4, "maxScroll":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxEdge(I)V

    .line 2111
    if-eqz v0, :cond_85

    .line 2112
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxEdge(I)V

    .line 2113
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMaxScroll(I)V

    .line 2091
    :goto_84
    return-void

    .line 2117
    :cond_85
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    goto :goto_84
.end method

.method updateScrollMin()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 2124
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v9, :cond_13

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    .line 2126
    .local v2, "lowVisiblePos":I
    :goto_b
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v9, :cond_1a

    const/4 v1, 0x0

    .line 2127
    .local v1, "lowMinPos":I
    :goto_10
    if-gez v2, :cond_23

    .line 2128
    return-void

    .line 2125
    .end local v1    # "lowMinPos":I
    .end local v2    # "lowVisiblePos":I
    :cond_13
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    .restart local v2    # "lowVisiblePos":I
    goto :goto_b

    .line 2126
    :cond_1a
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .restart local v1    # "lowMinPos":I
    goto :goto_10

    .line 2130
    :cond_23
    if-ne v2, v1, :cond_35

    const/4 v0, 0x1

    .line 2131
    .local v0, "lowAvailable":Z
    :goto_26
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v5

    .line 2132
    .local v5, "minUnknown":Z
    if-nez v0, :cond_37

    if-eqz v5, :cond_37

    .line 2133
    return-void

    .line 2130
    .end local v0    # "lowAvailable":Z
    .end local v5    # "minUnknown":Z
    :cond_35
    const/4 v0, 0x0

    .restart local v0    # "lowAvailable":Z
    goto :goto_26

    .line 2135
    .restart local v5    # "minUnknown":Z
    :cond_37
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v9, v11, v10}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetPrimary:I

    add-int v3, v9, v10

    .line 2136
    .local v3, "minEdge":I
    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v7, v9, v11

    .line 2137
    .local v7, "rowIndex":I
    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 2138
    .local v6, "pos":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMinEdge()I

    move-result v8

    .line 2139
    .local v8, "savedMinEdge":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinEdge(I)V

    .line 2140
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimarySystemScrollPosition(Landroid/view/View;)I

    move-result v4

    .line 2141
    .local v4, "minScroll":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinEdge(I)V

    .line 2143
    if-eqz v0, :cond_85

    .line 2144
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinEdge(I)V

    .line 2145
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setMinScroll(I)V

    .line 2123
    :goto_84
    return-void

    .line 2149
    :cond_85
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    goto :goto_84
.end method
