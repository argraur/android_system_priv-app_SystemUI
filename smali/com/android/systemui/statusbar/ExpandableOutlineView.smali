.class public abstract Lcom/android/systemui/statusbar/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableOutlineView$1;
    }
.end annotation


# instance fields
.field private mCustomOutline:Z

.field private mOutlineAlpha:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field mProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getOutlineAlpha()F
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method

.method public getOutlineTranslation()I
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v0

    float-to-int v0, v0

    goto :goto_8
.end method

.method public setActualHeight(IZ)V
    .registers 3
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 58
    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 64
    return-void
.end method

.method protected setOutlineAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 71
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 69
    :cond_b
    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .registers 10
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    .line 114
    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 82
    if-eqz p1, :cond_f

    .line 83
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineRect(FFFF)V

    .line 81
    :goto_e
    return-void

    .line 85
    :cond_f
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    goto :goto_e
.end method

.method public updateOutline()V
    .registers 3

    .prologue
    .line 97
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v1, :cond_5

    .line 98
    return-void

    .line 100
    :cond_5
    const/4 v0, 0x1

    .line 101
    .local v0, "hasOutline":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_18
    const/4 v0, 0x0

    .line 106
    .end local v0    # "hasOutline":Z
    :cond_19
    :goto_19
    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    :goto_1d
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 96
    return-void

    .line 102
    .restart local v0    # "hasOutline":Z
    :cond_21
    const/4 v0, 0x1

    goto :goto_19

    .line 103
    :cond_23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result v0

    .local v0, "hasOutline":Z
    goto :goto_19

    .local v0, "hasOutline":Z
    :cond_34
    const/4 v0, 0x1

    goto :goto_19

    .line 106
    .end local v0    # "hasOutline":Z
    :cond_36
    const/4 v1, 0x0

    goto :goto_1d
.end method
