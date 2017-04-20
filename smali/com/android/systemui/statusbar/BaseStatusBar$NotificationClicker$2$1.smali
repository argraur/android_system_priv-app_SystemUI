.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;
.super Ljava/lang/Thread;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;ZZLandroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .registers 7
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;
    .param p2, "val$keyguardShowing"    # Z
    .param p3, "val$afterKeyguardGone"    # Z
    .param p4, "val$intent"    # Landroid/app/PendingIntent;
    .param p5, "val$notificationKey"    # Ljava/lang/String;
    .param p6, "val$parentToCancelFinal"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 1934
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_68

    .line 1943
    :cond_9
    :goto_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_70

    .line 1946
    :goto_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_ac

    .line 1950
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1951
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 1953
    .local v12, "userId":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1954
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    .line 1953
    if-eqz v0, :cond_72

    .line 1955
    const/4 v8, 0x0

    .line 1957
    .local v8, "canBypass":Z
    :try_start_47
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1958
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    .line 1957
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->canBypassWorkChallenge(Landroid/app/PendingIntent;)Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_50} :catch_f2

    move-result v8

    .line 1964
    .end local v8    # "canBypass":Z
    :goto_51
    if-nez v8, :cond_72

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 1965
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    .line 1964
    invoke-virtual {v0, v12, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1968
    return-void

    .line 1935
    .end local v12    # "userId":I
    :cond_68
    :try_start_68
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6f} :catch_70

    goto :goto_9

    .line 1944
    :catch_70
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    goto :goto_10

    .line 1973
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    .line 1974
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v7

    .line 1973
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_87
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_72 .. :try_end_87} :catch_d0

    .line 1982
    :goto_87
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1983
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 1984
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$keyguardShowing:Z

    if-eqz v0, :cond_ee

    .line 1985
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_ec

    move v0, v13

    .line 1984
    :goto_a9
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 1990
    :cond_ac
    :try_start_ac
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_b9} :catch_f0

    .line 1994
    :goto_b9
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_cf

    .line 1996
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 1932
    :cond_cf
    return-void

    .line 1975
    :catch_d0
    move-exception v9

    .line 1978
    .local v9, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending contentIntent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 1985
    .end local v9    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_ec
    const/4 v0, 0x1

    goto :goto_a9

    :cond_ee
    move v0, v13

    .line 1984
    goto :goto_a9

    .line 1991
    :catch_f0
    move-exception v11

    .local v11, "ex":Landroid/os/RemoteException;
    goto :goto_b9

    .line 1959
    .end local v11    # "ex":Landroid/os/RemoteException;
    .restart local v8    # "canBypass":Z
    .restart local v12    # "userId":I
    :catch_f2
    move-exception v10

    .restart local v10    # "e":Landroid/os/RemoteException;
    goto/16 :goto_51
.end method
