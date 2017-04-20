.class public Lcom/android/systemui/statusbar/ViewTransformationHelper;
.super Ljava/lang/Object;
.source "ViewTransformationHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    }
.end annotation


# instance fields
.field private mCustomTransformations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformedViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTransformationAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->abortTransformations()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    .line 37
    return-void
.end method

.method private abortTransformations()V
    .registers 5

    .prologue
    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewType$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 199
    .local v1, "viewType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 200
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v0, :cond_a

    .line 201
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    .line 202
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    .line 197
    .end local v0    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v1    # "viewType":Ljava/lang/Integer;
    :cond_27
    return-void
.end method


# virtual methods
.method public addRemainingTransformTypes(Landroid/view/View;)V
    .registers 14
    .param p1, "viewRoot"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f120040

    .line 213
    iget-object v8, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 214
    .local v5, "numValues":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v5, :cond_2d

    .line 215
    iget-object v8, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 216
    .local v7, "view":Landroid/view/View;
    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v7, v8, :cond_2a

    .line 217
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 218
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .end local v7    # "view":Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .restart local v7    # "view":Landroid/view/View;
    goto :goto_15

    .line 214
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 221
    .end local v7    # "view":Landroid/view/View;
    :cond_2d
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 223
    .local v6, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/view/View;>;"
    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_35
    :goto_35
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7f

    .line 225
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 226
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_35

    .line 229
    invoke-virtual {v0, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 230
    .local v1, "containsView":Ljava/lang/Boolean;
    if-nez v1, :cond_5c

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    .line 233
    .local v4, "id":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_5c

    .line 235
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    goto :goto_35

    .line 239
    .end local v4    # "id":I
    :cond_5c
    invoke-virtual {v0, v10, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 240
    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_35

    iget-object v8, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    move-object v2, v0

    .line 241
    check-cast v2, Landroid/view/ViewGroup;

    .line 242
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    :goto_6f
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_35

    .line 243
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 211
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "containsView":Ljava/lang/Boolean;
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_7f
    return-void
.end method

.method public addTransformedView(ILandroid/view/View;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "transformedView"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public getAllTransformingViews()Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .registers 6
    .param p1, "fadingView"    # I

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 60
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1c

    .line 61
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    return-object v1

    .line 63
    :cond_1c
    return-object v3
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 49
    return-void
.end method

.method public resetTransformedView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 251
    .local v0, "state":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 252
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 249
    return-void
.end method

.method public setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V
    .registers 5
    .param p1, "transformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p2, "viewType"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    .line 185
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_9

    .line 186
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 188
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewType$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 189
    .local v1, "viewType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 190
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v0, :cond_13

    .line 191
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 192
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_13

    .line 184
    .end local v0    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v1    # "viewType":Ljava/lang/Integer;
    :cond_31
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 6
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 131
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 127
    return-void

    .line 131
    nop

    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 9
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 162
    iget-object v5, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "viewType$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 163
    .local v3, "viewType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v2

    .line 164
    .local v2, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v2, :cond_a

    .line 165
    iget-object v5, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;

    .line 166
    .local v0, "customTransformation":Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    if-eqz v0, :cond_34

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 168
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    .line 171
    :cond_34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    .line 172
    .local v1, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v1, :cond_48

    .line 173
    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 174
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 178
    :goto_44
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    .line 176
    :cond_48
    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_44

    .line 161
    .end local v0    # "customTransformation":Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .end local v1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v2    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v3    # "viewType":Ljava/lang/Integer;
    :cond_4c
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 9
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 105
    iget-object v5, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "viewType$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 106
    .local v3, "viewType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v2

    .line 107
    .local v2, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v2, :cond_a

    .line 108
    iget-object v5, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;

    .line 109
    .local v0, "customTransformation":Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    if-eqz v0, :cond_34

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 111
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    .line 114
    :cond_34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    .line 115
    .local v1, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v1, :cond_48

    .line 116
    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    .line 117
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 121
    :goto_44
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_a

    .line 119
    :cond_48
    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_44

    .line 104
    .end local v0    # "customTransformation":Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .end local v1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v2    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v3    # "viewType":Ljava/lang/Integer;
    :cond_4c
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 71
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$1;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 67
    return-void

    .line 71
    nop

    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
