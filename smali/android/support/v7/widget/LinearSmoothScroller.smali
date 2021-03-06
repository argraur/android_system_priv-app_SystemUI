.class public Landroid/support/v7/widget/LinearSmoothScroller;
.super Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 83
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 93
    iput v1, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v1, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 95
    return-void
.end method

.method private clampApplyScroll(II)I
    .registers 6
    .param p1, "tmpDt"    # I
    .param p2, "dt"    # I

    .prologue
    const/4 v2, 0x0

    .line 254
    move v0, p1

    .line 255
    .local v0, "before":I
    sub-int/2addr p1, p2

    .line 256
    mul-int v1, v0, p1

    if-gtz v1, :cond_8

    .line 257
    return v2

    .line 259
    :cond_8
    return p1
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .registers 10
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .prologue
    const/4 v2, 0x0

    .line 268
    packed-switch p5, :pswitch_data_1e

    .line 284
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :pswitch_d
    sub-int v2, p3, p1

    return v2

    .line 272
    :pswitch_10
    sub-int v2, p4, p2

    return v2

    .line 274
    :pswitch_13
    sub-int v1, p3, p1

    .line 275
    .local v1, "dtStart":I
    if-lez v1, :cond_18

    .line 276
    return v1

    .line 278
    :cond_18
    sub-int v0, p4, p2

    .line 279
    .local v0, "dtEnd":I
    if-gez v0, :cond_1d

    .line 280
    return v0

    .line 287
    :cond_1d
    return v2

    .line 268
    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_d
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 328
    .local v6, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v6, :cond_37

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 331
    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 333
    .local v7, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v1, v0, v5

    .line 334
    .local v1, "left":I
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v2, v0, v5

    .line 335
    .local v2, "right":I
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    .line 336
    .local v3, "start":I
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 337
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    return v0

    .line 329
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v7    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    .line 303
    .local v6, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v6, :cond_37

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 306
    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 308
    .local v7, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v1, v0, v5

    .line 309
    .local v1, "top":I
    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iget v5, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v2, v0, v5

    .line 310
    .local v2, "bottom":I
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 311
    .local v3, "start":I
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v4, v0, v5

    .local v4, "end":I
    move-object v0, p0

    move v5, p2

    .line 312
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    return v0

    .line 304
    .end local v1    # "top":I
    .end local v2    # "bottom":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v7    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 4
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 162
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    div-float v0, v1, v0

    return v0
.end method

.method protected calculateTimeForDeceleration(I)I
    .registers 6
    .param p1, "dx"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .registers 4
    .param p1, "dx"    # I

    .prologue
    .line 193
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 6
    .param p1, "targetPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 353
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_f

    .line 354
    check-cast v0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 357
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_f
    const-string/jumbo v1, "LinearSmoothScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 358
    const-class v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getHorizontalSnapPreference()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 207
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_e

    :cond_19
    const/4 v0, -0x1

    goto :goto_e
.end method

.method protected getVerticalSnapPreference()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 221
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_e

    :cond_19
    const/4 v0, -0x1

    goto :goto_e
.end method

.method protected onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 127
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->stop()V

    .line 128
    return-void

    .line 136
    :cond_a
    iget v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 137
    iget v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 139
    iget v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v0, :cond_25

    iget v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v0, :cond_25

    .line 140
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearSmoothScroller;->updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 125
    :cond_25
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 150
    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 149
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 11
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 113
    .local v1, "dx":I
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v2

    .line 114
    .local v2, "dy":I
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 115
    .local v0, "distance":I
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 116
    .local v3, "time":I
    if-lez v3, :cond_28

    .line 117
    neg-int v4, v1

    neg-int v5, v2

    iget-object v6, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 111
    :cond_28
    return-void
.end method

.method protected updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 9
    .param p1, "action"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .prologue
    const v5, 0x461c4000    # 10000.0f

    const/4 v4, 0x0

    const v6, 0x3f99999a    # 1.2f

    .line 232
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 233
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_1d

    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_28

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_28

    .line 234
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    .line 235
    .local v1, "target":I
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->stop()V

    .line 237
    return-void

    .line 239
    .end local v1    # "target":I
    :cond_28
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 240
    iput-object v0, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 242
    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 243
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 244
    const/16 v3, 0x2710

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v2

    .line 248
    .local v2, "time":I
    iget v3, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 249
    iget v4, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 250
    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroid/support/v7/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 248
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 230
    return-void
.end method
