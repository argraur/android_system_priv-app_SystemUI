.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "TileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field protected mCellHeight:I

.field protected mCellMargin:I

.field private mCellMarginTop:I

.field protected mCellWidth:I

.field protected mColumns:I

.field private mListening:Z

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setFocusableInTouchMode(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    .line 34
    return-void
.end method

.method private static exactly(I)I
    .registers 2
    .param p0, "size"    # I

    .prologue
    .line 107
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnStart(I)I
    .registers 4
    .param p1, "column"    # I

    .prologue
    .line 140
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getRowTop(I)I
    .registers 4
    .param p1, "row"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 4
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 57
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .registers 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getTop()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getWidth()I

    move-result v8

    .line 113
    .local v8, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_49

    const/4 v2, 0x1

    .line 114
    .local v2, "isRtl":Z
    :goto_c
    const/4 v6, 0x0

    .line 115
    .local v6, "row":I
    const/4 v0, 0x0

    .line 116
    .local v0, "column":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v9, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_50

    .line 117
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v0, v9, :cond_20

    .line 118
    add-int/lit8 v6, v6, 0x1

    .line 119
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v0, v9

    .line 121
    :cond_20
    iget-object v9, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 122
    .local v4, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result v3

    .line 123
    .local v3, "left":I
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v7

    .line 125
    .local v7, "top":I
    if-eqz v2, :cond_4b

    .line 126
    sub-int v5, v8, v3

    .line 127
    .local v5, "right":I
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    sub-int v3, v5, v9

    .line 131
    :goto_38
    iget-object v9, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    iget-object v10, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTileBaseView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v3, v7, v5, v10}, Lcom/android/systemui/qs/QSTileBaseView;->layout(IIII)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 113
    .end local v0    # "column":I
    .end local v1    # "i":I
    .end local v2    # "isRtl":Z
    .end local v3    # "left":I
    .end local v4    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v5    # "right":I
    .end local v6    # "row":I
    .end local v7    # "top":I
    :cond_49
    const/4 v2, 0x0

    .restart local v2    # "isRtl":Z
    goto :goto_c

    .line 129
    .restart local v0    # "column":I
    .restart local v1    # "i":I
    .restart local v3    # "left":I
    .restart local v4    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .restart local v6    # "row":I
    .restart local v7    # "top":I
    :cond_4b
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int v5, v3, v9

    .restart local v5    # "right":I
    goto :goto_38

    .line 111
    .end local v3    # "left":I
    .end local v4    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v5    # "right":I
    .end local v7    # "top":I
    :cond_50
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 91
    iget-object v6, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 92
    .local v0, "numTiles":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 93
    .local v5, "width":I
    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    div-int v4, v6, v7

    .line 94
    .local v4, "rows":I
    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mCellMargin:I

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    sub-int v6, v5, v6

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 96
    move-object v1, p0

    .line 97
    .local v1, "previousView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "record$iterator":Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 98
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v6, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSTileBaseView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_28

    .line 99
    iget-object v6, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v7}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v8}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/qs/QSTileBaseView;->measure(II)V

    .line 100
    iget-object v6, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v6, v1}, Lcom/android/systemui/qs/QSTileBaseView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_28

    .line 103
    .end local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_56
    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mCellMargin:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v4

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mCellMargin:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 102
    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/qs/TileLayout;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method

.method public removeAllViews()V
    .registers 5

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 69
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_6

    .line 71
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_19
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 72
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 4
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 64
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->removeView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public setListening(Z)V
    .registers 6
    .param p1, "listening"    # Z

    .prologue
    .line 47
    iget-boolean v2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne v2, p1, :cond_5

    return-void

    .line 48
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 49
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 50
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_d

    .line 46
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_21
    return-void
.end method

.method public updateResources()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 76
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 78
    .local v0, "columns":I
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10017c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 79
    const v2, 0x7f10017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMargin:I

    .line 80
    const v2, 0x7f10017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    .line 81
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v2, v0, :cond_3d

    .line 82
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->requestLayout()V

    .line 84
    return v4

    .line 86
    :cond_3d
    const/4 v2, 0x0

    return v2
.end method
