.class Lcom/android/systemui/statusbar/BaseStatusBar$14$1;
.super Ljava/lang/Thread;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$14;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$14;ZZLandroid/app/PendingIntent;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$14;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1823
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_45

    .line 1832
    :cond_9
    :goto_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_4d

    .line 1836
    :goto_10
    :try_start_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$intent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_23
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_10 .. :try_end_23} :catch_4f

    .line 1844
    :goto_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 1846
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_6d

    .line 1847
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_6b

    move v0, v10

    .line 1846
    :goto_41
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 1821
    :cond_44
    return-void

    .line 1824
    :cond_45
    :try_start_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4d

    goto :goto_9

    .line 1833
    :catch_4d
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_10

    .line 1837
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_4f
    move-exception v8

    .line 1840
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending intent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1847
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_6b
    const/4 v0, 0x1

    goto :goto_41

    :cond_6d
    move v0, v10

    .line 1846
    goto :goto_41
.end method
