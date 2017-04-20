.class Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PathInterpolatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathInterpolator"
.end annotation


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method private constructor <init>([F[F)V
    .registers 3
    .param p1, "xs"    # [F
    .param p2, "ys"    # [F

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    .line 116
    iput-object p2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    .line 114
    return-void
.end method

.method synthetic constructor <init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;)V
    .registers 4
    .param p1, "xs"    # [F
    .param p2, "ys"    # [F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[F)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 13
    .param p1, "t"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 121
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_8

    .line 122
    return v10

    .line 123
    :cond_8
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_d

    .line 124
    return v9

    .line 127
    :cond_d
    const/4 v4, 0x0

    .line 128
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 130
    .local v0, "endIndex":I
    :goto_13
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_28

    .line 131
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 132
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_26

    .line 133
    move v0, v3

    goto :goto_13

    .line 135
    :cond_26
    move v4, v3

    goto :goto_13

    .line 139
    .end local v3    # "midIndex":I
    :cond_28
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 140
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_3b

    .line 141
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 144
    :cond_3b
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 145
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 147
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v5, v8, v4

    .line 148
    .local v5, "startY":F
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v1, v8, v0

    .line 149
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
