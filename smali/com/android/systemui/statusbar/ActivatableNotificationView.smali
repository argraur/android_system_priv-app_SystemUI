.class public abstract Lcom/android/systemui/statusbar/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ActivatableNotificationView$1;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$2;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$3;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$4;,
        Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivated:Z

.field private mActivationX:F

.field private mActivationY:F

.field private mAnimationTranslationY:F

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBgAlpha:F

.field private mBgTint:I

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentBackgroundTint:I

.field private mDark:Z

.field private mDimmed:Z

.field private mDimmedBackgroundFadeInAmount:F

.field private final mDoubleTapSlop:F

.field private mDownX:F

.field private mDownY:F

.field private mDrawingAppearAnimation:Z

.field private mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

.field private mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mIsBelowSpeedBump:Z

.field private final mLegacyColor:I

.field private final mLowPriorityColor:I

.field private final mLowPriorityRippleColor:I

.field private mNormalBackgroundVisibilityAmount:F

.field private final mNormalColor:I

.field protected final mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

.field private mShadowAlpha:F

.field private mShowingLegacyBackground:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTint:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTargetTint:I

.field private final mTintedRippleColor:I

.field private final mTouchSlop:F

.field private mTrackTouch:Z

.field private mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mStartTint:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/ActivatableNotificationView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTargetTint:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/ActivatableNotificationView;I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 90
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 89
    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 92
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 91
    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 101
    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    .line 132
    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 144
    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 145
    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 163
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 162
    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 169
    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    .line 209
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapSlop:F

    .line 179
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 180
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 181
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipChildren(Z)V

    .line 182
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToPadding(Z)V

    .line 183
    const v0, 0x7f0c0091

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLegacyColor:I

    .line 184
    const v0, 0x7f0c0092

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    .line 186
    const v0, 0x7f0c0094

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    .line 188
    const v0, 0x7f0c0098

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    .line 190
    const v0, 0x7f0c0097

    .line 189
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    .line 192
    const v0, 0x7f0c0096

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    .line 193
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 175
    return-void
.end method

.method private calculateBgColor(Z)I
    .registers 3
    .param p1, "withTint"    # Z

    .prologue
    .line 874
    if-eqz p1, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_9

    .line 875
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    return v0

    .line 876
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_10

    .line 877
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLegacyColor:I

    return v0

    .line 878
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_17

    .line 879
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    return v0

    .line 881
    :cond_17
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    return v0
.end method

.method private cancelAppearAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 799
    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 796
    :cond_c
    return-void
.end method

.method private cancelFadeAnimations()V
    .registers 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 676
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 672
    return-void
.end method

