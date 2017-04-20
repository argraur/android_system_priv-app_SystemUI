.class public Lcom/android/systemui/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;,
        Lcom/android/systemui/recents/RecentsActivity$1;,
        Lcom/android/systemui/recents/RecentsActivity$2;,
        Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    }
.end annotation


# instance fields
.field private mFinishedOnStartup:Z

.field private mFocusTimerDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeIntent:Landroid/content/Intent;

.field private mIgnoreAltTabRelease:Z

.field private mIncompatibleAppOverlay:Landroid/view/View;

.field private mIsVisible:Z

.field private mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field private mLastDeviceOrientation:I

.field private mLastDisplayDensity:I

.field private mLastTabKeyEventTime:J

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private mReceivedNewIntent:Z

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field private final mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;


# direct methods
.method static synthetic -com_android_systemui_recents_RecentsActivity_lambda$2()V
    .registers 2

    .prologue
    .line 129
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 127
    new-instance v0, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .line 128
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;

    invoke-direct {v0}, Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 211
    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 98
    return-void
.end method

.method private reloadStackView()V
    .registers 15

    .prologue
    .line 388
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 389
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 390
    .local v6, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v6, :cond_e

    .line 391
    invoke-virtual {v7, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 395
    :cond_e
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 396
    .local v1, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 397
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v11

    if-nez v11, :cond_26

    .line 398
    iget v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 399
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v11, :cond_b5

    const/4 v11, 0x0

    .line 398
    :goto_23
    invoke-virtual {v7, v6, v12, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 402
    :cond_26
    new-instance v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 403
    .local v5, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 404
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 405
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 406
    invoke-virtual {v7, p0, v6, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 407
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 408
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-boolean v13, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-nez v11, :cond_b8

    const/4 v11, 0x1

    :goto_49
    invoke-virtual {v12, v13, v11}, Lcom/android/systemui/recents/views/RecentsView;->onReload(ZZ)V

    .line 409
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v12}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 412
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v11, :cond_ba

    const/4 v0, 0x0

    .line 413
    .local v0, "animateNavBarScrim":Z
    :goto_57
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-lez v11, :cond_bc

    const/4 v11, 0x1

    :goto_60
    const/4 v13, 0x0

    invoke-virtual {v12, v0, v11, v13}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->updateNavBarScrim(ZZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 417
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v11, :cond_c0

    .line 418
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v11, :cond_be

    const/4 v10, 0x0

    .line 419
    .local v10, "wasLaunchedByAm":Z
    :goto_6d
    if-eqz v10, :cond_7b

    .line 420
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v12}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 424
    :cond_7b
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v11, :cond_c2

    .line 425
    const-string/jumbo v11, "overview_trigger_alttab"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 431
    :goto_86
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v11, :cond_cc

    .line 432
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 433
    .local v3, "launchTarget":Lcom/android/systemui/recents/model/Task;
    if-eqz v3, :cond_ca

    .line 434
    invoke-virtual {v8, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    .line 436
    .local v4, "launchTaskIndexInStack":I
    :goto_94
    const-string/jumbo v11, "overview_source_app"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 438
    const-string/jumbo v11, "overview_source_app_index"

    invoke-static {p0, v11, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 444
    .end local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "launchTaskIndexInStack":I
    :goto_a1
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    .line 445
    .local v9, "taskCount":I
    const-string/jumbo v11, "overview_task_count"

    invoke-static {p0, v11, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 448
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 385
    return-void

    .line 399
    .end local v0    # "animateNavBarScrim":Z
    .end local v5    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "taskCount":I
    .end local v10    # "wasLaunchedByAm":Z
    :cond_b5
    const/4 v11, 0x1

    goto/16 :goto_23

    .line 408
    .restart local v5    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_b8
    const/4 v11, 0x0

    goto :goto_49

    .line 412
    :cond_ba
    const/4 v0, 0x1

    .restart local v0    # "animateNavBarScrim":Z
    goto :goto_57

    .line 413
    :cond_bc
    const/4 v11, 0x0

    goto :goto_60

    .line 418
    :cond_be
    const/4 v10, 0x1

    goto :goto_6d

    .line 417
    :cond_c0
    const/4 v10, 0x0

    goto :goto_6d

    .line 427
    .restart local v10    # "wasLaunchedByAm":Z
    :cond_c2
    const-string/jumbo v11, "overview_trigger_nav_btn"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_86

    .line 435
    .restart local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    :cond_ca
    const/4 v4, 0x0

    .restart local v4    # "launchTaskIndexInStack":I
    goto :goto_94

    .line 440
    .end local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "launchTaskIndexInStack":I
    :cond_cc
    const-string/jumbo v11, "overview_source_home"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_a1
.end method


# virtual methods
.method dismissRecentsToFocusedTask(I)Z
    .registers 4
    .param p1, "logCategory"    # I

    .prologue
    .line 225
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 226
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 228
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    .line 230
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToFocusedTaskOrHome()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 251
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 252
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 254
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask(I)Z

    move-result v1

    if-eqz v1, :cond_15

    return v2

    .line 256
    :cond_15
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 257
    return v2

    .line 259
    :cond_19
    return v3
.end method

.method dismissRecentsToHome(Z)V
    .registers 3
    .param p1, "animateTaskViews"    # Z

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZLandroid/app/ActivityOptions;)V

    .line 265
    return-void
.end method

.method dismissRecentsToHome(ZLandroid/app/ActivityOptions;)V
    .registers 6
    .param p1, "animateTaskViews"    # Z
    .param p2, "overrideAnimation"    # Landroid/app/ActivityOptions;

    .prologue
    .line 277
    new-instance v0, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;-><init>(Z)V

    .line 278
    .local v0, "dismissEvent":Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 280
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 281
    const-string/jumbo v2, "homekey"

    .line 280
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 275
    return-void
.end method

.method dismissRecentsToHomeIfVisible(Z)Z
    .registers 4
    .param p1, "animated"    # Z

    .prologue
    .line 287
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 288
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 291
    const/4 v1, 0x1

    return v1

    .line 293
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToLaunchTargetTaskOrHome()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 237
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 238
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 240
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v1

    if-eqz v1, :cond_14

    return v2

    .line 242
    :cond_14
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 244
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 825
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/events/EventBus;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 827
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 829
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 831
    const-string/jumbo v4, "overview_last_stack_active_time"

    const-wide/16 v6, -0x1

    .line 832
    invoke-static {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v5

    .line 830
    invoke-static {v1, v4, v6, v7, v5}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    .line 834
    .local v2, "lastStackActiveTime":J
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsActivity"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    const-string/jumbo v1, " visible="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v1, :cond_79

    const-string/jumbo v1, "Y"

    :goto_44
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    const-string/jumbo v1, " lastStackTaskActiveTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 837
    const-string/jumbo v1, " currentTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 838
    const-string/jumbo v1, " [0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "]"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 841
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_78

    .line 842
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/views/RecentsView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 824
    :cond_78
    return-void

    .line 835
    :cond_79
    const-string/jumbo v1, "N"

    goto :goto_44
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 554
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 555
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 553
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 630
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 628
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    .prologue
    .line 708
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 709
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 710
    .local v1, "launchToTaskId":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_29

    .line 711
    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_19

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v1, v3, :cond_29

    .line 712
    :cond_19
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 713
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v3, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelWindowTransition(I)V

    .line 714
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelThumbnailTransition(I)V

    .line 707
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_29
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 793
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 702
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 804
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    .prologue
    .line 689
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 690
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 688
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->isLastTaskLaunchedFreeform()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 696
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 698
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 699
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 694
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    .prologue
    .line 673
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_c

    .line 675
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    if-nez v0, :cond_b

    .line 676
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome()Z

    .line 672
    :cond_b
    :goto_b
    return-void

    .line 678
    :cond_c
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    if-eqz v0, :cond_b

    .line 679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 682
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_b
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    .prologue
    .line 645
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 648
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    const/4 v1, 0x0

    .line 649
    .local v1, "timerIndicatorDuration":I
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 651
    const v3, 0x7f0e003d

    .line 650
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 653
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;->setDozeDuration(I)V

    .line 654
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 655
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 662
    :cond_28
    :goto_28
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 664
    const/16 v2, 0x114

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 644
    return-void

    .line 657
    :cond_3a
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    goto :goto_28
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .prologue
    const/4 v1, 0x1

    .line 784
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 786
    const-string/jumbo v0, "overview_task_launch_failed"

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 782
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    .prologue
    .line 779
    const-string/jumbo v0, "overview_task_launch_index"

    iget v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 778
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    .prologue
    .line 636
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 637
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_11

    .line 638
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 635
    :goto_10
    return-void

    .line 640
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToLaunchTargetTaskOrHome()Z

    goto :goto_10
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    .prologue
    .line 790
    const-string/jumbo v0, "overview_screen_pinned"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 789
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 766
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 767
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 768
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget v2, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    .line 775
    :goto_11
    const-string/jumbo v1, "overview_task_all_dismissed"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 765
    return-void

    .line 771
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    goto :goto_11
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    .prologue
    .line 757
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 758
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 761
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 762
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 755
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 747
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 748
    const/4 v1, 0x0

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 749
    const-wide/16 v2, 0x96

    .line 747
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 750
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 745
    :cond_1e
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    .prologue
    const/4 v4, 0x0

    .line 720
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 721
    const-string/jumbo v2, "package"

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 720
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 722
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 723
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 725
    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 723
    invoke-virtual {v1, v4, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 728
    const-string/jumbo v1, "overview_app_info"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 718
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    .prologue
    const/4 v1, 0x0

    .line 732
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-nez v0, :cond_1c

    .line 734
    const v0, 0x7f1201fd

    .line 733
    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/app/Activity;I)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    .line 735
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 738
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 739
    const/high16 v1, 0x3f800000    # 1.0f

    .line 738
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 740
    const-wide/16 v2, 0x96

    .line 738
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 741
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 738
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 731
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    .prologue
    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 798
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 667
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 476
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 479
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 480
    .local v0, "newDeviceConfiguration":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    .line 481
    .local v1, "numStackTasks":I
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 482
    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v5, :cond_38

    move v2, v3

    .line 483
    :goto_20
    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    iget v8, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v8, :cond_3a

    move v5, v3

    :goto_27
    if-lez v1, :cond_3c

    .line 481
    :goto_29
    invoke-direct {v7, v4, v2, v5, v3}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 484
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 485
    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    .line 475
    return-void

    :cond_38
    move v2, v4

    .line 482
    goto :goto_20

    :cond_3a
    move v5, v4

    .line 483
    goto :goto_27

    :cond_3c
    move v3, v4

    goto :goto_29
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 300
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 304
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 305
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez v2, :cond_14

    .line 306
    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 308
    return-void

    .line 312
    :cond_14
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 315
    new-instance v3, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    .line 316
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;)V

    .line 319
    const v3, 0x7f0400c9

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 320
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->takeKeyEvents(Z)V

    .line 321
    const v3, 0x7f1201fc

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 322
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v4, 0x700

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 325
    new-instance v3, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 329
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 330
    .local v0, "appConfiguration":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 331
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    .line 333
    new-instance v3, Lcom/android/systemui/recents/misc/DozeTrigger;

    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    new-instance v5, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getBackgroundScrim()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    .line 345
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 350
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 298
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 536
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 539
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    if-eqz v0, :cond_8

    .line 540
    return-void

    .line 544
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    .line 549
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 560
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 561
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public onEnterAnimationComplete()V
    .registers 3

    .prologue
    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    if-nez v0, :cond_16

    .line 460
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    :goto_15
    return-void

    .line 462
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_15
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 574
    sparse-switch p1, :sswitch_data_84

    .line 619
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 576
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 577
    .local v0, "altTabKeyDelay":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 578
    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 577
    sub-long/2addr v4, v6

    .line 578
    int-to-long v6, v0

    .line 577
    cmp-long v4, v4, v6

    if-lez v4, :cond_4b

    const/4 v3, 0x1

    .line 579
    .local v3, "hasRepKeyTimeElapsed":Z
    :goto_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2a

    if-eqz v3, :cond_4a

    .line 581
    :cond_2a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    .line 582
    .local v1, "backward":Z
    if-eqz v1, :cond_4d

    .line 583
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 588
    :goto_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 591
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 592
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 595
    .end local v1    # "backward":Z
    :cond_4a
    return v9

    .line 577
    .end local v3    # "hasRepKeyTimeElapsed":Z
    :cond_4b
    const/4 v3, 0x0

    .restart local v3    # "hasRepKeyTimeElapsed":Z
    goto :goto_22

    .line 585
    .restart local v1    # "backward":Z
    :cond_4d
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    .line 586
    new-instance v5, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v5, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    .line 585
    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_3c

    .line 601
    .end local v0    # "altTabKeyDelay":I
    .end local v1    # "backward":Z
    .end local v3    # "hasRepKeyTimeElapsed":Z
    :sswitch_5a
    invoke-static {p1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;->getDirectionFromKeyCode(I)Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    move-result-object v2

    .line 602
    .local v2, "direction":Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;

    invoke-direct {v5, v2}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;-><init>(Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 603
    return v9

    .line 607
    .end local v2    # "direction":Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    :sswitch_6b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-gtz v4, :cond_5

    .line 608
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 611
    const-string/jumbo v4, "overview_task_dismissed_source"

    invoke-static {p0, v4, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 613
    return v9

    .line 574
    :sswitch_data_84
    .sparse-switch
        0x13 -> :sswitch_5a
        0x14 -> :sswitch_5a
        0x15 -> :sswitch_5a
        0x16 -> :sswitch_5a
        0x3d -> :sswitch_a
        0x43 -> :sswitch_6b
        0x70 -> :sswitch_6b
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 15
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 490
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 493
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 494
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 495
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 496
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 497
    .local v3, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v8, -0x1

    invoke-virtual {v4, v3, v8, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 500
    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 501
    .local v2, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v8, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 502
    iget v8, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 503
    invoke-virtual {v4, p0, v3, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 505
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    .line 506
    .local v7, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    .line 507
    .local v5, "numStackTasks":I
    if-lez v5, :cond_50

    const/4 v6, 0x1

    .line 509
    .local v6, "showDeferredAnimation":Z
    :goto_34
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 511
    if-lez v5, :cond_52

    move v8, v9

    .line 509
    :goto_3d
    invoke-direct {v12, v9, v10, v10, v8}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 512
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-direct {v9, p1, v6, v7}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;-><init>(ZZLcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 489
    return-void

    .line 507
    .end local v6    # "showDeferredAnimation":Z
    :cond_50
    const/4 v6, 0x0

    .restart local v6    # "showDeferredAnimation":Z
    goto :goto_34

    :cond_52
    move v8, v10

    .line 511
    goto :goto_3d
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 374
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 468
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 471
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 467
    return-void
.end method

.method public onPreDraw()Z
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 814
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 820
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 366
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 367
    const/16 v0, 0xe0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 362
    return-void
.end method

.method protected onStop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 518
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 521
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 522
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    .line 523
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 524
    const/16 v2, 0xe0

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 529
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 530
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 531
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 517
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 566
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 567
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_9

    .line 568
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 565
    :cond_9
    return-void
.end method

.method public onUserInteraction()V
    .registers 3

    .prologue
    .line 624
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 623
    return-void
.end method
