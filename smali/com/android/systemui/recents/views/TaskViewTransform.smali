.class public Lcom/android/systemui/recents/views/TaskViewTransform;
.super Ljava/lang/Object;
.source "TaskViewTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskViewTransform$1;
    }
.end annotation


# static fields
.field public static final LTRB:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alpha:F

.field public dimAlpha:F

.field public rect:Landroid/graphics/RectF;

.field public scale:F

.field public translationZ:F

.field public viewOutlineAlpha:F

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform$1;

    const-class v1, Landroid/graphics/Rect;

    const-string/jumbo v2, "leftTopRightBottom"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 37
    sput-object v0, Lcom/android/systemui/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 55
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 56
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 57
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 58
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 35
    return-void
.end method

.method public static reset(Lcom/android/systemui/recents/views/TaskView;)V
    .registers 4
    .param p0, "v"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipBottom(I)V

    .line 196
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->setLeftTopRightBottom(IIII)V

    .line 188
    return-void
.end method


# virtual methods
.method public applyToTaskView(Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/recents/views/AnimationProps;Z)V
    .registers 15
    .param p1, "v"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p4, "allowShadows"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 140
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-nez v3, :cond_8

    .line 141
    return-void

    .line 144
    :cond_8
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/AnimationProps;->isImmediate()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 145
    if-eqz p4, :cond_1f

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 146
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 148
    :cond_1f
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 149
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setScaleX(F)V

    .line 150
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setScaleY(F)V

    .line 152
    :cond_33
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 153
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    .line 155
    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 156
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    .line 157
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    .line 156
    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->setLeftTopRightBottom(IIII)V

    .line 138
    :cond_5f
    :goto_5f
    return-void

    .line 160
    :cond_60
    if-eqz p4, :cond_86

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 161
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v9, [F

    .line 162
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v5

    aput v5, v4, v7

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    aput v5, v4, v8

    .line 161
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 163
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x3

    invoke-virtual {p3, v3, v0}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_86
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasScaleChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 166
    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    .line 167
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v9, [F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    .line 168
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v9, [F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v8

    .line 166
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 169
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x5

    invoke-virtual {p3, v3, v0}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_c6
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasAlphaChangedFrom(F)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 172
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v5

    aput v5, v4, v7

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    aput v5, v4, v8

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 173
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x4

    invoke-virtual {p3, v3, v0}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_ea
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 176
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 177
    .local v1, "fromViewRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 178
    .local v2, "toViewRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 179
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    .line 180
    sget-object v4, Lcom/android/systemui/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    sget-object v5, Lcom/android/systemui/recents/misc/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    new-array v6, v9, [Landroid/graphics/Rect;

    .line 181
    aput-object v1, v6, v7

    aput-object v2, v6, v8

    .line 180
    invoke-static {v4, v5, v6}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    .line 179
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 182
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x6

    invoke-virtual {p3, v3, v0}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5f
.end method

.method public copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V
    .registers 4
    .param p1, "other"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 82
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 83
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 84
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 85
    iget-boolean v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 86
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 87
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 81
    return-void
.end method

.method public fillIn(Lcom/android/systemui/recents/views/TaskView;)V
    .registers 7
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 71
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 75
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    return-void
.end method

.method public hasAlphaChangedFrom(F)Z
    .registers 4
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 118
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public hasRectChangedFrom(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    if-eq v1, v2, :cond_18

    :cond_17
    :goto_17
    return v0

    .line 131
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public hasScaleChangedFrom(F)Z
    .registers 4
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 122
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public hasTranslationZChangedFrom(F)Z
    .registers 4
    .param p1, "v"    # F

    .prologue
    const/4 v0, 0x0

    .line 126
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isSame(Lcom/android/systemui/recents/views/TaskViewTransform;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    .line 96
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    .line 97
    iget v0, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    .line 98
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-ne v0, v1, :cond_2f

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public reset()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 108
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 109
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 110
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 111
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " V: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
