.class public Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavigationBarGestureHelper.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockWindowEnabled:Z

.field private mDockWindowTouchSlopExceeded:Z

.field private mDownOnRecents:Z

.field private mDragMode:I

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private final mMinFlingVelocity:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mRecentsComponent:Lcom/android/systemui/RecentsComponent;

.field private final mScrollTouchSlop:I

.field private final mTaskSwitcherDetector:Landroid/view/GestureDetector;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 85
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 86
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f10014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mMinFlingVelocity:I

    .line 88
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    .line 89
    invoke-static {p1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "overview_nav_bar_gesture"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private calculateDragMode()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 265
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 266
    return v1

    .line 263
    :cond_22
    return v1

    .line 268
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private handleDockWindowEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 163
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 153
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionDownEvent(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 156
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z

    goto :goto_7

    .line 160
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 151
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method private handleDragActionDownEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 169
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_4f

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "recentsButton":Landroid/view/View;
    if-eqz v0, :cond_50

    .line 176
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v2, v3, :cond_4d

    .line 177
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt v2, v3, :cond_4d

    .line 178
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v2, v3, :cond_4d

    .line 179
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt v2, v3, :cond_4d

    const/4 v1, 0x1

    .line 176
    :cond_4d
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    .line 166
    .end local v0    # "recentsButton":Landroid/view/View;
    :cond_4f
    :goto_4f
    return-void

    .line 181
    .restart local v0    # "recentsButton":Landroid/view/View;
    :cond_50
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    goto :goto_4f
.end method

.method private handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 187
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    .line 189
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    .line 190
    .local v9, "y":I
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 191
    .local v8, "xDiff":I
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 192
    .local v10, "yDiff":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v11, :cond_27

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    if-nez v11, :cond_29

    .line 193
    :cond_27
    const/4 v11, 0x0

    return v11

    .line 195
    :cond_29
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    if-nez v11, :cond_c7

    .line 196
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v11, :cond_9f

    .line 197
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v10, v11, :cond_9d

    if-le v10, v8, :cond_9d

    const/4 v6, 0x1

    .line 199
    .local v6, "touchSlopExceeded":Z
    :goto_38
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    if-eqz v11, :cond_f0

    if-eqz v6, :cond_f0

    .line 200
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_f0

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "initialBounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->calculateDragMode()I

    move-result v2

    .line 203
    .local v2, "dragMode":I
    const/4 v0, 0x0

    .line 204
    .local v0, "createMode":I
    const/4 v11, 0x1

    if-ne v2, v11, :cond_b1

    .line 205
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "initialBounds":Landroid/graphics/Rect;
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 206
    .local v3, "initialBounds":Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v13

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v11, :cond_a9

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v11, v11

    .line 209
    :goto_6c
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v12}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-eqz v12, :cond_af

    .line 210
    const/4 v12, 0x2

    .line 206
    :goto_79
    invoke-virtual {v13, v11, v12, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 217
    .end local v3    # "initialBounds":Landroid/graphics/Rect;
    :cond_7c
    :goto_7c
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    .line 218
    const/16 v12, 0x110

    .line 217
    invoke-interface {v11, v2, v0, v3, v12}, Lcom/android/systemui/RecentsComponent;->dockTopTask(IILandroid/graphics/Rect;I)Z

    move-result v1

    .line 219
    .local v1, "docked":Z
    if-eqz v1, :cond_f0

    .line 220
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    .line 221
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_98

    .line 222
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 224
    :cond_98
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    .line 225
    const/4 v11, 0x1

    return v11

    .line 197
    .end local v0    # "createMode":I
    .end local v1    # "docked":Z
    .end local v2    # "dragMode":I
    .end local v6    # "touchSlopExceeded":Z
    :cond_9d
    const/4 v6, 0x0

    .restart local v6    # "touchSlopExceeded":Z
    goto :goto_38

    .line 198
    .end local v6    # "touchSlopExceeded":Z
    :cond_9f
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v8, v11, :cond_a7

    if-le v8, v10, :cond_a7

    const/4 v6, 0x1

    .restart local v6    # "touchSlopExceeded":Z
    goto :goto_38

    .end local v6    # "touchSlopExceeded":Z
    :cond_a7
    const/4 v6, 0x0

    .restart local v6    # "touchSlopExceeded":Z
    goto :goto_38

    .line 208
    .restart local v0    # "createMode":I
    .restart local v2    # "dragMode":I
    .restart local v3    # "initialBounds":Landroid/graphics/Rect;
    :cond_a9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    goto :goto_6c

    .line 211
    :cond_af
    const/4 v12, 0x1

    goto :goto_79

    .line 213
    .local v3, "initialBounds":Landroid/graphics/Rect;
    :cond_b1
    if-nez v2, :cond_7c

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    .line 214
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v12, v12, 0x2

    .line 213
    if-ge v11, v12, :cond_7c

    .line 215
    const/4 v0, 0x1

    goto :goto_7c

    .line 229
    .end local v0    # "createMode":I
    .end local v2    # "dragMode":I
    .end local v3    # "initialBounds":Landroid/graphics/Rect;
    .end local v6    # "touchSlopExceeded":Z
    :cond_c7
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f7

    .line 230
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v11, :cond_f2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    :goto_d4
    float-to-int v4, v11

    .line 231
    .local v4, "position":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v11

    .line 232
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 231
    invoke-virtual {v11, v4, v12, v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    .line 233
    .local v5, "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v11, v4, v12, v5}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 238
    .end local v4    # "position":I
    .end local v5    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_f0
    :goto_f0
    const/4 v11, 0x0

    return v11

    .line 230
    :cond_f2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    goto :goto_d4

    .line 234
    :cond_f7
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-nez v11, :cond_f0

    .line 235
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/systemui/RecentsComponent;->onDraggingInRecents(F)V

    goto :goto_f0
.end method

.method private handleDragActionUpEvent(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_3b

    .line 245
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-ne v0, v5, :cond_50

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v0, :cond_43

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 249
    :goto_2e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v1, :cond_49

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 246
    :goto_38
    invoke-virtual {v2, v0, v1, v5, v4}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 257
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 258
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 241
    return-void

    .line 248
    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    goto :goto_2e

    .line 251
    :cond_49
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    goto :goto_38

    .line 253
    :cond_50
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-nez v0, :cond_3b

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->onDraggingInRecentsEnded(F)V

    goto :goto_3b
.end method

.method private interceptDockWindowEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 147
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 138
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionDownEvent(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 141
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 144
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 136
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_12
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 281
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 282
    .local v0, "absVelX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 283
    .local v1, "absVelY":F
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_36

    .line 284
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    .line 283
    if-eqz v5, :cond_36

    .line 284
    cmpl-float v5, v1, v0

    if-lez v5, :cond_1b

    :goto_1a
    move v2, v4

    .line 285
    .local v2, "isValidFling":Z
    :cond_1b
    if-eqz v2, :cond_35

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    if-eqz v5, :cond_35

    .line 287
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsRTL:Z

    if-nez v5, :cond_42

    .line 288
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v5, :cond_3d

    cmpg-float v5, p4, v6

    if-gez v5, :cond_3b

    :goto_2d
    const/4 v3, 0x1

    .line 293
    .local v3, "showNext":Z
    :goto_2e
    if-eqz v3, :cond_53

    .line 294
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v5}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 299
    .end local v3    # "showNext":Z
    :cond_35
    :goto_35
    return v4

    .line 284
    .end local v2    # "isValidFling":Z
    :cond_36
    cmpl-float v5, v0, v1

    if-lez v5, :cond_1b

    goto :goto_1a

    .line 288
    .restart local v2    # "isValidFling":Z
    :cond_3b
    const/4 v3, 0x0

    .restart local v3    # "showNext":Z
    goto :goto_2e

    .end local v3    # "showNext":Z
    :cond_3d
    cmpg-float v5, p3, v6

    if-gez v5, :cond_3b

    goto :goto_2d

    .line 291
    :cond_42
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v5, :cond_4e

    cmpg-float v5, p4, v6

    if-gez v5, :cond_4c

    :goto_4a
    const/4 v3, 0x1

    .restart local v3    # "showNext":Z
    goto :goto_2e

    .end local v3    # "showNext":Z
    :cond_4c
    const/4 v3, 0x0

    .restart local v3    # "showNext":Z
    goto :goto_2e

    .end local v3    # "showNext":Z
    :cond_4e
    cmpl-float v5, p3, v6

    if-lez v5, :cond_4c

    goto :goto_4a

    .line 296
    .restart local v3    # "showNext":Z
    :cond_53
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v5}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    goto :goto_35
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 109
    .local v0, "action":I
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_5c

    .line 132
    :cond_10
    :goto_10
    :pswitch_10
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    if-eqz v7, :cond_18

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->interceptDockWindowEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :cond_18
    return v6

    .line 111
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    goto :goto_10

    .line 116
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v2, v8

    .line 117
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v4, v8

    .line 118
    .local v4, "y":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    sub-int v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 119
    .local v3, "xDiff":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    sub-int v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 120
    .local v5, "yDiff":I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v8, :cond_52

    .line 121
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v3, v8, :cond_50

    if-le v3, v5, :cond_50

    move v1, v7

    .line 123
    .local v1, "exceededTouchSlop":Z
    :goto_4d
    if-eqz v1, :cond_10

    .line 124
    return v7

    .end local v1    # "exceededTouchSlop":Z
    :cond_50
    move v1, v6

    .line 121
    goto :goto_4d

    .line 122
    :cond_52
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v5, v8, :cond_5a

    if-le v5, v3, :cond_5a

    move v1, v7

    goto :goto_4d

    :cond_5a
    move v1, v6

    goto :goto_4d

    .line 109
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_10
        :pswitch_28
        :pswitch_10
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 273
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    if-eqz v1, :cond_f

    .line 274
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDockWindowEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 276
    :cond_f
    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 304
    const-string/jumbo v1, "overview_nav_bar_gesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 306
    if-eqz p2, :cond_13

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    .line 303
    :cond_15
    return-void
.end method

.method public setBarState(ZZ)V
    .registers 3
    .param p1, "isVertical"    # Z
    .param p2, "isRTL"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    .line 101
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsRTL:Z

    .line 99
    return-void
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .registers 4
    .param p1, "recentsComponent"    # Lcom/android/systemui/RecentsComponent;
    .param p2, "divider"    # Lcom/android/systemui/stackdivider/Divider;
    .param p3, "navigationBarView"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    .line 95
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 96
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 93
    return-void
.end method
