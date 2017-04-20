.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# static fields
.field private static final OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

.field mContext:Landroid/content/Context;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mDownScrollP:F

.field mDownX:I

.field mDownY:I

.field private mFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field mInterceptedBySwipeHelper:Z

.field mIsScrolling:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLastY:I

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field mOverscrollSize:I

.field mScrollFlingAnimator:Landroid/animation/ValueAnimator;

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field private final mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

.field mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field private mSwipeHelperAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetStackScroll:F

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWindowTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .prologue
    const v4, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 69
    .local v0, "OVERSCROLL_PATH":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e333333    # 0.175f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 71
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sv"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "scroller"    # Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 97
    new-instance v2, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 103
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    .line 104
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 114
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 116
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 120
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    .line 121
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 122
    const v2, 0x7f10024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    .line 123
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 150
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/SwipeHelper;->setDisableHardwareLayers(Z)V

    .line 111
    return-void
.end method

.method private findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    .line 665
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 666
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 667
    .local v1, "taskCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_35

    .line 668
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 669
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_32

    .line 670
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;->isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 671
    return-object v3

    .line 667
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 675
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_35
    return-object v7
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 36
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    .line 220
    const/4 v2, 0x0

    return v2

    .line 223
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v0, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-object/from16 v18, v0

    .line 224
    .local v18, "layoutAlgorithm":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 225
    .local v10, "action":I
    and-int/lit16 v2, v10, 0xff

    packed-switch v2, :pswitch_data_372

    .line 367
    :goto_21
    :pswitch_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return v2

    .line 228
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 237
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_21

    .line 248
    :pswitch_95
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    .line 249
    .local v16, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 250
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 251
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 252
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_21

    .line 259
    .end local v16    # "index":I
    :pswitch_e5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 260
    .local v11, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    .line 261
    .local v5, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v31, v0

    .line 262
    .local v31, "x":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v2, :cond_185

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v33

    .line 264
    .local v33, "yDiff":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int v2, v31, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v32

    .line 265
    .local v32, "xDiff":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v2, v3, :cond_185

    move/from16 v0, v33

    move/from16 v1, v32

    if-le v0, v1, :cond_185

    .line 266
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v29

    .line 268
    .local v29, "stackScroll":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v30

    .line 269
    .local v30, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "i":I
    :goto_14a
    if-ltz v15, :cond_162

    .line 270
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V

    .line 269
    add-int/lit8 v15, v15, -0x1

    goto :goto_14a

    .line 273
    :cond_162
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    .line 277
    .local v26, "parent":Landroid/view/ViewParent;
    if-eqz v26, :cond_178

    .line 278
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 281
    :cond_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x11f

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 284
    .end local v15    # "i":I
    .end local v26    # "parent":Landroid/view/ViewParent;
    .end local v29    # "stackScroll":F
    .end local v30    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v32    # "xDiff":I
    .end local v33    # "yDiff":I
    :cond_185
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_209

    .line 287
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(II)F

    move-result v14

    .line 290
    .local v14, "deltaP":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v21, v0

    .line 291
    .local v21, "minScrollP":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    .line 292
    .local v19, "maxScrollP":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    add-float v13, v2, v14

    .line 293
    .local v13, "curScrollP":F
    cmpg-float v2, v13, v21

    if-ltz v2, :cond_1af

    cmpl-float v2, v13, v19

    if-lez v2, :cond_1d6

    .line 294
    :cond_1af
    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v12

    .line 295
    .local v12, "clampedScrollP":F
    sub-float v24, v13, v12

    .line 296
    .local v24, "overscrollP":F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x40155555

    div-float v25, v2, v3

    .line 297
    .local v25, "overscrollX":F
    sget-object v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v17

    .line 298
    .local v17, "interpX":F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 299
    const v3, 0x40155555

    mul-float v3, v3, v17

    .line 298
    mul-float/2addr v2, v3

    add-float v13, v12, v2

    .line 301
    .end local v12    # "clampedScrollP":F
    .end local v17    # "interpX":F
    .end local v24    # "overscrollP":F
    .end local v25    # "overscrollX":F
    :cond_1d6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 302
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    sub-float v7, v13, v7

    .line 301
    invoke-virtual {v3, v4, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    sub-int v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->updateY(I)V

    .line 304
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 307
    .end local v13    # "curScrollP":F
    .end local v14    # "deltaP":F
    .end local v19    # "maxScrollP":F
    .end local v21    # "minScrollP":F
    :cond_209
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_21

    .line 312
    .end local v5    # "y":I
    .end local v11    # "activePointerIndex":I
    .end local v31    # "x":I
    :pswitch_218
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    .line 313
    .local v28, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    .line 314
    .local v27, "pointerId":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v0, v27

    if-ne v0, v2, :cond_26a

    .line 316
    if-nez v28, :cond_275

    const/16 v23, 0x1

    .line 317
    .local v23, "newPointerIndex":I
    :goto_230
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 318
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 319
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 320
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 323
    .end local v23    # "newPointerIndex":I
    :cond_26a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_21

    .line 316
    :cond_275
    const/16 v23, 0x0

    goto :goto_230

    .line 327
    .end local v27    # "pointerId":I
    .end local v28    # "pointerIndex":I
    :pswitch_278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 329
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 330
    .restart local v11    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    .line 331
    .restart local v5    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v6, v2

    .line 332
    .local v6, "velocity":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_34c

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_2e5

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 347
    :cond_2c4
    :goto_2c4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-nez v2, :cond_2d6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v2

    if-eqz v2, :cond_33c

    .line 355
    :cond_2d6
    :goto_2d6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_21

    .line 335
    :cond_2e5
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    if-le v2, v3, :cond_2c4

    .line 336
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 337
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 336
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v22, v0

    .line 338
    .local v22, "minY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 339
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 338
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    .line 340
    .local v20, "maxY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move/from16 v0, v22

    float-to-int v7, v0

    move/from16 v0, v20

    float-to-int v8, v0

    .line 341
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    .line 340
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->fling(FIIIIII)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    goto :goto_2c4

    .line 348
    .end local v20    # "maxY":F
    .end local v22    # "minY":F
    :cond_33c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_2d6

    .line 350
    :cond_34c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-nez v2, :cond_2d6

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->maybeHideRecentsFromBackgroundTap(II)V

    goto/16 :goto_2d6

    .line 361
    .end local v5    # "y":I
    .end local v6    # "velocity":I
    .end local v11    # "activePointerIndex":I
    :pswitch_363
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 362
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_21

    .line 225
    :pswitch_data_372
    .packed-switch 0x0
        :pswitch_26
        :pswitch_278
        :pswitch_e5
        :pswitch_363
        :pswitch_21
        :pswitch_95
        :pswitch_218
    .end packed-switch
.end method

.method private isSwipingEnabled()Z
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private updateTaskViewTransforms(F)V
    .registers 14
    .param p1, "dismissFraction"    # F

    .prologue
    .line 627
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    .line 628
    .local v5, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 629
    .local v4, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v4, :cond_82

    .line 630
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 631
    .local v7, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 633
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 629
    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 637
    :cond_22
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 638
    .local v3, "taskIndex":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1f

    .line 644
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 645
    .local v0, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 647
    .local v6, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 649
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    sget-object v9, Lcom/android/systemui/recents/misc/Utilities;->RECTF_EVALUATOR:Lcom/android/systemui/recents/misc/RectFEvaluator;

    .line 650
    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v11, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 649
    invoke-virtual {v9, p1, v10, v11}, Lcom/android/systemui/recents/misc/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 651
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 652
    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 651
    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 653
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 654
    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    .line 653
    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 656
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 657
    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    .line 656
    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 659
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-object v10, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1f

    .line 626
    .end local v0    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "taskIndex":I
    .end local v6    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_82
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    move-object v1, p1

    .line 450
    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 451
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 452
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 453
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    const/4 v2, 0x1

    .line 452
    :cond_1e
    return v2
.end method

.method public cancelNonDismissTaskAnimations()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 194
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 195
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 197
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_41

    .line 199
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 201
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 198
    :goto_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 205
    :cond_32
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 206
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V

    goto :goto_2f

    .line 208
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_41
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 210
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 212
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 214
    .end local v0    # "i":I
    .end local v1    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_5a
    iput-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 193
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 441
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_18

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 442
    return-object v0

    .line 444
    :cond_18
    return-object v3
.end method

.method public getFalsingThresholdFactor()F
    .registers 2

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public getScaledDismissSize()F
    .registers 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 156
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 154
    :goto_a
    return-void

    .line 158
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method public isAntiFalsingNeeded()Z
    .registers 2

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method maybeHideRecentsFromBackgroundTap(II)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 374
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 375
    .local v0, "dx":I
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 376
    .local v1, "dy":I
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-gt v0, v5, :cond_16

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v1, v5, :cond_17

    .line 377
    :cond_16
    return-void

    .line 382
    :cond_17
    move v3, p1

    .line 383
    .local v3, "shiftedX":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    if-le p1, v5, :cond_34

    .line 384
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    sub-int v3, p1, v5

    .line 388
    :goto_2d
    invoke-direct {p0, v3, p2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 389
    return-void

    .line 386
    :cond_34
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    add-int v3, p1, v5

    goto :goto_2d

    .line 393
    :cond_39
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-le p1, v5, :cond_4e

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge p1, v5, :cond_4e

    .line 394
    return-void

    .line 398
    :cond_4e
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 399
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 400
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    .line 401
    .local v2, "freeformRect":Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-gt v5, p2, :cond_6f

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v5, :cond_6f

    .line 402
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->launchFreeformTasks()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 404
    return-void

    .line 411
    .end local v2    # "freeformRect":Landroid/graphics/Rect;
    :cond_6f
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 371
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .registers 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object/from16 v16, p1

    .line 467
    check-cast v16, Lcom/android/systemui/recents/views/TaskView;

    .line 470
    .local v16, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 472
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 475
    .local v11, "parent":Landroid/view/ViewParent;
    if-eqz v11, :cond_1e

    .line 476
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 480
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 484
    new-instance v9, Landroid/util/MutableBoolean;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 485
    .local v9, "isFrontMostTask":Landroid/util/MutableBoolean;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v9}, Lcom/android/systemui/recents/views/TaskStackView;->findAnchorTask(Ljava/util/List;Landroid/util/MutableBoolean;)Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 486
    .local v7, "anchorTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v10

    .line 487
    .local v10, "layoutAlgorithm":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v15

    .line 488
    .local v15, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    if-eqz v7, :cond_b4

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 494
    const/4 v12, 0x0

    .line 495
    .local v12, "prevAnchorTaskScroll":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b5

    const/4 v13, 0x1

    .line 496
    .local v13, "pullStackForward":Z
    :goto_7d
    if-eqz v13, :cond_83

    .line 497
    invoke-virtual {v10, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v12

    .line 501
    :cond_83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 503
    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    .line 504
    .local v2, "newStackScroll":F
    iget-boolean v1, v9, Landroid/util/MutableBoolean;->value:Z

    if-eqz v1, :cond_b7

    .line 506
    invoke-virtual {v15, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v2

    .line 522
    :cond_97
    :goto_97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 525
    const/4 v3, 0x0

    .line 526
    const/4 v5, 0x1

    .line 525
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 529
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    .line 466
    .end local v2    # "newStackScroll":F
    .end local v12    # "prevAnchorTaskScroll":F
    .end local v13    # "pullStackForward":Z
    :cond_b4
    return-void

    .line 495
    .restart local v12    # "prevAnchorTaskScroll":F
    :cond_b5
    const/4 v13, 0x0

    goto :goto_7d

    .line 507
    .restart local v2    # "newStackScroll":F
    .restart local v13    # "pullStackForward":Z
    :cond_b7
    if-eqz v13, :cond_97

    .line 510
    invoke-virtual {v10, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskIgnoreOverrides(Lcom/android/systemui/recents/model/Task;)F

    move-result v8

    .line 511
    .local v8, "anchorTaskScroll":F
    sub-float v14, v8, v12

    .line 512
    .local v14, "stackScrollOffset":F
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_c9

    .line 515
    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v14, v1

    .line 517
    :cond_c9
    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    add-float/2addr v1, v14

    invoke-virtual {v15, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v2

    goto :goto_97
.end method

.method public onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V
    .registers 4
    .param p1, "v"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 461
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginDrag(Landroid/view/View;)V

    .line 459
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object v0, p1

    .line 557
    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 560
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 562
    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 565
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 566
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 567
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 568
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 567
    const/16 v7, 0xc8

    invoke-direct {v1, v7, v6}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 565
    :goto_26
    invoke-direct {v4, v5, v0, v1}, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/AnimationProps;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 572
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 574
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 576
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 577
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 579
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_57
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "overview_task_dismissed_source"

    invoke-static {v1, v2, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 556
    return-void

    :cond_62
    move-object v1, v2

    .line 569
    goto :goto_26
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targetLeft"    # F

    .prologue
    const/4 v1, 0x1

    move-object v0, p1

    .line 592
    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 595
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 597
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 602
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 603
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 604
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 605
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 609
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    .line 417
    const/4 v3, 0x2

    .line 416
    if-ne v2, v3, :cond_14

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 419
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_2c

    .line 433
    .end local v0    # "action":I
    :cond_14
    return v4

    .line 422
    .restart local v0    # "action":I
    :pswitch_15
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 423
    .local v1, "vScroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_26

    .line 424
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v5, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 430
    :goto_25
    return v5

    .line 427
    :cond_26
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v4, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    goto :goto_25

    .line 419
    :pswitch_data_2c
    .packed-switch 0x8
        :pswitch_15
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->isSwipingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_c
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_16

    .line 173
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_14
    const/4 v0, 0x0

    goto :goto_c

    .line 176
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 183
    return v1

    .line 186
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 187
    return v1
.end method

.method recycleVelocityTracker()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 164
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 161
    :cond_c
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eq v0, p1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 547
    :cond_c
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 546
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateTaskViewTransforms(F)V

    .line 549
    :cond_15
    const/4 v0, 0x1

    return v0
.end method
