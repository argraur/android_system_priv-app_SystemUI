.class public Lcom/android/systemui/statusbar/phone/ExpandableIndicator;
.super Landroid/widget/ImageView;
.source "ExpandableIndicator.java"


# instance fields
.field private mExpanded:Z

.field private mIsDefaultDirection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    .line 28
    return-void
.end method

.method private getContentDescription(Z)Ljava/lang/String;
    .registers 4
    .param p1, "expanded"    # Z

    .prologue
    .line 69
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0412

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 70
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0411

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private getDrawableResourceId(Z)I
    .registers 5
    .param p1, "expanded"    # Z

    .prologue
    const v1, 0x7f020137

    const v0, 0x7f020135

    .line 59
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    if-eqz v2, :cond_f

    .line 60
    if-eqz p1, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    .line 61
    goto :goto_c

    .line 63
    :cond_f
    if-eqz p1, :cond_12

    :goto_11
    return v1

    :cond_12
    move v1, v0

    .line 64
    goto :goto_11
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 35
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getDrawableResourceId(Z)I

    move-result v0

    .line 36
    .local v0, "res":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setImageResource(I)V

    .line 37
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public setExpanded(Z)V
    .registers 5
    .param p1, "expanded"    # Z

    .prologue
    .line 41
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    if-ne p1, v2, :cond_5

    return-void

    .line 42
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    .line 43
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    :goto_c
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getDrawableResourceId(Z)I

    move-result v1

    .line 45
    .local v1, "res":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 47
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    return-void

    .line 43
    .end local v0    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v1    # "res":I
    :cond_33
    const/4 v2, 0x1

    goto :goto_c
.end method
