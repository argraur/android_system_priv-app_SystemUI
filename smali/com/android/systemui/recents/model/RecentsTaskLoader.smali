.class public Lcom/android/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoader$1;
    }
.end annotation


# instance fields
.field private final mActivityInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultTaskBarBackgroundColor:I

.field mDefaultTaskViewBackgroundColor:I

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field private final mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field private final mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

.field private final mMaxIconCacheSize:I

.field private final mMaxThumbnailCacheSize:I

.field private mNumVisibleTasksLoaded:I

.field private mNumVisibleThumbnailsLoaded:I

.field private final mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Lcom/android/systemui/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    .line 279
    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 292
    .local v9, "res":Landroid/content/res/Resources;
    const v0, 0x7f0c0087

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 291
    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    .line 294
    const v0, 0x7f0c0088

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 293
    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    .line 295
    const v0, 0x7f0e0025

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 296
    const v0, 0x7f0e0026

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 298
    iget v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 300
    .local v7, "iconCacheSize":I
    iget v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 303
    .local v10, "thumbnailCacheSize":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 304
    .local v6, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 305
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 308
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 311
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v8

    .line 312
    .local v8, "numRecentTasks":I
    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 313
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 314
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-direct {v0, v10}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 315
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v0, v8, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 316
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 317
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 316
    invoke-direct {v0, v8, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 318
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v8}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 319
    new-instance v0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 320
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 319
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/TaskKeyLruCache;Lcom/android/systemui/recents/model/TaskKeyLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    .line 289
    return-void
.end method

.method private stopLoader()V
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->stop()V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 613
    return-void
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    return-object v0
.end method

.method public deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V
    .registers 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "notifyTaskDataUnloaded"    # Z

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 398
    if-eqz p2, :cond_29

    .line 399
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_29
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsTaskLoader"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Icon Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 641
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Thumbnail Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 635
    return-void
.end method

.method getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .registers 3
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 584
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_d

    .line 585
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    return v0

    .line 587
    :cond_d
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return v0
.end method

.method getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I
    .registers 3
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 574
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_d

    .line 575
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    return v0

    .line 577
    :cond_d
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    return v0
.end method

.method getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "loadIfNotCached"    # Z

    .prologue
    const/4 v4, 0x0

    .line 512
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 515
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 516
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_10

    .line 517
    return-object v1

    .line 520
    :cond_10
    if-eqz p4, :cond_34

    .line 522
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, p2, v3, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 523
    if-eqz v1, :cond_20

    .line 524
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 525
    return-object v1

    .line 529
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 530
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_34

    .line 531
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_34

    .line 533
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 534
    return-object v1

    .line 539
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_34
    return-object v4
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .registers 9
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    const/4 v6, 0x0

    .line 595
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 596
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 597
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 598
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_48

    .line 599
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 600
    if-eqz v1, :cond_1d

    if-nez v0, :cond_43

    .line 601
    :cond_1d
    const-string/jumbo v3, "RecentsTaskLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected null component name or activity info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-object v6

    .line 605
    :cond_43
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_48
    return-object v0
.end method

.method getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .registers 7
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 459
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 462
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 463
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 466
    :cond_11
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 467
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 468
    return-object v1

    .line 471
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 472
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2e

    .line 473
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 475
    return-object v1

    .line 479
    :cond_2e
    const-string/jumbo v3, ""

    return-object v3
.end method

.method getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 7
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 487
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 490
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 492
    return-object v1

    .line 496
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 497
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_21

    .line 498
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 499
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 500
    return-object v1

    .line 504
    :cond_21
    const-string/jumbo v3, ""

    return-object v3
.end method

.method getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "loadIfNotCached"    # Z

    .prologue
    const/4 v5, 0x0

    .line 546
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 549
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/ThumbnailData;

    .line 550
    .local v2, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    if-eqz v2, :cond_12

    .line 551
    iget-object v3, v2, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object v3

    .line 554
    :cond_12
    if-eqz p2, :cond_2f

    .line 555
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 556
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2f

    .line 558
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v2

    .line 559
    iget-object v3, v2, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2f

    .line 560
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 561
    iget-object v3, v2, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object v3

    .line 566
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    :cond_2f
    return-object v5
.end method

.method public getIconCacheSize()I
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getThumbnailCacheSize()I
    .registers 2

    .prologue
    .line 330
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public loadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .registers 10
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 365
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 366
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 367
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 368
    .local v4, "thumbnailInfo":Landroid/app/ActivityManager$TaskThumbnailInfo;
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/ThumbnailData;

    .line 369
    .local v3, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    if-eqz v3, :cond_1d

    .line 370
    iget-object v2, v3, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 371
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v4, v3, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 376
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v4    # "thumbnailInfo":Landroid/app/ActivityManager$TaskThumbnailInfo;
    :cond_1d
    if-eqz v0, :cond_21

    if-nez v2, :cond_34

    :cond_21
    const/4 v1, 0x1

    .line 377
    .local v1, "requiresLoad":Z
    :goto_22
    if-eqz v0, :cond_36

    .line 378
    :goto_24
    if-eqz v1, :cond_2b

    .line 379
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v6, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 381
    :cond_2b
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v2, v6, :cond_30

    move-object v2, v5

    :cond_30
    invoke-virtual {p1, v2, v0, v4}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/app/ActivityManager$TaskThumbnailInfo;)V

    .line 364
    return-void

    .line 376
    .end local v1    # "requiresLoad":Z
    :cond_34
    const/4 v1, 0x0

    .restart local v1    # "requiresLoad":Z
    goto :goto_22

    .line 377
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_24
.end method

.method public loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p3, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    .line 348
    if-nez p3, :cond_b

    .line 349
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Requires load options"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p2, p3, p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V

    .line 352
    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez v0, :cond_21

    .line 353
    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 354
    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    .line 357
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    .line 347
    :cond_21
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    .prologue
    .line 624
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 625
    .local v0, "activityInfoCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cn$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 626
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 630
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 620
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_2c
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 6
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x1

    .line 408
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 409
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    sparse-switch p1, :sswitch_data_b6

    .line 407
    :goto_8
    return-void

    .line 412
    :sswitch_9
    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 413
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v1, :cond_2f

    .line 414
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 415
    iget v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v3, v3, 0x2

    .line 414
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 421
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 422
    iget v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v3, v3, 0x2

    .line 421
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_8

    .line 416
    :cond_2f
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-ne v1, v3, :cond_3b

    .line 417
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_1f

    .line 418
    :cond_3b
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1f

    .line 419
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    goto :goto_1f

    .line 427
    :sswitch_46
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 429
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 430
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 429
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_8

    .line 435
    :sswitch_70
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 436
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 437
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 438
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    .line 437
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->trimToSize(I)V

    goto/16 :goto_8

    .line 443
    :sswitch_9b
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 444
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 447
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 448
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    goto/16 :goto_8

    .line 409
    :sswitch_data_b6
    .sparse-switch
        0x5 -> :sswitch_46
        0xa -> :sswitch_70
        0xf -> :sswitch_9b
        0x14 -> :sswitch_9
        0x28 -> :sswitch_46
        0x3c -> :sswitch_70
        0x50 -> :sswitch_9b
    .end sparse-switch
.end method

.method public preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V
    .registers 4
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "runningTaskId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z

    .prologue
    .line 342
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V

    .line 341
    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .registers 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 386
    return-void
.end method
