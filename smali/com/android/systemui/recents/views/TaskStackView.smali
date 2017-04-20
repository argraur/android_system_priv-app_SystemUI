.class public Lcom/android/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;
.implements Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackView$1;,
        Lcom/android/systemui/recents/views/TaskStackView$2;,
        Lcom/android/systemui/recents/views/TaskStackView$3;,
        Lcom/android/systemui/recents/views/TaskStackView$InitialStateAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;",
        "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        "Lcom/android/systemui/recents/model/Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues:[I


# instance fields
.field private mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field private mAwaitingFirstLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

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

.field private mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

.field private mDisplayOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDividerSize:I

.field private mEnterAnimationComplete:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "focused_task_"
    .end annotation
.end field

.field private mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mIgnoreTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private mInMeasureLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLaunchNextAfterFirstMeasure:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation
.end field

.field private mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mResetToInitialStateWhenResized:Z

.field mScreenPinningEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field private mStableStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "scroller_"
    .end annotation
.end field

.field private mStartTimerIndicatorDuration:I

.field private mTaskCornerRadiusPx:I

.field private mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

.field private mTaskViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskViewsClipDirty:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTmpIntPair:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpTaskViewMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTaskViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "doze_"
    .end annotation
.end field

.field private mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/Task;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/TaskStack;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/TaskStackView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/misc/DozeTrigger;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/systemui/recents/views/TaskStackView;->-com-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/recents/views/TaskStackView;->-com-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->values()[Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->DOWN:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->LEFT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->RIGHT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UNDEFINED:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UP:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackView;->-com-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/TaskStackView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 260
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v3, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 158
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    .line 159
    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 171
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 173
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 175
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    .line 178
    iput v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 180
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 182
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 190
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    .line 193
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 196
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    .line 199
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 202
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 205
    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 207
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 208
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    .line 210
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 211
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    .line 222
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    .line 221
    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 233
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 246
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$3;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 261
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 262
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 265
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 266
    new-instance v3, Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    .line 267
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 268
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 269
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 270
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, p0, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 271
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v3, p1, p0, v4}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    .line 272
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 273
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v3, :cond_164

    .line 274
    const v3, 0x7f10026b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 273
    :goto_db
    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    .line 276
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 277
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 278
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 281
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v3, :cond_116

    .line 282
    new-instance v3, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    .line 283
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 282
    invoke-direct {v3, v4, p0, v5}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    .line 284
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 288
    :cond_116
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 289
    const v4, 0x7f0e0036

    .line 288
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 290
    .local v2, "taskBarDismissDozeDelaySeconds":I
    new-instance v3, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 302
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    .line 303
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v3

    if-eqz v3, :cond_139

    .line 304
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setWillNotDraw(Z)V

    .line 307
    :cond_139
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 308
    const v4, 0x7f0201d0

    .line 307
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 309
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 310
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v3

    if-eqz v3, :cond_163

    .line 311
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c008f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 311
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 259
    :cond_163
    return-void

    .line 275
    .end local v2    # "taskBarDismissDozeDelaySeconds":I
    :cond_164
    const v3, 0x7f100248

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto/16 :goto_db
.end method

.method private animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V
    .registers 9
    .param p1, "targetAlpha"    # I
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    const/4 v5, 0x4

    .line 2173
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v0

    if-ne v0, p1, :cond_a

    .line 2174
    return-void

    .line 2177
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 2178
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 2179
    sget-object v1, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 2178
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 2179
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 2178
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2180
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2181
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    .line 2180
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2182
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2183
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    .line 2182
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2184
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2185
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 2184
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2186
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2172
    return-void
.end method

.method private bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V
    .registers 6
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1651
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    .line 1654
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1655
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v0

    .line 1654
    if-nez v0, :cond_21

    .line 1656
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    .line 1654
    if-eqz v0, :cond_24

    .line 1657
    :cond_21
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1661
    :cond_24
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1649
    return-void
.end method

.method private clipTaskViews()V
    .registers 15

    .prologue
    .line 812
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v11, :cond_9

    .line 813
    return-void

    .line 817
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v8

    .line 818
    .local v8, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v9, 0x0

    .line 819
    .local v9, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v5, 0x0

    .line 820
    .local v5, "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 821
    .local v7, "taskViewCount":I
    const/4 v3, 0x0

    .end local v5    # "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .local v3, "i":I
    :goto_14
    if-ge v3, v7, :cond_88

    .line 822
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskView;

    .line 823
    .local v10, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v2, 0x0

    .line 824
    .local v2, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v0, 0x0

    .line 826
    .local v0, "clipBottom":I
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 829
    if-eqz v5, :cond_3d

    .line 830
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v11

    .line 831
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v12

    const v13, 0x3dcccccd    # 0.1f

    add-float/2addr v12, v13

    .line 830
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 835
    :cond_3d
    add-int/lit8 v11, v7, -0x1

    if-ge v3, v11, :cond_6f

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 837
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    :goto_49
    if-ge v4, v7, :cond_58

    .line 838
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskView;

    .line 840
    .local v9, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v11

    if-eqz v11, :cond_85

    .line 841
    move-object v2, v9

    .line 849
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_58
    if-eqz v2, :cond_6f

    .line 850
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v11

    int-to-float v6, v11

    .line 851
    .local v6, "taskBottom":F
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v11

    int-to-float v1, v11

    .line 852
    .local v1, "frontTaskTop":F
    cmpg-float v11, v1, v6

    if-gez v11, :cond_6f

    .line 854
    sub-float v11, v6, v1

    float-to-int v11, v11

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    sub-int v0, v11, v12

    .line 858
    .end local v1    # "frontTaskTop":F
    .end local v4    # "j":I
    .end local v6    # "taskBottom":F
    :cond_6f
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipBottom(I)V

    .line 859
    iget-object v11, v10, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getPaddingBottom()I

    move-result v12

    sub-int v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailVisibility(I)V

    .line 860
    move-object v5, v10

    .line 821
    .local v5, "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 837
    .end local v5    # "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v4    # "j":I
    .restart local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 862
    .end local v0    # "clipBottom":I
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "j":I
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v10    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_88
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 810
    return-void
.end method

.method private findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I
    .registers 10
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "taskIndex"    # I

    .prologue
    const/4 v6, -0x1

    .line 2198
    if-eq p2, v6, :cond_2d

    .line 2199
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 2200
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v0, 0x0

    .line 2201
    .local v0, "foundTaskView":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2202
    .local v2, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v2, :cond_2d

    .line 2203
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 2204
    .local v4, "tvTask":Lcom/android/systemui/recents/model/Task;
    if-ne v4, p1, :cond_1f

    .line 2205
    const/4 v0, 0x1

    .line 2202
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2206
    :cond_1f
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    if-ge p2, v5, :cond_1c

    .line 2207
    if-eqz v0, :cond_2c

    .line 2208
    add-int/lit8 v5, v1, -0x1

    return v5

    .line 2210
    :cond_2c
    return v1

    .line 2215
    .end local v0    # "foundTaskView":Z
    .end local v1    # "i":I
    .end local v2    # "taskViewCount":I
    .end local v3    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v4    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_2d
    return v6
.end method

.method private getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;
    .registers 8
    .param p1, "stackTasksOnly"    # Z

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 421
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 422
    .local v2, "taskViewCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_22

    .line 423
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 424
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 425
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz p1, :cond_21

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 422
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 428
    :cond_21
    return-object v4

    .line 430
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_22
    const/4 v5, 0x0

    return-object v5
.end method

.method private launchTask(Lcom/android/systemui/recents/model/Task;)V
    .registers 13
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 2220
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 2222
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    .line 2223
    .local v7, "curScroll":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/recents/model/Task;)F

    move-result v9

    .line 2224
    .local v9, "targetScroll":F
    sub-float v0, v9, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 2225
    .local v6, "absScrollDiff":F
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_23

    const v0, 0x3eb33333    # 0.35f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_35

    .line 2227
    :cond_23
    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v0, v6

    .line 2226
    const/high16 v1, 0x43580000    # 216.0f

    add-float/2addr v0, v1

    float-to-int v8, v0

    .line 2228
    .local v8, "duration":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 2229
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$10;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;)V

    .line 2228
    invoke-virtual {v0, v9, v8, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    .line 2218
    .end local v8    # "duration":I
    :goto_34
    return-void

    .line 2238
    :cond_35
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 2239
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v2, p1

    .line 2238
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v10, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_34
.end method

.method private layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1358
    if-eqz p1, :cond_4d

    .line 1359
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1360
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1361
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1363
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1364
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1365
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 1366
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 1367
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1366
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    .line 1357
    .end local v0    # "padding":Landroid/graphics/Rect;
    :goto_4c
    return-void

    .line 1370
    :cond_4d
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    goto :goto_4c
.end method

.method private measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V
    .registers 7
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1310
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1311
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1312
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1314
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1315
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1317
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1319
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1316
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->measure(II)V

    .line 1309
    return-void
.end method

.method private readSystemFlags()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2254
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 2255
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    .line 2256
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2257
    const-string/jumbo v3, "lock_to_app_enabled"

    .line 2256
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    .line 2253
    return-void
.end method

.method private relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V
    .registers 13
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p3, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p2, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 702
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    invoke-virtual {p0, v7, p3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 706
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 707
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 708
    .local v3, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v3, :cond_4e

    .line 709
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 710
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 712
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v8, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 708
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 716
    :cond_2e
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    .line 717
    .local v2, "taskIndex":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 718
    .local v5, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz p2, :cond_4a

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 719
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    check-cast p1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 722
    .restart local p1    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_4a
    invoke-virtual {p0, v6, v5, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_2b

    .line 697
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskIndex":I
    .end local v5    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v6    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4e
    return-void
.end method

.method private unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V
    .registers 4
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1666
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1664
    return-void
.end method

.method private updateLayoutToStableBounds()V
    .registers 6

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 889
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 890
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 891
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 892
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 891
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 893
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 887
    return-void
.end method

.method private updateStackActionButtonVisibility()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2262
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2263
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_29

    .line 2264
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 2265
    :cond_1c
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2260
    :goto_28
    return-void

    .line 2267
    :cond_29
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_28
.end method


# virtual methods
.method addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method bindVisibleTaskViews(F)V
    .registers 3
    .param p1, "targetStackScroll"    # F

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 567
    return-void
.end method

.method bindVisibleTaskViews(FZ)V
    .registers 25
    .param p1, "targetStackScroll"    # F
    .param p2, "ignoreTaskOverrides"    # Z

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 587
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    move-object/from16 v3, p0

    move/from16 v7, p1

    move/from16 v9, p2

    .line 587
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/views/TaskStackView;->computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I

    move-result-object v21

    .line 592
    .local v21, "visibleTaskRange":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v18

    .line 594
    .local v18, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v13, -0x1

    .line 595
    .local v13, "lastFocusedTaskIndex":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    .line 596
    .local v17, "taskViewCount":I
    add-int/lit8 v11, v17, -0x1

    .local v11, "i":I
    :goto_34
    if-ltz v11, :cond_a3

    .line 597
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 598
    .local v20, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 601
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 596
    :goto_4e
    add-int/lit8 v11, v11, -0x1

    goto :goto_34

    .line 608
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, v15}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v16

    .line 609
    .local v16, "taskIndex":I
    const/16 v19, 0x0

    .line 610
    .local v19, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_6c

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    check-cast v19, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 614
    :cond_6c
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-nez v3, :cond_7a

    if-eqz v19, :cond_86

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v3, :cond_86

    .line 615
    :cond_7a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    iget-object v4, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 617
    :cond_86
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_99

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 618
    move/from16 v13, v16

    .line 619
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 621
    :cond_99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_4e

    .line 626
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_a3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v11, v3, -0x1

    :goto_a9
    if-ltz v11, :cond_16a

    .line 627
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 628
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 631
    .local v19, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 626
    :cond_c7
    :goto_c7
    add-int/lit8 v11, v11, -0x1

    goto :goto_a9

    .line 636
    :cond_ca
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-nez v3, :cond_d6

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v3, :cond_c7

    .line 640
    :cond_d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    iget-object v4, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 641
    .restart local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v20, :cond_137

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3, v15, v15}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 643
    .restart local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_100

    .line 644
    sget-object v3, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_c7

    .line 646
    :cond_100
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_125

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    .line 648
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_c7

    .line 650
    :cond_125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    .line 651
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 650
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_c7

    .line 656
    :cond_137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, v15}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v16

    .line 657
    .restart local v16    # "taskIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I

    move-result v12

    .line 658
    .local v12, "insertIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v12, v3, :cond_c7

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 660
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v3}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    goto/16 :goto_c7

    .line 667
    .end local v12    # "insertIndex":I
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v19    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_16a
    const/4 v3, -0x1

    if-eq v13, v3, :cond_18b

    .line 668
    const/4 v3, 0x1

    aget v3, v21, v3

    if-ge v13, v3, :cond_18c

    .line 669
    const/4 v3, 0x1

    aget v14, v21, v3

    .line 671
    .local v14, "newFocusedTaskIndex":I
    :goto_175
    const/4 v3, 0x0

    .line 672
    const/4 v4, 0x1

    .line 671
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v10

    .line 674
    .local v10, "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v10, :cond_18b

    .line 675
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 584
    .end local v10    # "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v14    # "newFocusedTaskIndex":I
    :cond_18b
    return-void

    .line 670
    :cond_18c
    const/4 v3, 0x0

    aget v14, v21, v3

    goto :goto_175
