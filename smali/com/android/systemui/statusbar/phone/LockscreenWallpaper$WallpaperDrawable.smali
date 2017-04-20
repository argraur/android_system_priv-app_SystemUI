.class public Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "LockscreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;
    }
.end annotation


# instance fields
.field private final mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 225
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)V

    .line 224
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)V
    .registers 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    .prologue
    .line 229
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->-get0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 230
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;)V
    .registers 4
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->getConstantState()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 246
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 241
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 252
    .local v6, "vwidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 253
    .local v5, "vheight":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->-get0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 254
    .local v1, "dwidth":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mState:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;->-get0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 256
    .local v0, "dheight":I
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 258
    .local v3, "dy":F
    mul-int v7, v1, v5

    mul-int v8, v6, v0

    if-le v7, v8, :cond_67

    .line 259
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 264
    .local v4, "scale":F
    :goto_30
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_38

    .line 265
    const/high16 v4, 0x3f800000    # 1.0f

    .line 267
    :cond_38
    int-to-float v7, v5

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v3, v7, v8

    .line 269
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 270
    iget v8, p1, Landroid/graphics/Rect;->left:I

    .line 271
    iget v9, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    .line 272
    iget v10, p1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v1

    mul-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    .line 273
    iget v11, p1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v0

    mul-float/2addr v12, v4

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v12

    .line 269
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-super {p0, v7}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 250
    return-void

    .line 261
    .end local v4    # "scale":F
    :cond_67
    int-to-float v7, v6

    int-to-float v8, v1

    div-float v4, v7, v8

    .restart local v4    # "scale":F
    goto :goto_30
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 234
    return-void
.end method
