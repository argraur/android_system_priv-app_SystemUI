.class Lcom/android/systemui/statusbar/BaseStatusBar$8;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1341
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1342
    .local v0, "action":I
    if-nez v0, :cond_f

    .line 1343
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->preloadRecents()V

    .line 1352
    :cond_e
    :goto_e
    return v2

    .line 1344
    :cond_f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 1345
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecents()V

    goto :goto_e

    .line 1346
    :cond_18
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1347
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1348
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecents()V

    goto :goto_e
.end method
