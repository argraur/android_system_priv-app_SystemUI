.class final Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;
.super Ljava/lang/Object;
.source "ForegroundHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ForegroundHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForegroundHelperApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 32
    invoke-static {p1, p2}, Landroid/support/v17/leanback/widget/ForegroundHelperApi23;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 31
    return-void
.end method
