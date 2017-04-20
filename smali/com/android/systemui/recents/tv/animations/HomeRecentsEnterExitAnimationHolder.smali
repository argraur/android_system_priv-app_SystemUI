.class public Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;
.super Ljava/lang/Object;
.source "HomeRecentsEnterExitAnimationHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelay:J

.field private mDimAlpha:F

.field private mDuration:I

.field private mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTranslationX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridView"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDimAlpha:F

    .line 41
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    const v1, 0x7f100287

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mTranslationX:I

    .line 43
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDelay:J

    .line 44
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDuration:I

    .line 37
    return-void
.end method


# virtual methods
.method public setEnterFromAppStartingAnimationValues(Z)V
    .registers 8
    .param p1, "isPipShown"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3f

    .line 101
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 102
    .local v1, "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setTranslationX(F)V

    .line 103
    if-eqz p1, :cond_3b

    iget v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDimAlpha:F

    :goto_1b
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAlpha(F)V

    .line 104
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getInfoFieldView()Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_3d

    move v2, v4

    :goto_25
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 105
    if-eqz p1, :cond_38

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 106
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 100
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3b
    move v2, v3

    .line 103
    goto :goto_1b

    :cond_3d
    move v2, v3

    .line 104
    goto :goto_25

    .line 99
    .end local v1    # "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_3f
    return-void
.end method

.method public setEnterFromHomeStartingAnimationValues(Z)V
    .registers 7
    .param p1, "isPipShown"    # Z

    .prologue
    const/4 v3, 0x0

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 85
    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 86
    .local v1, "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setTranslationX(F)V

    .line 87
    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAlpha(F)V

    .line 88
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getInfoFieldView()Landroid/view/View;

    move-result-object v4

    if-eqz p1, :cond_35

    move v2, v3

    :goto_1f
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 89
    if-eqz p1, :cond_32

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 90
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 84
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_35
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1f

    .line 83
    .end local v1    # "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_38
    return-void
.end method

.method public startEnterAnimation(Z)V
    .registers 10
    .param p1, "isPipShown"    # Z

    .prologue
    .line 48
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_49

    .line 49
    iget-object v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 50
    .local v3, "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    iget-wide v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDelay:J

    int-to-long v6, v2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 51
    .local v0, "delay":J
    iget v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mTranslationX:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setTranslationX(F)V

    .line 52
    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 53
    if-eqz p1, :cond_46

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDimAlpha:F

    .line 52
    :goto_2a
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 54
    const/4 v5, 0x0

    .line 52
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 55
    iget v5, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDuration:I

    int-to-long v6, v5

    .line 52
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 57
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 52
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_46
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2a

    .line 47
    .end local v0    # "delay":J
    .end local v3    # "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_49
    return-void
.end method

.method public startExitAnimation(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .registers 10
    .param p1, "dismissEvent"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 62
    iget-object v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_61

    .line 63
    iget-object v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 64
    .local v3, "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    iget-wide v4, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDelay:J

    iget-object v6, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 65
    .local v0, "delay":J
    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 66
    const/4 v5, 0x0

    .line 65
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 67
    iget v5, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mTranslationX:I

    neg-int v5, v5

    int-to-float v5, v5

    .line 65
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 68
    iget v5, p0, Lcom/android/systemui/recents/tv/animations/HomeRecentsEnterExitAnimationHolder;->mDuration:I

    int-to-long v6, v5

    .line 65
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 70
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 65
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 71
    if-nez v2, :cond_5e

    .line 72
    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 62
    :cond_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 61
    .end local v0    # "delay":J
    .end local v3    # "view":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_61
    return-void
.end method
