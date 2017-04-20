.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$leftTarget:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "val$leftTarget"    # F

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->val$leftTarget:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->cancelled:Z

    .line 983
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->cancelled:Z

    .line 987
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 993
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->cancelled:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get9(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->val$leftTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_22

    .line 994
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get9(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->resetState()V

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set6(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 992
    :cond_22
    return-void
.end method
