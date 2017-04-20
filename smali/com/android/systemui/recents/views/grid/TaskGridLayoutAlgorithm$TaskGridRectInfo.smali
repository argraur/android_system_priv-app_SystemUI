.class Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
.super Ljava/lang/Object;
.source "TaskGridLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskGridRectInfo"
.end annotation


# instance fields
.field lines:I

.field size:Landroid/graphics/Rect;

.field tasksPerLine:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

.field xOffsets:[I

.field yOffsets:[I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;I)V
    .registers 23
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    .param p2, "taskCount"    # I

    .prologue
    .line 71
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->this$0:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    .line 73
    move/from16 v0, p2

    new-array v15, v0, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->xOffsets:[I

    .line 74
    move/from16 v0, p2

    new-array v15, v0, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->yOffsets:[I

    .line 76
    const/16 v15, 0x8

    move/from16 v0, p2

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 77
    .local v6, "layoutTaskCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->getTasksPerLine(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    .line 78
    const/4 v15, 0x4

    if-ge v6, v15, :cond_1bd

    const/4 v15, 0x1

    :goto_38
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_1c0

    const/4 v5, 0x1

    .line 82
    .local v5, "landscapeWindow":Z
    :goto_51
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get0(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1c3

    const/4 v4, 0x1

    .line 84
    .local v4, "landscapeTaskView":Z
    :goto_5c
    if-nez v5, :cond_70

    if-eqz v4, :cond_70

    .line 85
    const/4 v15, 0x2

    if-ge v6, v15, :cond_1c6

    const/4 v15, 0x1

    :goto_64
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    .line 86
    const/4 v15, 0x3

    if-ge v6, v15, :cond_1c9

    const/4 v15, 0x1

    :goto_6c
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    .line 91
    :cond_70
    if-eqz v5, :cond_74

    if-eqz v4, :cond_1d8

    .line 97
    :cond_74
    :goto_74
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get1(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get2(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    mul-int v16, v16, v17

    .line 97
    sub-int v15, v15, v16

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    move/from16 v16, v0

    .line 97
    div-int v8, v15, v16

    .line 99
    .local v8, "maxTaskWidth":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get3(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    .line 100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get2(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    mul-int v16, v16, v17

    .line 99
    sub-int v15, v15, v16

    .line 100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    move/from16 v16, v0

    .line 99
    div-int v7, v15, v16

    .line 102
    .local v7, "maxTaskHeight":I
    int-to-float v15, v7

    int-to-float v0, v8

    move/from16 v16, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get0(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v17

    div-float v16, v16, v17

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get4(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_1ee

    .line 104
    move v12, v8

    .line 106
    .local v12, "taskWidth":I
    int-to-float v15, v8

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get0(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v16

    div-float v15, v15, v16

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get4(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v9, v0

    .line 113
    .local v9, "taskHeight":I
    :goto_fa
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1, v12, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get1(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    move/from16 v16, v0

    mul-int v16, v16, v12

    .line 115
    sub-int v15, v15, v16

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get2(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    mul-int v16, v16, v17

    .line 115
    sub-int v2, v15, v16

    .line 117
    .local v2, "emptySpaceX":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get3(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    move/from16 v16, v0

    mul-int v16, v16, v9

    .line 117
    sub-int v15, v15, v16

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get2(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    mul-int v16, v16, v17

    .line 117
    sub-int v3, v15, v16

    .line 119
    .local v3, "emptySpaceY":I
    const/4 v10, 0x0

    .local v10, "taskIndex":I
    :goto_15e
    move/from16 v0, p2

    if-ge v10, v0, :cond_208

    .line 121
    sub-int v15, p2, v10

    add-int/lit8 v11, v15, -0x1

    .line 123
    .local v11, "taskLayoutIndex":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    rem-int v13, v11, v15

    .line 124
    .local v13, "xIndex":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    div-int v14, v11, v15

    .line 125
    .local v14, "yIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->xOffsets:[I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 126
    div-int/lit8 v17, v2, 0x2

    .line 125
    add-int v16, v16, v17

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get1(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    .line 125
    add-int v16, v16, v17

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get2(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    add-int v17, v17, v12

    mul-int v17, v17, v13

    .line 125
    add-int v16, v16, v17

    aput v16, v15, v10

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->yOffsets:[I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get5(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 128
    div-int/lit8 v17, v3, 0x2

    .line 127
    add-int v16, v16, v17

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get3(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    .line 127
    add-int v16, v16, v17

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get2(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    add-int v17, v17, v9

    mul-int v17, v17, v14

    .line 127
    add-int v16, v16, v17

    aput v16, v15, v10

    .line 119
    add-int/lit8 v10, v10, 0x1

    goto :goto_15e

    .line 78
    .end local v2    # "emptySpaceX":I
    .end local v3    # "emptySpaceY":I
    .end local v4    # "landscapeTaskView":Z
    .end local v5    # "landscapeWindow":Z
    .end local v7    # "maxTaskHeight":I
    .end local v8    # "maxTaskWidth":I
    .end local v9    # "taskHeight":I
    .end local v10    # "taskIndex":I
    .end local v11    # "taskLayoutIndex":I
    .end local v12    # "taskWidth":I
    .end local v13    # "xIndex":I
    .end local v14    # "yIndex":I
    :cond_1bd
    const/4 v15, 0x2

    goto/16 :goto_38

    .line 81
    :cond_1c0
    const/4 v5, 0x0

    .restart local v5    # "landscapeWindow":Z
    goto/16 :goto_51

    .line 82
    :cond_1c3
    const/4 v4, 0x0

    .restart local v4    # "landscapeTaskView":Z
    goto/16 :goto_5c

    .line 85
    :cond_1c6
    const/4 v15, 0x2

    goto/16 :goto_64

    .line 87
    :cond_1c9
    const/4 v15, 0x5

    if-ge v6, v15, :cond_1cf

    const/4 v15, 0x2

    goto/16 :goto_6c

    .line 88
    :cond_1cf
    const/4 v15, 0x7

    if-ge v6, v15, :cond_1d5

    const/4 v15, 0x3

    goto/16 :goto_6c

    :cond_1d5
    const/4 v15, 0x4

    goto/16 :goto_6c

    .line 92
    :cond_1d8
    const/4 v15, 0x7

    if-ge v6, v15, :cond_1ea

    move v15, v6

    :goto_1dc
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    .line 93
    const/4 v15, 0x7

    if-ge v6, v15, :cond_1ec

    const/4 v15, 0x1

    :goto_1e4
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    goto/16 :goto_74

    .line 92
    :cond_1ea
    const/4 v15, 0x6

    goto :goto_1dc

    .line 93
    :cond_1ec
    const/4 v15, 0x2

    goto :goto_1e4

    .line 109
    .restart local v7    # "maxTaskHeight":I
    .restart local v8    # "maxTaskWidth":I
    :cond_1ee
    move v9, v7

    .line 111
    .restart local v9    # "taskHeight":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get4(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v15

    sub-int v15, v7, v15

    int-to-float v15, v15

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->-get0(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v16

    mul-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v12, v0

    .restart local v12    # "taskWidth":I
    goto/16 :goto_fa

    .line 71
    .restart local v2    # "emptySpaceX":I
    .restart local v3    # "emptySpaceY":I
    .restart local v10    # "taskIndex":I
    :cond_208
    return-void
.end method

.method private getTasksPerLine(I)I
    .registers 5
    .param p1, "taskCount"    # I

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_28

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported task count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_1d
    const/4 v0, 0x0

    return v0

    .line 137
    :pswitch_1f
    const/4 v0, 0x1

    return v0

    .line 140
    :pswitch_21
    const/4 v0, 0x2

    return v0

    .line 144
    :pswitch_23
    const/4 v0, 0x3

    return v0

    .line 147
    :pswitch_25
    const/4 v0, 0x4

    return v0

    .line 133
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_21
        :pswitch_23
        :pswitch_23
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method
