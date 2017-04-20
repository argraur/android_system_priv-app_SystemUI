.class public Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private final mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private final mContext:Landroid/content/Context;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTargetedView:Landroid/view/View;

.field private mTouchSlop:I

.field private mTouchSlopExeeded:Z

.field private mTouchTargetSize:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .registers 3
    .param p1, "circleSize"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getTranslationFromRadius(F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;)V
    .registers 3
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .registers 2
    .param p1, "targetView"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconsFromTranslation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;)V
    .registers 11
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    move-object v0, p0

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 84
    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 311
    :cond_9
    return-void
.end method

.method private endMotion(ZFF)V
    .registers 6
    .param p1, "forceSnapBack"    # Z
    .param p2, "lastX"    # F
    .param p3, "lastY"    # F

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_14

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->flingWithCurrentVelocity(ZFF)V

    .line 222
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_13

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 224
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 216
    :cond_13
    return-void

    .line 220
    :cond_14
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    goto :goto_8
.end method

.method private fling(FZZ)V
    .registers 10
    .param p1, "vel"    # F
    .param p2, "snapBack"    # Z
    .param p3, "right"    # Z

    .prologue
    const/4 v5, 0x1

    .line 344
    if-eqz p3, :cond_4d

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v2

    neg-float v1, v2

    .line 346
    .local v1, "target":F
    :goto_a
    if-eqz p2, :cond_d

    const/4 v1, 0x0

    .line 348
    :cond_d
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v4, 0x0

    aput v3, v2, v4

    aput v1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 349
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v2, v0, v3, v1, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 350
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    if-nez p2, :cond_54

    .line 358
    const/high16 v2, 0x3ec00000    # 0.375f

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v2, v3, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v2, p3, v3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    .line 363
    :goto_40
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 364
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 365
    if-eqz p2, :cond_4c

    .line 366
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    .line 343
    :cond_4c
    return-void

    .line 345
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "target":F
    :cond_4d
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v1

    .restart local v1    # "target":F
    goto :goto_a

    .line 361
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_54
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    goto :goto_40
.end method

.method private flingWithCurrentVelocity(ZFF)V
    .registers 12
    .param p1, "forceSnapBack"    # Z
    .param p2, "lastX"    # F
    .param p3, "lastY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 318
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVelocity(FF)F

    move-result v1

    .line 321
    .local v1, "vel":F
    const/4 v0, 0x0

    .line 322
    .local v0, "snapBack":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->needsAntiFalsing()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 323
    if-nez v0, :cond_44

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v5}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    .line 325
    .end local v0    # "snapBack":Z
    :cond_18
    :goto_18
    if-nez v0, :cond_46

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    .line 328
    :goto_1e
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v5, v1

    cmpg-float v5, v5, v7

    if-gez v5, :cond_48

    const/4 v2, 0x1

    .line 329
    .local v2, "velIsInWrongDirection":Z
    :goto_26
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4a

    move v5, v2

    :goto_32
    or-int/2addr v0, v5

    .line 330
    .local v0, "snapBack":Z
    xor-int v5, v0, v2

    if-eqz v5, :cond_38

    const/4 v1, 0x0

    .line 331
    :cond_38
    if-nez v0, :cond_4c

    .end local p1    # "forceSnapBack":Z
    :goto_3a
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4e

    :goto_40
    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZZ)V

    .line 317
    return-void

    .line 323
    .end local v2    # "velIsInWrongDirection":Z
    .local v0, "snapBack":Z
    .restart local p1    # "forceSnapBack":Z
    :cond_44
    const/4 v0, 0x1

    goto :goto_18

    .line 325
    .end local v0    # "snapBack":Z
    :cond_46
    const/4 v0, 0x1

    .restart local v0    # "snapBack":Z
    goto :goto_1e

    .line 328
    .end local v0    # "snapBack":Z
    :cond_48
    const/4 v2, 0x0

    .restart local v2    # "velIsInWrongDirection":Z
    goto :goto_26

    :cond_4a
    move v5, v4

    .line 329
    goto :goto_32

    .local v0, "snapBack":Z
    :cond_4c
    move p1, v3

    .line 331
    goto :goto_3a

    .end local p1    # "forceSnapBack":Z
    :cond_4e
    move v3, v4

    goto :goto_40
.end method

