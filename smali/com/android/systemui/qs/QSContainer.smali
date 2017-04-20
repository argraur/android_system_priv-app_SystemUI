.class public Lcom/android/systemui/qs/QSContainer;
.super Landroid/widget/FrameLayout;
.source "QSContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSContainer$1;,
        Lcom/android/systemui/qs/QSContainer$2;
    }
.end annotation


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mDelay:J

.field protected mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

.field private mHeaderAnimating:Z

.field private mHeightOverride:I

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsExpanded:Z

.field protected mQsExpansion:F

.field private final mSizePoint:Landroid/graphics/Point;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSContainer;)Landroid/animation/Animator$AnimatorListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSContainer;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/systemui/qs/QSContainer;->mDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSContainer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 295
    new-instance v0, Lcom/android/systemui/qs/QSContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainer$1;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 294
    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 312
    new-instance v0, Lcom/android/systemui/qs/QSContainer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainer$2;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 311
    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 65
    return-void
.end method

.method private updateBottom()V
    .registers 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->calculateContainerHeight()I

    move-result v0

    .line 169
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainer;->setBottom(I)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetail;->setBottom(I)V

    .line 167
    return-void
.end method

.method private updateQsState()V
    .registers 7

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_4b

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 182
    :goto_d
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 184
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v1, :cond_29

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v1, :cond_4d

    :cond_29
    move v1, v3

    :goto_2a
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 187
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v1, :cond_4f

    .line 188
    :cond_37
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    if-eqz v1, :cond_51

    :cond_3f
    move v1, v3

    .line 187
    :goto_40
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setExpanded(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_53

    :goto_47
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 180
    return-void

    .line 181
    :cond_4b
    const/4 v0, 0x1

    .local v0, "expandVisually":Z
    goto :goto_d

    .end local v0    # "expandVisually":Z
    :cond_4d
    move v1, v2

    .line 186
    goto :goto_2a

    :cond_4f
    move v1, v4

    .line 187
    goto :goto_40

    :cond_51
    move v1, v4

    .line 188
    goto :goto_40

    :cond_53
    move v3, v2

    .line 189
    goto :goto_47
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v0, :cond_12

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 271
    iput-wide p1, p0, Lcom/android/systemui/qs/QSContainer;->mDelay:J

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 265
    :cond_12
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .registers 5

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 280
    const-wide/16 v2, 0x0

    .line 279
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 281
    const-wide/16 v2, 0x168

    .line 279
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/android/systemui/qs/QSContainer$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainer$3;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 276
    return-void
.end method

.method protected calculateContainerHeight()I
    .registers 4

    .prologue
    .line 174
    iget v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    iget v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 175
    .local v0, "heightOverride":I
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->getHeight()I

    move-result v1

    :goto_15
    return v1

    .line 174
    .end local v0    # "heightOverride":I
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    .restart local v0    # "heightOverride":I
    goto :goto_7

    .line 176
    :cond_1b
    iget v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getCollapsedHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 177
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getCollapsedHeight()I

    move-result v2

    .line 176
    add-int/2addr v1, v2

    goto :goto_15
.end method

.method public getCustomizer()Lcom/android/systemui/qs/customize/QSCustomizer;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object v0
.end method

.method public getDesiredHeight()I
    .registers 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v1

    return v1

    .line 148
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 149
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 150
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v2

    .line 149
    add-int v0, v1, v2

    .line 151
    .local v0, "panelHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 153
    .end local v0    # "panelHeight":I
    :cond_2b
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v1

    return v1
.end method

.method public getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    return-object v0
.end method

.method public getQsMinExpansionHeight()I
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public hideImmediately()V
    .registers 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    .line 324
    return-void
.end method

.method public isCustomizing()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    return v0
.end method

.method public isShowingDetail()Z
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public notifyCustomizeChanged()V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 160
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v3

    if-nez v3, :cond_28

    :goto_1d
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    .line 157
    return-void

    :cond_26
    move v0, v2

    .line 160
    goto :goto_10

    :cond_28
    move v1, v2

    .line 161
    goto :goto_1d
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f1201e0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 73
    const v0, 0x7f1201e1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 74
    const v0, 0x7f1201f1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;)V

    .line 76
    new-instance v1, Lcom/android/systemui/qs/QSAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    const v2, 0x7f1201f8

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    .line 77
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 76
    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/qs/QSContainer;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 78
    const v0, 0x7f1201e2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setQsContainer(Lcom/android/systemui/qs/QSContainer;)V

    .line 70
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 121
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 120
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 104
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 105
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 104
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/qs/QSPanel;->measure(II)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getMeasuredWidth()I

    move-result v1

    .line 107
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v3

    .line 107
    add-int v0, v2, v3

    .line 109
    .local v0, "height":I
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 110
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 109
    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 115
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 116
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 115
    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->measure(II)V

    .line 100
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    .line 83
    return-void
.end method

.method public setExpanded(Z)V
    .registers 4
    .param p1, "expanded"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    .line 216
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    :goto_a
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 213
    return-void

    .line 216
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setHeaderClickable(Z)V
    .registers 3
    .param p1, "clickable"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setClickable(Z)V

    .line 208
    return-void
.end method

.method public setHeaderListening(Z)V
    .registers 3
    .param p1, "listening"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setListening(Z)V

    .line 240
    return-void
.end method

.method public setHeightOverride(I)V
    .registers 2
    .param p1, "heightOverride"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 135
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 4
    .param p1, "qsh"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 88
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 3
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 220
    return-void
.end method

.method public setListening(Z)V
    .registers 4
    .param p1, "listening"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setListening(Z)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    :goto_f
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 233
    return-void

    .line 237
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setOverscrolling(Z)V
    .registers 2
    .param p1, "stackScrollerOverscrolling"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    .line 227
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 2
    .param p1, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 95
    return-void
.end method

.method public setQsExpansion(FF)V
    .registers 7
    .param p1, "expansion"    # F
    .param p2, "headerTranslation"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 246
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpansion:F

    .line 247
    sub-float v0, p1, v2

    .line 248
    .local v0, "translationScaleY":F
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-nez v1, :cond_1a

    .line 249
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p2, v0, v1

    .end local p2    # "headerTranslation":F
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSContainer;->setTranslationY(F)V

    .line 252
    :cond_1a
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_6d

    move v1, v2

    :goto_21
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setExpansion(F)V

    .line 253
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    .line 254
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    cmpl-float v1, p1, v2

    if-nez v1, :cond_6f

    const/4 v1, 0x1

    :goto_38
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 260
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 261
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 262
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    .line 244
    return-void

    :cond_6d
    move v1, p1

    .line 252
    goto :goto_21

    .line 254
    :cond_6f
    const/4 v1, 0x0

    goto :goto_38
.end method
