.class public Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 915
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 914
    return-void
.end method


# virtual methods
.method public hasUserAuthenticatedSinceBoot()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 924
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 925
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public isUnlockingWithFingerprintAllowed()Z
    .registers 3

    .prologue
    .line 919
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 920
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isFingerprintAllowedForUser(I)Z

    move-result v1

    return v1
.end method

.method public onStrongAuthRequiredChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap21(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 930
    return-void
.end method
