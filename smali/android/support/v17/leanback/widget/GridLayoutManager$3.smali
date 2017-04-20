.class Landroid/support/v17/leanback/widget/GridLayoutManager$3;
.super Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;
    .param p2, "this$0_1"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .prologue
    .line 2278
    iput-object p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 9
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2281
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->getChildCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 2282
    const/4 v3, 0x0

    return-object v3

    .line 2284
    :cond_b
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v5, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 2287
    .local v1, "firstChildPos":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v4, :cond_31

    if-le p1, v1, :cond_2f

    .line 2289
    .local v2, "isStart":Z
    :cond_1f
    :goto_1f
    if-eqz v2, :cond_35

    const/4 v0, -0x1

    .line 2290
    .local v0, "direction":I
    :goto_22
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_37

    .line 2291
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .end local v0    # "direction":I
    .end local v2    # "isStart":Z
    :cond_2f
    move v2, v3

    .line 2287
    goto :goto_1f

    .line 2288
    :cond_31
    if-lt p1, v1, :cond_1f

    move v2, v3

    goto :goto_1f

    .line 2289
    .restart local v2    # "isStart":Z
    :cond_35
    const/4 v0, 0x1

    .restart local v0    # "direction":I
    goto :goto_22

    .line 2293
    :cond_37
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v3, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method
