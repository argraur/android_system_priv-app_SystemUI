.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "KeyguardSecurityViewFlipper.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 53
    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .registers 6
    .param p1, "maxSize"    # I
    .param p2, "childDimen"    # I

    .prologue
    .line 245
    packed-switch p2, :pswitch_data_16

    .line 255
    const/high16 v0, 0x40000000    # 2.0f

    .line 256
    .local v0, "mode":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 259
    .local v1, "size":I
    :goto_9
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 247
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_e
    const/high16 v0, -0x80000000

    .line 248
    .restart local v0    # "mode":I
    move v1, p1

    .line 249
    .restart local v1    # "size":I
    goto :goto_9

    .line 251
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_12
    const/high16 v0, 0x40000000    # 2.0f

    .line 252
    .restart local v0    # "mode":I
    move v1, p1

    .line 253
    .restart local v1    # "size":I
    goto :goto_9

    .line 245
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 177
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 182
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    :goto_b
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 187
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_f

    .line 76
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .end local v0    # "child":Landroid/view/View;
    return-object v0

    .line 78
    .restart local v0    # "child":Landroid/view/View;
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public needsInput()Z
    .registers 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 124
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 24
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 192
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 193
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 203
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 204
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 205
    .local v10, "heightSize":I
    move/from16 v14, v18

    .line 206
    .local v14, "maxWidth":I
    move v13, v10

    .line 207
    .local v13, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v6

    .line 208
    .local v6, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_18
    if-ge v11, v6, :cond_49

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 210
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 212
    .local v12, "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_36

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v14, :cond_36

    .line 213
    iget v14, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 215
    :cond_36
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_46

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v13, :cond_46

    .line 216
    iget v13, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    .line 208
    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 220
    .end local v3    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingRight()I

    move-result v20

    add-int v15, v19, v20

    .line 221
    .local v15, "wPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingBottom()I

    move-result v20

    add-int v7, v19, v20

    .line 222
    .local v7, "hPadding":I
    sub-int v19, v14, v15

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 223
    sub-int v19, v13, v7

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 225
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_d5

    move/from16 v16, v18

    .line 226
    .local v16, "width":I
    :goto_7f
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v9, v0, :cond_d8

    move v8, v10

    .line 227
    .local v8, "height":I
    :goto_86
    const/4 v11, 0x0

    :goto_87
    if-ge v11, v6, :cond_da

    .line 228
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 229
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 231
    .restart local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v5

    .line 232
    .local v5, "childWidthSpec":I
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v4

    .line 234
    .local v4, "childHeightSpec":I
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 236
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v20, v18, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 237
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v20, v10, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 227
    add-int/lit8 v11, v11, 0x1

    goto :goto_87

    .line 225
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeightSpec":I
    .end local v5    # "childWidthSpec":I
    .end local v8    # "height":I
    .end local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .end local v16    # "width":I
    :cond_d5
    const/16 v16, 0x0

    .restart local v16    # "width":I
    goto :goto_7f

    .line 226
    :cond_d8
    const/4 v8, 0x0

    .restart local v8    # "height":I
    goto :goto_86

    .line 239
    :cond_da
    add-int v19, v16, v15

    add-int v20, v8, v7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setMeasuredDimension(II)V

    .line 191
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 108
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 109
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 106
    :cond_9
    return-void
.end method

.method public onResume(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 116
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 117
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 114
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 60
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    const/4 v1, 0x0

    .end local v2    # "result":Z
    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_42

    .line 64
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 65
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 67
    :goto_33
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 61
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 66
    :cond_45
    const/4 v2, 0x1

    .local v2, "result":Z
    goto :goto_33

    .line 70
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "result":Z
    :cond_47
    return v2
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 84
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 85
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 82
    :cond_9
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 92
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 93
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 90
    :cond_9
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 144
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 145
    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/String;I)V

    .line 142
    :cond_9
    return-void
.end method

.method public showPromptReason(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 136
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 137
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    .line 134
    :cond_9
    return-void
.end method

.method public startAppearAnimation()V
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 160
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 161
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 158
    :cond_9
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 168
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_b

    .line 169
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v1

    return v1

    .line 171
    :cond_b
    const/4 v1, 0x0

    return v1
.end method
