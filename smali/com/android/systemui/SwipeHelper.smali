.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;,
        Lcom/android/systemui/SwipeHelper$LongPressListener;
    }
.end annotation


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFalsingThreshold:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SwipeHelper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/SwipeHelper;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/SwipeHelper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/SwipeHelper;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SwipeHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/SwipeHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .registers 3
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .registers 8
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 52
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 53
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 54
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 59
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 77
    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 94
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 95
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 96
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 97
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 99
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 100
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    const v1, 0x7f1001b6

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 102
    invoke-static {p3}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {v0, p3, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 91
    return-void
.end method

.method private getFalsingThreshold()I
    .registers 3

    .prologue
    .line 601
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 602
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getMaxVelocity()F
    .registers 3

    .prologue
    .line 606
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_8
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_8
.end method

.method private getSwipeAlpha(F)F
    .registers 5
    .param p1, "progress"    # F

    .prologue
    .line 190
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translation"    # F

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    .line 185
    .local v1, "viewSize":F
    div-float v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 186
    .local v0, "result":F
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .registers 3
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_8
    return v0

    .line 136
    :cond_9
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_8
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 218
    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 217
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 229
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 231
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 232
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 233
    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 234
    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 235
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 232
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 225
    :cond_3f
    return-void
.end method

.method private snapChildInstantly(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 492
    .local v0, "canAnimViewBeDismissed":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 493
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 490
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .registers 4
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 193
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .registers 8
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "translation"    # F

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result v1

    .line 200
    .local v1, "swipeProgress":F
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 201
    if-eqz p2, :cond_2a

    .line 202
    move v0, v1

    .line 203
    .local v0, "alpha":F
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v2, :cond_23

    .line 204
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2e

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2e

    .line 205
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 210
    :cond_23
    :goto_23
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSwipeAlpha(F)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 213
    .end local v0    # "alpha":F
    :cond_2a
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 198
    return-void

    .line 207
    .restart local v0    # "alpha":F
    :cond_2e
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_23
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    const/4 v3, 0x0

    .line 141
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_11

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 140
    :goto_7
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 141
    aput p2, v2, v3

    .line 140
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 141
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_11
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_7
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .registers 28
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J
    .param p9, "isDismissAll"    # Z

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    .line 347
    .local v13, "canBeDismissed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_ac

    const/16 v16, 0x1

    .line 350
    .local v16, "isLayoutRtl":Z
    :goto_13
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_b3

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_23

    if-eqz p9, :cond_b3

    .line 351
    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b0

    const/4 v12, 0x1

    .line 353
    .local v12, "animateUpForMenu":Z
    :goto_2b
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_b6

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_3b

    if-eqz p9, :cond_b6

    .line 354
    :cond_3b
    move/from16 v11, v16

    .line 355
    :goto_3d
    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_b8

    .line 356
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_bc

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_bc

    if-eqz p9, :cond_ba

    const/4 v4, 0x0

    :goto_53
    move v10, v4

    .line 358
    .local v10, "animateLeft":Z
    :goto_54
    if-nez v10, :cond_5a

    if-nez v11, :cond_5a

    if-eqz v12, :cond_be

    .line 359
    :cond_5a
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v7, v4

    .line 364
    .local v7, "newPos":F
    :goto_5f
    const-wide/16 v8, 0x0

    cmp-long v4, p7, v8

    if-nez v4, :cond_c9

    .line 365
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v14, v4

    .line 366
    .local v14, "duration":J
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_c3

    .line 368
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    int-to-long v8, v4

    .line 367
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 378
    :goto_87
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v4, :cond_94

    .line 379
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 381
    :cond_94
    new-instance v17, Lcom/android/systemui/SwipeHelper$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 387
    .local v17, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v5

    .line 388
    .local v5, "anim":Landroid/animation/Animator;
    if-nez v5, :cond_cc

    .line 389
    return-void

    .line 347
    .end local v5    # "anim":Landroid/animation/Animator;
    .end local v7    # "newPos":F
    .end local v10    # "animateLeft":Z
    .end local v12    # "animateUpForMenu":Z
    .end local v14    # "duration":J
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_ac
    const/16 v16, 0x0

    .restart local v16    # "isLayoutRtl":Z
    goto/16 :goto_13

    .line 351
    :cond_b0
    const/4 v12, 0x0

    .restart local v12    # "animateUpForMenu":Z
    goto/16 :goto_2b

    .line 350
    .end local v12    # "animateUpForMenu":Z
    :cond_b3
    const/4 v12, 0x0

    .restart local v12    # "animateUpForMenu":Z
    goto/16 :goto_2b

    .line 353
    :cond_b6
    const/4 v11, 0x0

    .local v11, "animateLeftForRtl":Z
    goto :goto_3d

    .line 355
    .end local v11    # "animateLeftForRtl":Z
    :cond_b8
    const/4 v10, 0x1

    goto :goto_54

    .line 356
    :cond_ba
    const/4 v4, 0x1

    goto :goto_53

    :cond_bc
    const/4 v10, 0x0

    goto :goto_54

    .line 361
    .restart local v10    # "animateLeft":Z
    :cond_be
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    .restart local v7    # "newPos":F
    goto :goto_5f

    .line 372
    .restart local v14    # "duration":J
    :cond_c3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v14, v4

    goto :goto_87

    .line 375
    .end local v14    # "duration":J
    :cond_c9
    move-wide/from16 v14, p7

    .restart local v14    # "duration":J
    goto :goto_87

    .line 391
    .restart local v5    # "anim":Landroid/animation/Animator;
    .restart local v17    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_cc
    if-eqz p6, :cond_103

    .line 392
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 393
    invoke-virtual {v5, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 398
    :goto_d6
    const-wide/16 v8, 0x0

    cmp-long v4, p4, v8

    if-lez v4, :cond_e1

    .line 399
    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 401
    :cond_e1
    new-instance v4, Lcom/android/systemui/SwipeHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v13, v2}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 344
    return-void

    .line 395
    :cond_103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    .line 396
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v9

    move/from16 v8, p2

    .line 395
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    goto :goto_d6
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "useAccelerateInterpolator"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 330
    const/4 v3, 0x0

    .line 331
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-wide v7, v4

    .line 330
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 329
    return-void
.end method

.method protected getEscapeVelocity()F
    .registers 3

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .registers 3

    .prologue
    .line 618
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_8
    int-to-float v0, v0

    return v0

    .line 172
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_8
.end method

.method protected getTranslation(Landroid/view/View;)F
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_8
.end method

.method protected getUnscaledEscapeVelocity()F
    .registers 2

    .prologue
    .line 614
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # F
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 153
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_9

    .line 154
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    :cond_9
    return-object v0
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "animView"    # Landroid/view/View;
    .param p3, "velocity"    # F
    .param p4, "translation"    # F

    .prologue
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method protected isDismissGesture(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    .line 628
    .local v0, "falsingDetected":Z
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 629
    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    .line 633
    .end local v0    # "falsingDetected":Z
    :goto_16
    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 634
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 635
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 633
    :goto_33
    return v1

    .line 629
    .restart local v0    # "falsingDetected":Z
    :cond_34
    const/4 v0, 0x0

    .local v0, "falsingDetected":Z
    goto :goto_16

    .line 631
    .local v0, "falsingDetected":Z
    :cond_36
    if-eqz v0, :cond_3c

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-eqz v1, :cond_3e

    :cond_3c
    const/4 v0, 0x0

    .local v0, "falsingDetected":Z
    goto :goto_16

    .local v0, "falsingDetected":Z
    :cond_3e
    const/4 v0, 0x1

    .local v0, "falsingDetected":Z
    goto :goto_16

    .line 633
    .end local v0    # "falsingDetected":Z
    :cond_40
    const/4 v1, 0x0

    goto :goto_33
.end method

.method public onDownUpdate(Landroid/view/View;)V
    .registers 2
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    .line 471
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 255
    .local v0, "action":I
    packed-switch v0, :pswitch_data_ce

    .line 321
    :cond_a
    :goto_a
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_10

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    :cond_10
    return v6

    .line 257
    :pswitch_11
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 258
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 259
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 260
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 261
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 262
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 264
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_a

    .line 265
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->onDownUpdate(Landroid/view/View;)V

    .line 266
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 267
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 269
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 270
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 271
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v7, :cond_a

    .line 272
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_61

    .line 273
    new-instance v7, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 288
    :cond_61
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 294
    :pswitch_6b
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v7, :cond_a

    .line 295
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    .line 297
    .local v5, "pos":F
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v4

    .line 298
    .local v4, "perpendicularPos":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v5, v7

    .line 299
    .local v2, "delta":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float v3, v4, v7

    .line 300
    .local v3, "deltaPerpendicular":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 301
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 302
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 303
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 304
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 305
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_a

    .line 313
    .end local v2    # "delta":F
    .end local v3    # "deltaPerpendicular":F
    .end local v4    # "perpendicularPos":F
    .end local v5    # "pos":F
    :pswitch_ba
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_cc

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 314
    :goto_c0
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 315
    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 316
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 318
    if-eqz v1, :cond_a

    return v6

    .line 313
    :cond_cc
    const/4 v1, 0x1

    .local v1, "captured":Z
    goto :goto_c0

    .line 255
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_11
        :pswitch_ba
        :pswitch_6b
        :pswitch_ba
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;FF)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "totalTranslation"    # F
    .param p3, "delta"    # F

    .prologue
    .line 478
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    .line 526
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_9

    .line 527
    return v8

    .line 530
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_1d

    .line 531
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 536
    return v8

    .line 541
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 542
    return v7

    .line 546
    :cond_1d
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 548
    .local v1, "action":I
    packed-switch v1, :pswitch_data_d8

    .line 597
    :cond_29
    :goto_29
    return v8

    .line 551
    :pswitch_2a
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_29

    .line 552
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v6, v7

    .line 553
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 554
    .local v0, "absDelta":F
    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_45

    .line 555
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 559
    :cond_45
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 569
    :goto_4f
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 570
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 571
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v7, v2

    invoke-virtual {p0, v6, v7, v2}, Lcom/android/systemui/SwipeHelper;->onMoveUpdate(Landroid/view/View;FF)V

    goto :goto_29

    .line 560
    :cond_67
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .line 561
    .local v4, "size":F
    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v3, v6, v4

    .line 562
    .local v3, "maxScrollDistance":F
    cmpl-float v6, v0, v4

    if-ltz v6, :cond_7d

    .line 563
    cmpl-float v6, v2, v12

    if-lez v6, :cond_7b

    move v2, v3

    goto :goto_4f

    :cond_7b
    neg-float v2, v3

    goto :goto_4f

    .line 565
    :cond_7d
    div-float v6, v2, v4

    float-to-double v6, v6

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v2, v3, v6

    goto :goto_4f

    .line 576
    .end local v0    # "absDelta":F
    .end local v2    # "delta":F
    .end local v3    # "maxScrollDistance":F
    .end local v4    # "size":F
    :pswitch_8e
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_29

    .line 579
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getMaxVelocity()F

    move-result v9

    const/16 v10, 0x3e8

    invoke-virtual {v6, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 580
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v6}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v5

    .line 582
    .local v5, "velocity":F
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    invoke-virtual {p0, p1, v6, v5, v9}, Lcom/android/systemui/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v6

    if-nez v6, :cond_c5

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 585
    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v6

    if-eqz v6, :cond_c9

    move v6, v7

    .line 585
    :goto_c0
    invoke-virtual {p0, v9, v5, v6}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    .line 592
    :goto_c3
    iput-object v11, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 594
    :cond_c5
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    goto/16 :goto_29

    :cond_c9
    move v6, v8

    .line 586
    goto :goto_c0

    .line 589
    :cond_cb
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 590
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6, v12, v5}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_c3

    .line 548
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_2a
        :pswitch_8e
        :pswitch_2a
    .end packed-switch
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .registers 4
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "value"    # F
    .param p3, "canBeDismissed"    # Z

    .prologue
    .line 487
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 486
    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 431
    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 464
    return-void
.end method

.method public removeLongPressCallback()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 247
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iput-object v2, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 245
    :cond_e
    return-void
.end method

.method public setDensityScale(F)V
    .registers 2
    .param p1, "densityScale"    # F

    .prologue
    .line 111
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 110
    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .registers 2
    .param p1, "disableHwLayers"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    .line 118
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 106
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .registers 2
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 115
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 114
    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 160
    if-nez p1, :cond_3

    .line 161
    return-void

    .line 163
    :cond_3
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_b

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 159
    :goto_a
    return-void

    .line 166
    :cond_b
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_a
.end method

.method public snapChild(Landroid/view/View;FF)V
    .registers 10
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 436
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 437
    .local v1, "canBeDismissed":Z
    new-instance v2, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 443
    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    .line 444
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_12

    .line 445
    return-void

    .line 448
    :cond_12
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 449
    new-instance v3, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 456
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 457
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 458
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 435
    return-void
.end method

.method public snapChildIfNeeded(Landroid/view/View;ZF)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z
    .param p3, "targetLeft"    # F

    .prologue
    const/4 v3, 0x0

    .line 505
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-ne v2, p1, :cond_a

    .line 506
    :cond_9
    return-void

    .line 505
    :cond_a
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-nez v2, :cond_9

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "needToSnap":Z
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 510
    .local v0, "dismissPendingAnim":Landroid/animation/Animator;
    if-eqz v0, :cond_25

    .line 511
    const/4 v1, 0x1

    .line 512
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 516
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_24

    .line 517
    if-eqz p2, :cond_2f

    .line 518
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 504
    :cond_24
    :goto_24
    return-void

    .line 513
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1d

    .line 514
    const/4 v1, 0x1

    goto :goto_1d

    .line 520
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->snapChildInstantly(Landroid/view/View;)V

    goto :goto_24
.end method

.method protected swipedFarEnough()Z
    .registers 9

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 623
    .local v0, "translation":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    float-to-double v4, v1

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1e

    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method protected swipedFastEnough()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 639
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v4}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v2

    .line 640
    .local v2, "velocity":F
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 641
    .local v1, "translation":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2e

    .line 642
    cmpl-float v4, v2, v6

    if-lez v4, :cond_28

    move v5, v0

    :goto_20
    cmpl-float v4, v1, v6

    if-lez v4, :cond_2a

    move v4, v0

    :goto_25
    if-ne v5, v4, :cond_2c

    .line 643
    .local v0, "ret":Z
    :goto_27
    return v0

    .end local v0    # "ret":Z
    :cond_28
    move v5, v3

    .line 642
    goto :goto_20

    :cond_2a
    move v4, v3

    goto :goto_25

    :cond_2c
    move v0, v3

    goto :goto_27

    :cond_2e
    move v0, v3

    .line 641
    goto :goto_27
.end method
