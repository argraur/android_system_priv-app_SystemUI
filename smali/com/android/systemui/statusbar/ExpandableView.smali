.class public abstract Lcom/android/systemui/statusbar/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static mClipRect:Landroid/graphics/Rect;


# instance fields
.field private mActualHeight:I

.field private mChangingPosition:Z

.field private mClipToActualHeight:Z

.field protected mClipTopAmount:I

.field private mDark:Z

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMinClipTopAmount:I

.field protected mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mTransientContainer:Landroid/view/ViewGroup;

.field private mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 43
    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    .line 48
    return-void
.end method

.method private updateClipping()V
    .registers 6

    .prologue
    .line 325
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    if-eqz v1, :cond_2d

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 327
    .local v0, "top":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 330
    :cond_14
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 331
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 324
    .end local v0    # "top":I
    :goto_2c
    return-void

    .line 333
    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_2c
.end method


# virtual methods
.method public areChildrenExpanded()Z
    .registers 2

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public getActualHeight()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    return v0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    .line 310
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 312
    :cond_23
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 313
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 306
    return-void
.end method

.method public getClipTopAmount()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    return v0
.end method

.method public getCollapsedHeight()I
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 299
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 300
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 301
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 302
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 297
    return-void
.end method

.method public getExtraBottomPadding()I
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public getIncreasedPaddingAmount()F
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaxContentHeight()I
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOutlineAlpha()F
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public getOutlineTranslation()I
    .registers 2

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public getShadowAlpha()F
    .registers 2

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTranslation()F
    .registers 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-super {p0}, Landroid/widget/FrameLayout;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public isChangingPosition()Z
    .registers 2

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    return v0
.end method

.method public isChildInGroup()Z
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public isDark()Z
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    return v0
.end method

.method public isGroupExpanded()Z
    .registers 2

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupExpansionChanging()Z
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public isSummaryWithChildren()Z
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isTransparent()Z
    .registers 2

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public mustStayOnScreen()Z
    .registers 2

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public notifyHeightChanged(Z)V
    .registers 3
    .param p1, "needsAnimation"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 238
    :cond_9
    return-void
.end method

.method public onHeightReset()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_9

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 281
    :cond_9
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 100
    return-void
.end method

.method protected onMeasure(II)V
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 54
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 55
    .local v8, "givenSize":I
    const v15, 0x7fffffff

    .line 56
    .local v15, "ownMaxHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 57
    .local v9, "heightMode":I
    if-eqz v9, :cond_13

    if-eqz v8, :cond_13

    .line 58
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 60
    :cond_13
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 61
    .local v13, "newHeightSpec":I
    const/4 v12, 0x0

    .line 62
    .local v12, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getChildCount()I

    move-result v5

    .line 63
    .local v5, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_21
    if-ge v10, v5, :cond_94

    .line 64
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    .line 63
    :goto_35
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    .line 68
    :cond_38
    move v7, v13

    .line 69
    .local v7, "childHeightSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 70
    .local v11, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_88

    .line 71
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    if-ltz v17, :cond_5f

    .line 73
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v15, :cond_7d

    .line 74
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 78
    :cond_5f
    :goto_5f
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v17

    .line 77
    move/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/view/View;->measure(II)V

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 81
    .local v6, "childHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_35

    .line 75
    .end local v6    # "childHeight":I
    :cond_7d
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_5f

    .line 83
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 86
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "childHeightSpec":I
    .end local v11    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_94
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v9, v0, :cond_d5

    move v14, v8

    .line 88
    .local v14, "ownHeight":I
    :goto_9b
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "child$iterator":Ljava/util/Iterator;
    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_da

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 91
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, 0x0

    .line 90
    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/view/View;->measure(II)V

    goto :goto_ad

    .line 87
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "child$iterator":Ljava/util/Iterator;
    .end local v14    # "ownHeight":I
    :cond_d5
    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_9b

    .line 94
    .restart local v4    # "child$iterator":Ljava/util/Iterator;
    .restart local v14    # "ownHeight":I
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 96
    .local v16, "width":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setMeasuredDimension(II)V

    .line 53
    return-void
.end method

.method public abstract performAddAnimation(JJ)V
.end method

.method public abstract performRemoveAnimation(JFLjava/lang/Runnable;)V
.end method

.method public pointInView(FFF)Z
    .registers 9
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    const/4 v2, 0x0

    .line 107
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    int-to-float v1, v3

    .line 108
    .local v1, "top":F
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    int-to-float v0, v3

    .line 109
    .local v0, "bottom":F
    neg-float v3, p3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_24

    sub-float v3, v1, p3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_24

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableView;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, p3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_24

    .line 110
    add-float v3, v0, p3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_24

    const/4 v2, 0x1

    .line 109
    :cond_24
    return v2
.end method

.method public setActualHeight(I)V
    .registers 3
    .param p1, "actualHeight"    # I

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 128
    return-void
.end method

.method public setActualHeight(IZ)V
    .registers 4
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 121
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 123
    if-eqz p2, :cond_b

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->notifyHeightChanged(Z)V

    .line 120
    :cond_b
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .registers 2
    .param p1, "animating"    # Z

    .prologue
    .line 439
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .registers 2
    .param p1, "below"    # Z

    .prologue
    .line 264
    return-void
.end method

.method public setChangingPosition(Z)V
    .registers 2
    .param p1, "changingPosition"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    .line 401
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .registers 2
    .param p1, "clipToActualHeight"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 337
    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 218
    return-void
.end method

.method public setDark(ZZJ)V
    .registers 5
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    .line 180
    return-void
.end method

.method public setDimmed(ZZ)V
    .registers 3
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 170
    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .registers 5
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .prologue
    .line 390
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .registers 7
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 202
    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .registers 2
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 195
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 4
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 361
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 359
    :cond_9
    return-void
.end method

.method public setMinClipTopAmount(I)V
    .registers 2
    .param p1, "minClipTopAmount"    # I

    .prologue
    .line 355
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    .line 354
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 227
    return-void
.end method

.method public setShadowAlpha(F)V
    .registers 2
    .param p1, "shadowAlpha"    # F

    .prologue
    .line 375
    return-void
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "transientContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    .line 409
    return-void
.end method

.method public setTranslation(F)V
    .registers 2
    .param p1, "translation"    # F

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationX(F)V

    .line 270
    return-void
.end method

.method public setWillBeGone(Z)V
    .registers 2
    .param p1, "willBeGone"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    .line 346
    return-void
.end method

.method public willBeGone()Z
    .registers 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    return v0
.end method
