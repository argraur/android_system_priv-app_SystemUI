.class Lcom/android/systemui/statusbar/phone/TrustDrawable$2;
.super Ljava/lang/Object;
.source "TrustDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->-set1(Lcom/android/systemui/statusbar/phone/TrustDrawable;F)F

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$2;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->invalidateSelf()V

    .line 263
    return-void
.end method
