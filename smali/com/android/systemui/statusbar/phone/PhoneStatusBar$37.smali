.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$keyguardShowing"    # Z
    .param p4, "val$afterKeyguardGone"    # Z
    .param p5, "val$callback"    # Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    .prologue
    .line 3500
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$keyguardShowing:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$afterKeyguardGone:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 3503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/assist/AssistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 3504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    .line 3505
    const/high16 v1, 0x14000000

    .line 3504
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3506
    const/4 v14, -0x6

    .line 3507
    .local v14, "result":I
    new-instance v13, Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 3508
    .local v13, "options":Landroid/app/ActivityOptions;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v1, :cond_26

    .line 3518
    const/4 v0, 0x3

    .line 3517
    invoke-virtual {v13, v0}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 3521
    :cond_26
    :try_start_26
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3522
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 3523
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    .line 3524
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 3526
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 3522
    const/4 v1, 0x0

    .line 3525
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    .line 3521
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_56} :catch_6f

    move-result v14

    .line 3530
    :goto_57
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3531
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$keyguardShowing:Z

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$afterKeyguardGone:Z

    if-eqz v0, :cond_7a

    :cond_61
    const/4 v0, 0x0

    .line 3530
    :goto_62
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->overrideActivityPendingAppTransition(Z)V

    .line 3532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    if-eqz v0, :cond_6e

    .line 3533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    invoke-interface {v0, v14}, Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 3502
    :cond_6e
    return-void

    .line 3527
    :catch_6f
    move-exception v12

    .line 3528
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PhoneStatusBar"

    const-string/jumbo v1, "Unable to start activity"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 3531
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_7a
    const/4 v0, 0x1

    goto :goto_62
.end method
