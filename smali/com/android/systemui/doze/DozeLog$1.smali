.class final Lcom/android/systemui/doze/DozeLog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .registers 1

    .prologue
    .line 242
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->traceEmergencyCall()V

    .line 241
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 2
    .param p1, "why"    # I

    .prologue
    .line 257
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceScreenOff(I)V

    .line 256
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 247
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguardBouncerChanged(Z)V

    .line 246
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 262
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguard(Z)V

    .line 261
    return-void
.end method

.method public onStartedWakingUp()V
    .registers 1

    .prologue
    .line 252
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->traceScreenOn()V

    .line 251
    return-void
.end method
