.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field private static MIN_NUM_TASKS:I

.field private static SESSION_BEGIN_TIME:I


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentQuietProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    .line 59
    const v0, 0x1499700

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .registers 8
    .param p1, "t"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 284
    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private migrateLegacyLastStackActiveTime(I)J
    .registers 12
    .param p1, "currentUserId"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 299
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 300
    const-string/jumbo v7, "OverviewLastStackTaskActiveTime"

    .line 299
    invoke-static {v6, v7, v8, v9}, Lcom/android/systemui/Prefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 301
    .local v2, "legacyLastStackActiveTime":J
    cmp-long v6, v2, v8

    if-eqz v6, :cond_47

    .line 302
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "OverviewLastStackTaskActiveTime"

    invoke-static {v6, v7}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 304
    .local v4, "userMgr":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 305
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_46

    .line 306
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    .line 307
    .local v1, "userId":I
    if-eq v1, p1, :cond_43

    .line 308
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 309
    const-string/jumbo v7, "overview_last_stack_active_time"

    .line 308
    invoke-static {v6, v7, v2, v3, v1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 305
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 313
    .end local v1    # "userId":I
    :cond_46
    return-wide v2

    .line 315
    .end local v0    # "i":I
    .end local v4    # "userMgr":Landroid/os/UserManager;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_47
    const-wide/16 v6, 0x0

    return-wide v6
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .registers 8
    .param p1, "currentUserId"    # I

    .prologue
    .line 85
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 87
    const/4 v4, -0x2

    if-ne p1, v4, :cond_c

    .line 88
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 90
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 91
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_44

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_44

    .line 94
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 95
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 96
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 84
    .end local v0    # "i":I
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_44
    return-void
.end method


# virtual methods
.method public declared-synchronized executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V
    .registers 16
    .param p1, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p3, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .prologue
    monitor-enter p0

    .line 220
    :try_start_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 221
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 224
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 225
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 226
    .local v7, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v7, :cond_82

    .line 227
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    .line 228
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v8, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 230
    .local v8, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v11, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v10, v11, :cond_40

    const/4 v2, 0x1

    .line 231
    .local v2, "isRunningTask":Z
    :goto_29
    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v10, v7, v10

    if-lt v1, v10, :cond_42

    const/4 v3, 0x1

    .line 232
    .local v3, "isVisibleTask":Z
    :goto_30
    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v10, v7, v10

    if-lt v1, v10, :cond_44

    const/4 v4, 0x1

    .line 235
    .local v4, "isVisibleThumbnail":Z
    :goto_37
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v10, :cond_46

    if-eqz v2, :cond_46

    .line 226
    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 230
    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    :cond_40
    const/4 v2, 0x0

    .restart local v2    # "isRunningTask":Z
    goto :goto_29

    .line 231
    :cond_42
    const/4 v3, 0x0

    .restart local v3    # "isVisibleTask":Z
    goto :goto_30

    .line 232
    :cond_44
    const/4 v4, 0x0

    .restart local v4    # "isVisibleThumbnail":Z
    goto :goto_37

    .line 239
    :cond_46
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v10, :cond_5b

    if-nez v2, :cond_4e

    if-eqz v3, :cond_5b

    .line 240
    :cond_4e
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_5b

    .line 241
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 242
    const/4 v11, 0x1

    .line 241
    invoke-virtual {p2, v8, v10, v5, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 245
    :cond_5b
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v10, :cond_3d

    if-nez v2, :cond_63

    if-eqz v4, :cond_3d

    .line 246
    :cond_63
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_69

    if-eqz v2, :cond_3d

    .line 247
    :cond_69
    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_79

    .line 249
    const/4 v10, 0x1

    .line 248
    invoke-virtual {p2, v8, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_76

    goto :goto_3d

    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "i":I
    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "taskCount":I
    .end local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :catchall_76
    move-exception v10

    monitor-exit p0

    throw v10

    .line 250
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v1    # "i":I
    .restart local v2    # "isRunningTask":Z
    .restart local v3    # "isVisibleTask":Z
    .restart local v4    # "isVisibleThumbnail":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v7    # "taskCount":I
    .restart local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .restart local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_79
    :try_start_79
    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3d

    .line 251
    invoke-virtual {p3, v6}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_76

    goto :goto_3d

    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_82
    monitor-exit p0

    .line 219
    return-void
.end method

.method public getRawTasks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    return-object v0
.end method

.method public getTaskStack()Lcom/android/systemui/recents/model/TaskStack;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v1, :cond_f

    .line 275
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 277
    :cond_f
    return v0
.end method

.method public declared-synchronized preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V
    .registers 47
    .param p1, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p2, "runningTaskId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 128
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    .line 129
    .local v33, "res":Landroid/content/res/Resources;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v26, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v6, :cond_1b

    .line 131
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 134
    :cond_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v40

    .line 135
    .local v40, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v25, Landroid/util/SparseArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseArray;-><init>()V

    .line 136
    .local v25, "affiliatedTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    new-instance v24, Landroid/util/SparseIntArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseIntArray;-><init>()V

    .line 137
    .local v24, "affiliatedTaskCounts":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 138
    const v7, 0x7f0f0242

    .line 137
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 139
    .local v29, "dismissDescFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 140
    const v7, 0x7f0f0245

    .line 139
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 141
    .local v27, "appInfoDescFormat":Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v28

    .line 142
    .local v28, "currentUserId":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->migrateLegacyLastStackActiveTime(I)J

    move-result-wide v36

    .line 143
    .local v36, "legacyLastStackActiveTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 144
    const-string/jumbo v7, "overview_last_stack_active_time"

    .line 143
    move-wide/from16 v0, v36

    move/from16 v2, v28

    invoke-static {v6, v7, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v34

    .line 148
    .local v34, "lastStackActiveTime":J
    const-wide/16 v38, -0x1

    .line 149
    .local v38, "newLastStackActiveTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v42

    .line 150
    .local v42, "taskCount":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_6e
    move/from16 v0, v30

    move/from16 v1, v42

    if-ge v0, v1, :cond_1ca

    .line 151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v30

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 154
    .local v41, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v5, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v41

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v41

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, v41

    iget-object v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 155
    move-object/from16 v0, v41

    iget v9, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v41

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v41

    iget-wide v12, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 154
    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    .line 159
    .local v5, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, v41

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    invoke-static {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v32

    .line 161
    .local v32, "isFreeformTask":Z
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v6, :cond_193

    .line 164
    move-object/from16 v0, v41

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v6, v6, v34

    if-ltz v6, :cond_18f

    .line 165
    add-int/lit8 v6, v42, -0x8

    move/from16 v0, v30

    if-lt v0, v6, :cond_18b

    const/16 v17, 0x1

    .line 170
    .local v17, "isStackTask":Z
    :goto_bd
    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p2

    if-ne v6, v0, :cond_1bb

    const/16 v16, 0x1

    .line 176
    .local v16, "isLaunchTarget":Z
    :goto_c5
    if-eqz v17, :cond_d3

    const-wide/16 v6, 0x0

    cmp-long v6, v38, v6

    if-gez v6, :cond_d3

    .line 177
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    move-wide/from16 v38, v0

    .line 181
    :cond_d3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v31

    .line 182
    .local v31, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v41

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, "titleDescription":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    move-object/from16 v0, v29

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "dismissDescription":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    move-object/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 186
    .local v13, "appInfoDescription":Ljava/lang/String;
    if-eqz v17, :cond_1bf

    .line 187
    move-object/from16 v0, v41

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v6, v1, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 189
    :goto_112
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 190
    .local v9, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v14

    .line 191
    .local v14, "activityColor":I
    move-object/from16 v0, v41

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v15

    .line 192
    .local v15, "backgroundColor":I
    if-eqz v31, :cond_1c6

    .line 193
    move-object/from16 v0, v31

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1c2

    const/16 v18, 0x1

    .line 196
    .local v18, "isSystemApp":Z
    :goto_13b
    new-instance v4, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v41

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v41

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 199
    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isDockable:Z

    move/from16 v19, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v21, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    move/from16 v22, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    .line 196
    invoke-direct/range {v4 .. v23}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;)V

    .line 201
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v7, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/16 v19, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    iget v6, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_6e

    .line 165
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v9    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "titleDescription":Ljava/lang/String;
    .end local v12    # "dismissDescription":Ljava/lang/String;
    .end local v13    # "appInfoDescription":Ljava/lang/String;
    .end local v14    # "activityColor":I
    .end local v15    # "backgroundColor":I
    .end local v16    # "isLaunchTarget":Z
    .end local v17    # "isStackTask":Z
    .end local v18    # "isSystemApp":Z
    .end local v31    # "info":Landroid/content/pm/ActivityInfo;
    :cond_18b
    const/16 v17, 0x0

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_bd

    .line 164
    .end local v17    # "isStackTask":Z
    :cond_18f
    const/16 v17, 0x0

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_bd

    .line 167
    .end local v17    # "isStackTask":Z
    :cond_193
    if-nez v32, :cond_1b3

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v6

    if-eqz v6, :cond_1b3

    .line 168
    move-object/from16 v0, v41

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v6, v6, v34

    if-ltz v6, :cond_1b7

    sget v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    sub-int v6, v42, v6

    move/from16 v0, v30

    if-lt v0, v6, :cond_1b7

    const/16 v17, 0x1

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_bd

    .line 167
    .end local v17    # "isStackTask":Z
    :cond_1b3
    const/16 v17, 0x1

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_bd

    .line 168
    .end local v17    # "isStackTask":Z
    :cond_1b7
    const/16 v17, 0x0

    .restart local v17    # "isStackTask":Z
    goto/16 :goto_bd

    .line 170
    :cond_1bb
    const/16 v16, 0x0

    .restart local v16    # "isLaunchTarget":Z
    goto/16 :goto_c5

    .line 188
    .restart local v10    # "title":Ljava/lang/String;
    .restart local v11    # "titleDescription":Ljava/lang/String;
    .restart local v12    # "dismissDescription":Ljava/lang/String;
    .restart local v13    # "appInfoDescription":Ljava/lang/String;
    .restart local v31    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1bf
    const/4 v8, 0x0

    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_112

    .line 193
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v14    # "activityColor":I
    .restart local v15    # "backgroundColor":I
    :cond_1c2
    const/16 v18, 0x0

    .restart local v18    # "isSystemApp":Z
    goto/16 :goto_13b

    .line 192
    .end local v18    # "isSystemApp":Z
    :cond_1c6
    const/16 v18, 0x0

    .restart local v18    # "isSystemApp":Z
    goto/16 :goto_13b

    .line 205
    .end local v5    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v9    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "titleDescription":Ljava/lang/String;
    .end local v12    # "dismissDescription":Ljava/lang/String;
    .end local v13    # "appInfoDescription":Ljava/lang/String;
    .end local v14    # "activityColor":I
    .end local v15    # "backgroundColor":I
    .end local v16    # "isLaunchTarget":Z
    .end local v17    # "isStackTask":Z
    .end local v18    # "isSystemApp":Z
    .end local v31    # "info":Landroid/content/pm/ActivityInfo;
    .end local v32    # "isFreeformTask":Z
    .end local v41    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1ca
    const-wide/16 v6, -0x1

    cmp-long v6, v38, v6

    if-eqz v6, :cond_1e2

    .line 206
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 207
    const-string/jumbo v7, "overview_last_stack_active_time"

    .line 206
    move-wide/from16 v0, v38

    move/from16 v2, v28

    invoke-static {v6, v7, v0, v1, v2}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 211
    :cond_1e2
    new-instance v6, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 212
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_1fc
    .catchall {:try_start_1 .. :try_end_1fc} :catchall_1fe

    monitor-exit p0

    .line 127
    return-void

    .end local v24    # "affiliatedTaskCounts":Landroid/util/SparseIntArray;
    .end local v25    # "affiliatedTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    .end local v26    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v27    # "appInfoDescFormat":Ljava/lang/String;
    .end local v28    # "currentUserId":I
    .end local v29    # "dismissDescFormat":Ljava/lang/String;
    .end local v30    # "i":I
    .end local v33    # "res":Landroid/content/res/Resources;
    .end local v34    # "lastStackActiveTime":J
    .end local v36    # "legacyLastStackActiveTime":J
    .end local v38    # "newLastStackActiveTime":J
    .end local v40    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v42    # "taskCount":I
    :catchall_1fe
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized preloadRawTasks(Z)V
    .registers 6
    .param p1, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 107
    const/4 v0, -0x2

    .line 108
    .local v0, "currentUserId":I
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

    .line 109
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 110
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    .line 111
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 110
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 114
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    .line 106
    return-void

    .end local v1    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catchall_1c
    move-exception v2

    monitor-exit p0

    throw v2
.end method
