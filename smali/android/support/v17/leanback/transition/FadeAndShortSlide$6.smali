.class Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;
.super Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/transition/FadeAndShortSlide;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    .prologue
    .line 136
    iput-object p1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;->this$0:Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .registers 11
    .param p1, "t"    # Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # [I

    .prologue
    const/4 v5, 0x1

    .line 139
    aget v3, p4, v5

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 140
    .local v2, "viewCenter":I
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 141
    iget-object v3, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;->this$0:Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-virtual {v3}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    .line 142
    .local v0, "center":Landroid/graphics/Rect;
    if-nez v0, :cond_2c

    aget v3, p4, v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 144
    .local v1, "sceneRootCenter":I
    :goto_20
    if-ge v2, v1, :cond_31

    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getVerticalDistance(Landroid/view/ViewGroup;)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    .line 143
    .end local v1    # "sceneRootCenter":I
    :cond_2c
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    goto :goto_20

    .line 147
    .restart local v1    # "sceneRootCenter":I
    :cond_31
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getVerticalDistance(Landroid/view/ViewGroup;)F

    move-result v4

    add-float/2addr v3, v4

    return v3
.end method
