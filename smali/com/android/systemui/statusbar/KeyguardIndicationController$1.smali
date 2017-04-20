.class Lcom/android/systemui/statusbar/KeyguardIndicationController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mLastSuccessiveErrorMessage:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->mLastSuccessiveErrorMessage:I

    .line 230
    return-void
.end method


# virtual methods
.method public onFingerprintAuthFailed()V
    .registers 2

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthFailed()V

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->mLastSuccessiveErrorMessage:I

    .line 319
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->mLastSuccessiveErrorMessage:I

    .line 313
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .registers 9
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 268
    .local v1, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 269
    const/4 v2, 0x5

    if-ne p1, v2, :cond_14

    .line 270
    :cond_13
    return-void

    .line 272
    :cond_14
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0078

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 273
    .local v0, "errorColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 278
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->mLastSuccessiveErrorMessage:I

    if-eq v2, p1, :cond_3f

    .line 279
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    .line 289
    :cond_3f
    :goto_3f
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->mLastSuccessiveErrorMessage:I

    .line 266
    return-void

    .line 281
    :cond_42
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    goto :goto_3f

    .line 287
    :cond_5f
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3f
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .registers 9
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 247
    .local v1, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    if-nez v2, :cond_12

    .line 248
    return-void

    .line 250
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0078

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 251
    .local v0, "errorColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    .line 262
    :cond_39
    :goto_39
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->mLastSuccessiveErrorMessage:I

    .line 245
    return-void

    .line 253
    :cond_3d
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 254
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setTransientFpError(Z)V

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 258
    const-wide/16 v4, 0x514

    .line 257
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_39
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .registers 4
    .param p1, "running"    # Z

    .prologue
    .line 307
    if-eqz p1, :cond_8

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    :cond_8
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 6
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 235
    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_41

    .line 236
    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_43

    const/4 v0, 0x1

    .line 237
    .local v0, "isChargingOrFull":Z
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_45

    .end local v0    # "isChargingOrFull":Z
    :goto_13
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set3(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set1(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->getChargingSpeed(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 234
    return-void

    .line 235
    :cond_41
    const/4 v0, 0x1

    .restart local v0    # "isChargingOrFull":Z
    goto :goto_b

    .line 236
    .end local v0    # "isChargingOrFull":Z
    :cond_43
    const/4 v0, 0x0

    .restart local v0    # "isChargingOrFull":Z
    goto :goto_b

    .line 237
    :cond_45
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onScreenTurnedOn()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0078

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 297
    .local v0, "errorColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .end local v0    # "errorColor":I
    :cond_3b
    return-void
.end method

.method public onUserUnlocked()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get8(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 325
    :cond_d
    return-void
.end method
