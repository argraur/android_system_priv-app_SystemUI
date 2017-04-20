.class Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .registers 10
    .param p1, "movingView"    # Landroid/view/View;
    .param p2, "viewInHierarchy"    # Landroid/view/View;
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "terminalX"    # F
    .param p6, "terminalY"    # F

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 93
    iput-object p2, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 94
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 95
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p4, v0

    iput v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 96
    iput p5, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 97
    iput p6, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 98
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/R$id;->transitionPosition:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 99
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz v0, :cond_3f

    .line 100
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/R$id;->transitionPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    :cond_3f
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez v0, :cond_9

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 109
    :cond_9
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 110
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    iget v1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 111
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/R$id;->transitionPosition:I

    iget-object v2, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 115
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 121
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 122
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 129
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    return-void
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 143
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 139
    iget-object v0, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 137
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 147
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 151
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 133
    return-void
.end method
