.class Lcom/android/keyguard/KeyguardPatternView$2;
.super Landroid/os/CountDownTimer;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get3(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-wrap0(Lcom/android/keyguard/KeyguardPatternView;)V

    .line 314
    return-void
.end method

.method public onTick(J)V
    .registers 10
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 308
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 309
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get5(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v1

    .line 310
    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    .line 309
    new-array v3, v6, [Ljava/lang/Object;

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 309
    invoke-virtual {v1, v2, v6, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ[Ljava/lang/Object;)V

    .line 307
    return-void
.end method
