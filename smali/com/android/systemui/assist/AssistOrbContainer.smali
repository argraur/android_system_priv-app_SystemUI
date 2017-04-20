.class public Lcom/android/systemui/assist/AssistOrbContainer;
.super Landroid/widget/FrameLayout;
.source "AssistOrbContainer.java"


# instance fields
.field private mAnimatingOut:Z

.field private mNavbarScrim:Landroid/view/View;

.field private mOrb:Lcom/android/systemui/assist/AssistOrbView;

.field private mScrim:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/assist/AssistOrbContainer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/AssistOrbContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private reset()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->reset()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 83
    return-void
.end method

.method private startEnterAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v0, :cond_6

    .line 92
    return-void

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->startEnterAnimation()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    new-instance v0, Lcom/android/systemui/assist/AssistOrbContainer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbContainer$2;-><init>(Lcom/android/systemui/assist/AssistOrbContainer;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method private startExitAnimation(Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    const-wide/16 v2, 0x96

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v0, :cond_f

    .line 116
    if-eqz p1, :cond_e

    .line 117
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 119
    :cond_e
    return-void

    .line 121
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/assist/AssistOrbView;->startExitAnimation(J)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 114
    return-void
.end method


# virtual methods
.method public getOrb()Lcom/android/systemui/assist/AssistOrbView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    return-object v0
.end method

.method public isShowing()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f1200a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    .line 54
    const v0, 0x7f1200ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    .line 55
    const v0, 0x7f1200a9

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistOrbView;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    .line 51
    return-void
.end method

.method public show(ZZ)V
    .registers 5
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_16

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    .line 62
    if-eqz p2, :cond_12

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->startEnterAnimation()V

    .line 58
    :cond_11
    :goto_11
    return-void

    .line 65
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->reset()V

    goto :goto_11

    .line 69
    :cond_16
    if-eqz p2, :cond_21

    .line 70
    new-instance v0, Lcom/android/systemui/assist/AssistOrbContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbContainer$1;-><init>(Lcom/android/systemui/assist/AssistOrbContainer;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->startExitAnimation(Ljava/lang/Runnable;)V

    goto :goto_11

    .line 78
    :cond_21
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    goto :goto_11
.end method
