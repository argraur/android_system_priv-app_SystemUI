.class public Lcom/android/systemui/qs/QSIconView;
.super Landroid/view/ViewGroup;
.source "QSIconView.java"


# instance fields
.field private mAnimationEnabled:Z

.field protected final mIcon:Landroid/view/View;

.field protected final mIconSizePx:I

.field protected final mTilePaddingBelowIconPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mIconSizePx:I

    .line 43
    const v1, 0x7f10018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mTilePaddingBelowIconPx:I

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSIconView;->addView(Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .registers 3

    .prologue
    .line 110
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 112
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    return-object v0
.end method

.method public disableAnimation()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    .line 49
    return-void
.end method

.method protected final exactly(I)I
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 117
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getIconMeasureMode()I
    .registers 2

    .prologue
    .line 106
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 120
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getMeasuredWidth()I

    move-result v3

    .line 68
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getMeasuredHeight()I

    move-result v0

    .line 69
    .local v0, "h":I
    const/4 v2, 0x0

    .line 70
    .local v2, "top":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 71
    .local v1, "iconLeft":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/systemui/qs/QSIconView;->layout(Landroid/view/View;II)V

    .line 66
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 60
    .local v1, "w":I
    iget v2, p0, Lcom/android/systemui/qs/QSIconView;->mIconSizePx:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSIconView;->exactly(I)I

    move-result v0

    .line 61
    .local v0, "iconSpec":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getIconMeasureMode()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 62
    iget-object v2, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSIconView;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSIconView;->setMeasuredDimension(II)V

    .line 58
    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .registers 10
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const v6, 0x7f12002f

    const/4 v5, 0x0

    .line 79
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 80
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_7a

    .line 81
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_71

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    if-eqz v3, :cond_71

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    :goto_26
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_7c

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile$Icon;->getPadding()I

    move-result v2

    .line 84
    .local v2, "padding":I
    :goto_30
    if-eqz v1, :cond_3a

    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_3a

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 87
    :cond_3a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 89
    invoke-virtual {p1, v5, v2, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 90
    instance-of v3, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_5e

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_5e

    move-object v0, v1

    .line 91
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 92
    .local v0, "a":Landroid/graphics/drawable/Animatable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 93
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 94
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 98
    .end local v0    # "a":Landroid/graphics/drawable/Animatable;
    .end local v2    # "padding":I
    :cond_5e
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v3, :cond_7e

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0084

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 78
    :goto_70
    return-void

    .line 82
    :cond_71
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_26

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7a
    const/4 v1, 0x0

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_26

    .line 83
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7c
    const/4 v2, 0x0

    .restart local v2    # "padding":I
    goto :goto_30

    .line 101
    .end local v2    # "padding":I
    :cond_7e
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_70
.end method

.method public setIcon(Lcom/android/systemui/qs/QSTile$State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSIconView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 74
    return-void
.end method
