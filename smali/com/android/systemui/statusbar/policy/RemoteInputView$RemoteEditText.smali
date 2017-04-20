.class public Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
.super Landroid/widget/EditText;
.source "RemoteInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RemoteInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteEditText"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field mShowImeOnInputConnection:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V
    .registers 2
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 465
    return-void
.end method

.method private defocusIfNeeded(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-get1(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChangingPosition()Z

    move-result v0

    if-nez v0, :cond_19

    .line 472
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isTemporarilyDetached()Z

    move-result v0

    .line 471
    if-eqz v0, :cond_30

    .line 473
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_2f

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-get1(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    .line 480
    :cond_2f
    return-void

    .line 482
    :cond_30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 483
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_48

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-wrap0(Lcom/android/systemui/statusbar/policy/RemoteInputView;Z)V

    .line 487
    :cond_48
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 470
    :cond_4a
    return-void
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 510
    invoke-super {p0, p1}, Landroid/widget/EditText;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 511
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 512
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mScrollY:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBottom:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 509
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->-get2(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z

    move-result v0

    .line 544
    .local v0, "flyingOut":Z
    :goto_b
    if-nez v0, :cond_11

    invoke-super {p0}, Landroid/widget/EditText;->onCheckIsTextEditor()Z

    move-result v1

    :cond_11
    return v1

    .end local v0    # "flyingOut":Z
    :cond_12
    move v0, v1

    .line 543
    goto :goto_b
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->clearComposingText()V

    .line 573
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setSelection(I)V

    .line 571
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 551
    .local v1, "inputConnection":Landroid/view/inputmethod/InputConnection;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    if-eqz v2, :cond_18

    if-eqz v1, :cond_18

    .line 552
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 553
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_18

    .line 557
    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->post(Ljava/lang/Runnable;)Z

    .line 567
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_18
    return-object v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 502
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 503
    if-nez p1, :cond_9

    .line 504
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 501
    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 522
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 524
    const/4 v0, 0x1

    return v0

    .line 526
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 531
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 532
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 533
    return v1

    .line 535
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isShown()Z

    move-result v0

    if-nez v0, :cond_d

    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 492
    :cond_d
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mRemoteInputView:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestScrollTo()Z

    move-result v0

    return v0
.end method

.method setInnerFocusable(Z)V
    .registers 3
    .param p1, "focusable"    # Z

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setFocusableInTouchMode(Z)V

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setFocusable(Z)V

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setCursorVisible(Z)V

    .line 582
    if-eqz p1, :cond_14

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->requestFocus()Z

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 577
    :goto_13
    return-void

    .line 586
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method
