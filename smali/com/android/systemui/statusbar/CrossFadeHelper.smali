.class public Lcom/android/systemui/statusbar/CrossFadeHelper;
.super Ljava/lang/Object;
.source "CrossFadeHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 102
    const/high16 v1, 0x3f800000    # 1.0f

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 103
    const-wide/16 v2, 0xd2

    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 95
    :cond_3d
    return-void
.end method

.method public static fadeIn(Landroid/view/View;F)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fadeInAmount"    # F

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    .line 111
    return-void
.end method

.method public static fadeIn(Landroid/view/View;FZ)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fadeInAmount"    # F
    .param p2, "remap"    # Z

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_12
    if-eqz p2, :cond_18

    .line 132
    invoke-static {p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->mapToFadeDuration(F)F

    move-result p1

    .line 134
    :cond_18
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 135
    .local v0, "alpha":F
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 136
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->updateLayerType(Landroid/view/View;F)V

    .line 126
    return-void
.end method

.method public static fadeOut(Landroid/view/View;F)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fadeOutAmount"    # F

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    .line 50
    return-void
.end method

.method public static fadeOut(Landroid/view/View;FZ)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fadeOutAmount"    # F
    .param p2, "remap"    # Z

    .prologue
    const/4 v3, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 67
    cmpl-float v1, p1, v2

    if-nez v1, :cond_25

    .line 68
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_11
    :goto_11
    if-eqz p2, :cond_17

    .line 73
    invoke-static {p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->mapToFadeDuration(F)F

    move-result p1

    .line 75
    :cond_17
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    sub-float/2addr v2, p1

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 76
    .local v0, "alpha":F
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 77
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->updateLayerType(Landroid/view/View;F)V

    .line 65
    return-void

    .line 69
    .end local v0    # "alpha":F
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_11

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11
.end method

.method public static fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 34
    const-wide/16 v2, 0xd2

    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/android/systemui/statusbar/CrossFadeHelper$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/CrossFadeHelper$1;-><init>(Ljava/lang/Runnable;Landroid/view/View;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 30
    :cond_31
    return-void
.end method

.method private static mapToFadeDuration(F)F
    .registers 3
    .param p0, "fadeOutAmount"    # F

    .prologue
    .line 82
    const v0, 0x3f155555

    .line 84
    div-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static updateLayerType(Landroid/view/View;F)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_17

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_17

    .line 89
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 87
    :cond_16
    :goto_16
    return-void

    .line 90
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_16

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_16
.end method
