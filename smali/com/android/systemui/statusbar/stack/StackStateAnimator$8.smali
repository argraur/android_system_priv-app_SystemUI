.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p2, "val$child"    # Landroid/view/View;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Landroid/view/View;

    const v1, 0x7f12001d

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Landroid/view/View;

    const v1, 0x7f120029

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;->val$child:Landroid/view/View;

    const v1, 0x7f120023

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 709
    return-void
.end method
