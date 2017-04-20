.class Lcom/android/systemui/statusbar/phone/PanelView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$clearAllExpandHack:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p2, "val$clearAllExpandHack"    # Z

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$clearAllExpandHack:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->mCancelled:Z

    .line 678
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->val$clearAllExpandHack:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->mCancelled:Z

    if-eqz v0, :cond_1d

    .line 687
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-set1(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 688
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->mCancelled:Z

    if-nez v0, :cond_17

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 691
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 683
    return-void

    .line 685
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    goto :goto_8
.end method
