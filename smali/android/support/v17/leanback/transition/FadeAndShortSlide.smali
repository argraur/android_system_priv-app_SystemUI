.class public Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.super Landroid/transition/Visibility;
.source "FadeAndShortSlide.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
    }
.end annotation


# static fields
.field static final sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mDistance:F

.field private mFade:Landroid/transition/Visibility;

.field private mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field final sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 78
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 92
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 106
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 122
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 129
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 153
    const v0, 0x800003

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    .line 152
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "slideEdge"    # I

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 51
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    .line 52
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    .line 136
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;-><init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 157
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setSlideEdge(I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2}, Landroid/transition/Fade;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    .line 52
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    .line 136
    new-instance v2, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;-><init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V

    iput-object v2, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 162
    sget-object v2, Landroid/support/v17/leanback/R$styleable;->lbSlide:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 163
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbSlide_lb_slideEdge:I

    const v3, 0x800003

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 164
    .local v1, "edge":I
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setSlideEdge(I)V

    .line 165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 175
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 176
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 177
    .local v0, "position":[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 178
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 286
    invoke-super {p0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 191
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 192
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 189
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 184
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 185
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 182
    return-void
.end method

.method public clone()Landroid/transition/Transition;
    .registers 3

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "clone":Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    invoke-super {p0}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v0

    .end local v0    # "clone":Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    check-cast v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    .line 316
    .local v0, "clone":Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    iget-object v1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v1}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/Visibility;

    iput-object v1, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    .line 317
    return-object v0
.end method

.method getHorizontalDistance(Landroid/view/ViewGroup;)F
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    goto :goto_9
.end method

.method getVerticalDistance(Landroid/view/ViewGroup;)F
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    goto :goto_9
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 23
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 223
    if-nez p4, :cond_4

    .line 224
    const/4 v4, 0x0

    return-object v4

    .line 226
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_c

    .line 228
    const/4 v4, 0x0

    return-object v4

    .line 230
    :cond_c
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 231
    .local v15, "position":[I
    const/4 v4, 0x0

    aget v6, v15, v4

    .line 232
    .local v6, "left":I
    const/4 v4, 0x1

    aget v7, v15, v4

    .line 233
    .local v7, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v10

    .line 234
    .local v10, "endX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v8

    .line 235
    .local v8, "startX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v11

    .line 236
    .local v11, "endY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v9

    .line 238
    .local v9, "startY":F
    sget-object v12, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v13, p0

    .line 237
    invoke-static/range {v4 .. v13}, Landroid/support/v17/leanback/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v17

    .line 239
    .local v17, "slideAnimator":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v14

    .line 240
    .local v14, "fadeAnimator":Landroid/animation/Animator;
    if-nez v17, :cond_62

    .line 241
    return-object v14

    .line 242
    :cond_62
    if-nez v14, :cond_65

    .line 243
    return-object v17

    .line 245
    :cond_65
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 246
    .local v16, "set":Landroid/animation/AnimatorSet;
    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 248
    return-object v16
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 23
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 254
    if-nez p3, :cond_4

    .line 255
    const/4 v4, 0x0

    return-object v4

    .line 257
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_c

    .line 259
    const/4 v4, 0x0

    return-object v4

    .line 261
    :cond_c
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 262
    .local v15, "position":[I
    const/4 v4, 0x0

    aget v6, v15, v4

    .line 263
    .local v6, "left":I
    const/4 v4, 0x1

    aget v7, v15, v4

    .line 264
    .local v7, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v8

    .line 265
    .local v8, "startX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v10

    .line 266
    .local v10, "endX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v9

    .line 267
    .local v9, "startY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v11

    .line 269
    .local v11, "endY":F
    sget-object v12, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v13, p0

    .line 268
    invoke-static/range {v4 .. v13}, Landroid/support/v17/leanback/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v17

    .line 271
    .local v17, "slideAnimator":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v14

    .line 272
    .local v14, "fadeAnimator":Landroid/animation/Animator;
    if-nez v17, :cond_62

    .line 273
    return-object v14

    .line 274
    :cond_62
    if-nez v14, :cond_65

    .line 275
    return-object v17

    .line 277
    :cond_65
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 278
    .local v16, "set":Landroid/animation/AnimatorSet;
    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 280
    return-object v16
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 292
    invoke-super {p0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .registers 3
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 171
    invoke-super {p0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 169
    return-void
.end method

.method public setSlideEdge(I)V
    .registers 4
    .param p1, "slideEdge"    # I

    .prologue
    .line 196
    sparse-switch p1, :sswitch_data_2a

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :sswitch_c
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    .line 195
    :goto_10
    return-void

    .line 201
    :sswitch_11
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_10

    .line 204
    :sswitch_16
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_10

    .line 207
    :sswitch_1b
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_10

    .line 210
    :sswitch_20
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_10

    .line 213
    :sswitch_25
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_10

    .line 196
    :sswitch_data_2a
    .sparse-switch
        0x30 -> :sswitch_1b
        0x50 -> :sswitch_20
        0x70 -> :sswitch_25
        0x800003 -> :sswitch_c
        0x800005 -> :sswitch_11
        0x800007 -> :sswitch_16
    .end sparse-switch
.end method
