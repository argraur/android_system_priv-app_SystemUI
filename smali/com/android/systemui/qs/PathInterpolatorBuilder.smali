.class public Lcom/android/systemui/qs/PathInterpolatorBuilder;
.super Ljava/lang/Object;
.source "PathInterpolatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
    }
.end annotation


# instance fields
.field private mDist:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->initCubic(FFFF)V

    .line 39
    return-void
.end method

.method private initCubic(FFFF)V
    .registers 12
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 51
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 52
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 54
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->initPath(Landroid/graphics/Path;)V

    .line 50
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .registers 21
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 58
    const v16, 0x3b03126f    # 0.002f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v11

    .line 60
    .local v11, "pointComponents":[F
    array-length v0, v11

    move/from16 v16, v0

    div-int/lit8 v10, v16, 0x3

    .line 61
    .local v10, "numPoints":I
    const/16 v16, 0x1

    aget v16, v11, v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_24

    const/16 v16, 0x2

    aget v16, v11, v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_2d

    .line 64
    :cond_24
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 62
    :cond_2d
    array-length v0, v11

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    aget v16, v11, v16

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v16, v16, v17

    if-nez v16, :cond_24

    .line 63
    array-length v0, v11

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v16, v11, v16

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v16, v16, v17

    if-nez v16, :cond_24

    .line 67
    new-array v0, v10, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    .line 68
    new-array v0, v10, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    .line 69
    new-array v0, v10, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 70
    const/4 v13, 0x0

    .line 71
    .local v13, "prevX":F
    const/4 v12, 0x0

    .line 72
    .local v12, "prevFraction":F
    const/4 v2, 0x0

    .line 73
    .local v2, "componentIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v3, v2

    .end local v2    # "componentIndex":I
    .local v3, "componentIndex":I
    :goto_6a
    if-ge v8, v10, :cond_fd

    .line 74
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "componentIndex":I
    .restart local v2    # "componentIndex":I
    aget v7, v11, v3

    .line 75
    .local v7, "fraction":F
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "componentIndex":I
    .restart local v3    # "componentIndex":I
    aget v14, v11, v2

    .line 76
    .local v14, "x":F
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "componentIndex":I
    .restart local v2    # "componentIndex":I
    aget v15, v11, v3

    .line 77
    .local v15, "y":F
    cmpl-float v16, v7, v12

    if-nez v16, :cond_89

    cmpl-float v16, v14, v13

    if-eqz v16, :cond_89

    .line 78
    new-instance v16, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string/jumbo v17, "The Path cannot have discontinuity in the X axis."

    .line 78
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 81
    :cond_89
    cmpg-float v16, v14, v13

    if-gez v16, :cond_96

    .line 82
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "The Path cannot loop back on itself."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 84
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    move-object/from16 v16, v0

    aput v14, v16, v8

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    move-object/from16 v16, v0

    aput v15, v16, v8

    .line 86
    if-lez v8, :cond_f6

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    move-object/from16 v16, v0

    aget v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    aget v17, v17, v18

    sub-float v5, v16, v17

    .line 88
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    move-object/from16 v16, v0

    aget v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    aget v17, v17, v18

    sub-float v6, v16, v17

    .line 89
    .local v6, "dy":F
    mul-float v16, v5, v5

    mul-float v17, v6, v6

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    .line 90
    .local v4, "dist":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, -0x1

    aget v17, v17, v18

    add-float v17, v17, v4

    aput v17, v16, v8

    .line 92
    .end local v4    # "dist":F
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    :cond_f6
    move v13, v14

    .line 93
    move v12, v7

    .line 73
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "componentIndex":I
    .restart local v3    # "componentIndex":I
    goto/16 :goto_6a

    .line 96
    .end local v7    # "fraction":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget v9, v16, v17

    .line 97
    .local v9, "max":F
    const/4 v8, 0x0

    :goto_113
    if-ge v8, v10, :cond_124

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    move-object/from16 v16, v0

    aget v17, v16, v8

    div-float v17, v17, v9

    aput v17, v16, v8

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto :goto_113

    .line 57
    :cond_124
    return-void
.end method


# virtual methods
.method public getXInterpolator()Landroid/view/animation/Interpolator;
    .registers 5

    .prologue
    .line 103
    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;)V

    return-object v0
.end method

.method public getYInterpolator()Landroid/view/animation/Interpolator;
    .registers 5

    .prologue
    .line 107
    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;)V

    return-object v0
.end method
