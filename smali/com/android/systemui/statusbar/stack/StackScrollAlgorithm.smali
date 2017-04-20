.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownLength:I

.field private mCollapsedSize:I

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mPaddingBetweenElements:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

.field private mZBasicHeight:I

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 176
    instance-of v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_6

    .line 177
    return v2

    :cond_6
    move-object v0, p0

    .line 179
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 180
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 181
    return v2

    .line 183
    :cond_10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v1

    return v1
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/StackViewState;)V
    .registers 8
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 452
    .local v0, "bottomPosition":F
    iget v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 453
    .local v1, "newTranslation":F
    iget v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v2, v2

    .line 454
    iget v3, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    sub-float/2addr v3, v1

    .line 453
    sub-float/2addr v2, v3

    .line 454
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    .line 453
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 455
    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 449
    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/StackViewState;)V
    .registers 7
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 441
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v1

    .line 442
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v2

    .line 441
    add-float/2addr v1, v2

    .line 442
    iget v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 441
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 443
    .local v0, "newTranslation":F
    iget v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v1, v1

    .line 444
    iget v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 443
    sub-float v2, v0, v2

    sub-float/2addr v1, v2

    .line 444
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    .line 443
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 445
    iput v0, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 440
    return-void
.end method

.method private clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackViewState;IILcom/android/systemui/statusbar/stack/AmbientState;)V
    .registers 10
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p2, "childHeight"    # I
    .param p3, "minHeight"    # I
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 469
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v3

    .line 470
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 469
    sub-int/2addr v3, v4

    .line 470
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 469
    sub-int v0, v3, v4

    .line 471
    .local v0, "bottomStackStart":I
    sub-int v1, v0, p2

    .line 472
    .local v1, "childStart":I
    int-to-float v3, v1

    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_27

    .line 473
    int-to-float v3, v0

    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    sub-float v2, v3, v4

    .line 474
    .local v2, "newHeight":F
    int-to-float v3, p3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_24

    .line 475
    int-to-float v2, p3

    .line 476
    sub-int v3, v0, p3

    int-to-float v3, v3

    iput v3, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 478
    :cond_24
    float-to-int v3, v2

    iput v3, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 467
    .end local v2    # "newHeight":F
    :cond_27
    return-void
.end method

