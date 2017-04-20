.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p2, "val$child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->mWasCancelled:Z

    .line 523
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f120020

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f12002c

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f120026

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    .line 511
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->mWasCancelled:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_30

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 506
    :cond_30
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->mWasCancelled:Z

    .line 518
    return-void
.end method
