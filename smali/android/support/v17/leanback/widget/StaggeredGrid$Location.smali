.class public Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
.super Landroid/support/v17/leanback/widget/Grid$Location;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/StaggeredGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public offset:I

.field public size:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "row"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Grid$Location;-><init>(I)V

    .line 61
    iput p2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 62
    iput p3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 59
    return-void
.end method
