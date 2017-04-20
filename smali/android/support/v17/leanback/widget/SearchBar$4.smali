.class Landroid/support/v17/leanback/widget/SearchBar$4;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;

.field final synthetic val$mOnTextChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;
    .param p2, "val$mOnTextChangedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 245
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 230
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_7

    .line 237
    return-void

    .line 240
    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method
