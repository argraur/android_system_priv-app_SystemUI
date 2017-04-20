.class Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;
.super Ljava/lang/Object;
.source "PipRecentsOverlayManager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->initViews(Landroid/content/Context;)V
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
    .line 93
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 96
    if-eqz p2, :cond_7

    .line 97
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$2;->this$0:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->clearFocus()V

    .line 95
    :cond_7
    return-void
.end method
