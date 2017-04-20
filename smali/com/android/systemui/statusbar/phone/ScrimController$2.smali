.class Lcom/android/systemui/statusbar/phone/ScrimController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p2, "val$scrim"    # Landroid/view/View;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$scrim:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-get1(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-get1(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->-set2(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 387
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->-get0(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->-set0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->-set1(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    .line 391
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$scrim:Landroid/view/View;

    const v1, 0x7f120030

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$scrim:Landroid/view/View;

    const v1, 0x7f120031

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 382
    return-void
.end method
