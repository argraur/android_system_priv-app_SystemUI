.class Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field final synthetic val$frontMostTaskView:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$frontMostTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field final synthetic val$newScroll:F


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;FLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
    .param p2, "val$newScroll"    # F
    .param p3, "val$frontMostTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "val$frontMostTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$newScroll:F

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$frontMostTaskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$frontMostTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->-get1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$newScroll:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$frontMostTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_29

    .line 570
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->-get1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$frontMostTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;->val$frontMostTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 571
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v4

    const/16 v5, 0x4b

    const/16 v6, 0xfa

    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;)V

    .line 570
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 565
    :cond_29
    return-void
.end method
