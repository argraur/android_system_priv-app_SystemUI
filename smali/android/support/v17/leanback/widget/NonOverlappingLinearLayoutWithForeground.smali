.class Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;
.super Landroid/widget/LinearLayout;
.source "NonOverlappingLinearLayoutWithForeground.java"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mForegroundBoundsChanged:Z

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v3, 0x17

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mSelfBounds:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v3, :cond_1a

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1a

    .line 48
    :goto_19
    return-void

    .line 58
    :cond_1a
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010109

    aput v3, v2, v4

    .line 57
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 60
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2f

    .line 61
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->setForegroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_2f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_19
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v4, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2f

    .line 97
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 98
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForegroundBoundsChanged:Z

    if-eqz v4, :cond_2c

    .line 99
    iput-boolean v6, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForegroundBoundsChanged:Z

    .line 100
    iget-object v2, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mSelfBounds:Landroid/graphics/Rect;

    .line 101
    .local v2, "selfBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->getLeft()I

    move-result v5

    sub-int v3, v4, v5

    .line 102
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->getTop()I

    move-result v5

    sub-int v1, v4, v5

    .line 103
    .local v1, "h":I
    invoke-virtual {v2, v6, v6, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 106
    .end local v1    # "h":I
    .end local v2    # "selfBounds":Landroid/graphics/Rect;
    .end local v3    # "w":I
    :cond_2c
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_2f
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 132
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 133
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 130
    :cond_18
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 124
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 125
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 122
    :cond_c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 112
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 113
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForegroundBoundsChanged:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForegroundBoundsChanged:Z

    .line 111
    return-void
.end method

.method public setForegroundCompat(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 70
    invoke-static {}, Landroid/support/v17/leanback/widget/ForegroundHelper;->getInstance()Landroid/support/v17/leanback/widget/ForegroundHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v17/leanback/widget/ForegroundHelper;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_d
    :goto_d
    return-void

    .line 73
    :cond_e
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d

    .line 74
    iput-object p1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForegroundBoundsChanged:Z

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->setWillNotDraw(Z)V

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 78
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    iget-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_d
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayoutWithForeground;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
