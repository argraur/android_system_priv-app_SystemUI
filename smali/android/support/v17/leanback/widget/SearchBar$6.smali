.class Landroid/support/v17/leanback/widget/SearchBar$6;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v4, 0x1f4

    .line 263
    const/4 v0, 0x1

    .line 264
    .local v0, "handled":Z
    const/4 v1, 0x3

    if-eq v1, p2, :cond_8

    .line 265
    if-nez p2, :cond_20

    :cond_8
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v1, :cond_20

    .line 267
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 268
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$1;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$1;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    :goto_1f
    return v0

    .line 276
    :cond_20
    const/4 v1, 0x1

    if-ne v1, p2, :cond_3b

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v1, :cond_3b

    .line 278
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 279
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$2;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$2;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    .line 286
    :cond_3b
    const/4 v1, 0x2

    if-ne v1, p2, :cond_50

    .line 288
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 289
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v17/leanback/widget/SearchBar$6$3;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/SearchBar$6$3;-><init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    .line 298
    :cond_50
    const/4 v0, 0x0

    goto :goto_1f
.end method
