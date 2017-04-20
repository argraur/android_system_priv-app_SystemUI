.class public Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;
.super Ljava/lang/Object;
.source "DismissAnimationsHolder.java"


# instance fields
.field private mCardDismissIcon:Landroid/widget/ImageView;

.field private mDismissDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mDismissEnterYDelta:I

.field private mDismissIconNotInDismissStateAlpha:F

.field private mDismissStartYDelta:I

.field private mDismissText:Landroid/widget/TextView;

.field private mInfoField:Landroid/widget/LinearLayout;

.field private mLongDuration:J

.field private mShortDuration:J

.field private mThumbnailView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)Landroid/graphics/drawable/TransitionDrawable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
    .registers 6
    .param p1, "taskCardView"    # Lcom/android/systemui/recents/tv/views/TaskCardView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v1, 0x7f120210

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    .line 48
    const v1, 0x7f120213

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    .line 49
    const v1, 0x7f120215

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissDrawable:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 52
    const v1, 0x7f120216

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissEnterYDelta:I

    .line 56
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissEnterYDelta:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissStartYDelta:I

    .line 57
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 58
    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mLongDuration:J

    .line 59
    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissIconNotInDismissStateAlpha:F

    .line 45
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 153
    return-void
.end method

.method public startDismissAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 124
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 123
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$3;-><init>(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 135
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 134
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 140
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mLongDuration:J

    .line 139
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 142
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissStartYDelta:I

    int-to-float v1, v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mLongDuration:J

    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 149
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissStartYDelta:I

    int-to-float v1, v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 122
    return-void
.end method

.method public startEnterAnimation()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 63
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 64
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$1;-><init>(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 75
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 74
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 80
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 82
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissEnterYDelta:I

    int-to-float v1, v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 86
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 88
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissEnterYDelta:I

    int-to-float v1, v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 62
    return-void
.end method

.method public startExitAnimation()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mCardDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 94
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissIconNotInDismissStateAlpha:F

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder$2;-><init>(Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 105
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mInfoField:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 110
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 116
    iget-wide v2, p0, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->mShortDuration:J

    .line 115
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    return-void
.end method
