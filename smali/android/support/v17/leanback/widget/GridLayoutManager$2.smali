.class Landroid/support/v17/leanback/widget/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/Grid$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .prologue
    .line 1453
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;IIII)V
    .registers 22
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "rowIndex"    # I
    .param p5, "edge"    # I

    .prologue
    move-object/from16 v4, p1

    .line 1523
    check-cast v4, Landroid/view/View;

    .line 1525
    .local v4, "v":Landroid/view/View;
    const/high16 v2, -0x80000000

    move/from16 v0, p5

    if-eq v0, v2, :cond_11

    const v2, 0x7fffffff

    move/from16 v0, p5

    if-ne v0, v2, :cond_2b

    .line 1526
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_e8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result p5

    .line 1530
    :cond_2b
    :goto_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-eqz v2, :cond_108

    const/4 v14, 0x0

    .line 1531
    .local v14, "edgeIsMin":Z
    :goto_38
    if-eqz v14, :cond_10b

    .line 1532
    move/from16 v5, p5

    .line 1533
    .local v5, "start":I
    add-int v6, p5, p3

    .line 1538
    .local v6, "end":I
    :goto_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v7, v2, v3

    .line 1539
    .local v7, "startSecondary":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_85

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_111

    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    .line 1553
    :cond_85
    :goto_85
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a6

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_11a

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    .line 1560
    :cond_a6
    :goto_a6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_bf

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v2, :cond_bf

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesAfterLayout()V

    .line 1563
    :cond_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    if-eqz v2, :cond_e7

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    .line 1565
    .local v15, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v8, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v9, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 1566
    if-nez v15, :cond_122

    const-wide/16 v12, -0x1

    :goto_e1
    move-object v10, v4

    move/from16 v11, p2

    .line 1565
    invoke-interface/range {v8 .. v13}, Landroid/support/v17/leanback/widget/OnChildLaidOutListener;->onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1522
    .end local v15    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_e7
    return-void

    .line 1527
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "startSecondary":I
    .end local v14    # "edgeIsMin":Z
    :cond_e8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingHigh()I

    move-result v3

    .line 1527
    sub-int p5, v2, v3

    goto/16 :goto_2b

    .line 1530
    :cond_108
    const/4 v14, 0x1

    goto/16 :goto_38

    .line 1535
    .restart local v14    # "edgeIsMin":Z
    :cond_10b
    sub-int v5, p5, p3

    .line 1536
    .restart local v5    # "start":I
    move/from16 v6, p5

    .restart local v6    # "end":I
    goto/16 :goto_3e

    .line 1550
    .restart local v7    # "startSecondary":I
    :cond_111
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    goto/16 :goto_85

    .line 1557
    :cond_11a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    goto :goto_a6

    .line 1566
    .restart local v15    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_122
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v12

    goto :goto_e1
.end method

.method public createItem(IZ[Ljava/lang/Object;)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "append"    # Z
    .param p3, "item"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1464
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1466
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1467
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1468
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v4, v3, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V

    .line 1470
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_76

    .line 1472
    if-eqz p2, :cond_85

    .line 1473
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 1478
    :goto_2f
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3d

    .line 1479
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    :cond_3d
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_4a

    .line 1483
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesBeforeLayout()V

    .line 1485
    :cond_4a
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 1486
    .local v1, "subindex":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v4, :cond_8b

    .line 1493
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v4, :cond_71

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v1, v4, :cond_71

    .line 1494
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v4, :cond_71

    .line 1495
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 1514
    :cond_71
    :goto_71
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1516
    .end local v1    # "subindex":I
    :cond_76
    aput-object v2, p3, v6

    .line 1517
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_cd

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v4

    :goto_84
    return v4

    .line 1475
    :cond_85
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2f

    .line 1497
    .restart local v1    # "subindex":I
    :cond_8b
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-nez v4, :cond_71

    .line 1503
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-nez v4, :cond_a9

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v4, :cond_a9

    .line 1504
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v1, v4, :cond_a9

    .line 1505
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_71

    .line 1506
    :cond_a9
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v4, :cond_71

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt p1, v4, :cond_71

    .line 1507
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    .line 1506
    if-eqz v4, :cond_71

    .line 1508
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput p1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1509
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput v1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1510
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-boolean v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    .line 1511
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_71

    .line 1518
    .end local v1    # "subindex":I
    :cond_cd
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v4

    goto :goto_84
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getEdge(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_13

    .line 1585
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v0

    return v0

    .line 1587
    :cond_13
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getSize(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 1593
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 1573
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1574
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v1, :cond_16

    .line 1575
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1571
    :goto_15
    return-void

    .line 1577
    :cond_16
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_15
.end method
