.class Landroid/support/v17/leanback/widget/SearchBar$6$3;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar$6;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/SearchBar$6;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v17/leanback/widget/SearchBar$6;

    .prologue
    .line 289
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 294
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->requestFocus()Z

    .line 291
    return-void
.end method
