.class Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
    }
.end annotation


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 41
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 42
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 40
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 211
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v3, :cond_c

    .line 212
    new-instance v3, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 214
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 215
    .local v0, "info":Landroid/support/v7/widget/TintInfo;
    invoke-virtual {v0}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 217
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 218
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1d

    .line 219
    iput-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 220
    iput-object v2, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 222
    :cond_1d
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 223
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_29

    .line 224
    iput-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 225
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 228
    :cond_29
    iget-boolean v3, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v3, :cond_31

    iget-boolean v3, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_3b

    .line 229
    :cond_31
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-static {p1, v0, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 230
    return v4

    .line 233
    :cond_3b
    const/4 v3, 0x0

    return v3
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .registers 5

    .prologue
    const/16 v3, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    .local v0, "sdk":I
    if-ge v0, v3, :cond_9

    .line 192
    return v2

    .line 193
    :cond_9
    if-ne v0, v3, :cond_c

    .line 197
    return v1

    .line 201
    :cond_c
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v3, :cond_11

    :goto_10
    return v1

    :cond_11
    move v1, v2

    goto :goto_10
.end method

.method private updateBackgroundTint()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    if-eqz v1, :cond_3c

    .line 117
    iget v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    if-ltz v1, :cond_29

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 121
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 122
    .local v0, "updated":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_29

    .line 123
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object v0, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 124
    return v6

    .line 129
    .end local v0    # "updated":Landroid/content/res/ColorStateList;
    :cond_29
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_3c

    .line 130
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 131
    return v6

    .line 134
    :cond_3c
    return v5
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .registers 4

    .prologue
    .line 156
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_24

    .line 158
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 159
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 158
    if-eqz v1, :cond_15

    .line 162
    return-void

    .line 165
    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_25

    .line 166
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 167
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 166
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 155
    :cond_24
    :goto_24
    return-void

    .line 168
    :cond_25
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_24

    .line 169
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 170
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 169
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_24
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_9
    return-object v0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_9
    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    .line 46
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 47
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v4, 0x0

    .line 46
    invoke-static {v2, p1, v3, p2, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    :try_start_d
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 51
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v3, -0x1

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 52
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 53
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 54
    .local v1, "tint":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_31

    .line 55
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 58
    .end local v1    # "tint":Landroid/content/res/ColorStateList;
    :cond_31
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 59
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 60
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_44
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 63
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 65
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v3

    .line 66
    const/4 v4, 0x0

    .line 64
    invoke-static {v3, v4}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 63
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5d
    .catchall {:try_start_d .. :try_end_5d} :catchall_61

    .line 69
    :cond_5d
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 45
    return-void

    .line 68
    :catchall_61
    move-exception v2

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 68
    throw v2
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 85
    :cond_10
    return-void
.end method

.method onSetBackgroundResource(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 74
    iput p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 76
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v1, :cond_13

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 76
    :cond_13
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 73
    :cond_1f
    return-void
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v0, 0x0

    .line 176
    if-eqz p1, :cond_1b

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_e

    .line 178
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 180
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    .line 185
    :goto_17
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 175
    return-void

    .line 183
    :cond_1b
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    goto :goto_17
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_c

    .line 97
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 102
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    .line 106
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 95
    :cond_22
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_b

    .line 143
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 145
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintMode:Z

    .line 148
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 141
    return-void
.end method