.method private getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
    .registers 8
    .param p1, "right"    # Z
    .param p2, "radius"    # I

    .prologue
    .line 296
    if-eqz p1, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 297
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getCircleRadius()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    int-to-float v3, p2

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 298
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 308
    return-object v0

    .line 296
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_4
.end method

.method private getCurrentVelocity(FF)F
    .registers 13
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F

    .prologue
    .line 484
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_6

    .line 485
    const/4 v6, 0x0

    return v6

    .line 487
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 488
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 489
    .local v0, "aX":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 490
    .local v1, "aY":F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v3, p1, v6

    .line 491
    .local v3, "bX":F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v4, p2, v6

    .line 492
    .local v4, "bY":F
    float-to-double v6, v3

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .line 494
    .local v2, "bLen":F
    mul-float v6, v0, v3

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    div-float v5, v6, v2

    .line 495
    .local v5, "projectedVelocity":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v6, v7, :cond_36

    .line 496
    neg-float v5, v5

    .line 498
    :cond_36
    return v5
.end method

.method private getIconAtPosition(FF)Landroid/view/View;
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0

    .line 199
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0

    .line 202
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMinTranslationAmount()I
    .registers 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 340
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getRadiusFromTranslation(F)F
    .registers 4
    .param p1, "translation"    # F

    .prologue
    .line 431
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_9

    .line 432
    const/4 v0, 0x0

    return v0

    .line 434
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F
    .registers 6
    .param p1, "alpha"    # F
    .param p2, "icon"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 465
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    div-float v1, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    .line 466
    const v2, 0x3f4ccccd    # 0.8f

    .line 465
    add-float v0, v1, v2

    .line 467
    .local v0, "scale":F
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private getTranslationFromRadius(F)F
    .registers 6
    .param p1, "circleSize"    # F

    .prologue
    const/4 v1, 0x0

    .line 425
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    .line 426
    const/high16 v3, 0x3e800000    # 0.25f

    .line 425
    div-float v0, v2, v3

    .line 427
    .local v0, "translation":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_12

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    :cond_12
    return v1
.end method

.method private initDimens()V
    .registers 5

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 96
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    const v2, 0x7f1001bb

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    const v2, 0x7f1001bc

    .line 100
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    const v2, 0x7f1001bd

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    .line 106
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 94
    return-void
.end method

.method private initIcons()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    .line 110
    return-void
.end method

.method private initVelocityTracker()V
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 480
    :cond_9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 476
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .registers 4

    .prologue
    .line 335
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .registers 12
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float v2, v4, v5

    .line 211
    .local v2, "iconX":F
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float v3, v4, v5

    .line 212
    .local v3, "iconY":F
    sub-float v4, p2, v2

    float-to-double v4, v4

    sub-float v6, p3, v3

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 213
    .local v0, "distance":D
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_2f

    const/4 v4, 0x1

    :goto_2e
    return v4

    :cond_2f
    const/4 v4, 0x0

    goto :goto_2e
.end method

