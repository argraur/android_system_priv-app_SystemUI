.class public Lcom/android/systemui/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mChildrenToClearFromOverlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private final mGoToFullShadeAppearingTranslation:I

.field private mHeadsUpAppearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpAppearHeightBottom:I

.field private final mHeadsUpAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mHeadsUpDisappearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mShadeExpanded:Z

.field private final mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .registers 4
    .param p1, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/StackViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 102
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    const v1, 0x7f1001e2

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    return-void
.end method

.method private abortAnimation(Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animatorTag"    # I

    .prologue
    .line 316
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 317
    .local v0, "previousAnimator":Landroid/animation/Animator;
    if-eqz v0, :cond_b

    .line 318
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 315
    :cond_b
    return-void
.end method

.method private applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z
    .registers 6
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    if-eqz v0, :cond_6

    .line 151
    return v1

    .line 153
    :cond_6
    const v0, 0x7f12001c

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 155
    return v1

    .line 157
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 159
    :cond_20
    return v1

    .line 161
    :cond_21
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 163
    return v1

    .line 165
    :cond_28
    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J
    .registers 23
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 325
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayDark(Lcom/android/systemui/statusbar/stack/StackViewState;)J

    move-result-wide v16

    return-wide v16

    .line 327
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_26

    .line 328
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackViewState;)J

    move-result-wide v16

    return-wide v16

    .line 330
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasHeadsUpDisappearClickEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_37

    .line 331
    const-wide/16 v16, 0x78

    return-wide v16

    .line 333
    :cond_37
    const-wide/16 v10, 0x0

    .line 334
    .local v10, "minDelay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "event$iterator":Ljava/util/Iterator;
    :goto_43
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_ec

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 335
    .local v8, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    const-wide/16 v6, 0x50

    .line 336
    .local v6, "delayPerElement":J
    iget v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_ee

    goto :goto_43

    .line 338
    :pswitch_59
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 340
    .local v14, "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 339
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 341
    .local v2, "changingIndex":I
    sub-int v16, v14, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 343
    .local v3, "difference":I
    add-int/lit8 v16, v3, -0x1

    .line 342
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 344
    rsub-int/lit8 v16, v3, 0x2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 335
    const-wide/16 v18, 0x50

    .line 344
    mul-long v4, v16, v18

    .line 345
    .local v4, "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_43

    .line 349
    .end local v2    # "changingIndex":I
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v14    # "ownIndex":I
    :pswitch_99
    const-wide/16 v6, 0x20

    .line 351
    :pswitch_9b
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 352
    .restart local v14    # "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_e7

    const/4 v13, 0x1

    .line 353
    .local v13, "noNextView":Z
    :goto_a6
    if-eqz v13, :cond_e9

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v15

    .line 357
    .local v15, "viewAfterChangingView":Landroid/view/View;
    :goto_b2
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 359
    .local v12, "nextIndex":I
    if-lt v14, v12, :cond_c0

    .line 361
    add-int/lit8 v14, v14, 0x1

    .line 363
    :cond_c0
    sub-int v16, v14, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 365
    .restart local v3    # "difference":I
    add-int/lit8 v16, v3, -0x1

    .line 364
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 366
    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    .line 367
    .restart local v4    # "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto/16 :goto_43

    .line 352
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v12    # "nextIndex":I
    .end local v13    # "noNextView":Z
    .end local v15    # "viewAfterChangingView":Landroid/view/View;
    :cond_e7
    const/4 v13, 0x0

    goto :goto_a6

    .line 355
    .restart local v13    # "noNextView":Z
    :cond_e9
    iget-object v15, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    goto :goto_b2

    .line 374
    .end local v6    # "delayPerElement":J
    .end local v8    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v13    # "noNextView":Z
    .end local v14    # "ownIndex":I
    :cond_ec
    return-wide v10

    .line 336
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_59
        :pswitch_9b
        :pswitch_99
    .end packed-switch
