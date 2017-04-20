.class Lcom/android/systemui/SwipeHelper$1;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/SwipeHelper;
    .param p2, "val$ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 276
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->-get1(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->-get5(Lcom/android/systemui/SwipeHelper;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 275
    :cond_11
    :goto_11
    return-void

    .line 277
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v2, v5}, Lcom/android/systemui/SwipeHelper;->-set0(Lcom/android/systemui/SwipeHelper;Z)Z

    .line 278
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->-get1(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v2

    .line 279
    const/4 v3, 0x2

    .line 278
    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 280
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->-get1(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get6(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 281
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get6(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 282
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get6(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v3

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 283
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->-get4(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get1(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;II)Z

    goto :goto_11
.end method
