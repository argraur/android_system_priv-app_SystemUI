.class Lcom/android/systemui/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBouncerPromptReason()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 629
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 630
    .local v1, "currentUser":I
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v5

    .line 631
    .local v5, "trust":Z
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    .line 632
    .local v2, "fingerprint":Z
    if-nez v5, :cond_42

    move v0, v2

    .line 634
    :goto_1c
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v4

    .line 635
    .local v4, "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    .line 637
    .local v3, "strongAuth":I
    if-eqz v0, :cond_32

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 639
    :cond_32
    if-eqz v2, :cond_46

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasFingerprintUnlockTimedOut(I)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 640
    const/4 v6, 0x2

    return v6

    .line 632
    .end local v3    # "strongAuth":I
    .end local v4    # "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    :cond_42
    const/4 v0, 0x1

    .local v0, "any":Z
    goto :goto_1c

    .line 638
    .end local v0    # "any":Z
    .restart local v3    # "strongAuth":I
    .restart local v4    # "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    :cond_44
    const/4 v6, 0x1

    return v6

    .line 641
    :cond_46
    if-eqz v0, :cond_4e

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_4e

    .line 642
    const/4 v6, 0x3

    return v6

    .line 643
    :cond_4e
    if-eqz v5, :cond_56

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_56

    .line 644
    const/4 v6, 0x4

    return v6

    .line 645
    :cond_56
    if-eqz v0, :cond_5e

    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_5e

    .line 646
    const/4 v6, 0x5

    return v6

    .line 648
    :cond_5e
    return v7
.end method

.method public isScreenOn()Z
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .registers 4
    .param p1, "strongAuth"    # Z

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 556
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(Z)V

    .line 558
    :cond_e
    if-eqz p1, :cond_19

    .line 559
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 554
    :cond_19
    return-void
.end method

.method public keyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 565
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 567
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 564
    return-void
.end method

.method public keyguardDonePending(Z)V
    .registers 6
    .param p1, "strongAuth"    # Z

    .prologue
    const/4 v1, 0x1

    .line 577
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 579
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set0(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 580
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 581
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    .line 582
    const-wide/16 v2, 0xbb8

    .line 581
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 583
    if-eqz p1, :cond_33

    .line 584
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 586
    :cond_33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 576
    return-void
.end method

.method public keyguardGone()V
    .registers 2

    .prologue
    .line 591
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 593
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 590
    return-void
.end method

.method public playTrustedSound()V
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 613
    return-void
.end method

.method public readyForKeyguardDone()V
    .registers 3

    .prologue
    .line 598
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 602
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(Z)V

    .line 604
    :cond_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 597
    return-void
.end method

.method public resetKeyguard()V
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap23(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 608
    return-void
.end method

.method public setNeedsInput(Z)V
    .registers 3
    .param p1, "needsInput"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    .line 571
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 549
    return-void
.end method
