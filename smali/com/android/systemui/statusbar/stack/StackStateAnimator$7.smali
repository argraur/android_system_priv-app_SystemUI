.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$newEndValue:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;F)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$newEndValue"    # F

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->val$newEndValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->mWasCancelled:Z

    .line 645
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 635
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->val$newEndValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->mWasCancelled:Z

    if-eqz v0, :cond_2b

    .line 639
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->val$child:Landroid/view/View;

    const v1, 0x7f12001e

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->val$child:Landroid/view/View;

    const v1, 0x7f12002a

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->val$child:Landroid/view/View;

    const v1, 0x7f120024

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 633
    return-void

    .line 636
    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->val$child:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;->mWasCancelled:Z

    .line 650
    return-void
.end method
