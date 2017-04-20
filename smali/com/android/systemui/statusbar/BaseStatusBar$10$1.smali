.class Lcom/android/systemui/statusbar/BaseStatusBar$10$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$10;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$10;ZLandroid/content/Intent;I)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$10;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$intent"    # Landroid/content/Intent;
    .param p4, "val$appUid"    # I

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$keyguardShowing:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$appUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1052
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$keyguardShowing:Z

    if-eqz v1, :cond_b

    .line 1053
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 1056
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 1057
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$intent:Landroid/content/Intent;

    .line 1056
    invoke-virtual {v1, v2}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 1058
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v2

    .line 1059
    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$appUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 1056
    invoke-virtual {v1, v2, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1060
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$10;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10$1;->val$keyguardShowing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 1050
    :goto_3a
    return-void

    .line 1061
    :catch_3b
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3a
.end method
