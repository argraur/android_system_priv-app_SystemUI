.class Lcom/android/systemui/statusbar/ActivatableNotificationView$3;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$3;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-wrap4(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 165
    return-void
.end method
