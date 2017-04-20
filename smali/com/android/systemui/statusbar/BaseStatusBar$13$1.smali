.class Lcom/android/systemui/statusbar/BaseStatusBar$13$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$13;->onLongPress(Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$13;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$13;
    .param p2, "val$guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p3, "val$x"    # I
    .param p4, "val$y"    # I
    .param p5, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$x:I

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$y:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1193
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

    iget-object v8, v8, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v8, v9, v9, v6, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    .line 1195
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1196
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$x:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v2, v8

    .line 1197
    .local v2, "horz":D
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$y:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v4, v8

    .line 1198
    .local v4, "vert":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    .line 1200
    .local v1, "r":F
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$x:I

    iget v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$y:I

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1201
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v8, 0x168

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1202
    sget-object v8, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1203
    new-instance v8, Lcom/android/systemui/statusbar/BaseStatusBar$13$1$1;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$13$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$13$1;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1211
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1212
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1213
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

    iget-object v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-ne v9, v7, :cond_61

    move v6, v7

    .line 1212
    :cond_61
    invoke-virtual {v8, v7, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    .line 1214
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->closeRemoteInput()V

    .line 1215
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 1216
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

    iget-object v6, v6, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->-set1(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1192
    return-void
.end method
