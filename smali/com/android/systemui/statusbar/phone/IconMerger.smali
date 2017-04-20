.class public Lcom/android/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->reloadDimens()V

    .line 37
    return-void
.end method

.method private checkOverflow(I)V
    .registers 10
    .param p1, "width"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 80
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v6, :cond_7

    return-void

    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 83
    .local v0, "N":I
    const/4 v4, 0x0

    .line 84
    .local v4, "visibleChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_20

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1d

    add-int/lit8 v4, v4, 0x1

    .line 84
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 87
    :cond_20
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3f

    move v3, v2

    .line 89
    .local v3, "overflowShown":Z
    :goto_29
    if-eqz v3, :cond_2d

    add-int/lit8 v4, v4, -0x1

    .line 90
    :cond_2d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getFullIconWidth()I

    move-result v6

    mul-int/2addr v6, v4

    if-le v6, p1, :cond_41

    .line 91
    .local v2, "moreRequired":Z
    :goto_34
    if-eq v2, v3, :cond_3e

    .line 92
    new-instance v5, Lcom/android/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;Z)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_3e
    return-void

    .end local v2    # "moreRequired":Z
    .end local v3    # "overflowShown":Z
    :cond_3f
    move v3, v5

    .line 87
    goto :goto_29

    .restart local v3    # "overflowShown":Z
    :cond_41
    move v2, v5

    .line 90
    goto :goto_34
.end method

.method private getFullIconWidth()I
    .registers 3

    .prologue
    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconHPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private reloadDimens()V
    .registers 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f10014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    .line 48
    const v1, 0x7f100162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconHPadding:I

    .line 45
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->reloadDimens()V

    .line 52
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 75
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 76
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 74
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredWidth()I

    move-result v0

    .line 70
    .local v0, "width":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getFullIconWidth()I

    move-result v1

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setMeasuredDimension(II)V

    .line 66
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    .line 57
    return-void
.end method
