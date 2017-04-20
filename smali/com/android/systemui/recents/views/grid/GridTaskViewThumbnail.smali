.class public Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;
.super Lcom/android/systemui/recents/views/TaskViewThumbnail;
.source "GridTaskViewThumbnail.java"


# instance fields
.field private mFullBackgroundOutline:Landroid/graphics/Path;

.field private mRestBackgroundOutline:Landroid/graphics/Path;

.field private mThumbnailOutline:Landroid/graphics/Path;

.field private mUpdateThumbnailOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    const v1, 0x7f10026b

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    .line 49
    return-void
.end method

.method private updateThumbnailOutline()V
    .registers 24

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    const v3, 0x7f100268

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 75
    .local v20, "titleHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v22

    .line 76
    .local v22, "viewWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v21, v2, v20

    .line 78
    .local v21, "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 77
    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 80
    .local v19, "thumbnailWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 79
    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 99
    .local v18, "thumbnailHeight":I
    const/4 v13, 0x0

    .line 100
    .local v13, "outerLeft":I
    const/4 v15, 0x0

    .line 101
    .local v15, "outerTop":I
    add-int/lit8 v14, v19, 0x0

    .line 102
    .local v14, "outerRight":I
    add-int/lit8 v12, v18, 0x0

    .line 103
    .local v12, "outerBottom":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    .line 108
    int-to-float v5, v14

    int-to-float v6, v12

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 107
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    .line 111
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    int-to-float v6, v12

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 110
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_1fb

    if-lez v19, :cond_1fb

    if-lez v18, :cond_1fb

    .line 116
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_157

    .line 117
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v14, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 118
    .local v11, "l":I
    move/from16 v16, v14

    .line 119
    .local v16, "r":I
    const/16 v17, 0x0

    .line 120
    .local v17, "t":I
    move v10, v12

    .line 121
    .local v10, "b":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    int-to-float v5, v14

    int-to-float v6, v12

    .line 126
    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 125
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v11

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 132
    .end local v10    # "b":I
    .end local v11    # "l":I
    .end local v16    # "r":I
    .end local v17    # "t":I
    :cond_157
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_1fa

    .line 133
    const/4 v11, 0x0

    .line 134
    .restart local v11    # "l":I
    move/from16 v16, v14

    .line 135
    .restart local v16    # "r":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v18, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 136
    .restart local v17    # "t":I
    move v10, v12

    .line 137
    .restart local v10    # "b":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    int-to-float v5, v14

    int-to-float v6, v12

    .line 142
    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 141
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    int-to-float v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v12, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    int-to-float v6, v12

    .line 145
    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    .line 144
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 72
    .end local v10    # "b":I
    .end local v11    # "l":I
    .end local v16    # "r":I
    .end local v17    # "t":I
    :cond_1fa
    :goto_1fa
    return-void

    .line 151
    :cond_1fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mFullBackgroundOutline:Landroid/graphics/Path;

    goto :goto_1fa
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 158
    const v6, 0x7f100268

    .line 157
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 159
    .local v2, "titleHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 160
    .local v4, "viewWidth":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v3, v5, v2

    .line 162
    .local v3, "viewHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 161
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 164
    .local v1, "thumbnailWidth":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 163
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    .local v0, "thumbnailHeight":I
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    if-eqz v5, :cond_41

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->updateThumbnailOutline()V

    .line 168
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 170
    :cond_41
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_63

    if-lez v1, :cond_63

    if-lez v0, :cond_63

    .line 172
    if-ge v1, v4, :cond_52

    .line 174
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    :cond_52
    if-ge v0, v3, :cond_5b

    .line 178
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    :cond_5b
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 156
    :goto_62
    return-void

    .line 182
    :cond_63
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mFullBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_62
.end method

.method public onTaskViewSizeChanged(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    .line 59
    return-void
.end method

.method public updateThumbnailScale()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 69
    invoke-super {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    .line 67
    return-void
.end method