.method private enableAppearDrawing(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v0, :cond_18

    .line 906
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 907
    if-nez p1, :cond_15

    .line 908
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setContentAlpha(F)V

    .line 909
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 910
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 912
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    .line 904
    :cond_18
    return-void
.end method

.method private fadeDimmedBackground()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 585
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 586
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 587
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v3, :cond_1b

    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 589
    return-void

    .line 591
    :cond_1b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 592
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_5e

    .line 593
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 598
    :cond_2a
    :goto_2a
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_64

    const/high16 v2, 0x3f800000    # 1.0f

    .line 599
    .local v2, "startAlpha":F
    :goto_30
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v3, :cond_66

    const/4 v1, 0x0

    .line 600
    .local v1, "endAlpha":F
    :goto_35
    const/16 v0, 0xdc

    .line 602
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_69

    .line 603
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 604
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-int v0, v4

    .line 605
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 606
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 607
    if-gtz v0, :cond_69

    .line 608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 609
    return-void

    .line 595
    .end local v0    # "duration":I
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_5e
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_2a

    .line 598
    :cond_64
    const/4 v2, 0x0

    .restart local v2    # "startAlpha":F
    goto :goto_30

    .line 599
    :cond_66
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "endAlpha":F
    goto :goto_35

    .line 612
    .restart local v0    # "duration":I
    :cond_69
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 614
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 613
    iput-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 615
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 616
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 617
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$10;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 628
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 584
    return-void
.end method

.method private fadeInFromDark(J)V
    .registers 12
    .param p1, "delay"    # J

    .prologue
    const-wide/16 v6, 0xaa

    const/high16 v5, 0x40000000    # 2.0f

    const v4, 0x3f6e147b    # 0.93f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 547
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_94

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 548
    .local v0, "background":Landroid/view/View;
    :goto_f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 549
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 550
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 552
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 553
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 554
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 560
    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 554
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 561
    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$9;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/view/View;)V

    .line 554
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 570
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundVisibilityUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 554
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 572
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_98

    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    .line 573
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 575
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 577
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mUpdateOutlineListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 578
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 546
    return-void

    .line 547
    .end local v0    # "background":Landroid/view/View;
    :cond_94
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    goto/16 :goto_f

    .line 572
    :array_98
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 267
    .local v0, "action":I
    packed-switch v0, :pswitch_data_90

    .line 319
    :cond_9
    :goto_9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTrackTouch:Z

    return v2

    .line 269
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    .line 271
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTrackTouch:Z

    .line 272
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 273
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTrackTouch:Z

    goto :goto_9

    .line 277
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 278
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 279
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTrackTouch:Z

    goto :goto_9

    .line 283
    :pswitch_34
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleSlideBack()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 285
    return v7

    .line 287
    :cond_41
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v2, :cond_5c

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeActive()V

    .line 289
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4b0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivationX:F

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivationY:F

    goto :goto_9

    .line 293
    :cond_5c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 294
    .local v1, "withinDoubleTapSlop":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivationX:F

    sub-float/2addr v3, v4

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivationY:F

    sub-float/2addr v4, v5

    .line 294
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDoubleTap(ZFF)V

    .line 298
    if-eqz v1, :cond_7c

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performClick()Z

    move-result v2

    if-nez v2, :cond_9

    .line 300
    return v6

    .line 303
    :cond_7c
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 304
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTrackTouch:Z

    goto :goto_9

    .line 308
    .end local v1    # "withinDoubleTapSlop":Z
    :cond_82
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 309
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTrackTouch:Z

    goto :goto_9

    .line 313
    :pswitch_88
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 314
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTrackTouch:Z

    goto/16 :goto_9

    .line 267
    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_c
        :pswitch_34
        :pswitch_28
        :pswitch_88
    .end packed-switch
.end method

.method private isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 413
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v2, :cond_7

    .line 415
    return v0

    .line 418
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivationX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2c

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivationY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDoubleTapSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2a

    .line 418
    :goto_29
    return v0

    :cond_2a
    move v0, v1

    .line 419
    goto :goto_29

    :cond_2c
    move v0, v1

    .line 418
    goto :goto_29
.end method

.method private isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_24

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_24

    const/4 v0, 0x1

    .line 408
    :cond_24
    return v0
.end method

.method private makeActive()V
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationActive()V

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_15

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 322
    :cond_15
    return-void
.end method

.method private setBackgroundTintColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 534
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    .line 535
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    if-ne p1, v0, :cond_7

    .line 537
    const/4 p1, 0x0

    .line 539
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 533
    return-void
.end method

.method private setContentAlpha(F)V
    .registers 6
    .param p1, "contentAlpha"    # F

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 856
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 857
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_15

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_24

    :cond_15
    const/4 v2, 0x0

    .line 859
    .local v2, "layerType":I
    :goto_16
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v1

    .line 860
    .local v1, "currentLayerType":I
    if-eq v1, v2, :cond_20

    .line 861
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 864
    .end local v1    # "currentLayerType":I
    .end local v2    # "layerType":I
    :cond_20
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 854
    return-void

    .line 858
    :cond_24
    const/4 v2, 0x2

    .restart local v2    # "layerType":I
    goto :goto_16
.end method

