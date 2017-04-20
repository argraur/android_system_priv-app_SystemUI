.class Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
.super Landroid/widget/LinearLayout;
.source "QuickQSPanel.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickQSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderTileLayout"
.end annotation


# instance fields
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
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 158
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipChildren(Z)V

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipToPadding(Z)V

    .line 161
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setGravity(I)V

    .line 162
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-void
.end method

.method private generateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 195
    .local v1, "size":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 197
    return-object v0
.end method

.method private generateSpaceParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 187
    .local v1, "size":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 189
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 190
    return-object v0
.end method

.method private getChildIndex(Lcom/android/systemui/qs/QSTileBaseView;)I
    .registers 5
    .param p1, "tileView"    # Lcom/android/systemui/qs/QSTileBaseView;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v0

    .line 215
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_e

    .line 217
    return v1

    .line 215
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 220
    :cond_11
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 5
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_18

    .line 178
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateSpaceParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :cond_18
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 175
    return-void
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .registers 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 242
    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5c

    .line 243
    move-object v0, p0

    .line 244
    .local v0, "previousView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 245
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileBaseView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_17

    .line 246
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSTileBaseView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_17

    .line 248
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_34
    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    .line 249
    const v4, 0x7f120247

    .line 248
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileBaseView;->setAccessibilityTraversalAfter(I)V

    .line 250
    iget-object v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    .line 251
    const v4, 0x7f1201f5

    .line 250
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileBaseView;->setAccessibilityTraversalBefore(I)V

    .line 240
    .end local v0    # "previousView":Landroid/view/View;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_5c
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .registers 5
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildIndex(Lcom/android/systemui/qs/QSTileBaseView;)I

    move-result v0

    .line 204
    .local v0, "childIndex":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->removeViewAt(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_13

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->removeViewAt(I)V

    .line 209
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 201
    return-void
.end method

.method public setListening(Z)V
    .registers 6
    .param p1, "listening"    # Z

    .prologue
    .line 167
    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    if-ne v2, p1, :cond_5

    return-void

    .line 168
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    .line 169
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

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

    .line 170
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mListening:Z

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_d

    .line 166
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_21
    return-void
.end method

.method public updateResources()Z
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method
