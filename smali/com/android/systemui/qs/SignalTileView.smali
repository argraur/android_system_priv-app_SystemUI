.class public final Lcom/android/systemui/qs/SignalTileView;
.super Lcom/android/systemui/qs/QSIconView;
.source "SignalTileView.java"


# static fields
.field private static final DEFAULT_DURATION:J

.field private static final SHORT_DURATION:J


# instance fields
.field private mIconFrame:Landroid/widget/FrameLayout;

.field private mIn:Landroid/widget/ImageView;

.field private mOut:Landroid/widget/ImageView;

.field private mOverlay:Landroid/widget/ImageView;

.field private mSignal:Landroid/widget/ImageView;

.field private mWideOverlayIconStartPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 31
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    .line 32
    sget-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 45
    const v0, 0x7f0200fc

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f020100

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    const v1, 0x7f1001fa

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    .line 42
    return-void
.end method

.method private addTrafficView(I)Landroid/widget/ImageView;
    .registers 4
    .param p1, "icon"    # I

    .prologue
    .line 53
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "traffic":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addView(Landroid/view/View;)V

    .line 57
    return-object v0
.end method

.method private layoutIndicator(Landroid/view/View;)V
    .registers 7
    .param p1, "indicator"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_2a

    .line 94
    .local v0, "isRtl":Z
    :goto_7
    if-eqz v0, :cond_2c

    .line 95
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    .line 96
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v1, v2, v3

    .line 103
    .local v1, "left":I
    :goto_15
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 105
    iget-object v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    .line 101
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 91
    return-void

    .line 92
    .end local v0    # "isRtl":Z
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_2a
    const/4 v0, 0x0

    goto :goto_7

    .line 98
    .restart local v0    # "isRtl":Z
    :cond_2c
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    .line 99
    .restart local v1    # "left":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v2, v1, v3

    .restart local v2    # "right":I
    goto :goto_15
.end method

.method private setVisibility(Landroid/view/View;ZZ)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shown"    # Z
    .param p3, "visible"    # Z

    .prologue
    .line 133
    if-eqz p2, :cond_f

    if-eqz p3, :cond_f

    const/4 v1, 0x1

    :goto_5
    int-to-float v0, v1

    .line 134
    .local v0, "newAlpha":F
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_11

    return-void

    .line 133
    .end local v0    # "newAlpha":F
    :cond_f
    const/4 v1, 0x0

    goto :goto_5

    .line 135
    .restart local v0    # "newAlpha":F
    :cond_11
    if-eqz p2, :cond_2a

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 137
    if-eqz p3, :cond_27

    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    .line 136
    :goto_1b
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 132
    :goto_26
    return-void

    .line 137
    :cond_27
    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    goto :goto_1b

    .line 141
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_26
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 62
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 63
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getIconMeasureMode()I
    .registers 2

    .prologue
    .line 88
    const/high16 v0, -0x80000000

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/qs/QSIconView;->onLayout(ZIIII)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSIconView;->onMeasure(II)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 74
    .local v0, "hs":I
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 75
    .local v1, "ws":I
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 76
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 71
    return-void
.end method

.method public setIcon(Lcom/android/systemui/qs/QSTile$State;)V
    .registers 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/4 v5, 0x0

    move-object v1, p1

    .line 110
    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    .line 111
    .local v1, "s":Lcom/android/systemui/qs/QSTile$SignalState;
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/SignalTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 112
    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v3, :cond_4b

    .line 113
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    iget v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_19
    iget v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v3, :cond_53

    iget-boolean v3, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-eqz v3, :cond_53

    .line 119
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 123
    :goto_28
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_38

    if-eqz v0, :cond_38

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 127
    :cond_38
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->isShown()Z

    move-result v2

    .line 128
    .local v2, "shown":Z
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    invoke-direct {p0, v3, v2, v4}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    .line 129
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    iget-boolean v4, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    invoke-direct {p0, v3, v2, v4}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    .line 109
    return-void

    .line 116
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "shown":Z
    :cond_4b
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    .line 121
    :cond_53
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_28
.end method
