.class final Landroid/support/v17/leanback/widget/ForegroundHelper;
.super Ljava/lang/Object;
.source "ForegroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;,
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;,
        Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;
    }
.end annotation


# static fields
.field static final sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;


# instance fields
.field mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ForegroundHelper;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ForegroundHelper;->sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/support/v17/leanback/widget/ForegroundHelper;->supportsForeground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 60
    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    .line 58
    :goto_10
    return-void

    .line 62
    :cond_11
    new-instance v0, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperStubImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    goto :goto_10
.end method

.method public static getInstance()Landroid/support/v17/leanback/widget/ForegroundHelper;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Landroid/support/v17/leanback/widget/ForegroundHelper;->sInstance:Landroid/support/v17/leanback/widget/ForegroundHelper;

    return-object v0
.end method

.method public static supportsForeground()Z
    .registers 2

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ForegroundHelper;->mImpl:Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method
