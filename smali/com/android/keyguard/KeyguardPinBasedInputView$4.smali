.class Lcom/android/keyguard/KeyguardPinBasedInputView$4;
.super Ljava/lang/Object;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$4;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$4;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$4;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 220
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$4;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->doHapticKeyClick()V

    .line 221
    return v1
.end method
