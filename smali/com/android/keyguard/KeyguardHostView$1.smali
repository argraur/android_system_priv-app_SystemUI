.class Lcom/android/keyguard/KeyguardHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrustGrantedWithFlags(II)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    if-eq p2, v3, :cond_8

    return-void

    .line 76
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardHostView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_11

    return-void

    .line 77
    :cond_11
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardHostView;->-wrap0(Lcom/android/keyguard/KeyguardHostView;)Z

    move-result v0

    .line 79
    .local v0, "bouncerVisible":Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_44

    const/4 v2, 0x1

    .line 81
    .local v2, "initiatedByUser":Z
    :goto_1c
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_46

    const/4 v1, 0x1

    .line 83
    .local v1, "dismissKeyguard":Z
    :goto_21
    if-nez v2, :cond_25

    if-eqz v1, :cond_43

    .line 84
    :cond_25
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_48

    if-nez v0, :cond_33

    if-eqz v1, :cond_48

    .line 85
    :cond_33
    if-nez v0, :cond_3e

    .line 89
    const-string/jumbo v3, "KeyguardViewBase"

    const-string/jumbo v4, "TrustAgent dismissed Keyguard."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3e
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardHostView;->dismiss(Z)Z

    .line 74
    :cond_43
    :goto_43
    return-void

    .line 79
    .end local v1    # "dismissKeyguard":Z
    .end local v2    # "initiatedByUser":Z
    :cond_44
    const/4 v2, 0x0

    .restart local v2    # "initiatedByUser":Z
    goto :goto_1c

    .line 81
    :cond_46
    const/4 v1, 0x0

    .restart local v1    # "dismissKeyguard":Z
    goto :goto_21

    .line 93
    :cond_48
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    goto :goto_43
.end method

.method public onUserSwitchComplete(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 69
    return-void
.end method
