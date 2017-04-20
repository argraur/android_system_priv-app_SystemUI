.class public Lcom/android/systemui/statusbar/stack/StackScrollState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# instance fields
.field private final mClearAllTopPadding:I

.field private final mHostView:Landroid/view/ViewGroup;

.field private mStateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Lcom/android/systemui/statusbar/stack/StackViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    const v1, 0x7f1001db

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    .line 44
    return-void
.end method

.method private resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V
    .registers 7
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 77
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-nez v0, :cond_17

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    .end local v0    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/StackViewState;-><init>()V

    .line 79
    .restart local v0    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_17
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_32

    const/4 v1, 0x1

    :goto_26
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->gone:Z

    .line 84
    iput v4, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 85
    iput v4, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 86
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 87
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    .line 75
    return-void

    :cond_32
    move v1, v2

    .line 83
    goto :goto_26
.end method


# virtual methods
.method public apply()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 103
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 104
    .local v4, "numChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v4, :cond_60

    .line 105
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 106
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 107
    .local v5, "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 104
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 110
    :cond_24
    instance-of v7, v0, Lcom/android/systemui/statusbar/DismissView;

    if-eqz v7, :cond_43

    move-object v1, v0

    .line 111
    check-cast v1, Lcom/android/systemui/statusbar/DismissView;

    .line 112
    .local v1, "dismissView":Lcom/android/systemui/statusbar/DismissView;
    iget v7, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    if-ge v7, v10, :cond_3f

    move v6, v9

    .line 113
    .local v6, "visible":Z
    :goto_32
    if-eqz v6, :cond_3a

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v7

    if-eqz v7, :cond_41

    :cond_3a
    move v7, v8

    :goto_3b
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(Z)V

    goto :goto_21

    .end local v6    # "visible":Z
    :cond_3f
    move v6, v8

    .line 112
    goto :goto_32

    .restart local v6    # "visible":Z
    :cond_41
    move v7, v9

    .line 113
    goto :goto_3b

    .line 114
    .end local v1    # "dismissView":Lcom/android/systemui/statusbar/DismissView;
    .end local v6    # "visible":Z
    :cond_43
    instance-of v7, v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v7, :cond_21

    move-object v2, v0

    .line 115
    check-cast v2, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 116
    .local v2, "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    iget v7, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    if-gtz v7, :cond_5c

    move v6, v9

    .line 118
    .restart local v6    # "visible":Z
    :goto_4f
    if-eqz v6, :cond_57

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v7

    if-eqz v7, :cond_5e

    :cond_57
    move v7, v8

    .line 117
    :goto_58
    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    goto :goto_21

    .end local v6    # "visible":Z
    :cond_5c
    move v6, v8

    .line 116
    goto :goto_4f

    .restart local v6    # "visible":Z
    :cond_5e
    move v7, v9

    .line 118
    goto :goto_58

    .line 102
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    .end local v5    # "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v6    # "visible":Z
    :cond_60
    return-void
.end method

