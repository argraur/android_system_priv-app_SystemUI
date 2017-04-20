.class Lcom/android/systemui/recents/views/FakeShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FakeShadowDrawable.java"


# static fields
.field static final COS_45:D


# instance fields
.field private mAddPaddingForCorners:Z

.field final mCardBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field mEdgeShadowPaint:Landroid/graphics/Paint;

.field final mInsetShadow:F

.field mMaxShadowSize:F

.field private mPrintedShadowClipWarning:Z

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private final mShadowEndColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V
    .registers 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    const v1, 0x7f1001fd

    const/4 v2, 0x1

    .line 85
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    .line 86
    const v0, 0x7f0c00a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    .line 87
    const v0, 0x7f0c00a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    .line 88
    const v0, 0x7f1001fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 90
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->setShadowSize(FF)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 94
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_6d

    .line 96
    const v0, 0x7f10026b

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    :goto_59
    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 85
    return-void

    .line 97
    :cond_6d
    const v0, 0x7f100248

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_59
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 273
    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v0, v1, v2

    .line 274
    .local v0, "verticalOffset":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 275
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 274
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->buildShadowCorners()V

    .line 269
    return-void
.end method

.method private buildShadowCorners()V
    .registers 13

    .prologue
    .line 236
    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 237
    .local v8, "innerBounds":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 238
    .local v9, "outerBounds":Landroid/graphics/RectF;
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v0, :cond_ca

    .line 241
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    .line 245
    :goto_28
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 254
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v1, v2

    div-float v10, v0, v1

    .line 255
    .local v10, "startRatio":F
    iget-object v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v3, v4

    .line 256
    const/4 v4, 0x3

    new-array v4, v4, [I

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/4 v6, 0x1

    aput v5, v4, v6

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    const/4 v6, 0x2

    aput v5, v4, v6

    .line 257
    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v11, 0x0

    aput v6, v5, v11

    const/4 v6, 0x1

    aput v10, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    aput v6, v5, v11

    .line 258
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 255
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 263
    iget-object v11, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    .line 264
    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    sub-float/2addr v4, v5

    .line 265
    const/4 v5, 0x3

    new-array v5, v5, [I

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/4 v7, 0x0

    aput v6, v5, v7

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/4 v7, 0x1

    aput v6, v5, v7

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 266
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_d2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 263
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 235
    return-void

    .line 243
    .end local v10    # "startRatio":F
    :cond_ca
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_28

    .line 266
    nop

    :array_d2
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .registers 9
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    .line 158
    if-eqz p2, :cond_e

    .line 159
    float-to-double v0, p0

    sget-wide v2, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 161
    :cond_e
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .registers 9
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 149
    if-eqz p2, :cond_11

    .line 150
    mul-float/2addr v0, p0

    float-to-double v0, v0

    sget-wide v2, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 152
    :cond_11
    mul-float/2addr v0, p0

    return v0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 188
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    sub-float v2, v0, v3

    .line 189
    .local v2, "edgeShadowTop":F
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    div-float/2addr v3, v10

    add-float v8, v0, v3

    .line 190
    .local v8, "inset":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_103

    const/4 v6, 0x1

    .line 191
    .local v6, "drawHorizontalEdges":Z
    :goto_22
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_106

    const/4 v7, 0x1

    .line 193
    .local v7, "drawVerticalEdges":Z
    :goto_30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 194
    .local v9, "saved":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 196
    if-eqz v6, :cond_5d

    .line 198
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    .line 199
    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 197
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 201
    :cond_5d
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 204
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 207
    if-eqz v6, :cond_95

    .line 209
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v4, v0

    .line 210
    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 208
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 212
    :cond_95
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 215
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 218
    if-eqz v7, :cond_ca

    .line 220
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 219
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 222
    :cond_ca
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 225
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    if-eqz v7, :cond_ff

    .line 230
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 229
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    :cond_ff
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 187
    return-void

    .line 190
    .end local v6    # "drawHorizontalEdges":Z
    .end local v7    # "drawVerticalEdges":Z
    .end local v9    # "saved":I
    :cond_103
    const/4 v6, 0x0

    .restart local v6    # "drawHorizontalEdges":Z
    goto/16 :goto_22

    .line 191
    :cond_106
    const/4 v7, 0x0

    .restart local v7    # "drawVerticalEdges":Z
    goto/16 :goto_30
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    if-eqz v0, :cond_11

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->buildComponents(Landroid/graphics/Rect;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 182
    :cond_11
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    .line 184
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 173
    const/4 v0, -0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 139
    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    .line 140
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    .line 139
    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->calculateVerticalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 141
    .local v1, "vOffset":I
    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    .line 142
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    .line 141
    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 143
    .local v0, "hOffset":I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    const/4 v2, 0x1

    return v2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 109
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 166
    return-void
.end method

.method setShadowSize(FF)V
    .registers 6
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_a

    cmpg-float v0, p2, v1

    if-gez v0, :cond_13

    .line 116
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_13
    cmpl-float v0, p1, p2

    if-lez v0, :cond_27

    .line 119
    move p1, p2

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    if-nez v0, :cond_27

    .line 121
    const-string/jumbo v0, "CardView"

    const-string/jumbo v1, "Shadow size is being clipped by the max shadow size. See {CardView#setMaxCardElevation}."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    .line 126
    :cond_27
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_34

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_34

    .line 127
    return-void

    .line 129
    :cond_34
    iput p1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    .line 130
    iput p2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    .line 131
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    .line 132
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    .line 133
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->invalidateSelf()V

    .line 114
    return-void
.end method
