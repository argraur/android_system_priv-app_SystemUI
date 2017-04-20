.class Lcom/android/keyguard/KeyguardSimPukView$2$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$2;->onSimLockChangedResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$2;II)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardSimPukView$2;
    .param p2, "val$result"    # I
    .param p3, "val$attemptsRemaining"    # I

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 327
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 328
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 330
    :cond_18
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 331
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    if-eqz v3, :cond_21

    move v0, v1

    .line 330
    :cond_21
    invoke-virtual {v2, v1, v0}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(ZZ)V

    .line 332
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    if-nez v0, :cond_50

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 334
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->-get4(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v2

    .line 333
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 355
    :goto_48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardSimPukView;->-set0(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 326
    return-void

    .line 337
    :cond_50
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$result:I

    if-ne v0, v1, :cond_86

    .line 338
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_72

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap0(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 353
    :goto_66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->-get3(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    goto :goto_48

    .line 343
    :cond_72
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 344
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap3(Lcom/android/keyguard/KeyguardSimPukView;I)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_66

    .line 347
    :cond_86
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 348
    sget v3, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    .line 347
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_66
.end method
