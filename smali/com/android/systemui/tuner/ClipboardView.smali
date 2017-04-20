.class public Lcom/android/systemui/tuner/ClipboardView;
.super Landroid/widget/ImageView;
.source "ClipboardView.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private mCurrentClip:Landroid/content/ClipData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-class v0, Landroid/content/ClipboardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 35
    return-void
.end method

.method private setBackgroundDragTarget(Z)V
    .registers 3
    .param p1, "isTarget"    # Z

    .prologue
    .line 77
    if-eqz p1, :cond_9

    const v0, 0x4dffffff    # 5.3687088E8f

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundColor(I)V

    .line 76
    return-void

    .line 77
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->startListening()V

    .line 41
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->stopListening()V

    .line 47
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 73
    :goto_8
    return v2

    .line 64
    :pswitch_9
    invoke-direct {p0, v2}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundDragTarget(Z)V

    goto :goto_8

    .line 67
    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 70
    :pswitch_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundDragTarget(Z)V

    goto :goto_8

    .line 62
    nop

    :pswitch_data_1c
    .packed-switch 0x3
        :pswitch_d
        :pswitch_16
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method public onPrimaryClipChanged()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    if-eqz v0, :cond_13

    .line 98
    const v0, 0x7f02005d

    .line 97
    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setImageResource(I)V

    .line 95
    return-void

    .line 98
    :cond_13
    const v0, 0x7f02005c

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    if-eqz v0, :cond_d

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->startPocketDrag()V

    .line 57
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public startListening()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->onPrimaryClipChanged()V

    .line 85
    return-void
.end method

.method public startPocketDrag()V
    .registers 5

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 82
    const/16 v3, 0x100

    .line 81
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/tuner/ClipboardView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 80
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 90
    return-void
.end method
