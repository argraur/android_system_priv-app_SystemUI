.class Landroid/support/v17/leanback/widget/ShadowHelperApi21;
.super Ljava/lang/Object;
.source "ShadowHelperApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ShadowHelperApi21$1;
    }
.end annotation


# static fields
.field static final sOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowHelperApi21$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ShadowHelperApi21;->sOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 21
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "z"    # F

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    .line 60
    return-void
.end method
