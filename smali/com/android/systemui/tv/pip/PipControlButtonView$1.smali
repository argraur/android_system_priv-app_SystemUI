.class Lcom/android/systemui/tv/pip/PipControlButtonView$1;
.super Ljava/lang/Object;
.source "PipControlButtonView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipControlButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipControlButtonView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipControlButtonView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 50
    if-eqz p2, :cond_1b

    .line 51
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->startFocusGainAnimation()V

    .line 56
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get0(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 57
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get0(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 49
    :cond_1a
    return-void

    .line 53
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->startFocusLossAnimation()V

    goto :goto_7
.end method
