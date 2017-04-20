.class public Lcom/android/systemui/recents/misc/FreePathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "FreePathInterpolator.java"


# instance fields
.field private mArcLength:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 2
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 52
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .registers 22
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 57
    const v13, 0x3b03126f    # 0.002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v7

    .line 59
    .local v7, "pointComponents":[F
    array-length v13, v7

    div-int/lit8 v6, v13, 0x3

    .line 61
    .local v6, "numPoints":I
    new-array v13, v6, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    .line 62
    new-array v13, v6, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    .line 63
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    .line 64
    const/4 v9, 0x0

    .line 65
    .local v9, "prevX":F
    const/4 v10, 0x0

    .line 66
    .local v10, "prevY":F
    const/4 v8, 0x0

    .line 67
    .local v8, "prevFraction":F
    const/4 v2, 0x0

    .line 68
    .local v2, "componentIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v3, v2

    .end local v2    # "componentIndex":I
    .local v3, "componentIndex":I
    :goto_23
    if-ge v5, v6, :cond_7c

    .line 69
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "componentIndex":I
    .restart local v2    # "componentIndex":I
    aget v4, v7, v3

    .line 70
    .local v4, "fraction":F
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "componentIndex":I
    .restart local v3    # "componentIndex":I
    aget v11, v7, v2

    .line 71
    .local v11, "x":F
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "componentIndex":I
    .restart local v2    # "componentIndex":I
    aget v12, v7, v3

    .line 72
    .local v12, "y":F
    cmpl-float v13, v4, v8

    if-nez v13, :cond_42

    cmpl-float v13, v11, v9

    if-eqz v13, :cond_42

    .line 73
    new-instance v13, Ljava/lang/IllegalArgumentException;

    .line 74
    const-string/jumbo v14, "The Path cannot have discontinuity in the X axis."

    .line 73
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 76
    :cond_42
    cmpg-float v13, v11, v9

    if-gez v13, :cond_4f

    .line 77
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "The Path cannot loop back on itself."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 79
    :cond_4f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aput v11, v13, v5

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aput v12, v13, v5

    .line 81
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    float-to-double v14, v13

    sub-float v13, v11, v9

    float-to-double v0, v13

    move-wide/from16 v16, v0

    sub-float v13, v12, v10

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    .line 82
    move v9, v11

    .line 83
    move v10, v12

    .line 84
    move v8, v4

    .line 68
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "componentIndex":I
    .restart local v3    # "componentIndex":I
    goto :goto_23

    .line 56
    .end local v4    # "fraction":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_7c
    return-void
.end method


# virtual methods
.method public getArcLength()F
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    return v0
.end method

.method public getInterpolation(F)F
    .registers 13
    .param p1, "t"    # F

    .prologue
    const/4 v10, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 103
    .local v0, "endIndex":I
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_10

    .line 104
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 105
    :cond_10
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_1b

    .line 106
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    .line 110
    :cond_1b
    :goto_1b
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_30

    .line 111
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 112
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2e

    .line 113
    move v0, v3

    goto :goto_1b

    .line 115
    :cond_2e
    move v4, v3

    goto :goto_1b

    .line 119
    .end local v3    # "midIndex":I
    :cond_30
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 120
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_43

    .line 121
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 124
    :cond_43
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 125
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 127
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v8, v4

    .line 128
    .local v5, "startY":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v1, v8, v0

    .line 129
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method

.method public getX(F)F
    .registers 13
    .param p1, "y"    # F

    .prologue
    const/4 v10, 0x0

    .line 138
    const/4 v4, 0x0

    .line 139
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 142
    .local v0, "endIndex":I
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_10

    .line 143
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    return v8

    .line 144
    :cond_10
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_1b

    .line 145
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    return v8

    .line 149
    :cond_1b
    :goto_1b
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_30

    .line 150
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 151
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2e

    .line 152
    move v4, v3

    goto :goto_1b

    .line 154
    :cond_2e
    move v0, v3

    goto :goto_1b

    .line 158
    .end local v3    # "midIndex":I
    :cond_30
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 159
    .local v7, "yRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_43

    .line 160
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    return v8

    .line 163
    :cond_43
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 164
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 166
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v5, v8, v4

    .line 167
    .local v5, "startX":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v1, v8, v0

    .line 168
    .local v1, "endX":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
