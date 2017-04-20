.class Lcom/android/systemui/recents/views/TaskStackView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackView;->-get3(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1843
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackView;->-get3(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->resize()V

    .line 1840
    :cond_11
    return-void
.end method
