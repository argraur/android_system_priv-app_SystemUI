.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$1;,
        Lcom/android/systemui/ExpandHelper$Callback;,
        Lcom/android/systemui/ExpandHelper$ViewScaler;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeight:F

.field private mEnabled:Z

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:F

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mOnlyMovements:Z

.field private mPullGestureMinXSpan:F

.field private mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchingForPull:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/ExpandHelper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/ExpandHelper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/statusbar/ExpandableView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/ExpandHelper;F)F
    .registers 2

    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/ExpandHelper;Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .registers 4
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "expandType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p3, "small"    # I
    .param p4, "large"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 95
    iput-boolean v3, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 111
    new-instance v1, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 110
    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 162
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 163
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 164
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 165
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 167
    new-instance v1, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 168
    const/16 v1, 0x30

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 169
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string/jumbo v2, "height"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 172
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 173
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 175
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 176
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 161
    return-void
.end method

.method private clamp(F)F
    .registers 4
    .param p1, "target"    # F

    .prologue
    .line 197
    move v0, p1

    .line 198
    .local v0, "out":F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_14

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v0, v1

    .line 199
    :goto_b
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_13

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 200
    :cond_13
    return v0

    .line 198
    :cond_14
    move v0, p1

    goto :goto_b
.end method

.method private clearView()V
    .registers 2

    .prologue
    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 607
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 206
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 207
    .local v0, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 208
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 209
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 210
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .line 214
    .end local v0    # "location":[I
    .local v1, "v":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_1c
    return-object v1

    .line 212
    .end local v1    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1d
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .restart local v1    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    goto :goto_1c
.end method

.method private finishExpanding(ZF)V
    .registers 15
    .param p1, "forceAbort"    # Z
    .param p2, "velocity"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 539
    iget-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v7, :cond_8

    return-void

    .line 543
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v7}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 544
    .local v0, "currentHeight":F
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v10, v10

    cmpl-float v7, v7, v10

    if-nez v7, :cond_87

    const/4 v6, 0x1

    .line 546
    .local v6, "wasClosed":Z
    :goto_18
    if-nez p1, :cond_9b

    .line 547
    if-eqz v6, :cond_8b

    .line 548
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_89

    cmpl-float v7, p2, v11

    if-ltz v7, :cond_89

    const/4 v3, 0x1

    .line 552
    .local v3, "nowExpanded":Z
    :goto_27
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v10, v10

    cmpl-float v7, v7, v10

    if-nez v7, :cond_99

    move v7, v8

    :goto_31
    or-int/2addr v3, v7

    .line 556
    .end local v3    # "nowExpanded":Z
    :goto_32
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 557
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 559
    :cond_3f
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v7, v9}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 560
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v7}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight()I

    move-result v2

    .line 561
    .local v2, "naturalHeight":I
    if-eqz v3, :cond_a1

    .end local v2    # "naturalHeight":I
    :goto_4c
    int-to-float v5, v2

    .line 562
    .local v5, "targetHeight":F
    cmpl-float v7, v5, v0

    if-eqz v7, :cond_a8

    iget-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    if-eqz v7, :cond_a8

    .line 563
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v10, v8, [F

    aput v5, v10, v9

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 564
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 565
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 566
    .local v4, "scaledView":Landroid/view/View;
    move v1, v3

    .line 567
    .local v1, "expand":Z
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-instance v10, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v10, p0, v4, v1}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;Z)V

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    cmpl-float v7, p2, v11

    if-ltz v7, :cond_a4

    :goto_74
    if-ne v3, v8, :cond_a6

    .line 587
    :goto_76
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v8, v0, v5, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 588
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 597
    .end local v1    # "expand":Z
    .end local v4    # "scaledView":Landroid/view/View;
    :goto_82
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 598
    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 538
    return-void

    .line 544
    .end local v5    # "targetHeight":F
    .end local v6    # "wasClosed":Z
    :cond_87
    const/4 v6, 0x0

    .restart local v6    # "wasClosed":Z
    goto :goto_18

    .line 548
    :cond_89
    const/4 v3, 0x0

    .restart local v3    # "nowExpanded":Z
    goto :goto_27

    .line 550
    .end local v3    # "nowExpanded":Z
    :cond_8b
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    cmpl-float v7, v0, v7

    if-gez v7, :cond_95

    cmpl-float v7, p2, v11

    if-lez v7, :cond_97

    :cond_95
    const/4 v3, 0x1

    .restart local v3    # "nowExpanded":Z
    goto :goto_27

    .end local v3    # "nowExpanded":Z
    :cond_97
    const/4 v3, 0x0

    .restart local v3    # "nowExpanded":Z
    goto :goto_27

    :cond_99
    move v7, v9

    .line 552
    goto :goto_31

    .line 554
    .end local v3    # "nowExpanded":Z
    :cond_9b
    if-eqz v6, :cond_9f

    const/4 v3, 0x0

    .restart local v3    # "nowExpanded":Z
    goto :goto_32

    .end local v3    # "nowExpanded":Z
    :cond_9f
    const/4 v3, 0x1

    .restart local v3    # "nowExpanded":Z
    goto :goto_32

    .line 561
    .end local v3    # "nowExpanded":Z
    .restart local v2    # "naturalHeight":I
    :cond_a1
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    goto :goto_4c

    .end local v2    # "naturalHeight":I
    .restart local v1    # "expand":Z
    .restart local v4    # "scaledView":Landroid/view/View;
    .restart local v5    # "targetHeight":F
    :cond_a4
    move v8, v9

    .line 586
    goto :goto_74

    :cond_a6
    const/4 p2, 0x0

    goto :goto_76

    .line 590
    .end local v1    # "expand":Z
    .end local v4    # "scaledView":Landroid/view/View;
    :cond_a8
    cmpl-float v7, v5, v0

    if-eqz v7, :cond_b1

    .line 591
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v7, v5}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 593
    :cond_b1
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v7, v8, v3}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 594
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v7, v8, v9}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    goto :goto_82
.end method

