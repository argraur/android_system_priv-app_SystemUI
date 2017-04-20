.class public Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;
.super Ljava/lang/Object;
.source "ViewFocusAnimator.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final mAnimDuration:I

.field private final mDismissIconAlpha:F

.field mFocusAnimation:Landroid/animation/ObjectAnimator;

.field private final mFocusInterpolator:Landroid/view/animation/Interpolator;

.field private mFocusProgress:F

.field private final mSelectedScale:F

.field private final mSelectedScaleDelta:F

.field private final mSelectedSpacingDelta:F

.field private final mSelectedZDelta:F

.field protected mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

.field private final mUnselectedScale:F

.field private final mUnselectedSpacing:F

.field private final mUnselectedZ:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
    .registers 9
    .param p1, "view"    # Lcom/android/systemui/recents/tv/views/TaskCardView;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 50
    invoke-virtual {p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 54
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 55
    .local v0, "out":Landroid/util/TypedValue;
    const v2, 0x7f0e0060

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 56
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    .line 57
    const v2, 0x7f0e0061

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 58
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    .line 59
    iget v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScaleDelta:F

    .line 61
    const v2, 0x7f10027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedZ:F

    .line 62
    const v2, 0x7f10027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedZDelta:F

    .line 64
    const v2, 0x7f10027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedSpacing:F

    .line 65
    const v2, 0x7f10027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedSpacingDelta:F

    .line 67
    const v2, 0x7f0e0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mAnimDuration:I

    .line 69
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusInterpolator:Landroid/view/animation/Interpolator;

    .line 71
    const-string/jumbo v2, "focusProgress"

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v6, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    const v2, 0x7f0e0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mDismissIconAlpha:F

    .line 77
    invoke-direct {p0, v6}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->setFocusProgress(F)V

    .line 79
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;-><init>(Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 48
    return-void
.end method

.method private animateFocus(Z)V
    .registers 7
    .param p1, "focused"    # Z

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 112
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 115
    :cond_d
    if-eqz p1, :cond_2d

    const/high16 v0, 0x3f800000    # 1.0f

    .line 117
    .local v0, "target":F
    :goto_11
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2c

    .line 118
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 110
    :cond_2c
    return-void

    .line 115
    .end local v0    # "target":F
    :cond_2d
    const/4 v0, 0x0

    .restart local v0    # "target":F
    goto :goto_11
.end method

.method private setFocusProgress(F)V
    .registers 10
    .param p1, "level"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    .line 95
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScaleDelta:F

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 96
    .local v0, "scale":F
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedZ:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedZDelta:F

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 97
    .local v2, "z":F
    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedSpacing:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedSpacingDelta:F

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 99
    .local v1, "spacing":F
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setScaleX(F)V

    .line 100
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setScaleY(F)V

    .line 102
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    float-to-int v4, v1

    iget-object v5, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getPaddingTop()I

    move-result v5

    .line 103
    float-to-int v6, v1

    iget-object v7, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getPaddingBottom()I

    move-result v7

    .line 102
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setPadding(IIII)V

    .line 105
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getDismissIconView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mDismissIconAlpha:F

    mul-float/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getThumbnailView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setZ(F)V

    .line 107
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getDismissIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setZ(F)V

    .line 92
    return-void
.end method


# virtual methods
.method public changeSize(Z)V
    .registers 7
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 136
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    .local v2, "width":I
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    .local v0, "height":I
    if-gez v2, :cond_14

    if-gez v0, :cond_14

    .line 140
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/recents/tv/views/TaskCardView;->measure(II)V

    .line 143
    :cond_14
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 144
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_30

    .line 145
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->animateFocus(Z)V

    .line 134
    :goto_2f
    return-void

    .line 148
    :cond_30
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 149
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 151
    :cond_3d
    if-eqz p1, :cond_45

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_41
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->setFocusProgress(F)V

    goto :goto_2f

    :cond_45
    const/4 v3, 0x0

    goto :goto_41
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    if-eq p1, v0, :cond_5

    .line 126
    return-void

    .line 128
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 124
    return-void
.end method
