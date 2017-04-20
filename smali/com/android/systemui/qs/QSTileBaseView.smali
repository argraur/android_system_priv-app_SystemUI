.class public Lcom/android/systemui/qs/QSTileBaseView;
.super Landroid/widget/LinearLayout;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private mCollapsedView:Z

.field private final mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

.field private mIcon:Lcom/android/systemui/qs/QSIconView;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/qs/QSIconView;
    .param p3, "collapsedView"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v1, Lcom/android/systemui/qs/QSTileBaseView$H;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/QSTileBaseView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->addView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_26

    .line 55
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 57
    :cond_26
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileBaseView;->setImportantForAccessibility(I)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100180

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    .local v0, "padding":I
    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setPadding(IIII)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileBaseView;->setClipChildren(Z)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileBaseView;->setClipToPadding(Z)V

    .line 65
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mCollapsedView:Z

    .line 66
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileBaseView;->setFocusable(Z)V

    .line 48
    return-void
.end method

.method private newTileBackground()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 70
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    .line 71
    .local v0, "attrs":[I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 72
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-object v1
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .registers 4
    .param p1, "tileBackground"    # Landroid/graphics/drawable/RippleDrawable;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_13

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->updateRippleSize(II)V

    .line 77
    :cond_13
    return-void
.end method

.method private updateRippleSize(II)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 86
    div-int/lit8 v0, p1, 0x2

    .line 87
    .local v0, "cx":I
    div-int/lit8 v1, p2, 0x2

    .line 88
    .local v1, "cy":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSIconView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 89
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 84
    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/qs/QSIconView;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSIconView;->setIcon(Lcom/android/systemui/qs/QSTile$State;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mCollapsedView:Z

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 135
    :cond_11
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    :goto_16
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mCollapsedView:Z

    if-eqz v0, :cond_2f

    .line 138
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 142
    :goto_1e
    instance-of v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    if-eqz v0, :cond_28

    .line 143
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    .line 130
    :cond_28
    return-void

    .line 133
    .restart local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    :cond_29
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 140
    :cond_2f
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    goto :goto_1e
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 4
    .param p1, "click"    # Landroid/view/View$OnClickListener;
    .param p2, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setClickable(Z)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileBaseView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSTileBaseView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 155
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 156
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 158
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-nez v1, :cond_39

    const v1, 0x7f0f03dd

    .line 157
    :goto_29
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    :goto_35
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 152
    .end local v0    # "label":Ljava/lang/String;
    :cond_38
    return-void

    .line 158
    :cond_39
    const v1, 0x7f0f03de

    goto :goto_29

    .line 160
    .restart local v0    # "label":Ljava/lang/String;
    :cond_3d
    const/4 v1, 0x1

    goto :goto_35
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 170
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 172
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_3a

    const v1, 0x7f0f03dd

    .line 171
    :goto_29
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 175
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 166
    .end local v0    # "label":Ljava/lang/String;
    :cond_39
    return-void

    .line 172
    :cond_3a
    const v1, 0x7f0f03de

    goto :goto_29
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getMeasuredWidth()I

    move-result v1

    .line 102
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getMeasuredHeight()I

    move-result v0

    .line 104
    .local v0, "h":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_12

    .line 105
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/QSTileBaseView;->updateRippleSize(II)V

    .line 99
    :cond_12
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .registers 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileBaseView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .registers 3
    .param p1, "previousView"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setAccessibilityTraversalAfter(I)V

    .line 123
    return-object p0
.end method
