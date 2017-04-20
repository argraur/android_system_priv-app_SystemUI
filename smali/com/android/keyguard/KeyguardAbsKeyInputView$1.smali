.class Lcom/android/keyguard/KeyguardAbsKeyInputView$1;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;
    .param p2, "val$userId"    # I

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .registers 7
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v3, 0x1

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 151
    if-nez p1, :cond_15

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-wrap0(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V

    .line 148
    :cond_15
    return-void
.end method

.method public onEarlyMatched()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->-wrap0(Lcom/android/keyguard/KeyguardAbsKeyInputView;IZIZ)V

    .line 142
    return-void
.end method