.method private getCurrentVelocity()F
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    .line 372
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0

    .line 375
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isEnabled()Z
    .registers 2

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    return v0
.end method

.method private isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .registers 4
    .param p1, "underFocus"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 388
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 389
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->areChildrenExpanded()Z

    move-result v0

    .line 388
    :goto_14
    return v0

    .line 389
    :cond_15
    const/4 v0, 0x1

    goto :goto_14

    .line 388
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private isInside(Landroid/view/View;FF)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    if-nez p1, :cond_7

    .line 222
    return v4

    .line 224
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1a

    .line 225
    new-array v1, v6, [I

    .line 226
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 227
    aget v2, v1, v4

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 228
    aget v2, v1, v3

    int-to-float v2, v2

    add-float/2addr p3, v2

    .line 231
    .end local v1    # "location":[I
    :cond_1a
    new-array v1, v6, [I

    .line 232
    .restart local v1    # "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 233
    aget v2, v1, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 234
    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    .line 237
    cmpl-float v2, p2, v5

    if-lez v2, :cond_49

    cmpl-float v2, p3, v5

    if-lez v2, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_45

    move v2, v3

    :goto_39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_47

    :goto_42
    and-int v0, v2, v3

    .line 238
    .local v0, "inside":Z
    :goto_44
    return v0

    .end local v0    # "inside":Z
    :cond_45
    move v2, v4

    .line 237
    goto :goto_39

    :cond_47
    move v3, v4

    goto :goto_42

    :cond_49
    move v0, v4

    goto :goto_44
.end method

.method private maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 365
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 366
    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 362
    :cond_1a
    return-void
.end method

.method private startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .registers 6
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "expandType"    # I

    .prologue
    const/4 v2, 0x1

    .line 504
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_7

    .line 505
    const/4 v1, 0x0

    return v1

    .line 507
    :cond_7
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 508
    iget-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne p1, v1, :cond_12

    .line 509
    return v2

    .line 511
    :cond_12
    iput-boolean v2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 512
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 514
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 515
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 516
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 517
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 518
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    .line 519
    .local v0, "canBeExpanded":Z
    if-eqz v0, :cond_47

    .line 521
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 522
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 529
    :goto_46
    return v2

    .line 525
    :cond_47
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_46
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 342
    .local v0, "action":I
    packed-switch v0, :pswitch_data_2e

    .line 340
    :goto_7
    :pswitch_7
    return-void

    .line 344
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_18

    .line 345
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 349
    :goto_12
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 347
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_12

    .line 352
    :pswitch_1e
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_28

    .line 353
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 355
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 342
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_1e
    .end packed-switch
.end method

.method private updateExpansion()V
    .registers 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 182
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    .line 183
    .local v4, "span":F
    mul-float/2addr v4, v7

    .line 184
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    .line 185
    .local v0, "drag":F
    mul-float/2addr v0, v7

    .line 186
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_58

    const/high16 v6, -0x40800000    # -1.0f

    :goto_20
    mul-float/2addr v0, v6

    .line 187
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    add-float v3, v6, v7

    .line 188
    .local v3, "pull":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v3

    add-float v1, v6, v7

    .line 189
    .local v1, "hand":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v5, v1, v6

    .line 190
    .local v5, "target":F
    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 191
    .local v2, "newHeight":F
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 192
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 193
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 179
    return-void

    .end local v1    # "hand":F
    .end local v2    # "newHeight":F
    .end local v3    # "pull":F
    .end local v5    # "target":F
    :cond_58
    move v6, v7

    .line 186
    goto :goto_20
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 615
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 616
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 619
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 614
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_b

    .line 256
    return v7

    .line 258
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 266
    .local v0, "action":I
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 267
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v8

    float-to-int v1, v8

    .line 268
    .local v1, "x":I
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v8

    float-to-int v4, v8

    .line 270
    .local v4, "y":I
    int-to-float v8, v4

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 271
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 272
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 273
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 276
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v8, :cond_46

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 279
    return v6

    .line 281
    :cond_46
    if-ne v0, v9, :cond_4f

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4f

    .line 283
    return v6

    .line 285
    :cond_4f
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_124

    .line 334
    :cond_54
    :goto_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 335
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 336
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v6

    .line 287
    :pswitch_60
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v3

    .line 288
    .local v3, "xspan":F
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v8, v3, v8

    if-lez v8, :cond_7a

    .line 289
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_7a

    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v8, :cond_c2

    .line 295
    :cond_7a
    :goto_7a
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v8, :cond_54

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float v5, v8, v9

    .line 297
    .local v5, "yDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float v2, v8, v9

    .line 298
    .local v2, "xDiff":F
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_54

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_54

    .line 300
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 301
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v8, :cond_54

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v8}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v8

    if-nez v8, :cond_54

    .line 302
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 305
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_54

    .line 292
    .end local v2    # "xDiff":F
    .end local v5    # "yDiff":F
    :cond_c2
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    .line 293
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    goto :goto_7a

    .line 314
    .end local v3    # "xspan":F
    :pswitch_ca
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v6, :cond_108

    .line 315
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v6

    int-to-float v8, v1

    int-to-float v9, v4

    invoke-direct {p0, v6, v8, v9}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v6

    .line 314
    if-eqz v6, :cond_108

    .line 316
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->isScrolledToTop()Z

    move-result v6

    .line 314
    :goto_e2
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 317
    int-to-float v6, v1

    int-to-float v8, v4

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 318
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v6, :cond_fa

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v6, v8}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 322
    :cond_fa
    :goto_fa
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    goto/16 :goto_54

    :cond_108
    move v6, v7

    .line 314
    goto :goto_e2

    .line 319
    :cond_10a
    iput-object v10, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 320
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    goto :goto_fa

    .line 329
    :pswitch_10f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_117

    move v7, v6

    .line 330
    :cond_117
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v6

    .line 329
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_54

    .line 285
    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_10f
        :pswitch_60
        :pswitch_10f
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_c

    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v9, :cond_31

    .line 398
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 406
    .local v0, "action":I
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 407
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v9

    float-to-int v5, v9

    .line 408
    .local v5, "x":I
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v9

    float-to-int v7, v9

    .line 410
    .local v7, "y":I
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    if-eqz v9, :cond_32

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 412
    return v10

    .line 396
    .end local v0    # "action":I
    .end local v5    # "x":I
    .end local v7    # "y":I
    :cond_31
    return v10

    .line 414
    .restart local v0    # "action":I
    .restart local v5    # "x":I
    .restart local v7    # "y":I
    :cond_32
    packed-switch v0, :pswitch_data_154

    .line 495
    :cond_35
    :goto_35
    :pswitch_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 496
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 497
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v9, :cond_150

    :goto_42
    return v11

    .line 416
    :pswitch_43
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v9, :cond_6a

    .line 417
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v9

    int-to-float v12, v5

    int-to-float v13, v7

    invoke-direct {p0, v9, v12, v13}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v9

    .line 416
    :goto_53
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 418
    int-to-float v9, v5

    int-to-float v12, v7

    invoke-direct {p0, v9, v12}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    goto :goto_35

    :cond_6a
    move v9, v10

    .line 416
    goto :goto_53

    .line 423
    :pswitch_6c
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v9, :cond_9d

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float v8, v9, v12

    .line 425
    .local v8, "yDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float v6, v9, v12

    .line 426
    .local v6, "xDiff":F
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_9d

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_9d

    .line 428
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 429
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v9, :cond_9d

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v9}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v9

    if-eqz v9, :cond_eb

    .line 438
    .end local v6    # "xDiff":F
    .end local v8    # "yDiff":F
    :cond_9d
    :goto_9d
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v9, :cond_108

    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_108

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    sub-float/2addr v9, v12

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    add-float v4, v9, v12

    .line 440
    .local v4, "rawHeight":F
    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v3

    .line 441
    .local v3, "newHeight":F
    const/4 v2, 0x0

    .line 442
    .local v2, "isFinished":Z
    const/4 v1, 0x0

    .line 443
    .local v1, "expanded":Z
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v9, v4, v9

    if-lez v9, :cond_c0

    .line 444
    const/4 v2, 0x1

    .line 445
    const/4 v1, 0x1

    .line 447
    :cond_c0
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_c9

    .line 448
    const/4 v2, 0x1

    .line 449
    const/4 v1, 0x0

    .line 452
    :cond_c9
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v9, :cond_d8

    .line 453
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v9, :cond_d6

    .line 454
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 456
    :cond_d6
    iput-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 459
    :cond_d8
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v9, v3}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 461
    if-eqz v2, :cond_102

    .line 462
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v9, v10}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 466
    :goto_ea
    return v11

    .line 430
    .end local v1    # "expanded":Z
    .end local v2    # "isFinished":Z
    .end local v3    # "newHeight":F
    .end local v4    # "rawHeight":F
    .restart local v6    # "xDiff":F
    .restart local v8    # "yDiff":F
    :cond_eb
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v9, v11}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 433
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_9d

    .line 464
    .end local v6    # "xDiff":F
    .end local v8    # "yDiff":F
    .restart local v1    # "expanded":Z
    .restart local v2    # "isFinished":Z
    .restart local v3    # "newHeight":F
    .restart local v4    # "rawHeight":F
    :cond_102
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v9, v11}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    goto :goto_ea

    .line 469
    .end local v1    # "expanded":Z
    .end local v2    # "isFinished":Z
    .end local v3    # "newHeight":F
    .end local v4    # "rawHeight":F
    :cond_108
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v9, :cond_35

    .line 472
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 474
    return v11

    .line 483
    :pswitch_116
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v12, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v12

    iget v13, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v12, v13

    add-float/2addr v9, v12

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 484
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v12, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v12

    iget v13, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v12, v13

    add-float/2addr v9, v12

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_35

    .line 490
    :pswitch_134
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_141

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v12, 0x3

    if-ne v9, v12, :cond_14e

    :cond_141
    move v9, v11

    .line 491
    :goto_142
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v12

    .line 490
    invoke-direct {p0, v9, v12}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_35

    :cond_14e
    move v9, v10

    .line 490
    goto :goto_142

    :cond_150
    move v11, v10

    .line 497
    goto/16 :goto_42

    .line 414
    nop

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_43
        :pswitch_134
        :pswitch_6c
        :pswitch_134
        :pswitch_35
        :pswitch_116
        :pswitch_116
    .end packed-switch
.end method

.method public onlyObserveMovements(Z)V
    .registers 2
    .param p1, "onlyMovements"    # Z

    .prologue
    .line 631
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 630
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 379
    return-void
.end method

.method public setEventSource(Landroid/view/View;)V
    .registers 2
    .param p1, "eventSource"    # Landroid/view/View;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 241
    return-void
.end method

.method public setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 249
    return-void
.end method
