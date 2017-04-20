.class Lcom/android/systemui/volume/VolumeDialog$6;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->initRow(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragging:Z

.field private final mSliderHitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p2, "val$row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog$6;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mSliderHitRect:Landroid/graphics/Rect;

    .line 389
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mSliderHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mDragging:Z

    if-nez v0, :cond_26

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_26

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_26

    .line 399
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mDragging:Z

    .line 401
    :cond_26
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mDragging:Z

    if-eqz v0, :cond_52

    .line 402
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 404
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_4f

    .line 405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    .line 406
    :cond_4f
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog$6;->mDragging:Z

    .line 408
    :cond_51
    return v3

    .line 410
    :cond_52
    return v2
.end method
