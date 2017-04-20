.class public Lcom/android/systemui/qs/QSTileView;
.super Lcom/android/systemui/qs/QSTileBaseView;
.source "QSTileView.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mLabel:Landroid/widget/TextView;

.field private mPadLock:Landroid/widget/ImageView;

.field private mTilePaddingTopPx:I

.field private final mTileSpacingPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/qs/QSIconView;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/qs/QSIconView;
    .param p3, "collapsedView"    # Z

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f10018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setClipChildren(Z)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 57
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setId(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createLabel()V

    .line 59
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setOrientation(I)V

    .line 60
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setGravity(I)V

    .line 46
    return-void
.end method

.method private updateTopPadding()V
    .registers 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 69
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f10018b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 70
    .local v2, "padding":I
    const v4, 0x7f10018c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 71
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 72
    const v5, 0x3fa66666    # 1.3f

    .line 71
    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    .line 72
    const v5, 0x3e999998    # 0.29999995f

    .line 71
    div-float v0, v4, v5

    .line 73
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    .line 74
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 75
    iget v7, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 74
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/systemui/qs/QSTileView;->setPadding(IIII)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->requestLayout()V

    .line 67
    return-void
.end method


# virtual methods
.method protected createLabel()V
    .registers 5

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400c0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1201e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f1201e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mPadLock:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method getLabel()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .registers 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_19
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_20
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v2, :cond_2f

    :goto_29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    return-void

    .line 99
    :cond_2d
    const/4 v0, 0x1

    goto :goto_20

    .line 100
    :cond_2f
    const/16 v1, 0x8

    goto :goto_29
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f100185

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 80
    return-void
.end method
