.class Lcom/android/systemui/statusbar/phone/DozeScrimController$5;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field final synthetic val$inFront:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p2, "val$inFront"    # Z

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->val$inFront:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 181
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->val$inFront:Z

    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-wrap3(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZF)V

    .line 179
    return-void
.end method