.end method

.method private calculateDelayDark(Lcom/android/systemui/statusbar/stack/StackViewState;)J
    .registers 6
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 380
    const/4 v2, -0x1

    .line 379
    if-ne v1, v2, :cond_14

    .line 381
    const/4 v0, 0x0

    .line 388
    .local v0, "referenceIndex":I
    :goto_8
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    return-wide v2

    .line 382
    .end local v0    # "referenceIndex":I
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 383
    const/4 v2, -0x2

    .line 382
    if-ne v1, v2, :cond_24

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "referenceIndex":I
    goto :goto_8

    .line 386
    .end local v0    # "referenceIndex":I
    :cond_24
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v0, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .restart local v0    # "referenceIndex":I
    goto :goto_8
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackViewState;)J
    .registers 8
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 392
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    int-to-float v0, v1

    .line 393
    .local v0, "index":F
    float-to-double v2, v0

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 394
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method private cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .registers 11
    .param p1, "duration"    # J
    .param p3, "previousAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 833
    move-wide v0, p1

    .line 834
    .local v0, "newDuration":J
    if-eqz p3, :cond_13

    .line 837
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 838
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 837
    sub-long/2addr v2, v4

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 839
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 841
    :cond_13
    return-wide v0
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I
    .registers 8
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 170
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 171
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_2e

    .line 172
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 174
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v3

    .line 175
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-eqz v3, :cond_20

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_23

    .line 171
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 178
    :cond_23
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 179
    iget v4, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    return v4

    .line 182
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_2e
    const/4 v4, -0x1

    return v4
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .registers 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .registers 3
    .param p0, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 1015
    if-nez p0, :cond_4

    .line 1016
    const/4 v1, 0x0

    return v1

    .line 1018
    :cond_4
    const v1, 0x7f120020

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1019
    .local v0, "heightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_14

    .line 1020
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    return v1

    .line 1022
    :cond_14
    const v1, 0x7f120026

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1031
    if-nez p0, :cond_4

    .line 1032
    const/4 v1, 0x0

    return v1

    .line 1034
    :cond_4
    const v1, 0x7f12001c

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1035
    .local v0, "yAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_14

    .line 1036
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    return v1

    .line 1038
    :cond_14
    const v1, 0x7f120022

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    return-object v0

    .line 797
    :cond_11
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    return-object v0
.end method

