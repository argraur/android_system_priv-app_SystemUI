.class public Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private mDraggedFarEnough:Z

.field private mDraggingDown:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mHost:Landroid/view/View;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLastHeight:F

.field private mMinDragDistance:I

.field private mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

.field private final mTemp2:[I

.field private mTouchSlop:F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p4, "dragDownCallback"    # Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    const v1, 0x7f1001b7

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    .line 63
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    .line 64
    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    .line 67
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 60
    return-void
.end method

.method private cancelExpansion()V
    .registers 5

    .prologue
    .line 201
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 202
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DragDownHelper$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 200
    return-void
.end method

.method private cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V
    .registers 7
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 185
    return-void

    .line 187
    :cond_11
    const-string/jumbo v1, "actualHeight"

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 188
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    aput v3, v2, v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 187
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 189
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 182
    return-void
.end method

.method private captureStartingChild(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v0, :cond_16

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_16

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 154
    :cond_16
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method private handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V
    .registers 9
    .param p1, "heightDelta"    # F
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 164
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_6

    .line 165
    const/4 p1, 0x0

    .line 167
    :cond_6
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->isContentExpandable()Z

    move-result v0

    .line 168
    .local v0, "expandable":Z
    if-eqz v0, :cond_3e

    .line 169
    const/high16 v3, 0x3f000000    # 0.5f

    .line 171
    .local v3, "rubberbandFactor":F
    :goto_e
    mul-float v2, p1, v3

    .line 172
    .local v2, "rubberband":F
    if-eqz v0, :cond_33

    .line 173
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_33

    .line 175
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 176
    .local v1, "overshoot":F
    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v4

    .line 177
    sub-float/2addr v2, v1

    .line 179
    .end local v1    # "overshoot":F
    :cond_33
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(I)V

    .line 163
    return-void

    .line 170
    .end local v2    # "rubberband":F
    .end local v3    # "rubberbandFactor":F
    :cond_3e
    const v3, 0x3e19999a    # 0.15f

    goto :goto_e
.end method

.method private isFalseTouch()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    return v0
.end method

.method private stopDragging()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStopDraggingDown()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_17

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 220
    :goto_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDragDownReset()V

    .line 213
    return-void

    .line 218
    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V

    goto :goto_e
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 73
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 75
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_4c

    .line 97
    :cond_11
    :goto_11
    :pswitch_11
    return v4

    .line 77
    :pswitch_12
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 79
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 80
    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    .line 81
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    goto :goto_11

    .line 85
    :pswitch_1e
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v0, v2, v3

    .line 86
    .local v0, "h":F
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_11

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_11

    .line 87
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStartDraggingDown()V

    .line 88
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 89
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 90
    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    .line 91
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onTouchSlopExceeded()V

    .line 93
    return v5

    .line 75
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_1e
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 102
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    if-nez v2, :cond_7

    .line 103
    return v5

    .line 105
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 106
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 108
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_8a

    .line 147
    :goto_16
    return v5

    .line 110
    :pswitch_17
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    .line 111
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 112
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v2, :cond_44

    .line 113
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;->handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V

    .line 117
    :goto_2f
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4c

    .line 118
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-nez v2, :cond_43

    .line 119
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 120
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onCrossedThreshold(Z)V

    .line 128
    :cond_43
    :goto_43
    return v4

    .line 115
    :cond_44
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    goto :goto_2f

    .line 123
    :cond_4c
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz v2, :cond_43

    .line 124
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v2, v5}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onCrossedThreshold(Z)V

    goto :goto_43

    .line 130
    :pswitch_58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->isFalseTouch()Z

    move-result v2

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 131
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v4, v1, v4

    float-to-int v4, v4

    .line 130
    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDraggedDown(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v2, :cond_7a

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    .line 137
    :goto_77
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    goto :goto_16

    .line 135
    :cond_7a
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v2, v3, v5}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    goto :goto_77

    .line 139
    :cond_82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    .line 140
    return v5

    .line 144
    :pswitch_86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    .line 145
    return v5

    .line 108
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_58
        :pswitch_17
        :pswitch_86
    .end packed-switch
.end method
