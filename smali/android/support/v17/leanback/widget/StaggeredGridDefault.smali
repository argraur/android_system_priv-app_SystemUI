.class final Landroid/support/v17/leanback/widget/StaggeredGridDefault;
.super Landroid/support/v17/leanback/widget/StaggeredGrid;
.source "StaggeredGridDefault.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;-><init>()V

    return-void
.end method

.method private findRowEdgeLimitSearchIndex(Z)I
    .registers 6
    .param p1, "append"    # Z

    .prologue
    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, "wrapped":Z
    if-eqz p1, :cond_1e

    .line 205
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    .local v0, "index":I
    :goto_5
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v0, v3, :cond_39

    .line 206
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 207
    .local v1, "row":I
    if-nez v1, :cond_15

    .line 208
    const/4 v2, 0x1

    .line 205
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 209
    :cond_15
    if-eqz v2, :cond_12

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_12

    .line 210
    return v0

    .line 214
    .end local v0    # "index":I
    .end local v1    # "row":I
    :cond_1e
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    .restart local v0    # "index":I
    :goto_20
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v0, v3, :cond_39

    .line 215
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 216
    .restart local v1    # "row":I
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_34

    .line 217
    const/4 v2, 0x1

    .line 214
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 218
    :cond_34
    if-eqz v2, :cond_31

    if-nez v1, :cond_31

    .line 219
    return v0

    .line 223
    .end local v1    # "row":I
    :cond_39
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .registers 16
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    .line 228
    iget-object v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    .line 233
    .local v0, "count":I
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-ltz v11, :cond_8e

    .line 234
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v12

    if-ge v11, v12, :cond_14

    .line 236
    const/4 v11, 0x0

    return v11

    .line 238
    :cond_14
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v6, v11, 0x1

    .line 239
    .local v6, "itemIndex":I
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v11

    iget v9, v11, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 241
    .local v9, "rowIndex":I
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v3

    .line 242
    .local v3, "edgeLimitSearchIndex":I
    if-gez v3, :cond_6e

    .line 245
    const/high16 v1, -0x80000000

    .line 246
    .local v1, "edgeLimit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2a
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v5, v11, :cond_3a

    .line 247
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_66

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v1

    .line 248
    :goto_36
    const/high16 v11, -0x80000000

    if-eq v1, v11, :cond_6b

    .line 256
    .end local v5    # "i":I
    :cond_3a
    :goto_3a
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_80

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    if-gt v11, v1, :cond_55

    .line 259
    :goto_44
    add-int/lit8 v9, v9, 0x1

    .line 260
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ne v9, v11, :cond_55

    .line 262
    const/4 v9, 0x0

    .line 263
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_87

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v1

    .line 266
    :cond_55
    :goto_55
    const/4 v2, 0x1

    .line 276
    .end local v3    # "edgeLimitSearchIndex":I
    .local v2, "edgeLimitIsValid":Z
    :goto_56
    const/4 v4, 0x0

    .line 281
    .local v4, "filledOne":Z
    :goto_57
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v9, v11, :cond_15d

    .line 283
    if-eq v6, v0, :cond_65

    if-nez p2, :cond_b4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_b4

    .line 284
    :cond_65
    return v4

    .line 247
    .end local v2    # "edgeLimitIsValid":Z
    .end local v4    # "filledOne":Z
    .restart local v3    # "edgeLimitSearchIndex":I
    .restart local v5    # "i":I
    :cond_66
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v1

    goto :goto_36

    .line 246
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 253
    .end local v1    # "edgeLimit":I
    .end local v5    # "i":I
    :cond_6e
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_79

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v3, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v1

    .restart local v1    # "edgeLimit":I
    goto :goto_3a

    .line 254
    .end local v1    # "edgeLimit":I
    :cond_79
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v3, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v1

    .restart local v1    # "edgeLimit":I
    goto :goto_3a

    .line 257
    :cond_80
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    if-lt v11, v1, :cond_55

    goto :goto_44

    .line 263
    :cond_87
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v1

    goto :goto_55

    .line 268
    .end local v1    # "edgeLimit":I
    .end local v3    # "edgeLimitSearchIndex":I
    .end local v6    # "itemIndex":I
    .end local v9    # "rowIndex":I
    :cond_8e
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b0

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    .line 270
    .restart local v6    # "itemIndex":I
    :goto_95
    iget-object v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v11}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v11

    if-lez v11, :cond_b2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v11

    iget v11, v11, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v11, v11, 0x1

    .line 271
    :goto_a9
    iget v12, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    .line 270
    rem-int v9, v11, v12

    .line 272
    .restart local v9    # "rowIndex":I
    const/4 v1, 0x0

    .line 273
    .restart local v1    # "edgeLimit":I
    const/4 v2, 0x0

    .restart local v2    # "edgeLimitIsValid":Z
    goto :goto_56

    .line 268
    .end local v1    # "edgeLimit":I
    .end local v2    # "edgeLimitIsValid":Z
    .end local v6    # "itemIndex":I
    .end local v9    # "rowIndex":I
    :cond_b0
    const/4 v6, 0x0

    .restart local v6    # "itemIndex":I
    goto :goto_95

    :cond_b2
    move v11, v6

    .line 270
    goto :goto_a9

    .line 286
    .restart local v1    # "edgeLimit":I
    .restart local v2    # "edgeLimitIsValid":Z
    .restart local v4    # "filledOne":Z
    .restart local v9    # "rowIndex":I
    :cond_b4
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_101

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    .line 287
    .local v8, "location":I
    :goto_bc
    const v11, 0x7fffffff

    if-eq v8, v11, :cond_c5

    const/high16 v11, -0x80000000

    if-ne v8, v11, :cond_124

    .line 289
    :cond_c5
    if-nez v9, :cond_112

    .line 290
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_106

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    .line 291
    :goto_d3
    const v11, 0x7fffffff

    if-eq v8, v11, :cond_e4

    const/high16 v11, -0x80000000

    if-eq v8, v11, :cond_e4

    .line 292
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_10f

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    neg-int v11, v11

    :goto_e3
    add-int/2addr v8, v11

    .line 300
    :cond_e4
    :goto_e4
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "itemIndex":I
    .local v7, "itemIndex":I
    invoke-virtual {p0, v6, v9, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v10

    .line 301
    .local v10, "size":I
    const/4 v4, 0x1

    .line 304
    if-eqz v2, :cond_14c

    :goto_ed
    move v6, v7

    .line 305
    .end local v7    # "itemIndex":I
    .restart local v6    # "itemIndex":I
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_130

    sub-int v11, v8, v10

    if-le v11, v1, :cond_134

    .line 307
    :cond_f6
    if-eq v6, v0, :cond_100

    if-nez p2, :cond_138

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_138

    .line 308
    :cond_100
    return v4

    .line 286
    .end local v8    # "location":I
    .end local v10    # "size":I
    :cond_101
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_bc

    .line 290
    .restart local v8    # "location":I
    :cond_106
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_d3

    .line 292
    :cond_10f
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    goto :goto_e3

    .line 295
    :cond_112
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_11d

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_e4

    :cond_11d
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    goto :goto_e4

    .line 298
    :cond_124
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_12d

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    neg-int v11, v11

    :goto_12b
    add-int/2addr v8, v11

    goto :goto_e4

    :cond_12d
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    goto :goto_12b

    .line 306
    .restart local v10    # "size":I
    :cond_130
    add-int v11, v8, v10

    if-lt v11, v1, :cond_f6

    .line 281
    :cond_134
    :goto_134
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_57

    .line 310
    :cond_138
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_148

    neg-int v11, v10

    iget v12, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    sub-int/2addr v11, v12

    :goto_140
    add-int/2addr v8, v11

    .line 311
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "itemIndex":I
    .restart local v7    # "itemIndex":I
    invoke-virtual {p0, v6, v9, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v10

    goto :goto_ed

    .line 310
    .end local v7    # "itemIndex":I
    .restart local v6    # "itemIndex":I
    :cond_148
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    add-int/2addr v11, v10

    goto :goto_140

    .line 314
    .end local v6    # "itemIndex":I
    .restart local v7    # "itemIndex":I
    :cond_14c
    const/4 v2, 0x1

    .line 315
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_157

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v1

    move v6, v7

    .end local v7    # "itemIndex":I
    .restart local v6    # "itemIndex":I
    goto :goto_134

    .end local v6    # "itemIndex":I
    .restart local v7    # "itemIndex":I
    :cond_157
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v1

    move v6, v7

    .end local v7    # "itemIndex":I
    .restart local v6    # "itemIndex":I
    goto :goto_134

    .line 318
    .end local v8    # "location":I
    .end local v10    # "size":I
    :cond_15d
    if-eqz p2, :cond_160

    .line 319
    return v4

    .line 321
    :cond_160
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_16d

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v1

    .line 323
    :goto_16a
    const/4 v9, 0x0

    goto/16 :goto_57

    .line 321
    :cond_16d
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v1

    goto :goto_16a
.end method

.method public findRowMax(ZI[I)I
    .registers 14
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .prologue
    .line 105
    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 106
    .local v0, "edge":I
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 107
    .local v3, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 108
    .local v5, "row":I
    move v2, p2

    .line 109
    .local v2, "index":I
    const/4 v8, 0x1

    .line 110
    .local v8, "visitedRows":I
    move v7, v5

    .line 111
    .local v7, "visitRow":I
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_3a

    .line 112
    move v6, v0

    .line 113
    .local v6, "value":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_16
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_70

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v9, :cond_70

    .line 114
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 115
    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v9

    .line 116
    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_34

    .line 117
    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 119
    if-eqz p1, :cond_37

    if-le v0, v6, :cond_34

    .line 120
    :goto_31
    move v5, v7

    .line 121
    move v6, v0

    .line 122
    move v2, v1

    .line 113
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 119
    :cond_37
    if-ge v0, v6, :cond_34

    goto :goto_31

    .line 127
    .end local v1    # "i":I
    .end local v6    # "value":I
    :cond_3a
    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    add-int v6, v0, v9

    .line 128
    .restart local v6    # "value":I
    add-int/lit8 v1, p2, -0x1

    .restart local v1    # "i":I
    :goto_44
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_70

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v1, v9, :cond_70

    .line 129
    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v9

    .line 130
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 131
    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_6a

    .line 132
    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 133
    add-int/lit8 v8, v8, 0x1

    .line 134
    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    add-int v4, v0, v9

    .line 135
    .local v4, "newValue":I
    if-eqz p1, :cond_6d

    if-le v4, v6, :cond_6a

    .line 136
    :goto_67
    move v5, v7

    .line 137
    move v6, v4

    .line 138
    move v2, v1

    .line 128
    .end local v4    # "newValue":I
    :cond_6a
    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    .line 135
    .restart local v4    # "newValue":I
    :cond_6d
    if-ge v4, v6, :cond_6a

    goto :goto_67

    .line 143
    .end local v4    # "newValue":I
    :cond_70
    if-eqz p3, :cond_78

    .line 144
    const/4 v9, 0x0

    aput v5, p3, v9

    .line 145
    const/4 v9, 0x1

    aput v2, p3, v9

    .line 147
    :cond_78
    return v6
.end method

.method public findRowMin(ZI[I)I
    .registers 14
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .prologue
    .line 157
    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 158
    .local v0, "edge":I
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 159
    .local v3, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 160
    .local v5, "row":I
    move v2, p2

    .line 161
    .local v2, "index":I
    const/4 v8, 0x1

    .line 162
    .local v8, "visitedRows":I
    move v7, v5

    .line 163
    .local v7, "visitRow":I
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_49

    .line 164
    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    sub-int v6, v0, v9

    .line 165
    .local v6, "value":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_1d
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_70

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v1, v9, :cond_70

    .line 166
    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v9

    .line 167
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 168
    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_43

    .line 169
    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 170
    add-int/lit8 v8, v8, 0x1

    .line 171
    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    sub-int v4, v0, v9

    .line 172
    .local v4, "newValue":I
    if-eqz p1, :cond_46

    if-le v4, v6, :cond_43

    .line 173
    :goto_40
    move v6, v4

    .line 174
    move v5, v7

    .line 175
    move v2, v1

    .line 165
    .end local v4    # "newValue":I
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 172
    .restart local v4    # "newValue":I
    :cond_46
    if-ge v4, v6, :cond_43

    goto :goto_40

    .line 180
    .end local v1    # "i":I
    .end local v4    # "newValue":I
    .end local v6    # "value":I
    :cond_49
    move v6, v0

    .line 181
    .restart local v6    # "value":I
    add-int/lit8 v1, p2, 0x1

    .restart local v1    # "i":I
    :goto_4c
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_70

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v9, :cond_70

    .line 182
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 183
    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v9

    .line 184
    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_6a

    .line 185
    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 186
    add-int/lit8 v8, v8, 0x1

    .line 187
    if-eqz p1, :cond_6d

    if-le v0, v6, :cond_6a

    .line 188
    :goto_67
    move v6, v0

    .line 189
    move v5, v7

    .line 190
    move v2, v1

    .line 181
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 187
    :cond_6d
    if-ge v0, v6, :cond_6a

    goto :goto_67

    .line 195
    :cond_70
    if-eqz p3, :cond_78

    .line 196
    const/4 v9, 0x0

    aput v5, p3, v9

    .line 197
    const/4 v9, 0x1

    aput v2, p3, v9

    .line 199
    :cond_78
    return v6
.end method

.method getRowMax(I)I
    .registers 8
    .param p1, "rowIndex"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 29
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-gez v3, :cond_7

    .line 30
    return v5

    .line 32
    :cond_7
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v3, :cond_37

    .line 33
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 34
    .local v0, "edge":I
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_1e

    .line 35
    return v0

    .line 37
    :cond_1e
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v1, v3, 0x1

    .local v1, "i":I
    :goto_22
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v1, v3, :cond_69

    .line 38
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 39
    .local v2, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v3

    .line 40
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_34

    .line 41
    return v0

    .line 37
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 45
    .end local v0    # "edge":I
    .end local v1    # "i":I
    .end local v2    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_37
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 46
    .restart local v0    # "edge":I
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 47
    .restart local v2    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_4d

    .line 48
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v3, v0

    return v3

    .line 50
    :cond_4d
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_51
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v3

    if-lt v1, v3, :cond_69

    .line 51
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v3

    .line 52
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 53
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_66

    .line 54
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v3, v0

    return v3

    .line 50
    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_51

    .line 58
    .end local v2    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_69
    return v5
.end method

.method getRowMin(I)I
    .registers 8
    .param p1, "rowIndex"    # I

    .prologue
    const v5, 0x7fffffff

    .line 66
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-gez v3, :cond_8

    .line 67
    return v5

    .line 69
    :cond_8
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v3, :cond_40

    .line 70
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 71
    .local v0, "edge":I
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 72
    .local v2, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_23

    .line 73
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v3, v0, v3

    return v3

    .line 75
    :cond_23
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_27
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v3

    if-lt v1, v3, :cond_6c

    .line 76
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v3

    .line 77
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 78
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_3d

    .line 79
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v3, v0, v3

    return v3

    .line 75
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 83
    .end local v0    # "edge":I
    .end local v1    # "i":I
    .end local v2    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_40
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 84
    .restart local v0    # "edge":I
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_53

    .line 85
    return v0

    .line 87
    :cond_53
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v1, v3, 0x1

    .restart local v1    # "i":I
    :goto_57
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v1, v3, :cond_6c

    .line 88
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 89
    .restart local v2    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v3

    .line 90
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_69

    .line 91
    return v0

    .line 87
    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 95
    .end local v2    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_6c
    return v5
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .registers 15
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    .line 333
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-ltz v10, :cond_8d

    .line 334
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v11

    if-le v10, v11, :cond_e

    .line 336
    const/4 v10, 0x0

    return v10

    .line 338
    :cond_e
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v5, v10, -0x1

    .line 339
    .local v5, "itemIndex":I
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v10

    iget v8, v10, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 341
    .local v8, "rowIndex":I
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v2

    .line 342
    .local v2, "edgeLimitSearchIndex":I
    if-gez v2, :cond_6d

    .line 345
    add-int/lit8 v8, v8, -0x1

    .line 346
    const v0, 0x7fffffff

    .line 347
    .local v0, "edgeLimit":I
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_2a
    if-ltz v4, :cond_39

    .line 348
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_65

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v0

    .line 349
    :goto_34
    const v10, 0x7fffffff

    if-eq v0, v10, :cond_6a

    .line 357
    .end local v4    # "i":I
    :cond_39
    :goto_39
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_7f

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v10

    if-lt v10, v0, :cond_55

    .line 360
    :goto_43
    add-int/lit8 v8, v8, -0x1

    .line 361
    if-gez v8, :cond_55

    .line 363
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v8, v10, -0x1

    .line 364
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_86

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v0

    .line 368
    :cond_55
    :goto_55
    const/4 v1, 0x1

    .line 377
    .end local v2    # "edgeLimitSearchIndex":I
    .local v1, "edgeLimitIsValid":Z
    :goto_56
    const/4 v3, 0x0

    .local v3, "filledOne":Z
    move v6, v5

    .line 382
    .end local v5    # "itemIndex":I
    .local v6, "itemIndex":I
    :goto_58
    if-ltz v8, :cond_15c

    .line 384
    if-ltz v6, :cond_64

    if-nez p2, :cond_b6

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_b6

    .line 385
    :cond_64
    return v3

    .line 348
    .end local v1    # "edgeLimitIsValid":Z
    .end local v3    # "filledOne":Z
    .end local v6    # "itemIndex":I
    .restart local v2    # "edgeLimitSearchIndex":I
    .restart local v4    # "i":I
    .restart local v5    # "itemIndex":I
    :cond_65
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v0

    goto :goto_34

    .line 347
    :cond_6a
    add-int/lit8 v4, v4, -0x1

    goto :goto_2a

    .line 354
    .end local v0    # "edgeLimit":I
    .end local v4    # "i":I
    :cond_6d
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_78

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v2, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v0

    .restart local v0    # "edgeLimit":I
    goto :goto_39

    .line 355
    .end local v0    # "edgeLimit":I
    :cond_78
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v2, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v0

    .restart local v0    # "edgeLimit":I
    goto :goto_39

    .line 358
    :cond_7f
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v10

    if-gt v10, v0, :cond_55

    goto :goto_43

    .line 365
    :cond_86
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v0

    goto :goto_55

    .line 370
    .end local v0    # "edgeLimit":I
    .end local v2    # "edgeLimitSearchIndex":I
    .end local v5    # "itemIndex":I
    .end local v8    # "rowIndex":I
    :cond_8d
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b2

    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    .line 372
    .restart local v5    # "itemIndex":I
    :goto_94
    iget-object v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v10}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v10

    if-ltz v10, :cond_b4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v10

    iget v10, v10, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    .line 373
    :goto_ab
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    .line 372
    rem-int v8, v10, v11

    .line 374
    .restart local v8    # "rowIndex":I
    const/4 v0, 0x0

    .line 375
    .restart local v0    # "edgeLimit":I
    const/4 v1, 0x0

    .restart local v1    # "edgeLimitIsValid":Z
    goto :goto_56

    .line 370
    .end local v0    # "edgeLimit":I
    .end local v1    # "edgeLimitIsValid":Z
    .end local v5    # "itemIndex":I
    .end local v8    # "rowIndex":I
    :cond_b2
    const/4 v5, 0x0

    .restart local v5    # "itemIndex":I
    goto :goto_94

    :cond_b4
    move v10, v5

    .line 373
    goto :goto_ab

    .line 387
    .end local v5    # "itemIndex":I
    .restart local v0    # "edgeLimit":I
    .restart local v1    # "edgeLimitIsValid":Z
    .restart local v3    # "filledOne":Z
    .restart local v6    # "itemIndex":I
    .restart local v8    # "rowIndex":I
    :cond_b6
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_102

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    .line 388
    .local v7, "location":I
    :goto_be
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_c7

    const/high16 v10, -0x80000000

    if-ne v7, v10, :cond_123

    .line 390
    :cond_c7
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_111

    .line 391
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_107

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    .line 392
    :goto_d6
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_e6

    const/high16 v10, -0x80000000

    if-eq v7, v10, :cond_e6

    .line 393
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_10d

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    :goto_e5
    add-int/2addr v7, v10

    .line 401
    :cond_e6
    :goto_e6
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    invoke-virtual {p0, v6, v8, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v9

    .line 402
    .local v9, "size":I
    const/4 v3, 0x1

    .line 406
    if-eqz v1, :cond_14d

    .line 407
    :goto_ef
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12f

    add-int v10, v7, v9

    if-ge v10, v0, :cond_133

    .line 409
    :cond_f7
    if-ltz v5, :cond_101

    if-nez p2, :cond_138

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_138

    .line 410
    :cond_101
    return v3

    .line 387
    .end local v5    # "itemIndex":I
    .end local v7    # "location":I
    .end local v9    # "size":I
    .restart local v6    # "itemIndex":I
    :cond_102
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_be

    .line 391
    .restart local v7    # "location":I
    :cond_107
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_d6

    .line 393
    :cond_10d
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    neg-int v10, v10

    goto :goto_e5

    .line 396
    :cond_111
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_11c

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_e6

    :cond_11c
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_e6

    .line 399
    :cond_123
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12b

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    :goto_129
    add-int/2addr v7, v10

    goto :goto_e6

    :cond_12b
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    neg-int v10, v10

    goto :goto_129

    .line 408
    .end local v6    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    .restart local v9    # "size":I
    :cond_12f
    sub-int v10, v7, v9

    if-gt v10, v0, :cond_f7

    .line 382
    :cond_133
    :goto_133
    add-int/lit8 v8, v8, -0x1

    move v6, v5

    .end local v5    # "itemIndex":I
    .restart local v6    # "itemIndex":I
    goto/16 :goto_58

    .line 412
    .end local v6    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    :cond_138
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_148

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    add-int/2addr v10, v9

    :goto_13f
    add-int/2addr v7, v10

    .line 413
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "itemIndex":I
    .restart local v6    # "itemIndex":I
    invoke-virtual {p0, v5, v8, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v9

    move v5, v6

    .end local v6    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    goto :goto_ef

    .line 412
    :cond_148
    neg-int v10, v9

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mMargin:I

    sub-int/2addr v10, v11

    goto :goto_13f

    .line 416
    :cond_14d
    const/4 v1, 0x1

    .line 417
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_157

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v0

    goto :goto_133

    :cond_157
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v0

    goto :goto_133

    .line 420
    .end local v5    # "itemIndex":I
    .end local v7    # "location":I
    .end local v9    # "size":I
    .restart local v6    # "itemIndex":I
    :cond_15c
    if-eqz p2, :cond_15f

    .line 421
    return v3

    .line 423
    :cond_15f
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_16f

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v0

    .line 425
    :goto_169
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v8, v10, -0x1

    goto/16 :goto_58

    .line 423
    :cond_16f
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v0

    goto :goto_169
.end method