.method public applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z
    .registers 16
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 129
    if-nez p2, :cond_d

    .line 130
    const-string/jumbo v1, "StackScrollStateNoSuchChild"

    const-string/jumbo v2, "No child state was found when applying this state to the hostView"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x0

    return v1

    .line 134
    :cond_d
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->gone:Z

    if-eqz v1, :cond_13

    .line 135
    const/4 v1, 0x0

    return v1

    .line 137
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 139
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 140
    .local v0, "height":I
    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 143
    .local v8, "newHeight":I
    if-eq v0, v8, :cond_22

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p1, v8, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 147
    :cond_22
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v12

    .line 148
    .local v12, "shadowAlpha":F
    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 151
    .local v9, "newShadowAlpha":F
    cmpl-float v1, v12, v9

    if-eqz v1, :cond_2f

    .line 152
    invoke-virtual {p1, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 156
    :cond_2f
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 160
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 159
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 163
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 166
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    int-to-float v10, v1

    .line 170
    .local v10, "oldClipTopAmount":F
    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    int-to-float v1, v1

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_5e

    .line 171
    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 173
    :cond_5e
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_70

    move-object v11, p1

    .line 174
    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 175
    .local v11, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomClipped:Z

    if-eqz v1, :cond_6d

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    .line 178
    :cond_6d
    invoke-virtual {v11, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 180
    .end local v11    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_70
    const/4 v1, 0x1

    return v1
.end method

.method public applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 188
    .local v1, "alpha":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v13

    .line 189
    .local v13, "yTranslation":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v12

    .line 190
    .local v12, "xTranslation":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v14

    .line 191
    .local v14, "zTranslation":F
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 192
    .local v5, "newAlpha":F
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 193
    .local v9, "newYTranslation":F
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 194
    .local v10, "newZTranslation":F
    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_7a

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 195
    :goto_25
    cmpl-float v15, v1, v5

    if-eqz v15, :cond_4e

    const/4 v15, 0x0

    cmpl-float v15, v12, v15

    if-nez v15, :cond_4e

    .line 197
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v5, v15

    if-nez v15, :cond_7c

    const/4 v2, 0x1

    .line 198
    .local v2, "becomesFullyVisible":Z
    :goto_35
    if-nez v3, :cond_39

    if-eqz v2, :cond_7e

    :cond_39
    const/4 v7, 0x0

    .line 200
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v4

    .line 201
    .local v4, "layerType":I
    if-eqz v7, :cond_83

    .line 202
    const/4 v6, 0x2

    .line 204
    .local v6, "newLayerType":I
    :goto_41
    if-eq v4, v6, :cond_49

    .line 205
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 209
    :cond_49
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 213
    .end local v2    # "becomesFullyVisible":Z
    .end local v4    # "layerType":I
    .end local v6    # "newLayerType":I
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v11

    .line 214
    .local v11, "oldVisibility":I
    if-eqz v3, :cond_85

    const/4 v8, 0x4

    .line 215
    .local v8, "newVisibility":I
    :goto_55
    if-eq v8, v11, :cond_67

    .line 216
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v15, :cond_87

    move-object/from16 v15, p1

    check-cast v15, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v15

    if-eqz v15, :cond_87

    .line 223
    :cond_67
    :goto_67
    cmpl-float v15, v13, v9

    if-eqz v15, :cond_70

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 228
    :cond_70
    cmpl-float v15, v14, v10

    if-eqz v15, :cond_79

    .line 229
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationZ(F)V

    .line 186
    :cond_79
    return-void

    .line 194
    .end local v8    # "newVisibility":I
    .end local v11    # "oldVisibility":I
    :cond_7a
    const/4 v3, 0x1

    .local v3, "becomesInvisible":Z
    goto :goto_25

    .line 197
    .end local v3    # "becomesInvisible":Z
    :cond_7c
    const/4 v2, 0x0

    .restart local v2    # "becomesFullyVisible":Z
    goto :goto_35

    .line 199
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v7

    .local v7, "newLayerTypeIsHardware":Z
    goto :goto_3a

    .line 203
    .end local v7    # "newLayerTypeIsHardware":Z
    .restart local v4    # "layerType":I
    :cond_83
    const/4 v6, 0x0

    goto :goto_41

    .line 214
    .end local v2    # "becomesFullyVisible":Z
    .end local v4    # "layerType":I
    .restart local v11    # "oldVisibility":I
    :cond_85
    const/4 v8, 0x0

    goto :goto_55

    .line 218
    .restart local v8    # "newVisibility":I
    :cond_87
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_67
.end method

.method public getHostView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;
    .registers 3
    .param p1, "requestedView"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    return-object v0
.end method

.method public removeViewStateForView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public resetViewStates()V
    .registers 9

    .prologue
    .line 56
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 57
    .local v5, "numChildren":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    if-ge v4, v5, :cond_3e

    .line 58
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 59
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 62
    instance-of v7, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_3b

    move-object v6, v0

    .line 63
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 65
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 66
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v7

    if-eqz v7, :cond_3b

    if-eqz v3, :cond_3b

    .line 67
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "childRow$iterator":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 68
    .local v1, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    goto :goto_2b

    .line 57
    .end local v1    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childRow$iterator":Ljava/util/Iterator;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 55
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_3e
    return-void
.end method
