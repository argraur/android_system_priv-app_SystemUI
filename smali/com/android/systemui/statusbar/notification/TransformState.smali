.class public Lcom/android/systemui/statusbar/notification/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/TransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOwnPosition:[I

.field private mTransformationEndX:F

.field private mTransformationEndY:F

.field protected mTransformedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    .line 56
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 57
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 39
    return-void
.end method

.method public static createFrom(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/TransformState;
    .registers 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 395
    instance-of v6, p0, Landroid/widget/TextView;

    if-eqz v6, :cond_c

    .line 396
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    move-result-object v4

    .line 397
    .local v4, "result":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->initFrom(Landroid/view/View;)V

    .line 398
    return-object v4

    .line 400
    .end local v4    # "result":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x10203a9

    if-ne v6, v7, :cond_1d

    .line 401
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    move-result-object v0

    .line 402
    .local v0, "result":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->initFrom(Landroid/view/View;)V

    .line 403
    return-object v0

    .line 405
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    :cond_1d
    instance-of v6, p0, Landroid/view/NotificationHeaderView;

    if-eqz v6, :cond_29

    .line 406
    invoke-static {}, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->obtain()Lcom/android/systemui/statusbar/notification/HeaderTransformState;

    move-result-object v1

    .line 407
    .local v1, "result":Lcom/android/systemui/statusbar/notification/HeaderTransformState;
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/HeaderTransformState;->initFrom(Landroid/view/View;)V

    .line 408
    return-object v1

    .line 410
    .end local v1    # "result":Lcom/android/systemui/statusbar/notification/HeaderTransformState;
    :cond_29
    instance-of v6, p0, Landroid/widget/ImageView;

    if-eqz v6, :cond_35

    .line 411
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;

    move-result-object v2

    .line 412
    .local v2, "result":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->initFrom(Landroid/view/View;)V

    .line 413
    return-object v2

    .line 415
    .end local v2    # "result":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    :cond_35
    instance-of v6, p0, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_41

    .line 416
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    move-result-object v3

    .line 417
    .local v3, "result":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->initFrom(Landroid/view/View;)V

    .line 418
    return-object v3

    .line 420
    .end local v3    # "result":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    :cond_41
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TransformState;->obtain()Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v5

    .line 421
    .local v5, "result":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    .line 422
    return-object v5
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TransformState;
    .registers 2

    .prologue
    .line 515
    sget-object v1, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TransformState;

    .line 516
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v0, :cond_b

    .line 517
    return-object v0

    .line 519
    :cond_b
    new-instance v1, Lcom/android/systemui/statusbar/notification/TransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-object v1
.end method

.method public static setClippingDeactivated(Landroid/view/View;Z)V
    .registers 14
    .param p0, "transformedView"    # Landroid/view/View;
    .param p1, "deactivated"    # Z

    .prologue
    const v11, 0x7f12003e

    const v10, 0x7f12003c

    const v9, 0x7f12003d

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-nez v6, :cond_14

    .line 306
    return-void

    .line 308
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 310
    .local v5, "view":Landroid/view/ViewGroup;
    :goto_1a
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 311
    .local v1, "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    if-nez v1, :cond_2a

    .line 312
    new-instance v1, Landroid/util/ArraySet;

    .end local v1    # "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 313
    .restart local v1    # "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-virtual {v5, v9, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 315
    :cond_2a
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 316
    .local v0, "clipChildren":Ljava/lang/Boolean;
    if-nez v0, :cond_3d

    .line 317
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 318
    invoke-virtual {v5, v10, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 320
    :cond_3d
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 321
    .local v2, "clipToPadding":Ljava/lang/Boolean;
    if-nez v2, :cond_50

    .line 322
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 323
    invoke-virtual {v5, v11, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 325
    :cond_50
    instance-of v6, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_8d

    move-object v4, v5

    .line 326
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 328
    :goto_57
    if-nez p1, :cond_8f

    .line 329
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 331
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 332
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 333
    invoke-virtual {v5, v9, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 334
    if-eqz v4, :cond_79

    .line 335
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    .line 347
    :cond_79
    :goto_79
    if-eqz v4, :cond_81

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 350
    :cond_81
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 351
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_a5

    move-object v5, v3

    .line 352
    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_1a

    .line 327
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_8d
    const/4 v4, 0x0

    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_57

    .line 339
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_8f
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 341
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 342
    if-eqz v4, :cond_79

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 344
    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    goto :goto_79

    .line 348
    :cond_a4
    return-void

    .line 354
    .restart local v3    # "parent":Landroid/view/ViewParent;
    :cond_a5
    return-void
.end method

.method private setTransformationStartScaleX(F)V
    .registers 5
    .param p1, "startScaleX"    # F

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f120037

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 468
    return-void
.end method

.method private setTransformationStartScaleY(F)V
    .registers 5
    .param p1, "startScaleY"    # F

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f120038

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 472
    return-void
.end method

.method private transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .registers 18
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationFlags"    # I
    .param p3, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p4, "transformationAmount"    # F

    .prologue
    .line 99
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 100
    .local v10, "transformedView":Landroid/view/View;
    and-int/lit8 v11, p2, 0x1

    if-eqz v11, :cond_a3

    const/4 v6, 0x1

    .line 101
    .local v6, "transformX":Z
    :goto_7
    and-int/lit8 v11, p2, 0x10

    if-eqz v11, :cond_a6

    const/4 v7, 0x1

    .line 102
    .local v7, "transformY":Z
    :goto_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale()Z

    move-result v5

    .line 104
    .local v5, "transformScale":Z
    const/4 v11, 0x0

    cmpl-float v11, p4, v11

    if-eqz v11, :cond_21

    .line 105
    if-eqz v6, :cond_a9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_a9

    .line 110
    :cond_21
    :goto_21
    const/4 v11, 0x0

    cmpl-float v11, p4, v11

    if-eqz v11, :cond_cf

    .line 111
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v2

    .line 115
    .local v2, "otherPosition":[I
    :goto_2a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v4

    .line 116
    .local v4, "ownStablePosition":[I
    if-eqz p3, :cond_d5

    .line 117
    move-object/from16 v0, p3

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v11

    if-eqz v11, :cond_d5

    .line 141
    :goto_38
    if-nez v6, :cond_3f

    .line 142
    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 144
    :cond_3f
    if-nez v7, :cond_46

    .line 145
    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 147
    :cond_46
    if-nez v5, :cond_52

    .line 148
    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 149
    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 151
    :cond_52
    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 153
    .end local v2    # "otherPosition":[I
    .end local v4    # "ownStablePosition":[I
    :cond_56
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move/from16 v0, p4

    invoke-interface {v11, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 155
    .local v1, "interpolatedValue":F
    if-eqz v6, :cond_6c

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v11

    .line 157
    const/4 v12, 0x0

    .line 156
    invoke-static {v11, v12, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 160
    :cond_6c
    if-eqz v7, :cond_7a

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v11

    .line 162
    const/4 v12, 0x0

    .line 161
    invoke-static {v11, v12, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 165
    :cond_7a
    if-eqz v5, :cond_a2

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v8

    .line 167
    .local v8, "transformationStartScaleX":F
    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v11, v8, v11

    if-eqz v11, :cond_8f

    .line 170
    const/high16 v11, 0x3f800000    # 1.0f

    .line 169
    invoke-static {v8, v11, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    .line 168
    invoke-virtual {v10, v11}, Landroid/view/View;->setScaleX(F)V

    .line 173
    :cond_8f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v9

    .line 174
    .local v9, "transformationStartScaleY":F
    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v11, v9, v11

    if-eqz v11, :cond_a2

    .line 177
    const/high16 v11, 0x3f800000    # 1.0f

    .line 176
    invoke-static {v9, v11, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    .line 175
    invoke-virtual {v10, v11}, Landroid/view/View;->setScaleY(F)V

    .line 98
    .end local v8    # "transformationStartScaleX":F
    .end local v9    # "transformationStartScaleY":F
    :cond_a2
    return-void

    .line 100
    .end local v1    # "interpolatedValue":F
    .end local v5    # "transformScale":Z
    .end local v6    # "transformX":Z
    .end local v7    # "transformY":Z
    :cond_a3
    const/4 v6, 0x0

    .restart local v6    # "transformX":Z
    goto/16 :goto_7

    .line 101
    :cond_a6
    const/4 v7, 0x0

    .restart local v7    # "transformY":Z
    goto/16 :goto_c

    .line 106
    .restart local v5    # "transformScale":Z
    :cond_a9
    if-eqz v7, :cond_b5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_21

    .line 107
    :cond_b5
    if-eqz v5, :cond_c1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_21

    .line 108
    :cond_c1
    if-eqz v5, :cond_56

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_56

    goto/16 :goto_21

    .line 113
    :cond_cf
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v2

    .restart local v2    # "otherPosition":[I
    goto/16 :goto_2a

    .line 118
    .restart local v4    # "ownStablePosition":[I
    :cond_d5
    if-eqz v6, :cond_e2

    .line 119
    const/4 v11, 0x0

    aget v11, v2, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 121
    :cond_e2
    if-eqz v7, :cond_ef

    .line 122
    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 125
    :cond_ef
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v3

    .line 126
    .local v3, "otherView":Landroid/view/View;
    if-eqz v5, :cond_13b

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    if-eq v11, v12, :cond_13b

    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v12

    mul-float/2addr v11, v12

    .line 128
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    .line 127
    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 129
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotX(F)V

    .line 133
    :goto_116
    if-eqz v5, :cond_141

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    if-eq v11, v12, :cond_141

    .line 134
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v12

    mul-float/2addr v11, v12

    .line 135
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    .line 134
    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 136
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_38

    .line 131
    :cond_13b
    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    goto :goto_116

    .line 138
    :cond_141
    const/high16 v11, -0x40800000    # -1.0f

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    goto/16 :goto_38
.end method

.method private transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .registers 25
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationFlags"    # I
    .param p3, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p4, "transformationAmount"    # F

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    move-object/from16 v17, v0

    .line 229
    .local v17, "transformedView":Landroid/view/View;
    and-int/lit8 v18, p2, 0x1

    if-eqz v18, :cond_14b

    const/4 v11, 0x1

    .line 230
    .local v11, "transformX":Z
    :goto_b
    and-int/lit8 v18, p2, 0x10

    if-eqz v18, :cond_14e

    const/4 v12, 0x1

    .line 231
    .local v12, "transformY":Z
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale()Z

    move-result v10

    .line 233
    .local v10, "transformScale":Z
    const/16 v18, 0x0

    cmpl-float v18, p4, v18

    if-nez v18, :cond_88

    .line 234
    if-eqz v11, :cond_2c

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v15

    .line 236
    .local v15, "transformationStartX":F
    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v15, v18

    if-eqz v18, :cond_151

    move v9, v15

    .line 238
    .local v9, "start":F
    :goto_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 240
    .end local v9    # "start":F
    .end local v15    # "transformationStartX":F
    :cond_2c
    if-eqz v12, :cond_3f

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v16

    .line 242
    .local v16, "transformationStartY":F
    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v16, v18

    if-eqz v18, :cond_157

    move/from16 v9, v16

    .line 244
    .restart local v9    # "start":F
    :goto_3a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 246
    .end local v9    # "start":F
    .end local v16    # "transformationStartY":F
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v7

    .line 247
    .local v7, "otherView":Landroid/view/View;
    if-eqz v10, :cond_15d

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15d

    .line 248
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScaleX()F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 249
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotX(F)V

    .line 253
    :goto_63
    if-eqz v10, :cond_168

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_168

    .line 254
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScaleY()F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 255
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setPivotY(F)V

    .line 259
    :goto_83
    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 261
    .end local v7    # "otherView":Landroid/view/View;
    :cond_88
    sget-object v18, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 263
    .local v5, "interpolatedValue":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v6

    .line 264
    .local v6, "otherStablePosition":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v8

    .line 265
    .local v8, "ownPosition":[I
    if-eqz v11, :cond_c8

    .line 266
    const/16 v18, 0x0

    aget v18, v6, v18

    const/16 v19, 0x0

    aget v19, v8, v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v3, v0

    .line 267
    .local v3, "endX":F
    if-eqz p3, :cond_bb

    .line 268
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v18

    .line 267
    if-eqz v18, :cond_bb

    .line 269
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 271
    :cond_bb
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v18

    move/from16 v0, v18

    invoke-static {v0, v3, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationX(F)V

    .line 275
    .end local v3    # "endX":F
    :cond_c8
    if-eqz v12, :cond_f6

    .line 276
    const/16 v18, 0x1

    aget v18, v6, v18

    const/16 v19, 0x1

    aget v19, v8, v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v4, v0

    .line 277
    .local v4, "endY":F
    if-eqz p3, :cond_e9

    .line 278
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v18

    .line 277
    if-eqz v18, :cond_e9

    .line 279
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 281
    :cond_e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v18

    move/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTranslationY(F)V

    .line 285
    .end local v4    # "endY":F
    :cond_f6
    if-eqz v10, :cond_14a

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v7

    .line 287
    .restart local v7    # "otherView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v13

    .line 288
    .local v13, "transformationStartScaleX":F
    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v13, v18

    if-eqz v18, :cond_123

    .line 291
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    .line 290
    move/from16 v0, v18

    invoke-static {v13, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v18

    .line 289
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setScaleX(F)V

    .line 294
    :cond_123
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v14

    .line 295
    .local v14, "transformationStartScaleY":F
    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_14a

    .line 298
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    .line 297
    move/from16 v0, v18

    invoke-static {v14, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v18

    .line 296
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setScaleY(F)V

    .line 225
    .end local v7    # "otherView":Landroid/view/View;
    .end local v13    # "transformationStartScaleX":F
    .end local v14    # "transformationStartScaleY":F
    :cond_14a
    return-void

    .line 229
    .end local v5    # "interpolatedValue":F
    .end local v6    # "otherStablePosition":[I
    .end local v8    # "ownPosition":[I
    .end local v10    # "transformScale":Z
    .end local v11    # "transformX":Z
    .end local v12    # "transformY":Z
    :cond_14b
    const/4 v11, 0x0

    .restart local v11    # "transformX":Z
    goto/16 :goto_b

    .line 230
    :cond_14e
    const/4 v12, 0x0

    .restart local v12    # "transformY":Z
    goto/16 :goto_10

    .line 237
    .restart local v10    # "transformScale":Z
    .restart local v15    # "transformationStartX":F
    :cond_151
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationX()F

    move-result v9

    goto/16 :goto_27

    .line 243
    .end local v15    # "transformationStartX":F
    .restart local v16    # "transformationStartY":F
    :cond_157
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationY()F

    move-result v9

    goto/16 :goto_3a

    .line 251
    .end local v16    # "transformationStartY":F
    .restart local v7    # "otherView":Landroid/view/View;
    :cond_15d
    const/high16 v18, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    goto/16 :goto_63

    .line 257
    :cond_168
    const/high16 v18, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    goto/16 :goto_83
.end method


# virtual methods
.method public abortTransformation()V
    .registers 5

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f120035

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f120036

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f120037

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f120038

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 507
    return-void
.end method

.method public appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .registers 4
    .param p1, "transformationAmount"    # F
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 384
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    .line 387
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 380
    return-void
.end method

.method public disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .registers 4
    .param p1, "transformationAmount"    # F
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 390
    return-void
.end method

.method public getLaidOutLocationOnScreen()[I
    .registers 5

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v0

    .line 362
    .local v0, "location":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 363
    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 364
    return-object v0
.end method

.method public getLocationOnScreen()[I
    .registers 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    sub-float v3, v5, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPivotX()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    sub-float v3, v5, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    return-object v0
.end method

.method public getTransformationStartScaleX()F
    .registers 4

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f120037

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 452
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_e

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_d
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_e
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_d
.end method

.method public getTransformationStartScaleY()F
    .registers 4

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f120038

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 457
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_e

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_d
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_e
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_d
.end method

.method public getTransformationStartX()F
    .registers 4

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f120035

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 442
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_e

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_d
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_e
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_d
.end method

.method public getTransformationStartY()F
    .registers 4

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v2, 0x7f120036

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 447
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_e

    const/high16 v1, -0x40800000    # -1.0f

    .end local v0    # "tag":Ljava/lang/Object;
    :goto_d
    return v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_e
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_d
.end method

.method public getTransformedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    return-object v0
.end method

.method public initFrom(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 59
    return-void
.end method

.method public prepareFadeIn()V
    .registers 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 494
    return-void
.end method

.method public recycle()V
    .registers 3

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/TransformState;

    if-ne v0, v1, :cond_10

    .line 428
    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 425
    :cond_10
    return-void
.end method

.method protected reset()V
    .registers 3

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 478
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 479
    iput v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 476
    return-void
.end method

.method protected resetTransformedView()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    .line 498
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .registers 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public setTransformationEndY(F)V
    .registers 2
    .param p1, "transformationEndY"    # F

    .prologue
    .line 433
    iput p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 432
    return-void
.end method

.method public setTransformationStartX(F)V
    .registers 5
    .param p1, "transformationStartX"    # F

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f120035

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 460
    return-void
.end method

.method public setTransformationStartY(F)V
    .registers 5
    .param p1, "transformationStartY"    # F

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f120036

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 464
    return-void
.end method

.method public setVisible(ZZ)V
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "force"    # Z

    .prologue
    const/16 v1, 0x8

    .line 483
    if-nez p2, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 484
    return-void

    .line 486
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1d

    .line 487
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_33

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 490
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_35

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2c
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 482
    return-void

    .line 487
    :cond_33
    const/4 v0, 0x4

    goto :goto_1a

    .line 490
    :cond_35
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method protected transformScale()Z
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .registers 5
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_25
    :goto_25
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 68
    return-void

    .line 77
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    goto :goto_25
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .registers 5
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 83
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 82
    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .registers 5
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 210
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 209
    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .registers 6
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_24
    return v2

    .line 203
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .registers 5
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 93
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 92
    return-void
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .registers 5
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 89
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 88
    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .registers 5
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 220
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 219
    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .registers 5
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 216
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 215
    return-void
.end method
