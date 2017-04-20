.class public Lcom/android/systemui/qs/PagedTileLayout$TilePage;
.super Lcom/android/systemui/qs/TileLayout;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilePage"
.end annotation


# instance fields
.field private mMaxRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mContext:Landroid/content/Context;

    const v1, 0x7f0f024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private getRows()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_13

    .line 286
    const/4 v1, 0x3

    return v1

    .line 288
    :cond_13
    const v1, 0x7f0e002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public isFull()Z
    .registers 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public updateResources()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getRows()I

    move-result v1

    .line 274
    .local v1, "rows":I
    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    if-eq v1, v3, :cond_18

    move v0, v2

    .line 275
    .local v0, "changed":Z
    :goto_a
    if-eqz v0, :cond_11

    .line 276
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->requestLayout()V

    .line 279
    :cond_11
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v3

    if-nez v3, :cond_1a

    .end local v0    # "changed":Z
    :goto_17
    return v0

    .line 274
    :cond_18
    const/4 v0, 0x0

    goto :goto_a

    .restart local v0    # "changed":Z
    :cond_1a
    move v0, v2

    .line 279
    goto :goto_17
.end method
