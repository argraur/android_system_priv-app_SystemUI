.class Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/SlideKitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideAnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mEndValue:F

.field private final mFinalVisibility:I

.field private mPausedValue:F

.field private final mProp:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mTerminalValue:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/Property;FFI)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p3, "terminalValue"    # F
    .param p4, "endValue"    # F
    .param p5, "finalVisibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FFI)V"
        }
    .end annotation

    .prologue
    .local p2, "prop":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 269
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 261
    iput-boolean v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    .line 271
    iput-object p2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    .line 272
    iput-object p1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    .line 273
    iput p3, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    .line 274
    iput p4, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mEndValue:F

    .line 275
    iput p5, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 270
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 7
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x1

    .line 281
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 282
    .local v0, "transitionPosition":[F
    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 283
    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    aput v1, v0, v4

    .line 284
    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    sget v2, Landroid/support/v17/leanback/R$id;->lb_slide_transition_value:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 285
    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v3, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    iput-boolean v4, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    .line 280
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 291
    iget-boolean v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mCanceled:Z

    if-nez v0, :cond_11

    .line 292
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mTerminalValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    :cond_11
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mPausedValue:F

    .line 300
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mEndValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mProp:Landroid/util/Property;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    iget v2, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mPausedValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Landroid/support/v17/leanback/transition/SlideKitkat$SlideAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void
.end method
