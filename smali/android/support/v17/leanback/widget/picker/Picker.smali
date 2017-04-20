.class public Landroid/support/v17/leanback/widget/picker/Picker;
.super Landroid/widget/FrameLayout;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/picker/Picker$1;,
        Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;,
        Landroid/support/v17/leanback/widget/picker/Picker$PickerValueListener;,
        Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mAlphaAnimDuration:I

.field private final mColumnChangeListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

.field final mColumnViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/VerticalGridView;",
            ">;"
        }
    .end annotation
.end field

.field mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/picker/PickerColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mFocusedAlpha:F

.field private mInvisibleColumnAlpha:F

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/picker/Picker$PickerValueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerItemLayoutId:I

.field private mPickerItemTextViewId:I

.field private mPickerView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSelectedColumn:I

.field private mSeparator:Ljava/lang/CharSequence;

.field private mUnfocusedAlpha:F

.field private mVisibleColumnAlpha:F

.field private mVisibleItems:F

.field private mVisibleItemsActivated:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 73
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    .line 74
    iput v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleItems:F

    .line 75
    iput v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 78
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_picker_item:I

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    .line 79
    iput v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    .line 419
    new-instance v1, Landroid/support/v17/leanback/widget/picker/Picker$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/picker/Picker$1;-><init>(Landroid/support/v17/leanback/widget/picker/Picker;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnChangeListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .line 135
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setEnabled(Z)V

    .line 137
    iput v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mFocusedAlpha:F

    .line 138
    iput v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mUnfocusedAlpha:F

    .line 139
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleColumnAlpha:F

    .line 140
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mInvisibleColumnAlpha:F

    .line 142
    const/16 v1, 0xc8

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mAlphaAnimDuration:I

    .line 144
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 145
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 147
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 148
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_picker:I

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mRootView:Landroid/view/ViewGroup;

    .line 149
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mRootView:Landroid/view/ViewGroup;

    sget v2, Landroid/support/v17/leanback/R$id;->picker:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 132
    return-void
.end method

.method private notifyValueChanged(I)V
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 258
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 259
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1c

    .line 260
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/picker/Picker$PickerValueListener;

    invoke-interface {v1, p0, p1}, Landroid/support/v17/leanback/widget/picker/Picker$PickerValueListener;->onValueChanged(Landroid/support/v17/leanback/widget/picker/Picker;I)V

    .line 259
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 257
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method private setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z
    .param p3, "destAlpha"    # F
    .param p4, "startAlpha"    # F
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 324
    if-nez p2, :cond_d

    .line 325
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 322
    :goto_c
    return-void

    .line 327
    :cond_d
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_15

    .line 329
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 331
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 332
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mAlphaAnimDuration:I

    int-to-long v2, v1

    .line 331
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_c
.end method

.method private updateColumnSize()V
    .registers 3

    .prologue
    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 476
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnSize(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_15
    return-void
.end method

.method private updateColumnSize(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .registers 5
    .param p1, "columnView"    # Landroid/support/v17/leanback/widget/VerticalGridView;

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 482
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getPickerItemHeightPixels()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 483
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getActivatedVisibleItemCount()F

    move-result v1

    .line 482
    :goto_13
    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 484
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    return-void

    .line 483
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getVisibleItemCount()F

    move-result v1

    goto :goto_13
.end method

.method private updateItemFocusable()V
    .registers 7

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v0

    .line 489
    .local v0, "activated":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v5

    if-ge v2, v5, :cond_27

    .line 490
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 491
    .local v1, "grid":Landroid/support/v17/leanback/widget/VerticalGridView;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_14
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_24

    .line 492
    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 493
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 489
    .end local v4    # "view":Landroid/view/View;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 487
    .end local v1    # "grid":Landroid/support/v17/leanback/widget/VerticalGridView;
    .end local v3    # "j":I
    :cond_27
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 440
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 441
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 442
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_22

    .line 450
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 445
    :sswitch_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1c

    .line 446
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->performClick()Z

    .line 452
    :cond_1c
    return v2

    .line 454
    .end local v0    # "keyCode":I
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 442
    :sswitch_data_22
    .sparse-switch
        0x17 -> :sswitch_13
        0x42 -> :sswitch_13
    .end sparse-switch
.end method

.method public getActivatedVisibleItemCount()F
    .registers 2

    .prologue
    .line 503
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    return v0
.end method

.method public getColumnAt(I)Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .registers 4
    .param p1, "colIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 160
    return-object v1

    .line 162
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    return-object v0
.end method

.method public getColumnsCount()I
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getPickerItemHeightPixels()I
    .registers 3

    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->picker_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public final getPickerItemLayoutId()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    return v0
.end method

.method public final getPickerItemTextViewId()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    return v0
.end method

.method public getSelectedColumn()I
    .registers 2

    .prologue
    .line 590
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    return v0
.end method

.method public final getSeparator()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparator:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getVisibleItemCount()F
    .registers 2

    .prologue
    .line 529
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public onColumnValueChanged(II)V
    .registers 5
    .param p1, "columnIndex"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 347
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 348
    .local v0, "column":Landroid/support/v17/leanback/widget/picker/PickerColumn;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v1

    if-eq v1, p2, :cond_14

    .line 349
    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setCurrentValue(I)V

    .line 350
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/picker/Picker;->notifyValueChanged(I)V

    .line 346
    :cond_14
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getSelectedColumn()I

    move-result v0

    .line 460
    .local v0, "column":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 461
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 463
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 562
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 564
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 565
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/Picker;->setSelectedColumn(I)V

    .line 563
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 561
    :cond_20
    return-void
.end method

.method public setActivated(Z)V
    .registers 3
    .param p1, "activated"    # Z

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_10

    .line 552
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 553
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnSize()V

    .line 554
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->updateItemFocusable()V

    .line 550
    :goto_f
    return-void

    .line 556
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    goto :goto_f
.end method

.method public setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V
    .registers 7
    .param p1, "columnIndex"    # I
    .param p2, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .prologue
    .line 225
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 227
    .local v1, "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    .line 228
    .local v0, "adapter":Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;
    if-eqz v0, :cond_18

    .line 229
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->notifyDataSetChanged()V

    .line 231
    :cond_18
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 224
    return-void
.end method

.method public setColumnValue(IIZ)V
    .registers 8
    .param p1, "columnIndex"    # I
    .param p2, "value"    # I
    .param p3, "runAnimation"    # Z

    .prologue
    .line 241
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 242
    .local v0, "column":Landroid/support/v17/leanback/widget/picker/PickerColumn;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v3

    if-eq v3, p2, :cond_31

    .line 243
    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setCurrentValue(I)V

    .line 244
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/picker/Picker;->notifyValueChanged(I)V

    .line 245
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 246
    .local v1, "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v1, :cond_31

    .line 247
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v3

    sub-int v2, p2, v3

    .line 248
    .local v2, "position":I
    if-eqz p3, :cond_32

    .line 249
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    .line 240
    .end local v1    # "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    .end local v2    # "position":I
    :cond_31
    :goto_31
    return-void

    .line 251
    .restart local v1    # "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    .restart local v2    # "position":I
    :cond_32
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    goto :goto_31
.end method

.method public setColumns(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/picker/PickerColumn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/picker/PickerColumn;>;"
    const/4 v11, 0x0

    .line 181
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 184
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_28

    .line 185
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 187
    :cond_28
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 188
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v10

    .line 189
    .local v10, "totalCol":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    if-ge v7, v10, :cond_92

    .line 190
    move v5, v7

    .line 192
    .local v5, "colIndex":I
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_picker_column:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {v8, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 194
    .local v6, "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-direct {p0, v6}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnSize(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    .line 196
    invoke-virtual {v6, v11}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 198
    invoke-virtual {v6, v11}, Landroid/support/v17/leanback/widget/VerticalGridView;->setHasFixedSize(Z)V

    .line 199
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    add-int/lit8 v0, v10, -0x1

    if-eq v7, v0, :cond_75

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getSeparator()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 207
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_picker_separator:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 206
    invoke-virtual {v8, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 208
    .local v9, "separator":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getSeparator()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    .end local v9    # "separator":Landroid/widget/TextView;
    :cond_75
    new-instance v0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 213
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getPickerItemLayoutId()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getPickerItemTextViewId()I

    move-result v4

    move-object v1, p0

    .line 212
    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;-><init>(Landroid/support/v17/leanback/widget/picker/Picker;Landroid/content/Context;III)V

    invoke-virtual {v6, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnChangeListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v6, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 180
    .end local v5    # "colIndex":I
    .end local v6    # "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    :cond_92
    return-void
.end method

.method setOrAnimateAlpha(Landroid/view/View;ZIZ)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Z
    .param p3, "colIndex"    # I
    .param p4, "animate"    # Z

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 302
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    if-eq p3, v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v6, 0x0

    .line 303
    .local v6, "columnShownAsActivated":Z
    :goto_d
    if-eqz p2, :cond_29

    .line 305
    if-eqz v6, :cond_1e

    .line 306
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mFocusedAlpha:F

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    .line 301
    :goto_1b
    return-void

    .line 302
    .end local v6    # "columnShownAsActivated":Z
    :cond_1c
    const/4 v6, 0x1

    .restart local v6    # "columnShownAsActivated":Z
    goto :goto_d

    .line 308
    :cond_1e
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mUnfocusedAlpha:F

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_1b

    .line 312
    :cond_29
    if-eqz v6, :cond_36

    .line 313
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleColumnAlpha:F

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_1b

    .line 315
    :cond_36
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mInvisibleColumnAlpha:F

    .line 316
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    .line 315
    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_1b
.end method

.method public setSelectedColumn(I)V
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 577
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    if-eq v1, p1, :cond_16

    .line 578
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 579
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 580
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnAlpha(IZ)V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 576
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method public final setSeparator(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "separator"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparator:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method updateColumnAlpha(IZ)V
    .registers 8
    .param p1, "colIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 287
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 289
    .local v0, "column":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v3

    .line 292
    .local v3, "selected":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 293
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, "item":Landroid/view/View;
    if-eqz v2, :cond_27

    .line 295
    if-ne v3, v1, :cond_2a

    const/4 v4, 0x1

    :goto_24
    invoke-virtual {p0, v2, v4, p1, p2}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZIZ)V

    .line 292
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 295
    :cond_2a
    const/4 v4, 0x0

    goto :goto_24

    .line 286
    .end local v2    # "item":Landroid/view/View;
    :cond_2c
    return-void
.end method
