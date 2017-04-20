.class public Lcom/android/systemui/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# static fields
.field private static final TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

.field private static final TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;


# instance fields
.field protected mBgFillPaint:Landroid/graphics/Paint;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field protected mCornerRadius:I

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayOrientation:I

.field private mDisplayRect:Landroid/graphics/Rect;

.field protected mDrawPaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F

.field private mInvisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field private mOverlayHeaderOnThumbnailActionBar:Z

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private mSizeToFit:Z

.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mTaskBar:Landroid/view/View;

.field protected mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

.field protected mThumbnailRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTitleBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    .line 52
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 69
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    .line 70
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    .line 76
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v4, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 108
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100248

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 112
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    const v1, 0x1130004

    .line 113
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 115
    const v1, 0x7f100268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    .line 105
    return-void
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "disabledInSafeMode"    # Z
    .param p3, "displayOrientation"    # I
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 333
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    .line 334
    iput p3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    .line 335
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    if-eqz v0, :cond_16

    .line 337
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    :cond_16
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "TaskViewThumbnail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v1, " mTaskViewRect="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v1, " mThumbnailRect="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    const-string/jumbo v1, " mThumbnailScale="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 366
    const-string/jumbo v1, " mDimAlpha="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 367
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 359
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v0, :cond_7

    .line 136
    return-void

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 140
    .local v12, "viewWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 142
    .local v11, "viewHeight":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 141
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 144
    .local v9, "thumbnailWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 143
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 146
    .local v8, "thumbnailHeight":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_91

    if-lez v9, :cond_91

    if-lez v8, :cond_91

    .line 147
    const/4 v10, 0x0

    .line 148
    .local v10, "topOffset":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    if-eqz v0, :cond_4c

    .line 149
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v10, v0, v1

    .line 153
    :cond_4c
    if-ge v9, v12, :cond_66

    .line 155
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v0, v9, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v0

    int-to-float v2, v10

    .line 156
    int-to-float v3, v12

    int-to-float v4, v11

    .line 157
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 155
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 159
    :cond_66
    if-ge v8, v11, :cond_80

    .line 161
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v0, v8, v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v2, v0

    .line 162
    int-to-float v3, v12

    int-to-float v4, v11

    .line 163
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v13

    .line 161
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 167
    :cond_80
    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v8

    .line 168
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v13

    .line 167
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 134
    .end local v10    # "topOffset":I
    :goto_90
    return-void

    .line 170
    :cond_91
    int-to-float v3, v12

    int-to-float v4, v11

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    .line 171
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v13

    move v2, v13

    .line 170
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_90
.end method

.method onTaskDataLoaded(Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .registers 4
    .param p1, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 347
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Landroid/app/ActivityManager$TaskThumbnailInfo;)V

    .line 345
    :goto_e
    return-void

    .line 349
    :cond_f
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Landroid/app/ActivityManager$TaskThumbnailInfo;)V

    goto :goto_e
.end method

.method public onTaskViewSizeChanged(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_12

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, p2, :cond_12

    .line 125
    return-void

    .line 128
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 129
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setLeftTopRightBottom(IIII)V

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    .line 122
    return-void
.end method

.method public setDimAlpha(F)V
    .registers 2
    .param p1, "dimAlpha"    # F

    .prologue
    .line 324
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 323
    return-void
.end method

.method public setOverlayHeaderOnThumbnailActionBar(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    .line 298
    return-void
.end method

.method public setSizeToFit(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    .line 290
    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .registers 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 177
    if-eqz p1, :cond_2c

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 179
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    .line 176
    :goto_2b
    return-void

    .line 185
    :cond_2c
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 188
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    goto :goto_2b
.end method

.method unbindFromTask()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 356
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Landroid/app/ActivityManager$TaskThumbnailInfo;)V

    .line 354
    return-void
.end method

.method updateClipToTaskBar(Landroid/view/View;)V
    .registers 2
    .param p1, "taskBar"    # Landroid/view/View;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 303
    return-void
.end method

.method updateThumbnailPaintFilter()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0xff

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x437f0000    # 255.0f

    .line 194
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v5, :cond_c

    .line 195
    return-void

    .line 197
    :cond_c
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v7

    float-to-int v3, v5

    .line 198
    .local v3, "mul":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_86

    .line 199
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    if-eqz v5, :cond_68

    .line 201
    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 202
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v4, v8, v5

    .line 203
    .local v4, "scale":F
    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    .line 204
    .local v2, "mat":[F
    const/4 v5, 0x0

    aput v4, v2, v5

    .line 205
    const/4 v5, 0x6

    aput v4, v2, v5

    .line 206
    const/16 v5, 0xc

    aput v4, v2, v5

    .line 207
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/4 v6, 0x4

    aput v5, v2, v6

    .line 208
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/16 v6, 0x9

    aput v5, v2, v6

    .line 209
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/16 v6, 0xe

    aput v5, v2, v6

    .line 210
    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    sget-object v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 211
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 212
    .local v0, "filter":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 213
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 225
    .end local v0    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    .end local v2    # "mat":[F
    .end local v4    # "scale":F
    :goto_60
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v5, :cond_67

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 193
    :cond_67
    return-void

    .line 215
    :cond_68
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    .line 216
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 217
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_60

    .line 221
    :cond_86
    move v1, v3

    .line 222
    .local v1, "grey":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 223
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_60
.end method

.method public updateThumbnailScale()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 234
    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 235
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_37

    .line 238
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez v4, :cond_3f

    :cond_17
    const/4 v1, 0x1

    .line 239
    .local v1, "isStackTask":Z
    :goto_18
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    if-nez v4, :cond_41

    .line 243
    :cond_24
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 281
    :goto_27
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 282
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 284
    .end local v1    # "isStackTask":Z
    :cond_37
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v4, :cond_3e

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 233
    :cond_3e
    return-void

    .line 238
    :cond_3f
    const/4 v1, 0x0

    .restart local v1    # "isStackTask":Z
    goto :goto_18

    .line 240
    :cond_41
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v4, v4, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v4, v4, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    if-eqz v4, :cond_24

    .line 244
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    if-eqz v4, :cond_9f

    .line 246
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 247
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 246
    div-float v3, v4, v5

    .line 249
    .local v3, "viewAspectRatio":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 250
    .local v2, "thumbnailAspectRatio":F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_8a

    .line 252
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 251
    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_27

    .line 254
    :cond_8a
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 255
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 254
    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_27

    .line 257
    .end local v2    # "thumbnailAspectRatio":F
    .end local v3    # "viewAspectRatio":F
    :cond_9f
    if-eqz v1, :cond_da

    .line 258
    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    div-float v0, v5, v4

    .line 259
    .local v0, "invThumbnailScale":F
    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    if-ne v4, v6, :cond_d6

    .line 260
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v4, v4, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    if-ne v4, v6, :cond_c2

    .line 263
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_27

    .line 268
    :cond_c2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 267
    mul-float/2addr v4, v0

    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_27

    .line 272
    :cond_d6
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_27

    .line 278
    .end local v0    # "invThumbnailScale":F
    :cond_da
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 279
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 277
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_27
.end method

.method updateThumbnailVisibility(I)V
    .registers 5
    .param p1, "clipBottom"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_20

    const/4 v0, 0x1

    .line 311
    .local v0, "invisible":Z
    :goto_12
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_1f

    .line 312
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    .line 313
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_1f

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 309
    :cond_1f
    return-void

    .line 310
    .end local v0    # "invisible":Z
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "invisible":Z
    goto :goto_12
.end method