.method private startActivateAnimation(Z)V
    .registers 14
    .param p1, "reverse"    # Z

    .prologue
    const-wide/16 v10, 0xdc

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_c

    .line 333
    return-void

    .line 335
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    .line 336
    .local v5, "widthHalf":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getActualHeight()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 337
    .local v2, "heightHalf":I
    mul-int v8, v5, v5

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 339
    .local v4, "radius":F
    if-eqz p1, :cond_70

    .line 340
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v8, v5, v2, v4, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 346
    .local v1, "animator":Landroid/animation/Animator;
    :goto_2f
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 349
    if-nez p1, :cond_77

    .line 350
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 351
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 356
    .local v0, "alphaInterpolator":Landroid/view/animation/Interpolator;
    :goto_3b
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 358
    if-eqz p1, :cond_7c

    .line 359
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 360
    new-instance v8, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 371
    :goto_53
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 372
    if-eqz p1, :cond_88

    .line 371
    :goto_5b
    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 374
    new-instance v7, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 371
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 331
    return-void

    .line 343
    .end local v0    # "alphaInterpolator":Landroid/view/animation/Interpolator;
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_70
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-static {v8, v5, v2, v6, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .restart local v1    # "animator":Landroid/animation/Animator;
    goto :goto_2f

    .line 353
    :cond_77
    sget-object v3, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 354
    .restart local v3    # "interpolator":Landroid/view/animation/Interpolator;
    sget-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v0    # "alphaInterpolator":Landroid/view/animation/Interpolator;
    goto :goto_3b

    .line 368
    :cond_7c
    iget-object v8, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 369
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_53

    :cond_88
    move v6, v7

    .line 372
    goto :goto_5b
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;)V
    .registers 13
    .param p1, "isAppearing"    # Z
    .param p2, "translationDirection"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelAppearAnimation()V

    .line 724
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 725
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1c

    .line 727
    if-eqz p1, :cond_7a

    .line 728
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 729
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 737
    :cond_1c
    :goto_1c
    if-eqz p1, :cond_81

    .line 738
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 739
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 740
    const/high16 v0, 0x3f800000    # 1.0f

    .line 746
    .local v0, "targetValue":F
    :goto_28
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 747
    const/4 v2, 0x1

    aput v0, v1, v2

    .line 746
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 748
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 749
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 750
    long-to-float v2, p5

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 749
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 751
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$11;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 760
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_6a

    .line 762
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 763
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 766
    :cond_6a
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;

    invoke-direct {v2, p0, p7, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView$12;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 790
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 722
    return-void

    .line 731
    .end local v0    # "targetValue":F
    :cond_7a
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 732
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_1c

    .line 742
    :cond_81
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 743
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 744
    const/4 v0, 0x0

    .restart local v0    # "targetValue":F
    goto :goto_28
.end method

.method private updateAppearAnimationAlpha()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 847
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 848
    .local v0, "contentAlphaProgress":F
    div-float/2addr v0, v1

    .line 849
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 850
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 851
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setContentAlpha(F)V

    .line 846
    return-void
.end method

.method private updateAppearRect()V
    .registers 16

    .prologue
    const v14, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 809
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v3, v13, v10

    .line 810
    .local v3, "inverseFraction":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 811
    .local v8, "translationFraction":F
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float v7, v8, v10

    .line 812
    .local v7, "translateYTotalAmount":F
    iput v7, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 815
    sub-float v10, v3, v12

    .line 816
    const v11, 0x3f4ccccd    # 0.8f

    .line 815
    div-float v9, v10, v11

    .line 817
    .local v9, "widthFraction":F
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 818
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 819
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ef33333    # 0.475f

    mul-float/2addr v10, v11

    mul-float v4, v10, v9

    .line 821
    .local v4, "left":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v5, v10, v4

    .line 824
    .local v5, "right":F
    sub-float v10, v3, v12

    div-float v2, v10, v13

    .line 826
    .local v2, "heightFraction":F
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 827
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 831
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    .line 832
    .local v0, "actualHeight":I
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_6e

    .line 833
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v11, v2

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    sub-float v1, v10, v7

    .line 835
    .local v1, "bottom":F
    mul-float v6, v1, v2

    .line 841
    .local v6, "top":F
    :goto_5f
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 842
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v10, v6

    .line 843
    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v11, v1

    .line 842
    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(FFFF)V

    .line 808
    return-void

    .line 837
    .end local v1    # "bottom":F
    .end local v6    # "top":F
    :cond_6e
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    mul-float/2addr v10, v14

    sub-float v6, v10, v7

    .line 839
    .restart local v6    # "top":F
    int-to-float v10, v0

    sub-float v11, v13, v2

    mul-float/2addr v10, v11

    mul-float v11, v6, v2

    add-float v1, v10, v11

    .restart local v1    # "bottom":F
    goto :goto_5f
.end method

.method private updateBackgroundTint(Z)V
    .registers 8
    .param p1, "animated"    # Z

    .prologue
    .line 500
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_9

    .line 501
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 503
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getRippleColor()I

    move-result v1

    .line 504
    .local v1, "rippleColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 505
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    .line 507
    .local v0, "color":I
    if-nez p1, :cond_21

    .line 508
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBackgroundTintColor(I)V

    .line 499
    :cond_20
    :goto_20
    return-void

    .line 509
    :cond_21
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    if-eq v0, v2, :cond_20

    .line 510
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentBackgroundTint:I

    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mStartTint:I

    .line 511
    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTargetTint:I

    .line 512
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_60

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    .line 513
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 521
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x168

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 522
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 523
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 529
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_20

    .line 512
    nop

    :array_60
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateOutlineAlpha()V
    .registers 4

    .prologue
    .line 448
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v1, :cond_9

    .line 449
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineAlpha(F)V

    .line 450
    return-void

    .line 453
    :cond_9
    const v1, 0x3e99999a    # 0.3f

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    mul-float/2addr v1, v2

    .line 452
    const v2, 0x3f333333    # 0.7f

    .line 453
    add-float v0, v2, v1

    .line 454
    .local v0, "alpha":F
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    mul-float/2addr v0, v1

    .line 455
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_22

    .line 456
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFadeInFromDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    mul-float/2addr v0, v1

    .line 458
    :cond_22
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineAlpha(F)V

    .line 447
    return-void
.end method


# virtual methods
.method public calculateBgColor()I
    .registers 2

    .prologue
    .line 870
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(Z)I

    move-result v0

    return v0
.end method

.method public cancelAppearDrawing()V
    .registers 2

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelAppearAnimation()V

    .line 805
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 803
    return-void
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_d

    .line 919
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 920
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 922
    :cond_d
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 923
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_17

    .line 924
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 917
    :cond_17
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_9

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    .line 249
    :cond_9
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->drawableStateChanged()V

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_11

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    .line 256
    :goto_10
    return-void

    .line 261
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    goto :goto_10
.end method

.method public getBackgroundColorWithoutTint()I
    .registers 2

    .prologue
    .line 965
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->calculateBgColor(Z)I

    move-result v0

    return v0
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method protected getRippleColor()I
    .registers 2

    .prologue
    .line 886
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_7

    .line 887
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    return v0

    .line 888
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_e

    .line 889
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    return v0

    .line 890
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_15

    .line 891
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    return v0

    .line 893
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    return v0
.end method

.method public getShadowAlpha()F
    .registers 2

    .prologue
    .line 945
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    return v0
.end method

.method protected handleSlideBack()Z
    .registers 2

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public makeInactive(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_11

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 393
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_11

    .line 394
    if-eqz p1, :cond_20

    .line 395
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 401
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_1a

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 404
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 390
    return-void

    .line 397
    :cond_20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_11
.end method

.method protected onAppearAnimationFinished(Z)V
    .registers 2
    .param p1, "wasAppearing"    # Z

    .prologue
    .line 793
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onFinishInflate()V

    .line 199
    const v0, 0x7f120252

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 200
    const v0, 0x7f120258

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    .line 201
    const v0, 0x7f120253

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f0201b3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f0201b4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 197
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_d

    .line 222
    :cond_8
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 219
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 218
    if-eqz v0, :cond_8

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 682
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onLayout(ZIIII)V

    .line 683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotX(F)V

    .line 681
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v2, :cond_1b

    .line 237
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 238
    .local v1, "wasActivated":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 239
    .local v0, "result":Z
    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 240
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 245
    .end local v1    # "wasActivated":Z
    :cond_1a
    :goto_1a
    return v0

    .line 243
    .end local v0    # "result":Z
    :cond_1b
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_1a
.end method

.method public performAddAnimation(JJ)V
    .registers 14
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v2, 0x1

    .line 715
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 716
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_11

    .line 717
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 714
    :cond_11
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .registers 14
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 704
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 705
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_13

    .line 707
    const-wide/16 v4, 0x0

    .line 706
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 703
    :cond_12
    :goto_12
    return-void

    .line 708
    :cond_13
    if-eqz p4, :cond_12

    .line 709
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_12
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 933
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTintColor(I)V

    .line 934
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetBackgroundAlpha()V

    .line 935
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setShowingLegacyBackground(Z)V

    .line 936
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBelowSpeedBump(Z)V

    .line 932
    return-void
.end method

.method protected resetBackgroundAlpha()V
    .registers 2

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundAlpha(F)V

    .line 639
    return-void
.end method

.method public setActualHeight(IZ)V
    .registers 4
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 688
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 689
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotY(F)V

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 687
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .registers 3
    .param p1, "below"    # Z

    .prologue
    .line 473
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    .line 474
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_c

    .line 475
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 472
    :cond_c
    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 3
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 696
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 695
    return-void
.end method

.method public setDark(ZZJ)V
    .registers 6
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 435
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setDark(ZZJ)V

    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-ne v0, p1, :cond_8

    .line 437
    return-void

    .line 439
    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 441
    if-nez p1, :cond_17

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 444
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 434
    return-void

    .line 442
    :cond_1b
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V

    goto :goto_17
.end method

.method public setDimmed(ZZ)V
    .registers 4
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_e

    .line 424
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetBackgroundAlpha()V

    .line 426
    if-eqz p2, :cond_f

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V

    .line 422
    :cond_e
    :goto_e
    return-void

    .line 429
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_e
.end method

.method public setFakeShadowIntensity(FFII)V
    .registers 8
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFakeShadow:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getTranslationZ()F

    move-result v1

    .line 960
    const v2, 0x3dcccccd    # 0.1f

    .line 959
    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/FakeShadowView;->setFakeShadowTranslationZ(FFII)V

    .line 958
    return-void
.end method

.method public setNormalBackgroundVisibilityAmount(F)V
    .registers 2
    .param p1, "normalBackgroundVisibilityAmount"    # F

    .prologue
    .line 462
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalBackgroundVisibilityAmount:F

    .line 463
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 461
    return-void
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V
    .registers 2
    .param p1, "onActivatedListener"    # Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .line 928
    return-void
.end method

.method public setShadowAlpha(F)V
    .registers 3
    .param p1, "shadowAlpha"    # F

    .prologue
    .line 950
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 951
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShadowAlpha:F

    .line 952
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    .line 949
    :cond_b
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    .line 468
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 466
    return-void
.end method

.method public setTintColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTintColor(IZ)V

    .line 483
    return-void
.end method

.method public setTintColor(IZ)V
    .registers 3
    .param p1, "color"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 491
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 492
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 490
    return-void
.end method

.method protected shouldHideBackground()Z
    .registers 2

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    return v0
.end method

.method protected updateBackground()V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 644
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 646
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 647
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 665
    :goto_17
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_63

    move v1, v4

    .line 664
    :goto_20
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setNormalBackgroundVisibilityAmount(F)V

    .line 643
    return-void

    .line 648
    :cond_24
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_4b

    .line 651
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isGroupExpansionChanging()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    .line 652
    :goto_32
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v0, :cond_49

    move v1, v2

    :goto_37
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 653
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v5, :cond_42

    if-eqz v0, :cond_43

    :cond_42
    move v2, v3

    :cond_43
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_17

    .line 651
    :cond_47
    const/4 v0, 0x0

    .local v0, "dontShowDimmed":Z
    goto :goto_32

    .end local v0    # "dontShowDimmed":Z
    :cond_49
    move v1, v3

    .line 652
    goto :goto_37

    .line 657
    :cond_4b
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 658
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 659
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 660
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 662
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_17

    .line 665
    :cond_63
    const/4 v1, 0x0

    goto :goto_20
.end method

.method protected updateBackgroundAlpha(F)V
    .registers 4
    .param p1, "transformationAmount"    # F

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_23

    .end local p1    # "transformationAmount":F
    :goto_a
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 633
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    .line 634
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmedBackgroundFadeInAmount:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    .line 636
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 631
    return-void

    .line 632
    .restart local p1    # "transformationAmount":F
    :cond_23
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_a
.end method

.method protected updateBackgroundTint()V
    .registers 2

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint(Z)V

    .line 495
    return-void
.end method
