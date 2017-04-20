.class Lcom/android/systemui/statusbar/policy/RemoteInputView$1;
.super Ljava/lang/Object;
.source "RemoteInputView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/RemoteInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 111
    if-nez p3, :cond_3b

    .line 112
    const/4 v2, 0x6

    if-eq p2, v2, :cond_9

    .line 113
    const/4 v2, 0x5

    if-ne p2, v2, :cond_34

    .line 112
    :cond_9
    const/4 v1, 0x1

    .line 115
    .local v1, "isSoftImeEvent":Z
    :goto_a
    if-eqz p3, :cond_3f

    .line 116
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    .line 115
    if-eqz v2, :cond_3f

    .line 117
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3d

    const/4 v0, 0x1

    .line 119
    .local v0, "isKeyboardEnterKey":Z
    :goto_1d
    if-nez v1, :cond_21

    if-eqz v0, :cond_41

    .line 120
    :cond_21
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-get0(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->length()I

    move-result v2

    if-lez v2, :cond_32

    .line 121
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-wrap1(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 124
    :cond_32
    const/4 v2, 0x1

    return v2

    .line 114
    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_34
    const/4 v2, 0x4

    if-ne p2, v2, :cond_39

    const/4 v1, 0x1

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_a

    .end local v1    # "isSoftImeEvent":Z
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_a

    .line 111
    .end local v1    # "isSoftImeEvent":Z
    :cond_3b
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_a

    .line 117
    :cond_3d
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1d

    .line 115
    .end local v0    # "isKeyboardEnterKey":Z
    :cond_3f
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1d

    .line 126
    :cond_41
    return v3
.end method
