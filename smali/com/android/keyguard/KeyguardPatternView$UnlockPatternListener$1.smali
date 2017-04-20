.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
    .param p2, "val$userId"    # I

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iput p2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .registers 7
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get3(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-set0(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 261
    if-nez p1, :cond_1e

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    const/4 v2, 0x0

    .line 263
    const/4 v3, 0x1

    .line 262
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->-wrap0(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;IZIZ)V

    .line 258
    :cond_1e
    return-void
.end method

.method public onEarlyMatched()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->-wrap0(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;IZIZ)V

    .line 252
    return-void
.end method
