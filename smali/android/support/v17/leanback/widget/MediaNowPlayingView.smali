.class public Landroid/support/v17/leanback/widget/MediaNowPlayingView;
.super Landroid/widget/LinearLayout;
.source "MediaNowPlayingView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mImage1:Landroid/widget/ImageView;

.field private final mImage2:Landroid/widget/ImageView;

.field private final mImage3:Landroid/widget/ImageView;

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private final mObjectAnimator1:Landroid/animation/ObjectAnimator;

.field private final mObjectAnimator2:Landroid/animation/ObjectAnimator;

.field private final mObjectAnimator3:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_playback_now_playing_bars:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    sget v0, Landroid/support/v17/leanback/R$id;->bar1:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    .line 51
    sget v0, Landroid/support/v17/leanback/R$id;->bar2:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    .line 52
    sget v0, Landroid/support/v17/leanback/R$id;->bar3:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 56
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 58
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->setDropScale(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->setDropScale(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->setDropScale(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleY"

    const/16 v2, 0x1e

    new-array v2, v2, [F

    fill-array-data v2, :array_e2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    .line 67
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 68
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x910

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleY"

    const/16 v2, 0x1b

    new-array v2, v2, [F

    fill-array-data v2, :array_122

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    .line 76
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x820

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleY"

    const/16 v2, 0x1a

    new-array v2, v2, [F

    fill-array-data v2, :array_15c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    .line 84
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    return-void

    .line 62
    :array_e2
    .array-data 4
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f155555
        0x3f400000    # 0.75f
        0x3f555555
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3e2aaaab
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f2aaaab
        0x3ed55555
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3ed55555
    .end array-data

    .line 71
    :array_122
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f555555
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f555555
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f2aaaab
        0x3f555555
        0x3f800000    # 1.0f
        0x3f555555
        0x3f400000    # 0.75f
        0x3f2aaaab
        0x3f800000    # 1.0f
    .end array-data

    .line 80
    :array_15c
    .array-data 4
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f555555
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3f155555
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3e800000    # 0.25f
        0x3f2aaaab
    .end array-data
.end method

.method static setDropScale(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 90
    const v0, 0x3daaaaab

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 89
    return-void
.end method

.method private startAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation(Landroid/animation/Animator;)V

    .line 118
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation(Landroid/animation/Animator;)V

    .line 119
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation(Landroid/animation/Animator;)V

    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    return-void
.end method

.method private startAnimation(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 136
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 134
    :cond_9
    return-void
.end method

.method private stopAnimation()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 126
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation(Landroid/animation/Animator;Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation(Landroid/animation/Animator;Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation(Landroid/animation/Animator;Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    return-void
.end method

.method private stopAnimation(Landroid/animation/Animator;Landroid/view/View;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 142
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 143
    invoke-static {p2}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->setDropScale(Landroid/view/View;)V

    .line 140
    :cond_c
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 106
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 107
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation()V

    .line 104
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 113
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation()V

    .line 111
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 97
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->stopAnimation()V

    .line 94
    :goto_a
    return-void

    .line 99
    :cond_b
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/MediaNowPlayingView;->startAnimation()V

    goto :goto_a
.end method