.method private onAnimationFinished()V
    .registers 4

    .prologue
    .line 845
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 846
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 847
    .local v0, "v":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_b

    .line 849
    .end local v0    # "v":Landroid/view/View;
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 844
    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .registers 16
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, "animationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "event$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 862
    .local v8, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-object v2, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 863
    .local v2, "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v1, :cond_2c

    .line 867
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v12

    .line 869
    .local v12, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-eqz v12, :cond_4

    .line 873
    invoke-virtual {p2, v2, v12}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    .line 874
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    .end local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 876
    :cond_2c
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 877
    const/4 v3, 0x1

    .line 876
    if-ne v1, v3, :cond_74

    .line 878
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3d

    .line 879
    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_4

    .line 886
    :cond_3d
    iget-object v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 885
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v12

    .line 887
    .restart local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 889
    .local v0, "actualHeight":I
    const/high16 v11, -0x40800000    # -1.0f

    .line 890
    .local v11, "translationDirection":F
    if-eqz v12, :cond_69

    .line 893
    iget v1, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 894
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v3

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 893
    sub-float/2addr v1, v3

    .line 894
    const/high16 v3, 0x40000000    # 2.0f

    .line 893
    mul-float/2addr v1, v3

    .line 895
    int-to-float v3, v0

    .line 893
    div-float v11, v1, v3

    .line 896
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 899
    :cond_69
    const-wide/16 v4, 0x1d0

    .line 900
    new-instance v1, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 899
    invoke-virtual {v2, v4, v5, v11, v1}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JFLjava/lang/Runnable;)V

    goto :goto_26

    .line 907
    .end local v0    # "actualHeight":I
    .end local v11    # "translationDirection":F
    .end local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_74
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 908
    const/4 v3, 0x2

    .line 907
    if-ne v1, v3, :cond_a1

    .line 911
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 912
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_26

    .line 913
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 914
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_26

    .line 916
    :cond_a1
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_b0

    .line 918
    iget-object v10, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 919
    .local v10, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v10, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    goto/16 :goto_26

    .line 920
    .end local v10    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_b0
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xe

    if-ne v1, v3, :cond_e1

    .line 923
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v12

    .line 924
    .restart local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {v1, v12}, Lcom/android/systemui/statusbar/stack/StackViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 925
    iget-boolean v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v1, :cond_d6

    .line 926
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 930
    :goto_ca
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {p2, v2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    goto/16 :goto_26

    .line 928
    :cond_d6
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    iget v3, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    goto :goto_ca

    .line 932
    .end local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_e1
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xf

    if-eq v1, v3, :cond_ed

    .line 934
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_26

    .line 936
    :cond_ed
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_26

    .line 939
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 940
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackViewState;->initFrom(Landroid/view/View;)V

    .line 941
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 944
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 945
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 946
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_12d

    .line 948
    const/16 v1, 0x78

    .line 946
    :goto_11f
    int-to-long v4, v1

    .line 950
    const-wide/16 v6, 0xe6

    move-object v1, p0

    .line 945
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 951
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    .line 949
    :cond_12d
    const/4 v1, 0x0

    goto :goto_11f

    .line 860
    .end local v2    # "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v8    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_12f
    return-void
.end method

.method public static removeFromOverlay(Landroid/view/View;)V
    .registers 2
    .param p0, "changingView"    # Landroid/view/View;

    .prologue
    .line 959
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 960
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_b

    .line 961
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 958
    :cond_b
    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
    .registers 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 595
    const v14, 0x7f12002a

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 596
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f120024

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 597
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 598
    .local v5, "newEndValue":F
    if-eqz v10, :cond_25

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_25

    .line 599
    return-void

    .line 601
    :cond_25
    const v14, 0x7f12001e

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 602
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_8b

    .line 604
    if-eqz v9, :cond_7b

    .line 607
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 608
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 609
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 610
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 611
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f12002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 612
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f120024

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 613
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 614
    return-void

    .line 617
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_7b
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 618
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_8b

    .line 619
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :cond_8b
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 624
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 626
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 628
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 629
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;F)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 654
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 655
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 656
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_db

    if-eqz v9, :cond_d6

    .line 657
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_db

    .line 658
    :cond_d6
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 660
    :cond_db
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 662
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 663
    const v14, 0x7f12001e

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f12002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 665
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f120024

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method private startAnimator(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 782
    return-void
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V
    .registers 22
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 458
    const v12, 0x7f12002c

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 459
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f120026

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 460
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 461
    .local v3, "newEndValue":I
    if-eqz v8, :cond_23

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_23

    .line 462
    return-void

    .line 464
    :cond_23
    const v12, 0x7f120020

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 465
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v12, :cond_7c

    .line 467
    if-eqz v7, :cond_75

    .line 470
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 471
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 472
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 473
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 474
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f12002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 475
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f120026

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 476
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 477
    return-void

    .line 480
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_75
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 481
    return-void

    .line 485
    :cond_7c
    const/4 v12, 0x2

    new-array v12, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 486
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 493
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 494
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 495
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 496
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_bb

    if-eqz v7, :cond_b6

    .line 497
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_bb

    .line 498
    :cond_b6
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 500
    :cond_bb
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 527
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 528
    const v12, 0x7f120020

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f12002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 530
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f120026

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 531
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    .line 457
    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V
    .registers 22
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 536
    const v12, 0x7f12002b

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 537
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f120025

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 538
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 539
    .local v3, "newEndValue":I
    if-eqz v8, :cond_23

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_23

    .line 540
    return-void

    .line 542
    :cond_23
    const v12, 0x7f12001f

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 543
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v12, :cond_7b

    .line 545
    if-eqz v7, :cond_75

    .line 548
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 549
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 550
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 551
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 552
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f12002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 553
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f120025

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 554
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 555
    return-void

    .line 558
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_75
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 559
    return-void

    .line 563
    :cond_7b
    const/4 v12, 0x2

    new-array v12, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 564
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 572
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 573
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_ba

    if-eqz v7, :cond_b5

    .line 574
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_ba

    .line 575
    :cond_b5
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 577
    :cond_ba
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 579
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 587
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 588
    const v12, 0x7f12001f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f12002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 590
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f120025

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 535
    return-void
.end method

.method private startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V
    .registers 22
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 399
    const v12, 0x7f12002d

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    .line 400
    .local v9, "previousStartValue":Ljava/lang/Float;
    const v12, 0x7f120027

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    .line 401
    .local v8, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 402
    .local v3, "newEndValue":F
    if-eqz v8, :cond_25

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v3

    if-nez v12, :cond_25

    .line 403
    return-void

    .line 405
    :cond_25
    const v12, 0x7f120021

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 406
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    if-nez v12, :cond_7d

    .line 408
    if-eqz v7, :cond_77

    .line 411
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 412
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v12

    sub-float v10, v3, v12

    .line 413
    .local v10, "relativeDiff":F
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float v6, v12, v10

    .line 414
    .local v6, "newStartValue":F
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 415
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x7f12002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 416
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x7f120027

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 417
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 418
    return-void

    .line 421
    .end local v6    # "newStartValue":F
    .end local v10    # "relativeDiff":F
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_77
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 422
    return-void

    .line 426
    :cond_7d
    const/4 v12, 0x2

    new-array v12, v12, [F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 427
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 433
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 435
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 436
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_bc

    if-eqz v7, :cond_b7

    .line 437
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_bc

    .line 438
    :cond_b7
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 440
    :cond_bc
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 451
    const v12, 0x7f120021

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x7f12002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 453
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x7f120027

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 398
    return-void
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
    .registers 28
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 723
    const v16, 0x7f120028

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    .line 724
    .local v13, "previousStartValue":Ljava/lang/Float;
    const v16, 0x7f120022

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 725
    .local v12, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 726
    .local v7, "newEndValue":F
    if-eqz v12, :cond_29

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v7

    if-nez v16, :cond_29

    .line 727
    return-void

    .line 729
    :cond_29
    const v16, 0x7f12001c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ObjectAnimator;

    .line 730
    .local v11, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    move/from16 v16, v0

    if-nez v16, :cond_9d

    .line 732
    if-eqz v11, :cond_97

    .line 735
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 736
    .local v15, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v14, v7, v16

    .line 737
    .local v14, "relativeDiff":F
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v16

    add-float v10, v16, v14

    .line 738
    .local v10, "newStartValue":F
    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 739
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f120028

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 740
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f120022

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 741
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 742
    return-void

    .line 745
    .end local v10    # "newStartValue":F
    .end local v14    # "relativeDiff":F
    .end local v15    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_97
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 746
    return-void

    .line 750
    :cond_9d
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v18

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v7, v17, v18

    .line 750
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 752
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_151

    .line 753
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 754
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    :goto_d1
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 755
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v8

    .line 756
    .local v8, "newDuration":J
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 757
    const-wide/16 v16, 0x0

    cmp-long v16, p5, v16

    if-lez v16, :cond_f6

    if-eqz v11, :cond_f1

    .line 758
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_f6

    .line 759
    :cond_f1
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 761
    :cond_f6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 764
    .local v6, "isHeadsUpDisappear":Z
    new-instance v16, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v6}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 776
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 777
    const v16, 0x7f12001c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 778
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f120028

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 779
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f120022

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 722
    return-void

    .line 753
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v6    # "isHeadsUpDisappear":Z
    .end local v8    # "newDuration":J
    :cond_151
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto/16 :goto_d1
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
    .registers 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 670
    const v14, 0x7f120029

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 671
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f120023

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 672
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 673
    .local v5, "newEndValue":F
    if-eqz v10, :cond_25

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_25

    .line 674
    return-void

    .line 676
    :cond_25
    const v14, 0x7f12001d

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 677
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v14, :cond_80

    .line 679
    if-eqz v9, :cond_7b

    .line 682
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 683
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 684
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 685
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 686
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f120029

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 687
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f120023

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 688
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 689
    return-void

    .line 692
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_7b
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 696
    :cond_80
    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 697
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 696
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 698
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 699
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 700
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 701
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_bd

    if-eqz v9, :cond_b8

    .line 702
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_bd

    .line 703
    :cond_b8
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 705
    :cond_bd
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 707
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 715
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 716
    const v14, 0x7f12001d

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f120029

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 718
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f120023

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 669
    return-void
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .registers 8
    .param p1, "targetAmount"    # F
    .param p2, "onTop"    # Z
    .param p3, "isRubberbanded"    # Z

    .prologue
    .line 967
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 968
    .local v1, "startOverScrollAmount":F
    cmpl-float v2, p1, v1

    if-nez v2, :cond_b

    .line 969
    return-void

    .line 971
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 972
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 973
    const/4 v3, 0x1

    aput p1, v2, v3

    .line 972
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 974
    .local v0, "overScrollAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 975
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 984
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 985
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$13;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$13;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 995
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 996
    if-eqz p2, :cond_3d

    .line 997
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 966
    :goto_3c
    return-void

    .line 999
    :cond_3d
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_3c
.end method

.method public cancelOverScrollAnimators(Z)V
    .registers 3
    .param p1, "onTop"    # Z

    .prologue
    .line 1004
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1005
    .local v0, "currentAnimator":Landroid/animation/ValueAnimator;
    :goto_4
    if-eqz v0, :cond_9

    .line 1006
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1003
    :cond_9
    return-void

    .line 1004
    .end local v0    # "currentAnimator":Landroid/animation/ValueAnimator;
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_4
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public setHeadsUpAppearHeightBottom(I)V
    .registers 2
    .param p1, "headsUpAppearHeightBottom"    # I

    .prologue
    .line 1043
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    .line 1042
    return-void
.end method

.method public setShadeExpanded(Z)V
    .registers 2
    .param p1, "shadeExpanded"    # Z

    .prologue
    .line 1047
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    .line 1046
    return-void
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V
    .registers 14
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "additionalDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "mAnimationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 118
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 119
    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 121
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    .line 122
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v0, :cond_4a

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 125
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v3

    .line 126
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-eqz v3, :cond_39

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3c

    .line 122
    :cond_39
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 127
    :cond_3c
    invoke-direct {p0, v2, v3, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z

    move-result v1

    .line 126
    if-nez v1, :cond_39

    .line 131
    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startStackAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;IJ)V

    goto :goto_39

    .line 133
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_4a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_53

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    .line 137
    :cond_53
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 113
    return-void
.end method

.method public startStackAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;IJ)V
    .registers 36
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4, "i"    # I
    .param p5, "fixedDelay"    # J

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    .line 199
    .local v26, "wasAdded":Z
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 200
    .local v10, "duration":J
    if-eqz v26, :cond_4b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v6, :cond_4b

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 202
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    move/from16 v23, v0

    .line 203
    .local v23, "longerDurationFactor":F
    move/from16 v0, v23

    float-to-double v6, v0

    const-wide v14, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v23, v0

    .line 205
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v6, v6, v23

    float-to-long v6, v6

    .line 204
    const-wide/16 v14, 0x202

    add-long v10, v14, v6

    .line 207
    .end local v23    # "longerDurationFactor":F
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_14e

    const/16 v27, 0x1

    .line 208
    .local v27, "yTranslationChanging":Z
    :goto_59
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_152

    const/16 v28, 0x1

    .line 209
    .local v28, "zTranslationChanging":Z
    :goto_67
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_156

    const/4 v4, 0x1

    .line 210
    .local v4, "alphaChanging":Z
    :goto_74
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v7

    if-eq v6, v7, :cond_159

    const/16 v21, 0x1

    .line 211
    .local v21, "heightChanging":Z
    :goto_80
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_15d

    const/16 v24, 0x1

    .line 212
    .local v24, "shadowAlphaChanging":Z
    :goto_8e
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->isDark()Z

    move-result v7

    if-eq v6, v7, :cond_161

    const/4 v12, 0x1

    .line 213
    .local v12, "darkChanging":Z
    :goto_99
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v7

    if-eq v6, v7, :cond_164

    const/16 v25, 0x1

    .line 214
    .local v25, "topInsetChanging":Z
    :goto_a5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    move/from16 v20, v0

    .line 215
    .local v20, "hasDelays":Z
    if-nez v27, :cond_168

    if-nez v28, :cond_168

    if-nez v4, :cond_168

    if-nez v21, :cond_168

    if-nez v25, :cond_168

    if-nez v12, :cond_168

    .line 216
    move/from16 v22, v24

    .line 217
    :goto_bb
    const-wide/16 v8, 0x0

    .line 218
    .local v8, "delay":J
    const-wide/16 v6, -0x1

    cmp-long v6, p5, v6

    if-eqz v6, :cond_16c

    .line 219
    move-wide/from16 v8, p5

    :cond_c5
    :goto_c5
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 224
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 227
    if-eqz v21, :cond_184

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    .line 228
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V

    .line 234
    :goto_dd
    if-eqz v24, :cond_190

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    .line 235
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V

    .line 241
    :goto_ec
    if-eqz v25, :cond_19c

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    .line 242
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V

    .line 248
    :goto_fb
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 251
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 254
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 258
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 260
    if-eqz v26, :cond_13c

    .line 261
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJ)V

    .line 263
    :cond_13c
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_14d

    move-object/from16 v5, p1

    .line 264
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v6, p3

    move-object/from16 v7, p0

    .line 265
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackStateAnimator;JJ)V

    .line 197
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_14d
    return-void

    .line 207
    .end local v4    # "alphaChanging":Z
    .end local v8    # "delay":J
    .end local v12    # "darkChanging":Z
    .end local v20    # "hasDelays":Z
    .end local v21    # "heightChanging":Z
    .end local v24    # "shadowAlphaChanging":Z
    .end local v25    # "topInsetChanging":Z
    .end local v27    # "yTranslationChanging":Z
    .end local v28    # "zTranslationChanging":Z
    :cond_14e
    const/16 v27, 0x0

    .restart local v27    # "yTranslationChanging":Z
    goto/16 :goto_59

    .line 208
    :cond_152
    const/16 v28, 0x0

    .restart local v28    # "zTranslationChanging":Z
    goto/16 :goto_67

    .line 209
    :cond_156
    const/4 v4, 0x0

    .restart local v4    # "alphaChanging":Z
    goto/16 :goto_74

    .line 210
    :cond_159
    const/16 v21, 0x0

    .restart local v21    # "heightChanging":Z
    goto/16 :goto_80

    .line 211
    :cond_15d
    const/16 v24, 0x0

    .restart local v24    # "shadowAlphaChanging":Z
    goto/16 :goto_8e

    .line 212
    :cond_161
    const/4 v12, 0x0

    .restart local v12    # "darkChanging":Z
    goto/16 :goto_99

    .line 213
    :cond_164
    const/16 v25, 0x0

    .restart local v25    # "topInsetChanging":Z
    goto/16 :goto_a5

    .line 215
    .restart local v20    # "hasDelays":Z
    :cond_168
    const/16 v22, 0x1

    .local v22, "isDelayRelevant":Z
    goto/16 :goto_bb

    .line 220
    .end local v22    # "isDelayRelevant":Z
    .restart local v8    # "delay":J
    :cond_16c
    if-eqz v20, :cond_170

    if-nez v22, :cond_172

    :cond_170
    if-eqz v26, :cond_c5

    .line 221
    :cond_172
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J

    move-result-wide v14

    add-long v8, v6, v14

    goto/16 :goto_c5

    .line 230
    :cond_184
    const v6, 0x7f120020

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto/16 :goto_dd

    .line 237
    :cond_190
    const v6, 0x7f120021

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto/16 :goto_ec

    .line 244
    :cond_19c
    const v6, 0x7f12001f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto/16 :goto_fb
