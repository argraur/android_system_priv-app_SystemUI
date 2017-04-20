.class Lcom/android/keyguard/KeyguardSecurityContainer$2;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2
    .param p1, "securityVerified"    # Z

    .prologue
    .line 451
    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "success"    # Z
    .param p3, "timeoutMs"    # I

    .prologue
    .line 447
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 453
    return-void
.end method

.method public userActivity()V
    .registers 1

    .prologue
    .line 445
    return-void
.end method
