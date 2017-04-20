.class Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LockscreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstantState"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->mBackground:Landroid/graphics/Bitmap;

    .line 287
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 298
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;)V

    return-object v0
.end method
