.class final Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperApi21Impl;
.super Ljava/lang/Object;
.source "ShadowHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ShadowHelper$ShadowHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ShadowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShadowHelperApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setZ(Landroid/view/View;F)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "z"    # F

    .prologue
    .line 85
    invoke-static {p1, p2}, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->setZ(Landroid/view/View;F)V

    .line 84
    return-void
.end method