.end method

.method cancelAllTaskViewAnimations()V
    .registers 6

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 799
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_26

    .line 800
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 801
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 802
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 799
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 797
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_26
    return-void
.end method

.method cancelDeferredTaskViewLayoutAnimation()V
    .registers 2

    .prologue
    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 790
    return-void
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1202
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 1204
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v0, :cond_1c

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1207
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 1209
    :cond_1c
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v0, :cond_23

    .line 1210
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1199
    :cond_23
    return-void
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .registers 3

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I
    .registers 21
    .param p3, "curStackScroll"    # F
    .param p4, "targetStackScroll"    # F
    .param p6, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;FF",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;Z)[I"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p5, "ignoreTasksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 510
    .local v9, "taskCount":I
    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    .line 511
    .local v13, "visibleTaskRange":[I
    const/4 v1, -0x1

    const/4 v3, 0x0

    aput v1, v13, v3

    .line 512
    const/4 v1, -0x1

    const/4 v3, 0x1

    aput v1, v13, v3

    .line 513
    invoke-static/range {p3 .. p4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v12, 0x1

    .line 516
    .local v12, "useTargetStackScroll":Z
    :goto_15
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 519
    const/4 v5, 0x0

    .line 520
    .local v5, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v7, 0x0

    .line 521
    .local v7, "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v10, 0x0

    .line 522
    .local v10, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v11, 0x0

    .line 523
    .local v11, "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    add-int/lit8 v8, v9, -0x1

    .end local v5    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v11    # "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .local v8, "i":I
    :goto_20
    if-ltz v8, :cond_7c

    .line 524
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 527
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 528
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    move/from16 v3, p3

    move/from16 v6, p6

    .line 527
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    .line 529
    .local v10, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v12, :cond_40

    iget-boolean v1, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_4f

    .line 542
    :cond_40
    :goto_40
    iget-object v1, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 523
    :cond_4a
    :goto_4a
    add-int/lit8 v8, v8, -0x1

    goto :goto_20

    .line 513
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "i":I
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v12    # "useTargetStackScroll":Z
    :cond_4d
    const/4 v12, 0x0

    .restart local v12    # "useTargetStackScroll":Z
    goto :goto_15

    .line 533
    .restart local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "i":I
    .restart local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_4f
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 534
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 533
    move/from16 v0, p4

    invoke-virtual {v1, v2, v0, v3, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v11

    .line 535
    .local v11, "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v1, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_40

    .line 536
    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto :goto_40

    .line 548
    .end local v11    # "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_64
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 552
    move-object v5, v10

    .line 553
    .local v5, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object v7, v11

    .line 554
    .local v7, "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v1, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_4a

    .line 555
    const/4 v1, 0x0

    aget v1, v13, v1

    if-gez v1, :cond_78

    .line 556
    const/4 v1, 0x0

    aput v8, v13, v1

    .line 558
    :cond_78
    const/4 v1, 0x1

    aput v8, v13, v1

    goto :goto_4a

    .line 561
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_7c
    return-object v13
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1563
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_15

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400cb

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/grid/GridTaskView;

    return-object v0

    .line 1566
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400d0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1562
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 2272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2273
    .local v2, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2275
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "TaskStackView"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2276
    const-string/jumbo v4, " hasDefRelayout="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v4, :cond_156

    const-string/jumbo v4, "Y"

    :goto_32
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2278
    const-string/jumbo v4, " clipDirty="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v4, :cond_15b

    const-string/jumbo v4, "Y"

    :goto_42
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2279
    const-string/jumbo v4, " awaitingFirstLayout="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v4, :cond_160

    const-string/jumbo v4, "Y"

    :goto_52
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    const-string/jumbo v4, " initialState="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2281
    const-string/jumbo v4, " inMeasureLayout="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v4, :cond_165

    const-string/jumbo v4, "Y"

    :goto_6d
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2282
    const-string/jumbo v4, " enterAnimCompleted="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v4, :cond_16a

    const-string/jumbo v4, "Y"

    :goto_7d
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2283
    const-string/jumbo v4, " touchExplorationOn="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v4, :cond_16f

    const-string/jumbo v4, "Y"

    :goto_8d
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2284
    const-string/jumbo v4, " screenPinningOn="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v4, :cond_174

    const-string/jumbo v4, "Y"

    :goto_9d
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2285
    const-string/jumbo v4, " numIgnoreTasks="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2286
    const-string/jumbo v4, " numViewPool="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2287
    const-string/jumbo v4, " stableStackBounds="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2288
    const-string/jumbo v4, " stackBounds="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2289
    const-string/jumbo v4, " stableWindow="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2290
    const-string/jumbo v4, " window="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2291
    const-string/jumbo v4, " display="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2292
    const-string/jumbo v4, " orientation="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2293
    const-string/jumbo v4, " [0x"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "]"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2294
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2296
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v4, :cond_13f

    .line 2297
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2298
    const-string/jumbo v4, "Focused task: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2299
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5, p2}, Lcom/android/systemui/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2302
    :cond_13f
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2303
    .local v3, "numTaskViews":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_146
    if-ge v0, v3, :cond_179

    .line 2304
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4, v2, p2}, Lcom/android/systemui/recents/views/TaskView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2303
    add-int/lit8 v0, v0, 0x1

    goto :goto_146

    .line 2277
    .end local v0    # "i":I
    .end local v3    # "numTaskViews":I
    :cond_156
    const-string/jumbo v4, "N"

    goto/16 :goto_32

    .line 2278
    :cond_15b
    const-string/jumbo v4, "N"

    goto/16 :goto_42

    .line 2279
    :cond_160
    const-string/jumbo v4, "N"

    goto/16 :goto_52

    .line 2281
    :cond_165
    const-string/jumbo v4, "N"

    goto/16 :goto_6d

    .line 2282
    :cond_16a
    const-string/jumbo v4, "N"

    goto/16 :goto_7d

    .line 2283
    :cond_16f
    const-string/jumbo v4, "N"

    goto/16 :goto_8d

    .line 2284
    :cond_174
    const-string/jumbo v4, "N"

    goto/16 :goto_9d

    .line 2307
    .restart local v0    # "i":I
    .restart local v3    # "numTaskViews":I
    :cond_179
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v4, v2, p2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2308
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4, v2, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2271
    return-void
.end method

.method public findAnchorTask(Ljava/util/List;Landroid/util/MutableBoolean;)Lcom/android/systemui/recents/model/Task;
    .registers 6
    .param p2, "isFrontMostTask"    # Landroid/util/MutableBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Landroid/util/MutableBoolean;",
            ")",
            "Lcom/android/systemui/recents/model/Task;"
        }
    .end annotation

    .prologue
    .line 1416
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_23

    .line 1417
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 1420
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1421
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1f

    .line 1422
    const/4 v2, 0x1

    iput-boolean v2, p2, Landroid/util/MutableBoolean;->value:Z

    .line 1416
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1426
    :cond_22
    return-object v1

    .line 1428
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_23
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1156
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1101
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 1102
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1103
    .local v2, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v2, :cond_20

    .line 1104
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 1105
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1106
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    return-object v5

    .line 1103
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1109
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_20
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1110
    .local v0, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_2c

    .line 1111
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    return-object v5

    .line 1113
    :cond_2c
    return-object v6
