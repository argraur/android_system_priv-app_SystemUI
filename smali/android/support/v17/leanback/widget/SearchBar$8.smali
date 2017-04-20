.class Landroid/support/v17/leanback/widget/SearchBar$8;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 314
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 318
    if-eqz p2, :cond_1d

    .line 319
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 320
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    if-eqz v0, :cond_17

    .line 321
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    .line 322
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 327
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/SearchBar;->updateUi(Z)V

    .line 316
    return-void

    .line 325
    :cond_1d
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    goto :goto_17
.end method