.end method

.method public startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7b

    const/4 v10, 0x1

    .line 279
    .local v10, "wasVisible":Z
    :goto_7
    iget v0, p2, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 280
    .local v0, "alpha":F
    if-nez v10, :cond_1d

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1d

    .line 281
    :cond_19
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    if-eqz v1, :cond_7d

    .line 284
    :cond_1d
    :goto_1d
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, p2, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_86

    const/4 v11, 0x1

    .line 285
    .local v11, "yTranslationChanging":Z
    :goto_28
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iget v2, p2, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_88

    const/4 v12, 0x1

    .line 286
    .local v12, "zTranslationChanging":Z
    :goto_33
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v9

    .line 287
    .local v9, "childAlpha":F
    iget v1, p2, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_8a

    const/4 v8, 0x1

    .line 288
    .local v8, "alphaChanging":Z
    :goto_3e
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_4d

    move-object v1, p1

    .line 290
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v1

    if-eqz v1, :cond_8c

    const/4 v1, 0x0

    :goto_4c
    and-int/2addr v8, v1

    .line 294
    .end local v8    # "alphaChanging":Z
    :cond_4d
    if-eqz v11, :cond_8e

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p3

    .line 295
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 301
    :goto_59
    if-eqz v12, :cond_95

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p3

    .line 302
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 308
    :goto_65
    if-eqz v8, :cond_9c

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p3

    .line 309
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 277
    :goto_7a
    return-void

    .line 278
    .end local v0    # "alpha":F
    .end local v9    # "childAlpha":F
    .end local v10    # "wasVisible":Z
    .end local v11    # "yTranslationChanging":Z
    .end local v12    # "zTranslationChanging":Z
    :cond_7b
    const/4 v10, 0x0

    .restart local v10    # "wasVisible":Z
    goto :goto_7

    .line 281
    .restart local v0    # "alpha":F
    :cond_7d
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-nez v1, :cond_1d

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 284
    :cond_86
    const/4 v11, 0x0

    .restart local v11    # "yTranslationChanging":Z
    goto :goto_28

    .line 285
    :cond_88
    const/4 v12, 0x0

    .restart local v12    # "zTranslationChanging":Z
    goto :goto_33

    .line 287
    .restart local v9    # "childAlpha":F
    :cond_8a
    const/4 v8, 0x0

    .restart local v8    # "alphaChanging":Z
    goto :goto_3e

    .line 290
    :cond_8c
    const/4 v1, 0x1

    goto :goto_4c

    .line 297
    .end local v8    # "alphaChanging":Z
    :cond_8e
    const v1, 0x7f12001c

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto :goto_59

    .line 304
    :cond_95
    const v1, 0x7f12001d

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto :goto_65

    .line 311
    :cond_9c
    const v1, 0x7f12001e

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto :goto_7a
.end method
