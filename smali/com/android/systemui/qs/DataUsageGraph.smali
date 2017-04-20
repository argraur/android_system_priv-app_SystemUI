.class public Lcom/android/systemui/qs/DataUsageGraph;
.super Landroid/view/View;
.source "DataUsageGraph.java"


# instance fields
.field private mLimitLevel:J

.field private final mMarkerWidth:I

.field private mMaxLevel:J

.field private final mOverlimitColor:I

.field private final mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/RectF;

.field private final mTrackColor:I

.field private final mUsageColor:I

.field private mUsageLevel:J

.field private final mWarningColor:I

.field private mWarningLevel:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0080

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    .line 49
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    .line 50
    const v1, 0x7f0c0078

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    .line 51
    const v1, 0x7f0c0081

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    .line 52
    const v1, 0x7f1001cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    .line 68
    .local v3, "r":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    .line 69
    .local v2, "p":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->getWidth()I

    move-result v5

    .line 70
    .local v5, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->getHeight()I

    move-result v0

    .line 72
    .local v0, "h":I
    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_9a

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_9a

    const/4 v1, 0x1

    .line 73
    .local v1, "overLimit":Z
    :goto_21
    int-to-float v7, v5

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    long-to-float v8, v8

    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float v4, v7, v8

    .line 74
    .local v4, "usageRight":F
    if-eqz v1, :cond_9c

    .line 76
    int-to-float v7, v5

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    long-to-float v8, v8

    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v4, v7, v8

    .line 77
    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 80
    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    int-to-float v8, v5

    int-to-float v9, v0

    invoke-virtual {v3, v7, v12, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    :goto_60
    int-to-float v7, v0

    invoke-virtual {v3, v12, v12, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 92
    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 96
    int-to-float v7, v5

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    long-to-float v8, v8

    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 97
    .local v6, "warningLeft":F
    invoke-static {v6, v12}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    sub-int v8, v5, v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 98
    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    int-to-float v8, v0

    invoke-virtual {v3, v6, v12, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 64
    return-void

    .line 72
    .end local v1    # "overLimit":Z
    .end local v4    # "usageRight":F
    .end local v6    # "warningLeft":F
    :cond_9a
    const/4 v1, 0x0

    .restart local v1    # "overLimit":Z
    goto :goto_21

    .line 85
    .restart local v4    # "usageRight":F
    :cond_9c
    int-to-float v7, v5

    int-to-float v8, v0

    invoke-virtual {v3, v12, v12, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_60
.end method

.method public setLevels(JJJ)V
    .registers 12
    .param p1, "limitLevel"    # J
    .param p3, "warningLevel"    # J
    .param p5, "usageLevel"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 56
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    .line 57
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    .line 58
    invoke-static {v2, v3, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    .line 59
    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->postInvalidate()V

    .line 55
    return-void
.end method