.method private leftSwipePossible()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private rightSwipePossible()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private setTranslation(FZZ)V
    .registers 22
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z

    .prologue
    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 378
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 379
    :goto_c
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 380
    .local v13, "absTranslation":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1a

    if-eqz p2, :cond_94

    .line 381
    :cond_1a
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_a7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 382
    .local v3, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_23
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object/from16 v17, v0

    .line 383
    .local v17, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v13, v2

    .line 386
    .local v14, "alpha":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v16, v2, v14

    .line 387
    .local v16, "fadeOutAlpha":F
    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 389
    if-eqz p2, :cond_b5

    move/from16 v15, p3

    .line 390
    :goto_44
    if-eqz p2, :cond_48

    if-eqz p3, :cond_b7

    :cond_48
    const/4 v12, 0x0

    .line 391
    .local v12, "forceNoCircleAnimation":Z
    :goto_49
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getRadiusFromTranslation(F)F

    move-result v4

    .line 392
    .local v4, "radius":F
    if-eqz p2, :cond_b9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v10

    .line 393
    :goto_55
    if-nez p2, :cond_bb

    .line 394
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v2

    mul-float v2, v2, v16

    add-float v5, v14, v2

    .line 395
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 394
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 400
    :goto_68
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v2

    mul-float v8, v16, v2

    const/4 v7, 0x0

    .line 401
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v17

    move v9, v15

    .line 400
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 402
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v2

    mul-float v8, v16, v2

    const/4 v7, 0x0

    .line 403
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move v9, v15

    .line 402
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 405
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    .line 376
    .end local v3    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .end local v4    # "radius":F
    .end local v12    # "forceNoCircleAnimation":Z
    .end local v14    # "alpha":F
    .end local v16    # "fadeOutAlpha":F
    .end local v17    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_94
    return-void

    .line 377
    .end local v13    # "absTranslation":F
    :cond_95
    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto/16 :goto_6

    .line 378
    :cond_9e
    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto/16 :goto_c

    .line 381
    .restart local v13    # "absTranslation":F
    :cond_a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v3    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto/16 :goto_23

    .line 382
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object/from16 v17, v0

    .restart local v17    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto/16 :goto_2e

    .line 389
    .restart local v14    # "alpha":F
    .restart local v16    # "fadeOutAlpha":F
    :cond_b5
    const/4 v15, 0x0

    .local v15, "animateIcons":Z
    goto :goto_44

    .line 390
    .end local v15    # "animateIcons":Z
    :cond_b7
    const/4 v12, 0x1

    .restart local v12    # "forceNoCircleAnimation":Z
    goto :goto_49

    .line 392
    .restart local v4    # "radius":F
    :cond_b9
    const/4 v10, 0x0

    .local v10, "slowAnimation":Z
    goto :goto_55

    .line 397
    .end local v10    # "slowAnimation":Z
    :cond_bb
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v2

    mul-float v8, v16, v2

    const/4 v7, 0x0

    .line 398
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v6, v3

    move v9, v15

    .line 397
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    goto :goto_68
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V
    .registers 5
    .param p1, "velocity"    # F
    .param p2, "mAnimationEndRunnable"    # Ljava/lang/Runnable;
    .param p3, "right"    # Z

    .prologue
    .line 372
    if-eqz p3, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 373
    .local v0, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_4
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V

    .line 371
    return-void

    .line 372
    .end local v0    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_4
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .registers 7
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 247
    if-eqz p1, :cond_24

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 248
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 249
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 271
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 272
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 246
    return-void

    .line 247
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_24
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_4
.end method

.method private startSwiping(Landroid/view/View;)V
    .registers 5
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_10

    move v0, v1

    :goto_8
    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 191
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 189
    return-void

    .line 190
    :cond_10
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    .registers 7
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 279
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 280
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 290
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 291
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 292
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 278
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 470
    :cond_9
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V
    .registers 9
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "circleRadius"    # F
    .param p3, "alpha"    # F
    .param p4, "animate"    # Z
    .param p5, "slowRadiusAnimation"    # Z
    .param p6, "force"    # Z
    .param p7, "forceNoCircleAnimation"    # Z

    .prologue
    .line 446
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p6, :cond_11

    .line 449
    :cond_8
    if-eqz p7, :cond_12

    .line 450
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadiusWithoutAnimation(F)V

    .line 454
    :goto_d
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 445
    return-void

    .line 447
    :cond_11
    return-void

    .line 452
    :cond_12
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    goto :goto_d
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .registers 6
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 458
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F

    move-result v0

    .line 459
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 460
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 461
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    .line 457
    return-void
.end method

