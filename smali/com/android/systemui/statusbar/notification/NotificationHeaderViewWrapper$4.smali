.class Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationHeaderViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

.field final synthetic val$dark:Z

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;ZLandroid/widget/ImageView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
    .param p2, "val$dark"    # Z
    .param p3, "val$target"    # Landroid/widget/ImageView;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$4;->val$dark:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$4;->val$target:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$4;->val$dark:Z

    if-nez v0, :cond_a

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$4;->val$target:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 223
    :cond_a
    return-void
.end method
