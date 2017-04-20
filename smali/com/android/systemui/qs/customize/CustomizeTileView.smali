.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mAppLabel:Landroid/widget/TextView;

.field private mLabelMinLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/qs/QSIconView;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected createLabel()V
    .registers 5

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/systemui/qs/QSTileView;->createLabel()V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMinLines()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabelMinLines:I

    .line 38
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400c0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1201e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 41
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->addView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public getAppLabel()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_11
    return-void
.end method

.method public setShowAppLabel(Z)V
    .registers 4
    .param p1, "showAppLabel"    # Z

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 48
    if-nez p1, :cond_16

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabelMinLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 45
    :cond_16
    return-void

    .line 46
    :cond_17
    const/16 v0, 0x8

    goto :goto_5
.end method