.method private updateIconsFromTranslation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .registers 9
    .param p1, "targetView"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    const/4 v6, 0x0

    .line 410
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 411
    .local v0, "absTranslation":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v0, v4

    .line 414
    .local v1, "alpha":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v1

    .line 415
    .local v2, "fadeOutAlpha":F
    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 418
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v4, :cond_3b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 419
    .local v3, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_1d
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    invoke-direct {p0, p1, v4, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 420
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-direct {p0, v3, v4, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 421
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v5

    mul-float/2addr v5, v2

    invoke-direct {p0, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 409
    return-void

    .line 418
    .end local v3    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_3b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v3    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_1d
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 437
    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public isSwipingInProgress()Z
    .registers 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return v0
.end method

.method public launchAffordance(ZZ)V
    .registers 14
    .param p1, "animate"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_5

    .line 527
    return-void

    .line 529
    :cond_5
    if-eqz p2, :cond_31

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 530
    .local v10, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_9
    if-eqz p2, :cond_34

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 531
    .local v1, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_d
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 532
    if-eqz p1, :cond_39

    .line 533
    const/4 v2, 0x0

    if-eqz p2, :cond_37

    const/4 v0, 0x0

    :goto_16
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZZ)V

    .line 534
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 535
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 524
    :goto_30
    return-void

    .line 529
    .end local v1    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .end local v10    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_31
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v10    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_9

    .line 530
    :cond_34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v1    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_d

    .line 533
    :cond_37
    const/4 v0, 0x1

    goto :goto_16

    .line 537
    :cond_39
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    if-eqz p2, :cond_73

    const/4 v0, 0x0

    :goto_3e
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    .line 538
    if-eqz p2, :cond_75

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    :goto_4c
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    .line 540
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 541
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 542
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->instantFinishAnimation()V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_30

    .line 537
    :cond_73
    const/4 v0, 0x1

    goto :goto_3e

    .line 539
    :cond_75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    goto :goto_4c
.end method

.method public onConfigurationChanged()V
    .registers 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 501
    return-void
.end method

.method public onRtlPropertiesChanged()V
    .registers 1

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 506
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 124
    .local v0, "action":I
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    if-eqz v9, :cond_c

    if-eqz v0, :cond_c

    .line 125
    const/4 v9, 0x0

    return v9

    .line 127
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 128
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 130
    .local v5, "x":F
    const/4 v3, 0x0

    .line 131
    .local v3, "isUp":Z
    packed-switch v0, :pswitch_data_ba

    .line 186
    :cond_18
    :goto_18
    :pswitch_18
    const/4 v9, 0x1

    return v9

    .line 133
    :pswitch_1a
    invoke-direct {p0, v5, v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v4

    .line 134
    .local v4, "targetView":Landroid/view/View;
    if-eqz v4, :cond_28

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v9, :cond_2d

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eq v9, v4, :cond_2d

    .line 135
    :cond_28
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 136
    const/4 v9, 0x0

    return v9

    .line 138
    :cond_2d
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v9, :cond_49

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 143
    :goto_34
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 144
    iput v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 145
    iput v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 146
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initVelocityTracker()V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 149
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    goto :goto_18

    .line 141
    :cond_49
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    goto :goto_34

    .line 152
    .end local v4    # "targetView":Landroid/view/View;
    :pswitch_4d
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 153
    const/4 v9, 0x1

    invoke-direct {p0, v9, v5, v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    goto :goto_18

    .line 156
    :pswitch_55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 157
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v6, v5, v9

    .line 158
    .local v6, "xDist":F
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v8, v7, v9

    .line 159
    .local v8, "yDist":F
    float-to-double v10, v6

    float-to-double v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v1, v10

    .line 160
    .local v1, "distance":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v9, :cond_75

    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v1, v9

    if-lez v9, :cond_75

    .line 161
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 163
    :cond_75
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v9, :cond_18

    .line 164
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v9, v10, :cond_8e

    .line 165
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    sub-float v1, v9, v1

    .line 166
    const/4 v9, 0x0

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 171
    :goto_88
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v1, v9, v10}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    goto :goto_18

    .line 168
    :cond_8e
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v1, v9

    .line 169
    const/4 v9, 0x0

    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_88

    .line 176
    .end local v1    # "distance":F
    .end local v6    # "xDist":F
    .end local v8    # "yDist":F
    :pswitch_97
    const/4 v3, 0x1

    .line 178
    :pswitch_98
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v9, v10, :cond_b5

    const/4 v2, 0x1

    .line 179
    .local v2, "hintOnTheRight":Z
    :goto_9f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 180
    if-eqz v3, :cond_b7

    const/4 v9, 0x0

    :goto_a5
    invoke-direct {p0, v9, v5, v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    .line 181
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v9, :cond_18

    if-eqz v3, :cond_18

    .line 182
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v9, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)V

    goto/16 :goto_18

    .line 178
    .end local v2    # "hintOnTheRight":Z
    :cond_b5
    const/4 v2, 0x0

    .restart local v2    # "hintOnTheRight":Z
    goto :goto_9f

    .line 180
    :cond_b7
    const/4 v9, 0x1

    goto :goto_a5

    .line 131
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_97
        :pswitch_55
        :pswitch_98
        :pswitch_18
        :pswitch_4d
    .end packed-switch
.end method

.method public reset(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 513
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_16

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 510
    :cond_16
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .registers 3
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public updatePreviews()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 117
    return-void
.end method
