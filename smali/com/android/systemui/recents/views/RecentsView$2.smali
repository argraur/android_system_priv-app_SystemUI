.class Lcom/android/systemui/recents/views/RecentsView$2;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-wrap0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 490
    .local v0, "buttonBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 491
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 490
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setLeftTopRightBottom(IIII)V

    .line 487
    return-void
.end method
