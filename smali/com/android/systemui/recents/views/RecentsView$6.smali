.class Lcom/android/systemui/recents/views/RecentsView$6;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->showStackActionButton(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$duration:I

.field final synthetic val$translate:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;ZI)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "val$translate"    # Z
    .param p3, "val$duration"    # I

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$6;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$translate:Z

    iput p3, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$translate:Z

    if-eqz v0, :cond_12

    .line 662
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$6;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 663
    const/4 v1, 0x0

    .line 662
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 665
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$6;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 666
    const/high16 v1, 0x3f800000    # 1.0f

    .line 665
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 667
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsView$6;->val$duration:I

    int-to-long v2, v1

    .line 665
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 668
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 665
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 660
    return-void
.end method
