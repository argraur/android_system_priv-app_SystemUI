.class Lcom/android/keyguard/KeyguardStatusView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .registers 4
    .param p1, "why"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->-wrap1(Lcom/android/keyguard/KeyguardStatusView;Z)V

    .line 74
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 3
    .param p1, "showing"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_c

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap0(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap2(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 60
    :cond_c
    return-void
.end method

.method public onStartedWakingUp()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->-wrap1(Lcom/android/keyguard/KeyguardStatusView;Z)V

    .line 69
    return-void
.end method

.method public onTimeChanged()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap0(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 55
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap0(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->-wrap2(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 79
    return-void
.end method
