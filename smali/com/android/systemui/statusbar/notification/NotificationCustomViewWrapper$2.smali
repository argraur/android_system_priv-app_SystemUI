.class Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationCustomViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

.field final synthetic val$dark:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;
    .param p2, "val$dark"    # Z

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;->val$dark:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;->val$dark:Z

    if-nez v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 85
    :cond_d
    return-void
.end method