.end method

.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .registers 7
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 438
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 439
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_1b

    .line 440
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 441
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_18

    .line 442
    return-object v3

    .line 439
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 445
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1b
    const/4 v4, 0x0

    return-object v4
.end method

.method public getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "transformsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 754
    invoke-static {p1, p2}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v3

    .line 756
    .local v3, "focusState":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_12
    if-ltz v8, :cond_3a

    .line 757
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 758
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 759
    .local v4, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v9

    .line 760
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v9, :cond_2e

    .line 761
    invoke-virtual {v4, v9}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 767
    :goto_29
    iput-boolean v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 756
    add-int/lit8 v8, v8, -0x1

    goto :goto_12

    .line 763
    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    goto :goto_29

    .line 753
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3a
    return-void
.end method

.method public getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .registers 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getGridAlgorithm()Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    return-object v0
.end method

.method public getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V
    .registers 15
    .param p1, "stackScroll"    # F
    .param p2, "focusState"    # I
    .param p4, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p5, "transformsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    const/4 v6, 0x1

    .line 777
    invoke-static {p3, p5}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 778
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_a
    if-ltz v8, :cond_26

    .line 779
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 780
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 781
    .local v4, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 783
    iput-boolean v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 778
    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    .line 776
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_26
    return-void
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .registers 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method getTaskViews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z
    .registers 4
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "preferredData"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1646
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "tv"    # Ljava/lang/Object;
    .param p2, "preferredData"    # Ljava/lang/Object;

    .prologue
    .line 1645
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "preferredData":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public launchFreeformTasks()Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getFreeformTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1457
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1458
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1459
    .local v2, "frontTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1460
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1461
    const/4 v4, -0x1

    .line 1460
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1462
    const/4 v0, 0x1

    return v0

    .line 1465
    .end local v2    # "frontTask":Lcom/android/systemui/recents/model/Task;
    :cond_35
    return v5
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 318
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 319
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    .line 317
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 2117
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v2, :cond_1d

    .line 2118
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 2119
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 2123
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 2125
    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    .line 2128
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-nez v2, :cond_54

    .line 2129
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2130
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2131
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2132
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2133
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    if-ge v0, v1, :cond_54

    .line 2134
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->onConfigurationChanged()V

    .line 2133
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 2139
    .end local v0    # "i":I
    .end local v1    # "taskViewCount":I
    :cond_54
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateStackActionButtonVisibility()V

    .line 2142
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-eqz v2, :cond_62

    .line 2143
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 2144
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 2116
    :cond_61
    :goto_61
    return-void

    .line 2145
    :cond_62
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v2, :cond_61

    .line 2146
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 2147
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    goto :goto_61
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .registers 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    const/4 v4, 0x0

    .line 1771
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()V

    .line 1772
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1773
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1774
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 1777
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->animated:Z

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1780
    const/16 v0, 0xc8

    .line 1781
    .local v0, "taskViewExitToHomeDuration":I
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1782
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1781
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 1785
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v1, :cond_34

    .line 1786
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 1769
    :cond_34
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    .line 2045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 2047
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1c

    .line 2049
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 2052
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskStackView$8;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 2044
    :cond_1c
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    .prologue
    .line 2038
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v0, :cond_11

    .line 2040
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2037
    :cond_11
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;

    .prologue
    .line 1741
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_12

    .line 1742
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1743
    .local v0, "mostRecentTask":Lcom/android/systemui/recents/model/Task;
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->launchTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1740
    .end local v0    # "mostRecentTask":Lcom/android/systemui/recents/model/Task;
    :cond_12
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1748
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v1, :cond_9

    .line 1749
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    .line 1750
    return-void

    .line 1753
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getNextLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1754
    .local v0, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v0, :cond_28

    .line 1755
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->launchTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1756
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1757
    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1756
    const/16 v3, 0x13e

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 1747
    :cond_27
    :goto_27
    return-void

    .line 1758
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-nez v1, :cond_27

    .line 1760
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_27
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 1735
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->screenPinningRequested:Z

    .line 1766
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    .line 1765
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1764
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    .line 2094
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-nez v1, :cond_23

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    if-eqz v1, :cond_23

    .line 2098
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 2099
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 2103
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2104
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$9;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->post(Ljava/lang/Runnable;)Z

    .line 2093
    .end local v0    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :goto_22
    return-void

    .line 2095
    :cond_23
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    goto :goto_22
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .registers 11
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    .prologue
    const/4 v8, 0x0

    .line 1715
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 1716
    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    .line 1715
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1719
    .local v1, "removedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1720
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_17
    if-ltz v0, :cond_3f

    .line 1721
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1722
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1723
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 1724
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_37

    .line 1726
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1720
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 1729
    .restart local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_37
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v5, v2, v6, v8}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    goto :goto_34

    .line 1713
    .end local v2    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3f
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .prologue
    const/4 v1, 0x0

    .line 2156
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v0, :cond_e

    .line 2157
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 2155
    :cond_e
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 1811
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1812
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 1813
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    .line 1812
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteAllTasksAnimation(Ljava/util/List;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1814
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1809
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 1806
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    .line 1805
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1803
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    .prologue
    .line 2152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 2151
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    .prologue
    const/4 v3, 0x0

    .line 1835
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1836
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f0f0243

    .line 1835
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1838
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v0, :cond_2c

    .line 1839
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/recents/views/AnimationProps;

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    .line 1850
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 1851
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1853
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1854
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1853
    const/16 v2, 0x121

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 1833
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    .prologue
    .line 2082
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 2083
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2084
    .local v2, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_28

    .line 2085
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 2086
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 2087
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2088
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;->visible:Z

    if-eqz v5, :cond_26

    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 2084
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2088
    :cond_26
    const/4 v5, 0x4

    goto :goto_20

    .line 2081
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_28
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .prologue
    .line 1896
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1898
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 1899
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_22

    .line 1900
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1901
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_22

    .line 1902
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    .line 1894
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_22
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .registers 14
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    .prologue
    .line 1936
    new-instance v9, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1937
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1936
    const/16 v2, 0xfa

    invoke-direct {v9, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 1938
    .local v9, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    const/4 v10, 0x0

    .line 1939
    .local v10, "ignoreTaskOverrides":Z
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v1, v1, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v1, :cond_60

    .line 1942
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 1943
    .local v0, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1947
    .local v5, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v3

    .line 1948
    .local v3, "height":I
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    .line 1949
    const/4 v1, 0x0

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 1950
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v2

    .line 1951
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 1952
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 1950
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1953
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 1954
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 1955
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v7

    .line 1954
    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1956
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1957
    const/4 v10, 0x1

    .line 1965
    .end local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v3    # "height":I
    .end local v5    # "systemInsets":Landroid/graphics/Rect;
    :goto_5b
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1, v10}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 1935
    return-void

    .line 1961
    :cond_60
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1962
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 1963
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_5b
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    const/16 v5, 0xfa

    .line 2021
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2022
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 2025
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 2028
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2029
    .local v0, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/recents/model/Task;

    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2030
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2031
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 2029
    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2033
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2032
    invoke-direct {v1, v5, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 2034
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2019
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .registers 10
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    const/16 v7, 0xfa

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1970
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v4, :cond_10

    .line 1973
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 1974
    return-void

    .line 1977
    :cond_10
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v2

    .line 1979
    .local v2, "isFreeformTask":Z
    if-nez v2, :cond_6f

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v4, v5, :cond_6f

    move v1, v3

    .line 1982
    .local v1, "hasChangedStacks":Z
    :cond_1f
    :goto_1f
    if-eqz v1, :cond_3a

    .line 1986
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v4, v5, :cond_79

    .line 1987
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    .line 1991
    :cond_2f
    :goto_2f
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1994
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$7;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$7;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 2004
    :cond_3a
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2007
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 2010
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2011
    .local v0, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2012
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2013
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    .line 2011
    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2015
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2014
    invoke-direct {v3, v7, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 2016
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 1968
    return-void

    .line 1980
    .end local v0    # "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    .end local v1    # "hasChangedStacks":Z
    :cond_6f
    if-eqz v2, :cond_1f

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v4, v5, :cond_1f

    move v1, v3

    goto :goto_1f

    .line 1988
    .restart local v1    # "hasChangedStacks":Z
    :cond_79
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v4, v5, :cond_2f

    .line 1989
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    goto :goto_2f
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    const/4 v5, 0x0

    .line 1909
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1911
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1913
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    .line 1917
    :cond_17
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v1

    const v2, 0x3f866666    # 1.05f

    mul-float v0, v1, v2

    .line 1918
    .local v0, "finalScale":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    .line 1919
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1918
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1920
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1921
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 1922
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 1923
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1924
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v5, 0xaf

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 1923
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1907
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;

    .prologue
    .line 1928
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1929
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1930
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 1931
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 1927
    :cond_18
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    .prologue
    const/4 v2, 0x0

    .line 1791
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_1e

    .line 1792
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v1, :cond_e

    .line 1793
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 1795
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1796
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_19

    .line 1797
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1799
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1790
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1e
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1859
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1863
    iget v5, p1, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;->timerIndicatorDuration:I

    move-object v0, p0

    move v3, v1

    move v4, v2

    .line 1862
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    .line 1857
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    .prologue
    const/4 v1, 0x0

    .line 1868
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1871
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 1866
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;

    .prologue
    const/4 v5, 0x0

    .line 1875
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1876
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    .line 1877
    .local v2, "taskCount":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 1878
    .local v0, "currentIndex":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    .line 1879
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;->direction:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    .line 1878
    invoke-virtual {v3, v2, v0, v4}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->navigateFocus(IILcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;)I

    move-result v1

    .line 1880
    .local v1, "nextIndex":I
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v5, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 1874
    .end local v0    # "currentIndex":I
    .end local v1    # "nextIndex":I
    .end local v2    # "taskCount":I
    :goto_25
    return-void

    .line 1882
    :cond_26
    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackView;->-getcom-android-systemui-recents-events-ui-focus-NavigateTaskViewEvent$DirectionSwitchesValues()[I

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;->direction:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v4}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_50

    goto :goto_25

    .line 1887
    :pswitch_36
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    .line 1888
    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v5}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    .line 1887
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_25

    .line 1884
    :pswitch_43
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_25

    .line 1882
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_36
        :pswitch_43
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 326
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1433
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1436
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1437
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1438
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_1a

    .line 1439
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1432
    :cond_1a
    return-void
.end method

.method onFirstLayout()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1377
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->prepareForEnterAnimation()V

    .line 1380
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v5

    iget v1, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    .line 1381
    .local v1, "ffBgAlpha":I
    new-instance v5, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1382
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1381
    const/16 v7, 0x96

    invoke-direct {v5, v7, v6}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v1, v5}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 1386
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1387
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 1392
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1393
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v5

    iget-boolean v4, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1394
    .local v4, "setFocusOnFirstLayout":Z
    :goto_32
    if-eqz v4, :cond_48

    .line 1395
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    .line 1396
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v6

    .line 1395
    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->getInitialFocusTaskIndex(IZ)I

    move-result v2

    .line 1397
    .local v2, "focusedTaskIndex":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_48

    .line 1398
    invoke-virtual {p0, v2, v8, v8}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 1402
    .end local v2    # "focusedTaskIndex":I
    :cond_48
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateStackActionButtonVisibility()V

    .line 1375
    return-void

    .line 1392
    .end local v4    # "setFocusOnFirstLayout":Z
    :cond_4c
    const/4 v4, 0x1

    goto :goto_32
.end method

.method public onFocusStateChanged(II)V
    .registers 4
    .param p1, "prevFocusState"    # I
    .param p2, "curFocusState"    # I

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-nez v0, :cond_e

    .line 1684
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1685
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1682
    :cond_e
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x0

    .line 1118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1119
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 1120
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1121
    .local v3, "taskViewCount":I
    if-lez v3, :cond_3f

    .line 1122
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 1123
    .local v0, "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 1124
    .local v1, "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1125
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1126
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1128
    .end local v0    # "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    .end local v1    # "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    :cond_3f
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1130
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1131
    .local v2, "stackHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1132
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1117
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x1

    .line 1137
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1138
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 1139
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1140
    .local v2, "taskViewCount":I
    if-le v2, v4, :cond_33

    .line 1142
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1143
    .local v0, "focusedTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1144
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 1145
    .local v1, "focusedTaskIndex":I
    if-lez v1, :cond_22

    .line 1146
    const/16 v4, 0x2000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1148
    :cond_22
    if-ltz v1, :cond_33

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_33

    .line 1149
    const/16 v4, 0x1000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1136
    .end local v0    # "focusedTask":Lcom/android/systemui/recents/model/Task;
    .end local v1    # "focusedTaskIndex":I
    :cond_33
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 1326
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1327
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1328
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1329
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1330
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v1, :cond_31

    .line 1331
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    .line 1330
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1333
    :cond_31
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v2, :cond_3a

    .line 1334
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->layout()V

    .line 1337
    :cond_3a
    if-eqz p1, :cond_49

    .line 1338
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1339
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1344
    :cond_49
    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1345
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1347
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v2, :cond_5a

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v2, :cond_5a

    .line 1324
    :goto_59
    return-void

    .line 1348
    :cond_5a
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 1349
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 1350
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->onFirstLayout()V

    goto :goto_59
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 1240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 1241
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1242
    .local v11, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 1247
    .local v7, "height":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1248
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 1249
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 1247
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1251
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v12, v11, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1254
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v12, v12, v11, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1258
    :cond_4e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    .line 1259
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 1258
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 1261
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 1260
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1262
    invoke-virtual {p0, v12}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1266
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    if-ne v11, v0, :cond_7b

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    if-eq v7, v0, :cond_e2

    .line 1267
    :cond_7b
    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 1268
    :goto_7d
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v0, :cond_85

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    if-eqz v0, :cond_e4

    .line 1270
    :cond_85
    :goto_85
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8c

    if-eqz v9, :cond_91

    .line 1271
    :cond_8c
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 1272
    iput-boolean v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 1274
    :cond_91
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v0, :cond_97

    .line 1275
    iput v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 1280
    :cond_97
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    if-eqz v0, :cond_a9

    .line 1281
    iput-boolean v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    .line 1282
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1286
    :cond_a9
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0, v12}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1291
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 1293
    .local v10, "taskViewCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_d2
    if-ge v8, v10, :cond_e7

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1293
    add-int/lit8 v8, v8, 0x1

    goto :goto_d2

    .line 1266
    .end local v8    # "i":I
    .end local v10    # "taskViewCount":I
    :cond_e2
    const/4 v9, 0x0

    .local v9, "resetToInitialState":Z
    goto :goto_7d

    .line 1268
    .end local v9    # "resetToInitialState":Z
    :cond_e4
    if-eqz v9, :cond_97

    goto :goto_85

    .line 1296
    .restart local v8    # "i":I
    .restart local v10    # "taskViewCount":I
    :cond_e7
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v0, :cond_f0

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->measure()V

    .line 1300
    :cond_f0
    invoke-virtual {p0, v11, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 1301
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    .line 1302
    iput v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    .line 1303
    iput-boolean v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 1239
    return-void
.end method

.method public onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .registers 10
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "isNewView"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1595
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    .line 1596
    .local v2, "taskIndex":I
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I

    move-result v0

    .line 1599
    .local v0, "insertIndex":I
    if-eqz p3, :cond_62

    .line 1600
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v3, :cond_4e

    .line 1603
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    .line 1619
    :goto_15
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1622
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1625
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1626
    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1627
    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1628
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v3, p2, :cond_3a

    .line 1629
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1630
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    if-lez v3, :cond_3a

    .line 1632
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    .line 1633
    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    .line 1638
    :cond_3a
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v3, :cond_4d

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 1639
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 1638
    if-ne v3, v4, :cond_4d

    .line 1640
    invoke-virtual {p1, v5, v5}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 1593
    :cond_4d
    return-void

    .line 1607
    :cond_4e
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1608
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_58

    .line 1609
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 1611
    :cond_58
    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1612
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1613
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    goto :goto_15

    .line 1616
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_62
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_15
.end method

.method public bridge synthetic onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "tv"    # Ljava/lang/Object;
    .param p2, "task"    # Ljava/lang/Object;
    .param p3, "isNewView"    # Z

    .prologue
    .line 1593
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "task":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    return-void
.end method

.method onReload(Z)V
    .registers 10
    .param p1, "isResumingFromVisible"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 333
    if-nez p1, :cond_b

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 339
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_26
    if-ltz v1, :cond_34

    .line 343
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskView;->onReload(Z)V

    .line 342
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 347
    :cond_34
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    .line 348
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 349
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 350
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 351
    if-eqz p1, :cond_60

    .line 353
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v3

    iget v0, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    .line 354
    .local v0, "ffBgAlpha":I
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    .line 355
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 354
    const/16 v5, 0x96

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 364
    .end local v0    # "ffBgAlpha":I
    :goto_56
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 365
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    .line 366
    iput v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 332
    return-void

    .line 357
    :cond_60
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->reset()V

    .line 358
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 359
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    goto :goto_56
.end method

.method public onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V
    .registers 5
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const/4 v2, 0x0

    .line 1572
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1575
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1578
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1579
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 1580
    invoke-virtual {p1, v2, v2}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1581
    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1582
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v1, :cond_1c

    .line 1583
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    .line 1587
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 1589
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1571
    return-void
.end method

.method public bridge synthetic onReturnViewToPool(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tv"    # Ljava/lang/Object;

    .prologue
    .line 1571
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public onStackScrollChanged(FFLcom/android/systemui/recents/views/AnimationProps;)V
    .registers 7
    .param p1, "prevScroll"    # F
    .param p2, "curScroll"    # F
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1694
    if-eqz p3, :cond_d

    .line 1695
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1699
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1692
    :cond_17
    :goto_17
    return-void

    .line 1700
    :cond_18
    cmpl-float v0, p1, v1

    if-lez v0, :cond_36

    .line 1701
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_36

    .line 1702
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_36

    .line 1703
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_17

    .line 1704
    :cond_36
    cmpg-float v0, p1, v1

    if-gez v0, :cond_17

    .line 1705
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_17

    .line 1706
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_17
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .registers 6
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "newTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1473
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1476
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_e

    .line 1477
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 1476
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1471
    return-void

    .line 1478
    :cond_e
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    goto :goto_a
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V
    .registers 11
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/recents/model/Task;
    .param p4, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p5, "fromDockGesture"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1487
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v2, p2, :cond_8

    .line 1488
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1493
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1494
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_13

    .line 1495
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1499
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1502
    if-eqz p4, :cond_1e

    .line 1503
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1504
    invoke-virtual {p0, p4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1508
    :cond_1e
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_2f

    if-eqz p3, :cond_2f

    .line 1509
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1510
    .local v0, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_2f

    .line 1511
    const/16 v2, 0xc8

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 1516
    .end local v0    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2f
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_48

    .line 1517
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_49

    .line 1518
    const v2, 0x7f0f02d4

    .line 1517
    :goto_42
    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1486
    :cond_48
    return-void

    .line 1519
    :cond_49
    const v2, 0x7f0f02d5

    goto :goto_42
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1530
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1531
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_29

    .line 1532
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1531
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 1536
    :cond_29
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1539
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .line 1540
    const v4, 0x7f0f02d5

    .line 1539
    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1524
    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 1546
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1547
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1551
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 1552
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1553
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_24

    .line 1554
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1555
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1553
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1544
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_24
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
    .registers 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1673
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-nez v0, :cond_a

    .line 1674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1675
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 1672
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1161
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1162
    return v3

    .line 1164
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1165
    .local v0, "focusedTask":Lcom/android/systemui/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 1166
    .local v1, "taskIndex":I
    if-ltz v1, :cond_20

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1167
    sparse-switch p1, :sswitch_data_2e

    .line 1180
    :cond_20
    return v4

    .line 1169
    :sswitch_21
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    .line 1171
    return v3

    .line 1174
    :sswitch_27
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    .line 1176
    return v3

    .line 1167
    nop

    :sswitch_data_2e
    .sparse-switch
        0x1000 -> :sswitch_21
        0x2000 -> :sswitch_27
    .end sparse-switch
.end method

.method public relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V
    .registers 4
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    const/4 v1, 0x0

    .line 684
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 683
    return-void
.end method

.method relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V
    .registers 2
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 729
    return-void
.end method

.method public reloadOnConfigurationChange()V
    .registers 4

    .prologue
    .line 2162
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 2163
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 2165
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    .line 2161
    .local v0, "hasDockedTask":Z
    return-void
.end method

.method removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method public resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1078
    if-eqz p1, :cond_d

    .line 1079
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1080
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_d

    .line 1081
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1084
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v1, :cond_16

    .line 1085
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 1087
    :cond_16
    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 1077
    return-void
.end method

.method public setFocusedTask(IZZ)Z
    .registers 5
    .param p1, "taskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z

    .prologue
    .line 908
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v0

    return v0
.end method

.method public setFocusedTask(IZZI)Z
    .registers 13
    .param p1, "focusTaskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z
    .param p4, "timerIndicatorDuration"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 919
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lez v6, :cond_76

    .line 920
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {p1, v7, v6}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v1

    .line 921
    .local v1, "newFocusedTaskIndex":I
    :goto_16
    if-eq v1, v5, :cond_78

    .line 922
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 925
    :goto_24
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v5, :cond_3e

    .line 927
    if-lez p4, :cond_39

    .line 928
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 929
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_39

    .line 930
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    .line 934
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_39
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 937
    :cond_3e
    const/4 v4, 0x0

    .line 938
    .local v4, "willScroll":Z
    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 940
    if-eqz v0, :cond_75

    .line 942
    if-lez p4, :cond_54

    .line 943
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 944
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_7a

    .line 945
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    .line 952
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_54
    :goto_54
    if-eqz p2, :cond_7d

    .line 954
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v5, :cond_5d

    .line 955
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 958
    :cond_5d
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 959
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v5, v0, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z

    move-result v4

    .line 969
    .end local v4    # "willScroll":Z
    :cond_68
    :goto_68
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v5, :cond_75

    .line 970
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 973
    :cond_75
    return v4

    .end local v1    # "newFocusedTaskIndex":I
    :cond_76
    move v1, v5

    .line 920
    goto :goto_16

    .line 922
    .restart local v1    # "newFocusedTaskIndex":I
    :cond_78
    const/4 v0, 0x0

    .local v0, "newFocusedTask":Lcom/android/systemui/recents/model/Task;
    goto :goto_24

    .line 948
    .end local v0    # "newFocusedTask":Lcom/android/systemui/recents/model/Task;
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v4    # "willScroll":Z
    :cond_7a
    iput p4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    goto :goto_54

    .line 963
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_7d
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 964
    .local v2, "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_68

    .line 965
    const/4 v5, 0x1

    invoke-virtual {v2, v5, p3}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    goto :goto_68
.end method

.method public setRelativeFocusedTask(ZZZ)V
    .registers 10
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 987
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    .line 986
    return-void
.end method

.method public setRelativeFocusedTask(ZZZZI)V
    .registers 21
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z
    .param p4, "cancelWindowAnimations"    # Z
    .param p5, "timerIndicatorDuration"    # I

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 1006
    .local v1, "focusedTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    .line 1007
    .local v2, "newIndex":I
    if-eqz v1, :cond_76

    .line 1008
    if-eqz p2, :cond_66

    .line 1009
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 1010
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v12

    if-eqz v12, :cond_49

    .line 1012
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v10

    .line 1013
    .local v10, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v10, :cond_2c

    .line 1014
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    .line 1063
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    .end local v10    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2c
    :goto_2c
    const/4 v12, -0x1

    if-eq v2, v12, :cond_48

    .line 1064
    const/4 v12, 0x1

    .line 1065
    const/4 v13, 0x1

    .line 1064
    move/from16 v0, p5

    invoke-virtual {p0, v2, v12, v13, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v11

    .line 1066
    .local v11, "willScroll":Z
    if-eqz v11, :cond_48

    if-eqz p4, :cond_48

    .line 1069
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1004
    .end local v11    # "willScroll":Z
    :cond_48
    return-void

    .line 1018
    .restart local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    :cond_49
    if-eqz p1, :cond_64

    const/4 v12, -0x1

    :goto_4c
    add-int v9, v2, v12

    .line 1019
    .local v9, "tmpNewIndex":I
    if-ltz v9, :cond_2c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_2c

    .line 1020
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 1021
    .local v4, "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v12

    if-nez v12, :cond_2c

    .line 1022
    move v2, v9

    goto :goto_2c

    .line 1018
    .end local v4    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v9    # "tmpNewIndex":I
    :cond_64
    const/4 v12, 0x1

    goto :goto_4c

    .line 1029
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    :cond_66
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    .line 1030
    .local v5, "taskCount":I
    if-eqz p1, :cond_74

    const/4 v12, -0x1

    :goto_6f
    add-int/2addr v12, v2

    add-int/2addr v12, v5

    rem-int v2, v12, v5

    goto :goto_2c

    :cond_74
    const/4 v12, 0x1

    goto :goto_6f

    .line 1034
    .end local v5    # "taskCount":I
    :cond_76
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    .line 1035
    .local v3, "stackScroll":F
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 1036
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1037
    .restart local v5    # "taskCount":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v12

    if-eqz v12, :cond_8f

    .line 1040
    add-int/lit8 v2, v5, -0x1

    goto :goto_2c

    .line 1044
    :cond_8f
    if-eqz p1, :cond_aa

    .line 1046
    add-int/lit8 v2, v5, -0x1

    :goto_93
    if-ltz v2, :cond_2c

    .line 1047
    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v6

    .line 1048
    .local v6, "taskP":F
    invoke-static {v6, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-lez v12, :cond_2c

    .line 1046
    add-int/lit8 v2, v2, -0x1

    goto :goto_93

    .line 1054
    .end local v6    # "taskP":F
    :cond_aa
    const/4 v2, 0x0

    :goto_ab
    if-ge v2, v5, :cond_2c

    .line 1055
    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v6

    .line 1056
    .restart local v6    # "taskP":F
    invoke-static {v6, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-gez v12, :cond_2c

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1227
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1228
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1229
    if-eqz v0, :cond_12

    .line 1230
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 1225
    :cond_12
    return-void
.end method

.method public setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .registers 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "allowNotifyStackChanges"    # Z

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInitialized()Z

    move-result v0

    .line 378
    .local v0, "isInitialized":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v3

    .line 379
    if-eqz p2, :cond_16

    .line 378
    .end local v0    # "isInitialized":Z
    :goto_12
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    .line 373
    return-void

    .line 379
    .restart local v0    # "isInitialized":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public updateLayoutAlgorithm(Z)V
    .registers 6
    .param p1, "boundScrollToNewMinMax"    # Z

    .prologue
    .line 870
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;)V

    .line 873
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 874
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 875
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 876
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 879
    :cond_23
    if-eqz p1, :cond_2a

    .line 880
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 868
    :cond_2a
    return-void
.end method

.method public updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V
    .registers 5
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 740
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 741
    return-void

    .line 743
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 745
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 744
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 739
    return-void
.end method

.method updateTaskViewsList()V
    .registers 5

    .prologue
    .line 397
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 399
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1e

    .line 400
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 401
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v3, :cond_1b

    .line 402
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 396
    :cond_1e
    return-void
.end method

.method public updateToInitialState()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 392
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 390
    return-void
.end method

.method public useGridLayout()Z
    .registers 2

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    if-ne p1, v0, :cond_6

    .line 1447
    const/4 v0, 0x1

    return v0

    .line 1449
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
