.class Lcom/android/systemui/assist/AssistOrbView$1;
.super Ljava/lang/Object;
.source "AssistOrbView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/assist/AssistOrbView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$1;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/systemui/assist/AssistOrbView$1;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/assist/AssistOrbView;->-wrap1(Lcom/android/systemui/assist/AssistOrbView;F)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$1;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbView;->-wrap2(Lcom/android/systemui/assist/AssistOrbView;)V

    .line 62
    return-void
.end method
