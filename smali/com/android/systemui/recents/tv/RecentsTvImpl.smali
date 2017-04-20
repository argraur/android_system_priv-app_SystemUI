.class public Lcom/android/systemui/recents/tv/RecentsTvImpl;
.super Lcom/android/systemui/recents/RecentsImpl;
.source "RecentsTvImpl.java"


# static fields
.field private static final mPipManager:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private getThumbnailTransitionActivityOptionsForTV(Landroid/app/ActivityManager$RunningTaskInfo;I)Landroid/app/ActivityOptions;
    .registers 14
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "numTasks"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 127
    iget-object v3, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->isPipShown()Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v2

    .line 126
    :goto_d
    invoke-static {v3, v0, p2}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getStartingCardThumbnailRect(Landroid/content/Context;ZI)Landroid/graphics/Rect;

    move-result-object v8

    .line 128
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 129
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v10

    .line 130
    .local v10, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    iget-object v0, v10, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_44

    .line 131
    iget-object v0, v10, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 132
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 131
    invoke-static {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 134
    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 135
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mHandler:Landroid/os/Handler;

    .line 133
    invoke-static/range {v0 .. v7}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 127
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v10    # "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    :cond_42
    const/4 v0, 0x1

    goto :goto_d

    .line 138
    .restart local v8    # "rect":Landroid/graphics/Rect;
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v10    # "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    :cond_44
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/RecentsTvImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 143
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    .line 142
    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZ)V
    .registers 11
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "fromHome"    # Z
    .param p4, "fromThumbnail"    # Z

    .prologue
    .line 100
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 101
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 102
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput-boolean p3, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 103
    iput-boolean p4, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 104
    if-eqz p1, :cond_44

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_10
    iput v3, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 105
    iget-boolean v3, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mTriggeredFromAltTab:Z

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.systemui"

    const-string/jumbo v4, "com.android.systemui.recents.tv.RecentsTvActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const v3, 0x10804000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    if-eqz p2, :cond_46

    .line 114
    iget-object v3, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 118
    :goto_37
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 98
    return-void

    .line 104
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_44
    const/4 v3, -0x1

    goto :goto_10

    .line 116
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_46
    iget-object v3, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_37
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .registers 13
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .prologue
    .line 56
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 61
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-boolean v5, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mTriggeredFromAltTab:Z

    if-nez v5, :cond_c

    sget-object v5, Lcom/android/systemui/recents/tv/RecentsTvImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v5, :cond_14

    .line 63
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/recents/tv/RecentsTvImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 65
    :cond_14
    iget-boolean v5, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mTriggeredFromAltTab:Z

    if-nez v5, :cond_36

    sget-object v5, Lcom/android/systemui/recents/tv/RecentsTvImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 68
    :goto_20
    sget-object v5, Lcom/android/systemui/recents/tv/RecentsTvImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 70
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    if-nez p3, :cond_43

    .line 71
    iget-object v5, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 72
    .local v2, "opts":Landroid/app/ActivityOptions;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v2, v5, v6}, Lcom/android/systemui/recents/tv/RecentsTvImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZ)V

    .line 73
    return-void

    .line 66
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_36
    sget-object v6, Lcom/android/systemui/recents/tv/RecentsTvImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eqz p2, :cond_41

    const/4 v5, 0x0

    :goto_3d
    invoke-virtual {v1, v6, v7, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_20

    :cond_41
    const/4 v5, 0x1

    goto :goto_3d

    .line 76
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_43
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_6f

    const/4 v0, 0x1

    .line 77
    .local v0, "hasRecentTasks":Z
    :goto_4a
    if-eqz p1, :cond_4e

    if-eqz p2, :cond_71

    :cond_4e
    const/4 v4, 0x0

    .line 79
    .local v4, "useThumbnailTransition":Z
    :goto_4f
    if-eqz v4, :cond_60

    .line 82
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    .line 81
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/recents/tv/RecentsTvImpl;->getThumbnailTransitionActivityOptionsForTV(Landroid/app/ActivityManager$RunningTaskInfo;I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 83
    .restart local v2    # "opts":Landroid/app/ActivityOptions;
    if-eqz v2, :cond_73

    .line 84
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v2, v5, v6}, Lcom/android/systemui/recents/tv/RecentsTvImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZ)V

    .line 91
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    .end local v4    # "useThumbnailTransition":Z
    :cond_60
    :goto_60
    if-nez v4, :cond_68

    .line 92
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/android/systemui/recents/tv/RecentsTvImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZ)V

    .line 94
    :cond_68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mLastToggleTime:J

    .line 55
    return-void

    .line 76
    .end local v0    # "hasRecentTasks":Z
    :cond_6f
    const/4 v0, 0x0

    .restart local v0    # "hasRecentTasks":Z
    goto :goto_4a

    :cond_71
    move v4, v0

    .line 77
    goto :goto_4f

    .line 87
    .restart local v2    # "opts":Landroid/app/ActivityOptions;
    .restart local v4    # "useThumbnailTransition":Z
    :cond_73
    const/4 v4, 0x0

    .local v4, "useThumbnailTransition":Z
    goto :goto_60
.end method
