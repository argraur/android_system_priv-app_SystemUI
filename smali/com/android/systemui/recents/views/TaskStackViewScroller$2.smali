.class Lcom/android/systemui/recents/views/TaskStackViewScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field final synthetic val$postRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .param p2, "val$postRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;->this$0:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;->val$postRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;->val$postRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;->val$postRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 229
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;->this$0:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 225
    return-void
.end method
