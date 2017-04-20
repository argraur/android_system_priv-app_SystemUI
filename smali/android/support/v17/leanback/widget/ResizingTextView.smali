.class Landroid/support/v17/leanback/widget/ResizingTextView;
.super Landroid/widget/TextView;
.source "ResizingTextView.java"


# instance fields
.field private mDefaultLineSpacingExtra:F

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingTop:I

.field private mDefaultTextSize:I

.field private mDefaultsInitialized:Z

.field private mIsResized:Z

.field private mMaintainLineSpacing:Z

.field private mResizedPaddingAdjustmentBottom:I

.field private mResizedPaddingAdjustmentTop:I

.field private mResizedTextSize:I

.field private mTriggerConditions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mIsResized:Z

    .line 46
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    .line 54
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_e
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizeTrigger:I

    const/4 v2, 0x1

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mTriggerConditions:I

    .line 61
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedTextSize:I

    const/4 v2, -0x1

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    .line 63
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_maintainLineSpacing:I

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    .line 65
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentTop:I

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    .line 67
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentBottom:I

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_3f

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void

    .line 68
    :catchall_3f
    move-exception v1

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    throw v1
.end method

.method private setPaddingTopAndBottom(II)V
    .registers 5
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->isPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 269
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingRelative(IIII)V

    .line 267
    :goto_11
    return-void

    .line 271
    :cond_12
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPadding(IIII)V

    goto :goto_11
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 196
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    if-nez v9, :cond_20

    .line 197
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    .line 198
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    .line 199
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    .line 200
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    .line 201
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    .line 206
    :cond_20
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 207
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 208
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 210
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 212
    const/4 v7, 0x0

    .line 214
    .local v7, "resizeText":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 215
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_55

    .line 216
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mTriggerConditions:I

    and-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_55

    .line 217
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 218
    .local v2, "lineCount":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getMaxLines()I

    move-result v3

    .line 219
    .local v3, "maxLines":I
    const/4 v9, 0x1

    if-le v3, v9, :cond_55

    .line 220
    if-ne v2, v3, :cond_b1

    const/4 v7, 0x1

    .line 225
    .end local v2    # "lineCount":I
    .end local v3    # "maxLines":I
    :cond_55
    :goto_55
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v9

    float-to-int v0, v9

    .line 226
    .local v0, "currentSizePx":I
    const/4 v6, 0x0

    .line 227
    .local v6, "remeasure":Z
    if-eqz v7, :cond_b3

    .line 228
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6e

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    if-eq v0, v9, :cond_6e

    .line 229
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 230
    const/4 v6, 0x1

    .line 233
    :cond_6e
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    .line 234
    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v10, v10

    .line 233
    add-float/2addr v9, v10

    .line 234
    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v10, v10

    .line 233
    sub-float v8, v9, v10

    .line 235
    .local v8, "targetLineSpacingExtra":F
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v9, :cond_8d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    cmpl-float v9, v9, v8

    if-eqz v9, :cond_8d

    .line 236
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 237
    const/4 v6, 0x1

    .line 239
    :cond_8d
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    add-int v5, v9, v10

    .line 240
    .local v5, "paddingTop":I
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I

    add-int v4, v9, v10

    .line 241
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    if-ne v9, v5, :cond_a5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    if-eq v9, v4, :cond_a9

    .line 242
    :cond_a5
    invoke-direct {p0, v5, v4}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 243
    const/4 v6, 0x1

    .line 261
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v8    # "targetLineSpacingExtra":F
    :cond_a9
    :goto_a9
    iput-boolean v7, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mIsResized:Z

    .line 262
    if-eqz v6, :cond_b0

    .line 263
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 195
    :cond_b0
    return-void

    .line 220
    .end local v0    # "currentSizePx":I
    .end local v6    # "remeasure":Z
    .restart local v2    # "lineCount":I
    .restart local v3    # "maxLines":I
    :cond_b1
    const/4 v7, 0x0

    goto :goto_55

    .line 247
    .end local v2    # "lineCount":I
    .end local v3    # "maxLines":I
    .restart local v0    # "currentSizePx":I
    .restart local v6    # "remeasure":Z
    :cond_b3
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_c4

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    if-eq v0, v9, :cond_c4

    .line 248
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 249
    const/4 v6, 0x1

    .line 251
    :cond_c4
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v9, :cond_dc

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_dc

    .line 252
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 253
    const/4 v6, 0x1

    .line 255
    :cond_dc
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    if-ne v9, v10, :cond_ec

    .line 256
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    if-eq v9, v10, :cond_a9

    .line 257
    :cond_ec
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 258
    const/4 v6, 0x1

    goto :goto_a9
.end method
