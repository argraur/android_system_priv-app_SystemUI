.class public Landroid/support/v17/leanback/widget/ScaleFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScaleFrameLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mChildScale:F

.field private mLayoutScaleX:F

.field private mLayoutScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    .line 37
    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    .line 39
    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    .line 50
    return-void
.end method

.method private static getScaledMeasureSpec(IF)I
    .registers 4
    .param p0, "measureSpec"    # I
    .param p1, "scale"    # F

    .prologue
    .line 181
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .end local p0    # "measureSpec":I
    :goto_6
    return p0

    .line 182
    .restart local p0    # "measureSpec":I
    :cond_7
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 183
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 181
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_6
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 82
    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 79
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    .line 89
    .local v0, "ret":Z
    if-eqz v0, :cond_10

    .line 90
    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 91
    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 93
    :cond_10
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 29
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildCount()I

    move-result v6

    .line 101
    .local v6, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutDirection()I

    move-result v10

    .line 102
    .local v10, "layoutDirection":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_119

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotX()F

    move-result v21

    sub-float v16, v20, v21

    .line 105
    .local v16, "pivotX":F
    :goto_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_11f

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v21, v0

    div-float v21, v16, v21

    sub-float v21, v16, v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v13, v20, v21

    .line 107
    .local v13, "parentLeft":I
    sub-int v20, p4, p2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v20, v20, v16

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingRight()I

    move-result v21

    .line 107
    sub-int v14, v20, v21

    .line 115
    .local v14, "parentRight":I
    :goto_64
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotY()F

    move-result v17

    .line 116
    .local v17, "pivotY":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_12d

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v21, v0

    div-float v21, v17, v21

    sub-float v21, v17, v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v15, v20, v21

    .line 118
    .local v15, "parentTop":I
    sub-int v20, p5, p3

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v20, v20, v17

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingBottom()I

    move-result v21

    .line 118
    sub-int v12, v20, v21

    .line 125
    .local v12, "parentBottom":I
    :goto_af
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_b0
    if-ge v9, v6, :cond_17f

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 127
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_116

    .line 128
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 131
    .local v19, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 136
    .local v8, "height":I
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    .local v7, "gravity":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_dd

    .line 138
    const v7, 0x800033

    .line 141
    :cond_dd
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 142
    .local v2, "absoluteGravity":I
    and-int/lit8 v18, v7, 0x70

    .line 144
    .local v18, "verticalGravity":I
    and-int/lit8 v20, v2, 0x7

    sparse-switch v20, :sswitch_data_180

    .line 154
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v4, v13, v20

    .line 157
    .local v4, "childLeft":I
    :goto_ee
    sparse-switch v18, :sswitch_data_18a

    .line 169
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v5, v15, v20

    .line 172
    .local v5, "childTop":I
    :goto_f7
    add-int v20, v4, v19

    add-int v21, v5, v8

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 174
    int-to-float v0, v4

    move/from16 v20, v0

    sub-float v20, v16, v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    .line 175
    int-to-float v0, v5

    move/from16 v20, v0

    sub-float v20, v17, v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    .line 125
    .end local v2    # "absoluteGravity":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "verticalGravity":I
    .end local v19    # "width":I
    :cond_116
    add-int/lit8 v9, v9, 0x1

    goto :goto_b0

    .line 104
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "i":I
    .end local v12    # "parentBottom":I
    .end local v13    # "parentLeft":I
    .end local v14    # "parentRight":I
    .end local v15    # "parentTop":I
    .end local v16    # "pivotX":F
    .end local v17    # "pivotY":F
    :cond_119
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotX()F

    move-result v16

    .restart local v16    # "pivotX":F
    goto/16 :goto_1d

    .line 110
    :cond_11f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingLeft()I

    move-result v13

    .line 111
    .restart local v13    # "parentLeft":I
    sub-int v20, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingRight()I

    move-result v21

    sub-int v14, v20, v21

    .restart local v14    # "parentRight":I
    goto/16 :goto_64

    .line 121
    .restart local v17    # "pivotY":F
    :cond_12d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingTop()I

    move-result v15

    .line 122
    .restart local v15    # "parentTop":I
    sub-int v20, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingBottom()I

    move-result v21

    sub-int v12, v20, v21

    .restart local v12    # "parentBottom":I
    goto/16 :goto_af

    .line 146
    .restart local v2    # "absoluteGravity":I
    .restart local v3    # "child":Landroid/view/View;
    .restart local v7    # "gravity":I
    .restart local v8    # "height":I
    .restart local v9    # "i":I
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v18    # "verticalGravity":I
    .restart local v19    # "width":I
    :sswitch_13b
    sub-int v20, v14, v13

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v13

    .line 147
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    .line 146
    add-int v20, v20, v21

    .line 147
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    .line 146
    sub-int v4, v20, v21

    .line 148
    .restart local v4    # "childLeft":I
    goto :goto_ee

    .line 150
    .end local v4    # "childLeft":I
    :sswitch_150
    sub-int v20, v14, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v4, v20, v21

    .line 151
    .restart local v4    # "childLeft":I
    goto :goto_ee

    .line 159
    :sswitch_159
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v5, v15, v20

    .line 160
    .restart local v5    # "childTop":I
    goto :goto_f7

    .line 162
    .end local v5    # "childTop":I
    :sswitch_160
    sub-int v20, v12, v15

    sub-int v20, v20, v8

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v15

    .line 163
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    .line 162
    add-int v20, v20, v21

    .line 163
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    .line 162
    sub-int v5, v20, v21

    .line 164
    .restart local v5    # "childTop":I
    goto :goto_f7

    .line 166
    .end local v5    # "childTop":I
    :sswitch_175
    sub-int v20, v12, v8

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    .line 167
    .restart local v5    # "childTop":I
    goto/16 :goto_f7

    .line 97
    .end local v2    # "absoluteGravity":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "verticalGravity":I
    .end local v19    # "width":I
    :cond_17f
    return-void

    .line 144
    :sswitch_data_180
    .sparse-switch
        0x1 -> :sswitch_13b
        0x5 -> :sswitch_150
    .end sparse-switch

    .line 157
    :sswitch_data_18a
    .sparse-switch
        0x10 -> :sswitch_160
        0x30 -> :sswitch_159
        0x50 -> :sswitch_175
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 188
    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_37

    .line 190
    :cond_10
    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    invoke-static {p1, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result v1

    .line 192
    .local v1, "scaledWidthMeasureSpec":I
    iget v2, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    invoke-static {p2, v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result v0

    .line 193
    .local v0, "scaledHeightMeasureSpec":I
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 194
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 195
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 194
    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setMeasuredDimension(II)V

    .line 187
    .end local v0    # "scaledHeightMeasureSpec":I
    .end local v1    # "scaledWidthMeasureSpec":I
    :goto_36
    return-void

    .line 197
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_36
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
