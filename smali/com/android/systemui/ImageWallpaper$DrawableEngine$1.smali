.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;
.super Landroid/os/AsyncTask;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 455
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v3

    return-object v3

    .line 456
    :catch_c
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Throwable;
    move-object v2, v0

    .line 460
    .local v2, "exception":Ljava/lang/Throwable;
    if-eqz v0, :cond_42

    .line 464
    const-string/jumbo v3, "ImageWallpaper"

    const-string/jumbo v4, "Unable to load wallpaper!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    :try_start_19
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_2d

    .line 473
    :goto_22
    :try_start_22
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_2b} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_2b} :catch_38

    move-result-object v3

    return-object v3

    .line 467
    :catch_2d
    move-exception v1

    .line 469
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "ImageWallpaper"

    const-string/jumbo v4, "Unable reset to default wallpaper!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 474
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_38
    move-exception v0

    .line 475
    const-string/jumbo v3, "ImageWallpaper"

    const-string/jumbo v4, "Unable to load default wallpaper!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    :cond_42
    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 452
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 483
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-object v3, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 484
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 485
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 487
    if-eqz p1, :cond_2d

    .line 488
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-object p1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 489
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 490
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 496
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-wrap0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    .line 498
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 499
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 502
    :cond_4b
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-set0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 503
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-set1(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)Z

    .line 482
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 482
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
