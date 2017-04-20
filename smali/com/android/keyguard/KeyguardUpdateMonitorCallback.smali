.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method public onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .registers 2
    .param p1, "dreaming"    # Z

    .prologue
    .line 258
    return-void
.end method

.method public onEmergencyCallAction()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .registers 3
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 236
    return-void
.end method

.method public onFingerprintAcquired()V
    .registers 1

    .prologue
    .line 205
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .registers 1

    .prologue
    .line 210
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 216
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .registers 3
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 231
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .registers 3
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 223
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .registers 2
    .param p1, "running"    # Z

    .prologue
    .line 241
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 2
    .param p1, "why"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .registers 2
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    .line 252
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 89
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 74
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .registers 8
    .param p1, "showing"    # Z

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 78
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_13

    .line 79
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    return-void

    .line 80
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 81
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 82
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    .line 76
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 2
    .param p1, "phoneState"    # I

    .prologue
    .line 68
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 43
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 1

    .prologue
    .line 182
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 123
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 2
    .param p1, "why"    # I

    .prologue
    .line 164
    return-void
.end method

.method public onStartedWakingUp()V
    .registers 1

    .prologue
    .line 158
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 247
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public onTrustChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .registers 3
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 197
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onUserInfoChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onUserUnlocked()V
    .registers 1

    .prologue
    .line 133
    return-void
.end method
