.class Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;
.super Ljava/lang/Object;
.source "PipRecentsOverlayManager.java"

# interfaces
.implements Lcom/android/systemui/tv/pip/PipRecentsControlsView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->-get0(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->-get0(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;->onBackPressed()V

    .line 74
    :cond_11
    return-void
.end method

.method public onClosed()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->-get0(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$1;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->-get0(Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;->onClosed()V

    .line 67
    :cond_11
    return-void
.end method
