.class Lcom/android/systemui/statusbar/ViewTransformationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewTransformationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ViewTransformationHelper;
    .param p2, "val$endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->mCancelled:Z

    .line 96
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->mCancelled:Z

    if-nez v0, :cond_14

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    .line 84
    :goto_13
    return-void

    .line 91
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->-wrap0(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    goto :goto_13
.end method
