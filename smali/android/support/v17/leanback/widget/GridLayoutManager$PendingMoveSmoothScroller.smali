.class final Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
.super Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PendingMoveSmoothScroller"
.end annotation


# instance fields
.field private mPendingMoves:I

.field private final mStaggeredGrid:Z

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;IZ)V
    .registers 5
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;
    .param p2, "initialPendingMoves"    # I
    .param p3, "staggeredGrid"    # Z

    .prologue
    .line 264
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    .line 265
    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 266
    iput-boolean p3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    .line 267
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->setTargetPosition(I)V

    .line 264
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 6
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 345
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v1, :cond_7

    .line 346
    const/4 v1, 0x0

    return-object v1

    .line 348
    :cond_7
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v1, :cond_1f

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v1, :cond_23

    .line 349
    :cond_11
    const/4 v0, -0x1

    .line 350
    .local v0, "direction":I
    :goto_12
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_25

    .line 351
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    .line 348
    .end local v0    # "direction":I
    :cond_1f
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-ltz v1, :cond_11

    .line 349
    :cond_23
    const/4 v0, 0x1

    .restart local v0    # "direction":I
    goto :goto_12

    .line 353
    :cond_25
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method consumePendingMovesAfterLayout()V
    .registers 4

    .prologue
    .line 324
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_13

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 328
    :cond_13
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_2f

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v0, :cond_23

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 329
    :cond_23
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-gez v0, :cond_39

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    .line 328
    if-eqz v0, :cond_39

    .line 330
    :cond_2f
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->setTargetPosition(I)V

    .line 331
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->stop()V

    .line 323
    :cond_39
    return-void
.end method

.method consumePendingMovesBeforeLayout()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 288
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-nez v4, :cond_9

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v4, :cond_a

    .line 289
    :cond_9
    return-void

    .line 291
    :cond_a
    const/4 v0, 0x0

    .line 292
    .local v0, "newSelected":Landroid/view/View;
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v4, :cond_3b

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v5, v5, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int v2, v4, v5

    .line 294
    .local v2, "startPos":I
    :goto_19
    move v1, v2

    .end local v0    # "newSelected":Landroid/view/View;
    .local v1, "pos":I
    :goto_1a
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v4, :cond_24

    .line 296
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 297
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_46

    .line 312
    .end local v3    # "v":Landroid/view/View;
    :cond_24
    if-eqz v0, :cond_3a

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 313
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 315
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-boolean v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    .line 287
    :cond_3a
    return-void

    .line 293
    .end local v1    # "pos":I
    .end local v2    # "startPos":I
    .restart local v0    # "newSelected":Landroid/view/View;
    :cond_3b
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v5, v5, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int v2, v4, v5

    goto :goto_19

    .line 300
    .end local v0    # "newSelected":Landroid/view/View;
    .restart local v1    # "pos":I
    .restart local v2    # "startPos":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_46
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 295
    :goto_4e
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v4, :cond_73

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/2addr v1, v4

    goto :goto_1a

    .line 303
    :cond_58
    move-object v0, v3

    .line 304
    .local v0, "newSelected":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput v1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 305
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 306
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v4, :cond_6c

    .line 307
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_4e

    .line 309
    :cond_6c
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_4e

    .line 295
    .end local v0    # "newSelected":Landroid/view/View;
    :cond_73
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int/2addr v1, v4

    goto :goto_1a
.end method

.method decreasePendingMoves()V
    .registers 3

    .prologue
    .line 277
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/16 v1, -0xa

    if-le v0, v1, :cond_c

    .line 278
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 276
    :cond_c
    return-void
.end method

.method increasePendingMoves()V
    .registers 3

    .prologue
    .line 271
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_c

    .line 272
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 270
    :cond_c
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-super {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->onStop()V

    .line 361
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    .line 362
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-object v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 363
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 358
    :cond_1b
    return-void
.end method

.method protected updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 3
    .param p1, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 337
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_5

    .line 338
    return-void

    .line 340
    :cond_5
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 336
    return-void
.end method
