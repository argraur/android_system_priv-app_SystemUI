.class abstract Landroid/support/v17/leanback/widget/BaseGridView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BaseGridView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;,
        Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;,
        Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;,
        Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;
    }
.end annotation


# instance fields
.field private mAnimateChildLayout:Z

.field mChainedRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mHasOverlappingRendering:Z

.field final mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

.field private mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

.field private mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

.field private mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

.field private mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    .line 187
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    .line 199
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 200
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 201
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setDescendantFocusability(I)V

    .line 202
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->setHasFixedSize(Z)V

    .line 203
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 204
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->setWillNotDraw(Z)V

    .line 205
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setOverScrollMode(I)V

    .line 209
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 210
    new-instance v0, Landroid/support/v17/leanback/widget/BaseGridView$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/BaseGridView$1;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;)V

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    .line 197
    return-void
.end method


# virtual methods
.method public dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 865
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    if-eqz v0, :cond_e

    .line 866
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;->onInterceptMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 867
    const/4 v0, 0x1

    return v0

    .line 870
    :cond_e
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 844
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;->onInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 845
    return v1

    .line 847
    :cond_e
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 848
    return v1

    .line 850
    :cond_15
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;->onUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    if-eqz v0, :cond_e

    .line 856
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 857
    const/4 v0, 0x1

    return v0

    .line 860
    :cond_e
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 713
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 714
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_19

    .line 715
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 719
    .end local v0    # "view":Landroid/view/View;
    :cond_19
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getChildDrawingOrder(II)I
    .registers 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 701
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildDrawingOrder(Landroid/support/v7/widget/RecyclerView;II)I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 909
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    return v0
.end method

.method protected initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 222
    sget-object v5, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 223
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutFront:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 224
    .local v2, "throughFront":Z
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutEnd:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 225
    .local v1, "throughEnd":Z
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v5, v2, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusOutAllowed(ZZ)V

    .line 226
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutSideStart:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 227
    .local v4, "throughSideStart":Z
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutSideEnd:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 228
    .local v3, "throughSideEnd":Z
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v5, v4, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusOutSideAllowed(ZZ)V

    .line 229
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 230
    sget v6, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_verticalMargin:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 229
    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setVerticalMargin(I)V

    .line 231
    iget-object v5, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 232
    sget v6, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_horizontalMargin:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 231
    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setHorizontalMargin(I)V

    .line 233
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 234
    sget v5, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/BaseGridView;->setGravity(I)V

    .line 236
    :cond_51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    return-void
.end method

.method final isChildrenDrawingOrderEnabledInternal()Z
    .registers 2

    .prologue
    .line 705
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 724
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 725
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 723
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 684
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendants(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 921
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->onRtlPropertiesChanged(I)V

    .line 920
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 678
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setGravity(I)V

    .line 679
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 677
    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .prologue
    .line 503
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 502
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .prologue
    .line 926
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mChainedRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 925
    return-void
.end method

.method public setSelectedPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(II)V

    .line 531
    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 565
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionSmooth(I)V

    .line 564
    return-void
.end method

.method public setWindowAlignment(I)V
    .registers 3
    .param p1, "windowAlignment"    # I

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setWindowAlignment(I)V

    .line 277
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 275
    return-void
.end method
