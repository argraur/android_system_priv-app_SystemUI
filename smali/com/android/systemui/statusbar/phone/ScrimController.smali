.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ScrimController$-void_animateKeyguardFadingOut_long_delay_long_duration_java_lang_Runnable_onAnimationFinished_boolean_skipFirstFrame_LambdaImpl0;
    }
.end annotation


# static fields
.field public static final KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final KEYGUARD_FADE_OUT_INTERPOLATOR_LOCKED:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimateChange:Z

.field private mAnimateKeyguardFadingOut:Z

.field private mAnimationDelay:J

.field protected mBouncerShowing:Z

.field private mCurrentBehindAlpha:F

.field private mCurrentHeadsUpAlpha:F

.field private mCurrentInFrontAlpha:F

.field private mDarkenWhileDragging:Z

.field private mDontAnimateBouncerChanges:Z

.field private mDozeBehindAlpha:F

.field private mDozeInFrontAlpha:F

.field private mDozing:Z

.field private mDraggedHeadsUpView:Landroid/view/View;

.field private mDurationOverride:J

.field private mExpanding:Z

.field private mForceHideScrims:Z

.field private mFraction:F

.field private final mHeadsUpScrim:Landroid/view/View;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

.field private mKeyguardFadingOutInProgress:Z

.field protected mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private mPinnedHeadsUpCount:I

.field protected final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field private mScrimBehindAlpha:F

.field private mScrimBehindAlphaKeyguard:F

.field private mScrimBehindAlphaUnlocking:F

.field private final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private mSkipFirstFrame:Z

.field private mTopHeadsUpDragAmount:F

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;F)V
    .registers 3
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .registers 2
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v3, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 48
    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 50
    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR_LOCKED:Landroid/view/animation/Interpolator;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;)V
    .registers 8
    .param p1, "scrimBehind"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "scrimInFront"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p3, "headsUpScrim"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const v1, 0x3f1eb852    # 0.62f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    .line 69
    const v1, 0x3ee66666    # 0.45f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    .line 70
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaUnlocking:F

    .line 82
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 85
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 91
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 103
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 104
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 107
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 108
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 101
    return-void
.end method

.method private calculateHeadsUpAlpha()F
    .registers 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 541
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_15

    .line 542
    const/high16 v0, 0x3f800000    # 1.0f

    .line 548
    .local v0, "alpha":F
    :goto_9
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    sub-float v1, v4, v2

    .line 549
    .local v1, "expandFactor":F
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 550
    mul-float v2, v0, v1

    return v2

    .line 543
    .end local v0    # "alpha":F
    .end local v1    # "expandFactor":F
    :cond_15
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    if-nez v2, :cond_1b

    .line 544
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_9

    .line 546
    .end local v0    # "alpha":F
    :cond_1b
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    sub-float v0, v4, v2

    .restart local v0    # "alpha":F
    goto :goto_9
.end method

.method private endAnimateKeyguardFadingOut(Z)V
    .registers 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 436
    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 434
    :cond_16
    :goto_16
    return-void

    .line 437
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 439
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 441
    :cond_22
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    goto :goto_16
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .registers 3
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    :goto_6
    return v0

    .line 339
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_e

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_6

    .line 340
    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    goto :goto_6
.end method

.method private getDozeAlpha(Landroid/view/View;)F
    .registers 3
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    goto :goto_6
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 409
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR_LOCKED:Landroid/view/animation/Interpolator;

    return-object v0

    .line 410
    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_16

    .line 411
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimController;->KEYGUARD_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0

    .line 413
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getScrimInFrontAlpha()F
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 245
    const v0, 0x3f59999a    # 0.85f

    .line 244
    :goto_b
    return v0

    .line 246
    :cond_c
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_b
.end method

.method private isAnimating(Landroid/view/View;)Z
    .registers 3
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 446
    const v0, 0x7f120030

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private scheduleUpdate()V
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_5

    return-void

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 248
    return-void
.end method

.method private setCurrentScrimAlpha(Landroid/view/View;F)V
    .registers 5
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_7

    .line 345
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 343
    :goto_6
    return-void

    .line 346
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_e

    .line 347
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_6

    .line 349
    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 350
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    goto :goto_6
.end method

.method private setScrimBehindColor(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Landroid/view/View;F)V

    .line 314
    return-void
.end method

.method private setScrimColor(Landroid/view/View;F)V
    .registers 5
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(ZLandroid/view/View;FF)V

    .line 329
    return-void
.end method

.method private setScrimInFrontColor(F)V
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v0, 0x0

    .line 319
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Landroid/view/View;F)V

    .line 320
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_11

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    .line 318
    :goto_10
    return-void

    .line 325
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v2, :cond_1b

    :goto_17
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    goto :goto_10

    :cond_1b
    const/4 v0, 0x1

    goto :goto_17
.end method

