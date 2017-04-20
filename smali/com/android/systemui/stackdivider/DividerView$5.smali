.class Lcom/android/systemui/stackdivider/DividerView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$endDelay:J


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;
    .param p2, "val$endDelay"    # J
    .param p4, "val$endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-wide p2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endDelay:J

    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get1(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    .line 598
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v4, 0x0

    .line 605
    const-wide/16 v0, 0x0

    .line 606
    .local v0, "delay":J
    iget-wide v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 607
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endDelay:J

    .line 613
    :cond_c
    :goto_c
    cmp-long v2, v0, v4

    if-nez v2, :cond_2e

    .line 614
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 604
    :goto_15
    return-void

    .line 608
    :cond_16
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    if-eqz v2, :cond_1d

    .line 609
    const-wide/16 v0, 0x0

    goto :goto_c

    .line 610
    :cond_1d
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 611
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)J

    move-result-wide v0

    goto :goto_c

    .line 616
    :cond_2e
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get1(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15
.end method
