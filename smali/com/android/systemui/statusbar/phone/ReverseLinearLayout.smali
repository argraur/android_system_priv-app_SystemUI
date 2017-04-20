.class public Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ReverseLinearLayout.java"


# instance fields
.field private mIsAlternativeOrder:Z

.field private mIsLayoutReverse:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private reversParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 104
    if-nez p1, :cond_3

    .line 105
    return-void

    .line 107
    :cond_3
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    .local v0, "width":I
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    return-void
.end method

.method private updateOrder()V
    .registers 8

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_26

    const/4 v4, 0x1

    .line 86
    .local v4, "isLayoutRtl":Z
    :goto_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsAlternativeOrder:Z

    xor-int v3, v4, v5

    .line 88
    .local v3, "isLayoutReverse":Z
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eq v5, v3, :cond_3d

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->getChildCount()I

    move-result v0

    .line 91
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_28

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 85
    .end local v0    # "childCount":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    .end local v3    # "isLayoutReverse":Z
    .end local v4    # "isLayoutRtl":Z
    :cond_26
    const/4 v4, 0x0

    .restart local v4    # "isLayoutRtl":Z
    goto :goto_8

    .line 95
    .restart local v0    # "childCount":I
    .restart local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v2    # "i":I
    .restart local v3    # "isLayoutReverse":Z
    :cond_28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->removeAllViews()V

    .line 96
    add-int/lit8 v2, v0, -0x1

    :goto_2d
    if-ltz v2, :cond_3b

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-super {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 99
    :cond_3b
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    .line 84
    .end local v0    # "childCount":I
    .end local v1    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_3d
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reversParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_10

    .line 53
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 50
    :goto_f
    return-void

    .line 55
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_f
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->reversParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_c

    .line 63
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :goto_b
    return-void

    .line 65
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    .line 44
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    .line 70
    return-void
.end method

.method public setAlternativeOrder(Z)V
    .registers 2
    .param p1, "alternative"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->mIsAlternativeOrder:Z

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->updateOrder()V

    .line 75
    return-void
.end method