.method private startScrimAnimation(Landroid/view/View;F)V
    .registers 10
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "target"    # F

    .prologue
    const/4 v6, 0x1

    .line 367
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 368
    .local v1, "current":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p2, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 369
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 379
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5f

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    :goto_2f
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 380
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 396
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v2, :cond_45

    .line 397
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    .line 398
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    .line 400
    :cond_45
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    if-eqz v2, :cond_4e

    .line 401
    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 403
    :cond_4e
    const v2, 0x7f120030

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 404
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f120031

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 366
    return-void

    .line 379
    :cond_5f
    const-wide/16 v2, 0xdc

    goto :goto_2f
.end method

.method private updateHeadsUpScrim(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->calculateHeadsUpAlpha()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentHeadsUpAlpha:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(ZLandroid/view/View;FF)V

    .line 477
    return-void
.end method

.method private updateScrim(ZLandroid/view/View;FF)V
    .registers 15
    .param p1, "animate"    # Z
    .param p2, "scrim"    # Landroid/view/View;
    .param p3, "alpha"    # F
    .param p4, "currentAlpha"    # F

    .prologue
    .line 482
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadingOutInProgress:Z

    if-eqz v7, :cond_5

    .line 483
    return-void

    .line 487
    :cond_5
    const v7, 0x7f120030

    .line 486
    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    .line 488
    .local v2, "previousAnimator":Landroid/animation/ValueAnimator;
    const/high16 v0, -0x40800000    # -1.0f

    .line 489
    .local v0, "animEndValue":F
    if-eqz v2, :cond_1b

    .line 490
    if-nez p1, :cond_18

    cmpl-float v7, p3, p4

    if-nez v7, :cond_3d

    .line 491
    :cond_18
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 496
    :cond_1b
    :goto_1b
    cmpl-float v7, p3, p4

    if-eqz v7, :cond_3c

    cmpl-float v7, p3, v0

    if-eqz v7, :cond_3c

    .line 497
    if-eqz p1, :cond_4b

    .line 498
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V

    .line 499
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f120032

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 500
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f120033

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 481
    :cond_3c
    :goto_3c
    return-void

    .line 493
    :cond_3d
    const v7, 0x7f120033

    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1b

    .line 502
    :cond_4b
    if-eqz v2, :cond_a5

    .line 504
    const v7, 0x7f120032

    .line 503
    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 506
    .local v4, "previousStartValue":F
    const v7, 0x7f120033

    .line 505
    invoke-static {p2, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 509
    .local v3, "previousEndValue":F
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 510
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    sub-float v5, p3, v3

    .line 511
    .local v5, "relativeDiff":F
    add-float v1, v4, v5

    .line 512
    .local v1, "newStartValue":F
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 513
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v9, 0x1

    aput p3, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 514
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f120032

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 515
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v8, 0x7f120033

    invoke-virtual {p2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 516
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_3c

    .line 519
    .end local v1    # "newStartValue":F
    .end local v3    # "previousEndValue":F
    .end local v4    # "previousStartValue":F
    .end local v5    # "relativeDiff":F
    .end local v6    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_a5
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    .line 520
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    goto :goto_3c
.end method

.method private updateScrimColor(Landroid/view/View;)V
    .registers 9
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 355
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 356
    .local v1, "alpha1":F
    instance-of v3, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v3, :cond_2d

    .line 357
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeAlpha(Landroid/view/View;)F

    move-result v2

    .line 358
    .local v2, "alpha2":F
    sub-float v3, v5, v1

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    sub-float v0, v5, v3

    .line 359
    .local v0, "alpha":F
    const/4 v3, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 360
    check-cast p1, Lcom/android/systemui/statusbar/ScrimView;

    .end local p1    # "scrim":Landroid/view/View;
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ScrimView;->setScrimColor(I)V

    .line 354
    .end local v0    # "alpha":F
    .end local v2    # "alpha2":F
    :goto_2c
    return-void

    .line 362
    .restart local p1    # "scrim":Landroid/view/View;
    :cond_2d
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2c
.end method

.method private updateScrimKeyguard()V
    .registers 9

    .prologue
    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 282
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-eqz v2, :cond_37

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v2, :cond_37

    .line 283
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 284
    .local v0, "behindFraction":F
    sub-float v1, v4, v0

    .line 285
    .local v1, "fraction":F
    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 286
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimInFrontAlpha()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 288
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    mul-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 281
    .end local v0    # "behindFraction":F
    .end local v1    # "fraction":F
    :goto_36
    return-void

    .line 289
    :cond_37
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v2, :cond_46

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimInFrontAlpha()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 291
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_36

    .line 293
    :cond_46
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 294
    .restart local v1    # "fraction":F
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 296
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaUnlocking:F

    sub-float/2addr v2, v3

    .line 295
    mul-float/2addr v2, v1

    .line 297
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaUnlocking:F

    .line 295
    add-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_36
.end method

.method private updateScrimNormal()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 302
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    .line 304
    .local v0, "frac":F
    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd    # 0.2f

    sub-float v0, v2, v3

    .line 305
    cmpg-float v2, v0, v4

    if-gtz v2, :cond_16

    .line 306
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 301
    :goto_15
    return-void

    .line 309
    :cond_16
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double v2, v6, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double v2, v6, v2

    double-to-float v1, v2

    .line 310
    .local v1, "k":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_15
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_ScrimController-mthref-0()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public abortKeyguardFadingOut()V
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_8

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->endAnimateKeyguardFadingOut(Z)V

    .line 193
    :cond_8
    return-void
.end method

.method public animateGoingToFullShade(JJ)V
    .registers 6
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 208
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 209
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 207
    return-void
.end method

.method public animateKeyguardFadingOut(JJLjava/lang/Runnable;Z)V
    .registers 12
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "onAnimationFinished"    # Ljava/lang/Runnable;
    .param p6, "skipFirstFrame"    # Z

    .prologue
    const/4 v1, 0x1

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 173
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 174
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 175
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 176
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    .line 177
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    .line 170
    :goto_1e
    return-void

    .line 189
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$-void_animateKeyguardFadingOut_long_delay_long_duration_java_lang_Runnable_onAnimationFinished_boolean_skipFirstFrame_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$-void_animateKeyguardFadingOut_long_delay_long_duration_java_lang_Runnable_onAnimationFinished_boolean_skipFirstFrame_LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ScrimView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1e
.end method

.method public animateKeyguardUnoccluding(J)V
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 204
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 199
    return-void
.end method

.method public animateNextChange()V
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 214
    return-void
.end method

.method public dontAnimateBouncerChangesUntilNextFrame()V
    .registers 2

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    .line 559
    return-void
.end method

.method public forceHideScrims(Z)V
    .registers 3
    .param p1, "hide"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 556
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 553
    return-void
.end method

.method public getDozeBehindAlpha()F
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    return v0
.end method

.method public getDozeInFrontAlpha()F
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    return v0
.end method

.method public getScrimBehindColor()I
    .registers 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getScrimColorWithAlpha()I

    move-result v0

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 4

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 581
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 582
    const v2, 0x7f1001ba

    .line 581
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 583
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHeadsUpScrim:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    return-void
.end method

.method public onExpandingFinished()V
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    .line 141
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 3
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 459
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    .line 460
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 458
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .registers 2
    .param p1, "inPinnedMode"    # Z

    .prologue
    .line 454
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .registers 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 474
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 3
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 465
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    .line 470
    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 464
    return-void
.end method

.method public onPreDraw()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 420
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 421
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    if-eqz v0, :cond_12

    .line 422
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    .line 424
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 425
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 426
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 427
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSkipFirstFrame:Z

    .line 430
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->endAnimateKeyguardFadingOut(Z)V

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackingStarted()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :cond_c
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 136
    return-void
.end method

.method public setBouncerShowing(Z)V
    .registers 4
    .param p1, "showing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    .line 160
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDontAnimateBouncerChanges:Z

    if-eqz v1, :cond_11

    :cond_b
    :goto_b
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 158
    return-void

    .line 160
    :cond_11
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "currentUser"    # I

    .prologue
    .line 586
    return-void
.end method

.method public setDozeBehindAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 231
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    .line 230
    return-void
.end method

.method public setDozeInFrontAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 226
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;)V

    .line 225
    return-void
.end method

.method public setDozing(Z)V
    .registers 3
    .param p1, "dozing"    # Z

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eq v0, p1, :cond_9

    .line 220
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 218
    :cond_9
    return-void
.end method

.method public setDrawBehindAsSrc(Z)V
    .registers 3
    .param p1, "asSrc"    # Z

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 449
    return-void
.end method

.method public setExcludedBackgroundArea(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "area"    # Landroid/graphics/Rect;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setExcludedArea(Landroid/graphics/Rect;)V

    .line 563
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 111
    return-void
.end method

.method public setLeftInset(I)V
    .registers 3
    .param p1, "inset"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setLeftInset(I)V

    .line 567
    return-void
.end method

.method public setPanelExpansion(F)V
    .registers 4
    .param p1, "fraction"    # F

    .prologue
    const/4 v1, 0x0

    .line 146
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1c

    .line 147
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPinnedHeadsUpCount:I

    if-eqz v0, :cond_13

    .line 150
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 152
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1c

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardFadeoutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 145
    :cond_1c
    return-void
.end method

.method public setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "changeRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method

.method public setTopHeadsUpDragAmount(Landroid/view/View;F)V
    .registers 4
    .param p1, "draggedHeadsUpView"    # Landroid/view/View;
    .param p2, "topHeadsUpDragAmount"    # F

    .prologue
    .line 534
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTopHeadsUpDragAmount:F

    .line 535
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDraggedHeadsUpView:Landroid/view/View;

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateHeadsUpScrim(Z)V

    .line 533
    return-void
.end method

.method public setWakeAndUnlocking()V
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 164
    return-void
.end method

.method protected updateScrims()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    if-eqz v0, :cond_15

    .line 259
    :cond_b
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 260
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 278
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 257
    return-void

    .line 261
    :cond_15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_2b

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v0, :cond_24

    .line 266
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 267
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_11

    .line 269
    :cond_24
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 270
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_11

    .line 272
    :cond_2b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v0, :cond_37

    .line 276
    :cond_33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimKeyguard()V

    goto :goto_11

    .line 273
    :cond_37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimNormal()V

    .line 274
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_11
.end method
