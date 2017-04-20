.class Lcom/android/systemui/recents/model/BackgroundTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mCancelled:Z

.field mContext:Landroid/content/Context;

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoadThread:Landroid/os/HandlerThread;

.field mLoadThreadHandler:Landroid/os/Handler;

.field mMainThreadHandler:Landroid/os/Handler;

.field mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Lcom/android/systemui/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingOnLoadQueue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const-string/jumbo v0, "TaskResourceLoader"

    sput-object v0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/TaskKeyLruCache;Lcom/android/systemui/recents/model/TaskKeyLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 9
    .param p1, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;
    .param p4, "defaultThumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "defaultIcon"    # Landroid/graphics/drawable/BitmapDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskResourceLoadQueue;",
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Lcom/android/systemui/recents/model/ThumbnailData;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "iconCache":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<Landroid/graphics/drawable/Drawable;>;"
    .local p3, "thumbnailCache":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<Lcom/android/systemui/recents/model/ThumbnailData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 112
    iput-object p2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 113
    iput-object p3, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 114
    iput-object p4, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 115
    iput-object p5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Recents-TaskResourceLoader"

    .line 118
    const/16 v2, 0xa

    .line 117
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 148
    :cond_2
    :goto_2
    iget-boolean v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-eqz v9, :cond_1a

    .line 151
    iput-object v12, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    .line 153
    iget-object v10, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v10

    .line 155
    :try_start_b
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_12
    .catchall {:try_start_b .. :try_end_10} :catchall_17

    :goto_10
    monitor-exit v10

    goto :goto_2

    .line 156
    :catch_12
    move-exception v3

    .line 157
    .local v3, "ie":Ljava/lang/InterruptedException;
    :try_start_13
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_10

    .line 153
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catchall_17
    move-exception v9

    monitor-exit v10

    throw v9

    .line 161
    :cond_1a
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    .line 162
    .local v2, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 165
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz v7, :cond_e7

    .line 167
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    .line 168
    .local v8, "t":Lcom/android/systemui/recents/model/Task;
    if-eqz v8, :cond_e7

    .line 169
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v10, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 170
    .local v0, "cachedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v10, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/ThumbnailData;

    .line 173
    .local v1, "cachedThumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    if-nez v0, :cond_96

    .line 174
    iget-object v9, v8, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 175
    iget-object v10, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iget-object v11, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 174
    invoke-virtual {v7, v9, v10, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    if-nez v0, :cond_8b

    .line 179
    iget-object v9, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v10, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 178
    invoke-virtual {v7, v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 180
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_8b

    .line 181
    sget-boolean v9, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    if-eqz v9, :cond_83

    sget-object v9, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Loading icon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_83
    iget-object v9, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v7, v4, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_8b
    if-nez v0, :cond_8f

    .line 187
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 192
    :cond_8f
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v10, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v9, v10, v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 195
    :cond_96
    if-nez v1, :cond_d7

    .line 196
    iget v9, v2, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v10, 0x3

    if-ge v9, v10, :cond_c4

    .line 197
    sget-boolean v9, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    if-eqz v9, :cond_bc

    sget-object v9, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Loading thumbnail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_bc
    iget-object v9, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v1

    .line 201
    :cond_c4
    iget-object v9, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v9, :cond_104

    .line 202
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iput-object v9, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 212
    :goto_cc
    iget v9, v2, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-ge v9, v13, :cond_d7

    .line 213
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v10, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v9, v10, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 216
    :cond_d7
    iget-boolean v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v9, :cond_e7

    .line 218
    move-object v5, v0

    .line 219
    .local v5, "newIcon":Landroid/graphics/drawable/Drawable;
    move-object v6, v1

    .line 220
    .local v6, "newThumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/systemui/recents/model/BackgroundTaskLoader$1;

    invoke-direct {v10, p0, v8, v6, v5}, Lcom/android/systemui/recents/model/BackgroundTaskLoader$1;-><init>(Lcom/android/systemui/recents/model/BackgroundTaskLoader;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    .end local v0    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "cachedThumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    .end local v5    # "newIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "newThumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    .end local v8    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_e7
    iget-boolean v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 233
    iget-object v10, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    monitor-enter v10

    .line 235
    const/4 v9, 0x1

    :try_start_f7
    iput-boolean v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    .line 236
    iget-object v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->wait()V

    .line 237
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z
    :try_end_101
    .catch Ljava/lang/InterruptedException; {:try_start_f7 .. :try_end_101} :catch_10a
    .catchall {:try_start_f7 .. :try_end_101} :catchall_10f

    :goto_101
    monitor-exit v10

    goto/16 :goto_2

    .line 206
    .restart local v0    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "cachedThumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    .restart local v8    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_104
    iget-object v9, v1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto :goto_cc

    .line 238
    .end local v0    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "cachedThumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    .end local v8    # "t":Lcom/android/systemui/recents/model/Task;
    :catch_10a
    move-exception v3

    .line 239
    .restart local v3    # "ie":Ljava/lang/InterruptedException;
    :try_start_10b
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_10f

    goto :goto_101

    .line 233
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catchall_10f
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method start(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    .line 129
    iget-object v1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 130
    :try_start_8
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->notifyAll()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 125
    return-void

    .line 129
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method stop()V
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_a

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    .line 135
    :cond_a
    return-void
.end method