.method private getMaxAllowedChildHeight(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 483
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 484
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 485
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 487
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_c
    if-nez p1, :cond_11

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_10
    return v1

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_10
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .registers 8
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 116
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 117
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 118
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 119
    .local v3, "v":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_1b

    move-object v2, v3

    .line 120
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 121
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 117
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 115
    .end local v3    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1e
    return-void
.end method

.method private getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I
    .registers 7
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 390
    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 391
    .local v0, "paddingValue":Ljava/lang/Float;
    if-nez v0, :cond_d

    .line 392
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 391
    :goto_c
    return v1

    .line 393
    :cond_d
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v1, v1

    .line 394
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float v2, v2

    .line 395
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 393
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_c
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .registers 13
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/4 v8, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v3

    .line 215
    .local v3, "draggedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "draggedView$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 216
    .local v1, "draggedView":Landroid/view/View;
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "childIndex":I
    if-ltz v0, :cond_9

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_9

    .line 218
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 219
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 222
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 225
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 226
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 227
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    .line 232
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_47
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 234
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    goto :goto_9

    .line 213
    .end local v0    # "childIndex":I
    .end local v1    # "draggedView":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_52
    return-void
.end method

.method private initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .registers 26
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 244
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 245
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 246
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v4

    .line 248
    .local v4, "bottomOverScroll":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v18

    .line 252
    .local v18, "scrollY":I
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 253
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v10

    .line 257
    .local v10, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 258
    .local v5, "childCount":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 259
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 260
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 261
    const/4 v15, 0x0

    .line 262
    .local v15, "notGoneIndex":I
    const/4 v13, 0x0

    .line 263
    .local v13, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v11, 0x0

    .end local v13    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .local v11, "i":I
    :goto_62
    if-ge v11, v5, :cond_113

    .line 264
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/ExpandableView;

    .line 265
    .local v19, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10f

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I

    move-result v15

    .line 267
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v12

    .line 268
    .local v12, "increasedPadding":F
    const/16 v20, 0x0

    cmpl-float v20, v12, v20

    if-eqz v20, :cond_cc

    .line 269
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    if-eqz v13, :cond_cc

    .line 271
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    .line 272
    .local v16, "prevValue":Ljava/lang/Float;
    if-eqz v16, :cond_10b

    .line 273
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 275
    .local v14, "newValue":F
    :goto_bb
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->increasedPaddingMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v14    # "newValue":F
    .end local v16    # "prevValue":Ljava/lang/Float;
    :cond_cc
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v20, v0

    if-eqz v20, :cond_10d

    move-object/from16 v17, v19

    .line 279
    check-cast v17, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 283
    .local v17, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v9

    .line 284
    .local v9, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v20

    if-eqz v20, :cond_10d

    if-eqz v9, :cond_10d

    .line 285
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "childRow$iterator":Ljava/util/Iterator;
    :cond_e8
    :goto_e8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 286
    .local v6, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e8

    .line 288
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v8

    .line 289
    .local v8, "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput v15, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 290
    add-int/lit8 v15, v15, 0x1

    goto :goto_e8

    .line 274
    .end local v6    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "childRow$iterator":Ljava/util/Iterator;
    .end local v8    # "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v9    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v17    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v16    # "prevValue":Ljava/lang/Float;
    :cond_10b
    move v14, v12

    .restart local v14    # "newValue":F
    goto :goto_bb

    .line 295
    .end local v14    # "newValue":F
    .end local v16    # "prevValue":Ljava/lang/Float;
    :cond_10d
    move-object/from16 v13, v19

    .line 263
    .end local v12    # "increasedPadding":F
    :cond_10f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_62

    .line 243
    .end local v19    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_113
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    const v1, 0x7f1001af

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    const v1, 0x7f1001b1

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    const v1, 0x7f100157

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    const v1, 0x7f1001ab

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    const v1, 0x7f1001ae

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    .line 81
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    const v1, 0x7f1001ad

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 84
    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    .line 86
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v2

    .line 85
    const/4 v3, 0x3

    .line 88
    const/high16 v4, 0x3f000000    # 0.5f

    .line 84
    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    .line 70
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .registers 19
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 141
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v14

    add-float v3, v13, v14

    .line 142
    .local v3, "drawStart":F
    const/4 v10, 0x0

    .line 143
    .local v10, "previousNotificationEnd":F
    const/4 v11, 0x0

    .line 144
    .local v11, "previousNotificationStart":F
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 145
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v2, :cond_69

    .line 146
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 147
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v12

    .line 148
    .local v12, "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v13

    if-nez v13, :cond_35

    .line 149
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 150
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 152
    :cond_35
    iget v8, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 153
    .local v8, "newYTranslation":F
    iget v13, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v6, v13

    .line 154
    .local v6, "newHeight":F
    add-float v7, v8, v6

    .line 155
    .local v7, "newNotificationEnd":F
    instance-of v13, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_63

    move-object v13, v1

    .line 156
    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v5

    .line 157
    :goto_47
    cmpg-float v13, v8, v10

    if-gez v13, :cond_65

    .line 158
    if-eqz v5, :cond_53

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v13

    .line 157
    if-eqz v13, :cond_65

    .line 160
    :cond_53
    sub-float v9, v10, v8

    .line 161
    .local v9, "overlapAmount":F
    float-to-int v13, v9

    iput v13, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 166
    .end local v9    # "overlapAmount":F
    :goto_58
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v13

    if-nez v13, :cond_60

    .line 169
    move v10, v7

    .line 170
    move v11, v8

    .line 145
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 155
    :cond_63
    const/4 v5, 0x0

    .local v5, "isHeadsUp":Z
    goto :goto_47

    .line 163
    .end local v5    # "isHeadsUp":Z
    :cond_65
    const/4 v13, 0x0

    iput v13, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    goto :goto_58

    .line 140
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "newHeight":F
    .end local v7    # "newNotificationEnd":F
    .end local v8    # "newYTranslation":F
    .end local v12    # "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_69
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .registers 16
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    .line 192
    .local v5, "dimmed":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v4

    .line 193
    .local v4, "dark":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v6

    .line 194
    .local v6, "hideSensitive":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 195
    .local v0, "activatedChild":Landroid/view/View;
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 196
    .local v2, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_17
    if-ge v7, v2, :cond_42

    .line 197
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 198
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v3

    .line 199
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    .line 200
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    .line 201
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    .line 202
    if-ne v0, v1, :cond_40

    const/4 v8, 0x1

    .line 203
    .local v8, "isActivatedChild":Z
    :goto_2e
    if-eqz v5, :cond_3d

    if-eqz v8, :cond_3d

    .line 204
    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 196
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 202
    .end local v8    # "isActivatedChild":Z
    :cond_40
    const/4 v8, 0x0

    .restart local v8    # "isActivatedChild":Z
    goto :goto_2e

    .line 190
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v8    # "isActivatedChild":Z
    :cond_42
    return-void
.end method

.method private updateFirstChildHeight(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V
    .registers 8
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "childHeight"    # I
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 554
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v1, v2

    .line 555
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 554
    sub-int/2addr v1, v2

    .line 555
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v2

    .line 554
    add-int v0, v1, v2

    .line 557
    .local v0, "bottomPeekStart":I
    int-to-float v1, v0

    int-to-float v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 558
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    .line 557
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 551
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .registers 15
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 400
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 401
    .local v1, "childCount":I
    const/4 v6, 0x0

    .line 402
    .local v6, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v3, 0x0

    .end local v6    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_16

    .line 403
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 404
    .local v0, "child":Landroid/view/View;
    instance-of v9, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v9, :cond_17

    .line 399
    .end local v0    # "child":Landroid/view/View;
    :cond_16
    return-void

    .restart local v0    # "child":Landroid/view/View;
    :cond_17
    move-object v5, v0

    .line 407
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 408
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 411
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 412
    .local v2, "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-nez v6, :cond_2a

    .line 413
    move-object v6, v5

    .line 414
    .local v6, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v9, 0x1

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 416
    .end local v6    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2a
    if-ne v6, v5, :cond_82

    const/4 v4, 0x1

    .line 417
    .local v4, "isTopEntry":Z
    :goto_2d
    iget v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v10, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 418
    .local v8, "unmodifiedEndLocation":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_3e

    .line 420
    invoke-direct {p0, p3, v5, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/StackViewState;)V

    .line 421
    invoke-direct {p0, p3, v5, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/StackViewState;)V

    .line 423
    :cond_3e
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 424
    iget v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 425
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 426
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v7

    .line 427
    .local v7, "topState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-nez v4, :cond_7f

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_6d

    .line 428
    iget v9, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v10, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gez v9, :cond_7f

    .line 431
    :cond_6d
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 432
    iget v9, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v10, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 433
    iget v10, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v10, v10

    .line 432
    sub-float/2addr v9, v10

    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 402
    .end local v7    # "topState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 416
    .end local v4    # "isTopEntry":Z
    .end local v8    # "unmodifiedEndLocation":F
    :cond_82
    const/4 v4, 0x0

    .restart local v4    # "isTopEntry":Z
    goto :goto_2d
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I
    .registers 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "notGoneIndex"    # I
    .param p4, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 303
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v0

    .line 304
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iput p3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 305
    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 p3, p3, 0x1

    .line 307
    return p3
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .registers 25
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 321
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v16, v0

    .line 324
    .local v16, "bottomPeekStart":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    int-to-float v2, v2

    sub-float v4, v16, v2

    .line 327
    .local v4, "bottomStackStart":F
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v2, v2

    int-to-float v13, v2

    .line 329
    .local v13, "currentYPosition":F
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 331
    .local v17, "childCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_23
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_df

    .line 332
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    .line 333
    .local v8, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 334
    .local v5, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    const/4 v2, 0x0

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v20

    .line 336
    .local v20, "paddingAfterChild":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v15

    .line 337
    .local v15, "childHeight":I
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v6

    .line 338
    .local v6, "collapsedHeight":I
    iput v13, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 339
    if-nez v18, :cond_5b

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v5, v15, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeight(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 344
    :cond_5b
    int-to-float v2, v15

    add-float/2addr v2, v13

    .line 345
    move/from16 v0, v20

    int-to-float v3, v0

    .line 344
    add-float v19, v2, v3

    .line 346
    .local v19, "nextYPosition":F
    cmpl-float v2, v19, v4

    if-ltz v2, :cond_d2

    .line 349
    cmpl-float v2, v13, v4

    if-ltz v2, :cond_c7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    .line 352
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 369
    :goto_73
    if-nez v18, :cond_84

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v2

    if-gtz v2, :cond_84

    .line 373
    const/4 v2, 0x0

    iget v3, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 375
    :cond_84
    iget v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    int-to-float v3, v15

    add-float/2addr v2, v3

    move/from16 v0, v20

    int-to-float v3, v0

    add-float v13, v2, v3

    .line 376
    const/4 v2, 0x0

    cmpg-float v2, v13, v2

    if-gtz v2, :cond_95

    .line 377
    const/4 v2, 0x2

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 379
    :cond_95
    iget v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    if-nez v2, :cond_b5

    .line 380
    const-string/jumbo v2, "StackScrollAlgorithm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to assign location for child "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_b5
    iget v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v3

    .line 384
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v7

    .line 383
    add-float/2addr v3, v7

    add-float/2addr v2, v3

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 331
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_23

    :cond_c7
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move v11, v4

    move-object v12, v8

    move-object v14, v5

    .line 357
    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/ExpandableView;FLcom/android/systemui/statusbar/stack/StackViewState;I)V

    goto :goto_73

    .line 364
    :cond_d2
    const/4 v2, 0x4

    iput v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 365
    iget v2, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v2, v15, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackViewState;IILcom/android/systemui/statusbar/stack/AmbientState;)V

    goto :goto_73

    .line 318
    .end local v5    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v6    # "collapsedHeight":I
    .end local v8    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v15    # "childHeight":I
    .end local v19    # "nextYPosition":F
    .end local v20    # "paddingAfterChild":I
    :cond_df
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V
    .registers 10
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "speedBumpIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 129
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_23

    .line 130
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 131
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 135
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    const/4 v4, -0x1

    if-eq p3, v4, :cond_21

    if-lt v3, p3, :cond_21

    const/4 v4, 0x1

    :goto_1c
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    move v4, v5

    .line 135
    goto :goto_1c

    .line 127
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_23
    return-void
.end method

.method private updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackViewState;ILcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableView;)V
    .registers 11
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "transitioningPositionStart"    # F
    .param p3, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p4, "collapsedHeight"    # I
    .param p5, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p6, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 518
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    add-float/2addr v1, v3

    iput v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 519
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2b

    .line 522
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    .line 521
    add-float/2addr v1, p2

    .line 523
    invoke-direct {p0, p1, p6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v2

    int-to-float v2, v2

    .line 521
    sub-float v0, v1, v2

    .line 524
    .local v0, "currentYPosition":F
    const/16 v1, 0x8

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 537
    :goto_23
    iput p4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 538
    int-to-float v1, p4

    sub-float v1, v0, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 516
    return-void

    .line 527
    .end local v0    # "currentYPosition":F
    :cond_2b
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_43

    .line 528
    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    .line 529
    const/4 v1, 0x0

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 534
    :cond_39
    :goto_39
    const/16 v1, 0x10

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 535
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    int-to-float v0, v1

    .restart local v0    # "currentYPosition":F
    goto :goto_23

    .line 530
    .end local v0    # "currentYPosition":F
    :cond_43
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 531
    const/high16 v2, 0x40800000    # 4.0f

    .line 530
    cmpl-float v1, v1, v2

    if-lez v1, :cond_39

    .line 532
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    sub-float v1, v3, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    goto :goto_39
.end method

.method private updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/ExpandableView;FLcom/android/systemui/statusbar/stack/StackViewState;I)V
    .registers 11
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "transitioningPositionStart"    # F
    .param p3, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p4, "currentYPosition"    # F
    .param p5, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p6, "childHeight"    # I

    .prologue
    .line 496
    sub-float v2, p2, p4

    .line 497
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v3

    .line 496
    add-int/2addr v3, p6

    int-to-float v3, v3

    .line 495
    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 500
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    .line 501
    .local v1, "offset":F
    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 502
    move v0, p6

    .line 503
    .local v0, "newHeight":I
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v2

    if-le p6, v2, :cond_3f

    .line 504
    add-float v2, p2, v1

    .line 505
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v3

    int-to-float v3, v3

    .line 504
    sub-float/2addr v2, v3

    sub-float/2addr v2, p4

    .line 505
    int-to-float v3, p6

    .line 504
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 506
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    .line 504
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    .line 507
    iput v0, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 509
    :cond_3f
    add-float v2, p2, v1

    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 510
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v3

    int-to-float v3, v3

    .line 509
    sub-float/2addr v2, v3

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 511
    const/4 v2, 0x4

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 492
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .registers 15
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 570
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 571
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 572
    .local v3, "childrenOnTop":F
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_9
    if-ltz v4, :cond_b2

    .line 573
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 574
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 575
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    int-to-float v8, v4

    add-int/lit8 v9, v1, -0x1

    int-to-float v9, v9

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6a

    .line 577
    int-to-float v8, v4

    add-int/lit8 v9, v1, -0x1

    int-to-float v9, v9

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v9, v10

    sub-float v5, v8, v9

    .line 579
    .local v5, "numItemsAbove":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_64

    .line 580
    const v8, 0x3e4ccccd    # 0.2f

    .line 582
    cmpg-float v8, v5, v8

    if-gtz v8, :cond_49

    .line 583
    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v5

    .line 584
    const/high16 v9, 0x40a00000    # 5.0f

    .line 583
    mul-float v7, v8, v9

    .line 594
    .local v7, "zSubtraction":F
    :goto_40
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    sub-float/2addr v8, v7

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 572
    .end local v5    # "numItemsAbove":F
    .end local v7    # "zSubtraction":F
    :goto_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 580
    .restart local v5    # "numItemsAbove":F
    :cond_49
    const v8, 0x3e4ccccd    # 0.2f

    .line 587
    sub-float v8, v5, v8

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v9, v10, v9

    mul-float/2addr v8, v9

    .line 588
    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v9, v9

    .line 589
    const v10, 0x3dcccccd    # 0.1f

    .line 588
    sub-float/2addr v9, v10

    .line 587
    mul-float/2addr v8, v9

    .line 586
    const v9, 0x3dcccccd    # 0.1f

    add-float v7, v9, v8

    .restart local v7    # "zSubtraction":F
    goto :goto_40

    .line 592
    .end local v7    # "zSubtraction":F
    :cond_64
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v8, v8

    mul-float v7, v5, v8

    .restart local v7    # "zSubtraction":F
    goto :goto_40

    .line 595
    .end local v5    # "numItemsAbove":F
    .end local v7    # "zSubtraction":F
    :cond_6a
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 596
    iget v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v9

    .line 597
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v10

    .line 596
    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_ac

    .line 598
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_92

    .line 599
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v3, v8

    .line 605
    :goto_87
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    .line 606
    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    .line 605
    add-float/2addr v8, v9

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    goto :goto_46

    .line 601
    :cond_92
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v8

    .line 602
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v9

    .line 601
    add-float/2addr v8, v9

    .line 602
    iget v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 601
    sub-float v6, v8, v9

    .line 603
    .local v6, "overlap":F
    iget v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    int-to-float v8, v8

    div-float v8, v6, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v3, v8

    goto :goto_87

    .line 608
    .end local v6    # "overlap":F
    :cond_ac
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    goto :goto_46

    .line 569
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_b2
    return-void
.end method


# virtual methods
.method public getBottomStackSlowDownLength()I
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .registers 5
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 97
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 99
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 101
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 103
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 105
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 107
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 109
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V

    .line 111
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 91
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public setIsExpanded(Z)V
    .registers 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 632
    return-void
.end method
