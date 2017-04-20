.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"


# instance fields
.field private mAwaitingFirstLayout:Z

.field private final mBackgroundScrim:Landroid/graphics/drawable/Drawable;

.field private mBackgroundScrimAnimator:Landroid/animation/Animator;

.field private mDividerSize:I

.field private mEmptyView:Landroid/widget/TextView;

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mLastTaskLaunchedWasFreeform:Z

.field private final mScrimAlpha:F

.field private mStackActionButton:Landroid/widget/TextView;

.field mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/graphics/Rect;
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 107
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    .line 133
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/RecentsView;->setWillNotDraw(Z)V

    .line 135
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 136
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v2, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 137
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    .line 138
    new-instance v2, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    .line 139
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 140
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v2, :cond_88

    .line 141
    const v2, 0x3ee66666    # 0.45f

    .line 140
    :goto_42
    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mScrimAlpha:F

    .line 142
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 143
    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mScrimAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 142
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400cf

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 157
    const v2, 0x7f0400ca

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 158
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 131
    return-void

    .line 141
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_88
    const v2, 0x3ea8f5c3    # 0.33f

    goto :goto_42
.end method

.method private animateBackgroundScrim(FI)V
    .registers 9
    .param p1, "alpha"    # F
    .param p2, "duration"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 763
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 765
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mScrimAlpha:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 766
    .local v0, "fromAlpha":I
    mul-float v2, p1, v4

    float-to-int v1, v2

    .line 767
    .local v1, "toAlpha":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 768
    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 767
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    .line 769
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 770
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    if-le v1, v0, :cond_3f

    .line 771
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 770
    :goto_36
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 773
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 762
    return-void

    .line 772
    :cond_3f
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_36
.end method

.method private getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 780
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackActionButtonRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 781
    .local v0, "actionButtonRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 782
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int v1, v3, v4

    .line 785
    .local v1, "left":I
    :goto_1d
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 786
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 785
    add-int v2, v3, v4

    .line 787
    .local v2, "top":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 788
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 787
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 789
    return-object v0

    .line 783
    .end local v1    # "left":I
    .end local v2    # "top":I
    :cond_40
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 784
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 783
    sub-int v1, v3, v4

    .restart local v1    # "left":I
    goto :goto_1d
.end method

.method private getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;
    .registers 10
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v0

    .line 568
    .local v0, "location":[I
    const/4 v3, 0x0

    aget v1, v0, v3

    .line 569
    .local v1, "viewX":I
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 570
    .local v2, "viewY":I
    new-instance v3, Landroid/graphics/Rect;

    .line 571
    int-to-float v4, v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 572
    int-to-float v5, v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 570
    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private hideStackActionButton(IZ)V
    .registers 4
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .prologue
    .line 684
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 685
    .local v0, "postAnimationTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 686
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    .line 679
    return-void
.end method

.method private hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .registers 8
    .param p1, "duration"    # I
    .param p2, "translate"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 699
    if-eqz p2, :cond_1e

    .line 700
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    .line 700
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 703
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 704
    const/4 v1, 0x0

    .line 703
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 705
    int-to-long v2, p1

    .line 703
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 706
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 703
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 707
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$7;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/RecentsView$7;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 703
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 715
    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 693
    :cond_43
    return-void
.end method

.method private showStackActionButton(IZ)V
    .registers 7
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 649
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 650
    .local v0, "postAnimationTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_34

    .line 651
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 653
    if-eqz p2, :cond_38

    .line 654
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 658
    :goto_2c
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/recents/views/RecentsView$6;-><init>(Lcom/android/systemui/recents/views/RecentsView;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 673
    :cond_34
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    .line 644
    return-void

    .line 656
    :cond_38
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2c
.end method

.method private updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V
    .registers 23
    .param p1, "newDockStates"    # [Lcom/android/systemui/recents/model/TaskStack$DockState;
    .param p2, "isDefaultDockState"    # Z
    .param p3, "overrideAreaAlpha"    # I
    .param p4, "overrideHintAlpha"    # I
    .param p5, "animateAlpha"    # Z
    .param p6, "animateBounds"    # Z

    .prologue
    .line 726
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 725
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/systemui/recents/misc/Utilities;->arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v14

    .line 727
    .local v14, "newDockStatesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v15

    .line 728
    .local v15, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_19
    if-ltz v13, :cond_a0

    .line 729
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 730
    .local v2, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    iget-object v1, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .line 731
    .local v1, "viewState":Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    if-eqz p1, :cond_72

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 737
    const/4 v3, -0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_81

    .line 738
    move/from16 v11, p3

    .line 740
    .local v11, "areaAlpha":I
    :goto_32
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_84

    .line 741
    move/from16 v12, p4

    .line 743
    .local v12, "hintAlpha":I
    :goto_39
    if-eqz p2, :cond_87

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v5

    .line 745
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    .line 744
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getPreDockedBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 748
    .local v4, "bounds":Landroid/graphics/Rect;
    :goto_4b
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_61

    .line 749
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 750
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 753
    :cond_61
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v7, 0xfa

    move-object v3, v1

    move v5, v11

    move v6, v12

    move/from16 v9, p5

    move/from16 v10, p6

    .line 752
    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    .line 728
    .end local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "areaAlpha":I
    .end local v12    # "hintAlpha":I
    :goto_6f
    add-int/lit8 v13, v13, -0x1

    goto :goto_19

    .line 734
    .restart local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :cond_72
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 733
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    goto :goto_6f

    .line 739
    :cond_81
    iget v11, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .restart local v11    # "areaAlpha":I
    goto :goto_32

    .line 742
    :cond_84
    iget v12, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .restart local v12    # "hintAlpha":I
    goto :goto_39

    .line 746
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v4

    .line 747
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 746
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v4

    .restart local v4    # "bounds":Landroid/graphics/Rect;
    goto :goto_4b

    .line 724
    .end local v1    # "viewState":Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    .end local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "areaAlpha":I
    .end local v12    # "hintAlpha":I
    :cond_a0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "RecentsView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    const-string/jumbo v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "Y"

    :goto_32
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    const-string/jumbo v2, " insets="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    const-string/jumbo v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 802
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 803
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/model/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 805
    :cond_63
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v2, :cond_6c

    .line 806
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 792
    :cond_6c
    return-void

    .line 797
    :cond_6d
    const-string/jumbo v2, "N"

    goto :goto_32
.end method

.method public getBackgroundScrim()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method public hideEmptyView()V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->bringToFront()V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 302
    return-void
.end method

.method public isLastTaskLaunchedFreeform()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    return v0
.end method

.method public launchFocusedTask(I)Z
    .registers 9
    .param p1, "logEvent"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_36

    .line 238
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 239
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_36

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 241
    .local v1, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 242
    const/4 v4, -0x1

    .line 241
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 244
    if-eqz p1, :cond_34

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 246
    iget-object v3, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {v0, p1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 248
    :cond_34
    const/4 v0, 0x1

    return v0

    .line 251
    .end local v1    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_36
    return v5
.end method

.method public launchPreviousTask()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_25

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 258
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_25

    .line 259
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 260
    .local v1, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 261
    const/4 v4, -0x1

    .line 260
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 262
    const/4 v0, 0x1

    return v0

    .line 265
    .end local v1    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_25
    return v5
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 403
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 313
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 314
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 315
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 312
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 448
    const/16 v0, 0xc8

    .line 451
    .local v0, "taskViewExitToHomeDuration":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 453
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 447
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    .line 601
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 602
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v1, :cond_11

    .line 600
    :cond_10
    :goto_10
    return-void

    .line 603
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_10

    .line 604
    const/high16 v1, 0x3f800000    # 1.0f

    .line 605
    const/16 v2, 0x12c

    .line 604
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    goto :goto_10
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    .prologue
    .line 634
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 629
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .registers 10
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .prologue
    .line 441
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    .line 442
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 443
    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 444
    iget v7, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    .line 442
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;I)V

    .line 440
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    .line 638
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 637
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    .prologue
    .line 626
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;->translate:Z

    const/16 v1, 0x86

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->showStackActionButton(IZ)V

    .line 621
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 610
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 609
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 614
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 615
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-nez v1, :cond_10

    .line 617
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 613
    :cond_10
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    .prologue
    const/4 v4, 0x0

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 583
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_35

    .line 584
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 585
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 591
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    .line 597
    :goto_31
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 581
    return-void

    .line 593
    :cond_35
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 594
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 595
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    goto :goto_31
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    .prologue
    const/4 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 577
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;->distanceFromTop:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v0

    sub-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 575
    :cond_24
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .registers 13
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 473
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_29

    .line 479
    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v10, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 480
    .local v10, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    new-array v4, v2, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v10, v4, v5

    move-object v3, p0

    move v7, v6

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 484
    .end local v10    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :goto_1c
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    .line 485
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 472
    :cond_28
    return-void

    .line 474
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 475
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 476
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    move-object v0, p0

    move v5, v2

    move v6, v2

    .line 474
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto :goto_1c
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .registers 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 562
    const/4 v1, 0x0

    .line 563
    const/4 v6, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v2

    .line 562
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 560
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .registers 14
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    .line 499
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_91

    .line 500
    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v7, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 503
    .local v7, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 504
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 503
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 508
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 511
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 512
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v1, v7, Lcom/android/systemui/recents/model/TaskStack$DockState;->createMode:I

    invoke-virtual {v9, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(II)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 514
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$3;

    invoke-direct {v10, p0, p1}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    .line 524
    .local v10, "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v11

    .line 526
    .local v11, "taskRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 527
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v1, p0, p1, v11}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;Landroid/graphics/Rect;)V

    .line 526
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v8

    .line 535
    .local v8, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 536
    const/4 v1, 0x1

    .line 534
    invoke-virtual {v9, v8, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    .line 539
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 538
    const/16 v2, 0x10e

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 551
    .end local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v8    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v10    # "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v11    # "taskRect":Landroid/graphics/Rect;
    :goto_5c
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_7b

    .line 552
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 553
    const/high16 v1, 0x3f800000    # 1.0f

    .line 552
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 554
    const-wide/16 v2, 0x86

    .line 552
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 555
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 552
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 497
    :cond_7b
    return-void

    .line 541
    .restart local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_7c
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 542
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 541
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;-><init>(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_5c

    .line 546
    .end local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_91
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 547
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    .line 546
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto :goto_5c
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .registers 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    const/4 v2, 0x1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 458
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 459
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .line 460
    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    .line 457
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 464
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 465
    const/4 v1, 0x0

    .line 464
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 466
    const-wide/16 v2, 0x64

    .line 464
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 467
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 464
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 456
    :cond_37
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 320
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 321
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 322
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 420
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v1

    .line 421
    .local v1, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_1f

    .line 422
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v2, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->draw(Landroid/graphics/Canvas;)V

    .line 421
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 417
    :cond_1f
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 359
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1f

    .line 360
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v11

    add-int v11, v11, p2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v12

    add-int v12, v12, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 364
    :cond_1f
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_78

    .line 365
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v8, v10, v11

    .line 366
    .local v8, "leftRightInsets":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 367
    .local v9, "topBottomInsets":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 368
    .local v6, "childWidth":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 369
    .local v3, "childHeight":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int v10, v10, p2

    .line 370
    sub-int v11, p4, p2

    sub-int/2addr v11, v8

    sub-int/2addr v11, v6

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    .line 369
    add-int v4, v10, v11

    .line 371
    .local v4, "childLeft":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int v10, v10, p3

    .line 372
    sub-int v11, p5, p3

    sub-int/2addr v11, v9

    sub-int/2addr v11, v3

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    .line 371
    add-int v5, v10, v11

    .line 373
    .local v5, "childTop":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int v11, v4, v6

    add-int v12, v5, v3

    invoke-virtual {v10, v4, v5, v11, v12}, Landroid/widget/TextView;->layout(IIII)V

    .line 379
    .end local v3    # "childHeight":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v8    # "leftRightInsets":I
    .end local v9    # "topBottomInsets":I
    :cond_78
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v2

    .line 380
    .local v2, "buttonBounds":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    .line 381
    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    .line 380
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->layout(IIII)V

    .line 384
    iget-boolean v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v10, :cond_a4

    .line 385
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 389
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v7

    .line 390
    .local v7, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v10, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    if-eqz v10, :cond_a5

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 358
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_a4
    :goto_a4
    return-void

    .line 393
    .restart local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_a5
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    goto :goto_a4
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v4, 0x8

    const/high16 v6, -0x80000000

    .line 330
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 331
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 333
    .local v1, "height":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_19

    .line 334
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 338
    :cond_19
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2e

    .line 339
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 340
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 339
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 345
    :cond_2e
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackActionButtonRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 346
    .local v0, "buttonBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 348
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 346
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 351
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 329
    return-void
.end method

.method public onReload(ZZ)V
    .registers 8
    .param p1, "isResumingFromVisible"    # Z
    .param p2, "isTaskStackEmpty"    # Z

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 166
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 168
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-nez v2, :cond_25

    .line 169
    const/4 p1, 0x0

    .line 170
    .local p1, "isResumingFromVisible":Z
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 171
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 172
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 176
    .end local p1    # "isResumingFromVisible":Z
    :cond_25
    if-eqz p1, :cond_3b

    move v2, v3

    :goto_28
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    .line 180
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReload(Z)V

    .line 182
    if-eqz p1, :cond_3d

    .line 184
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 164
    :goto_3a
    return-void

    .line 176
    :cond_3b
    const/4 v2, 0x1

    goto :goto_28

    .line 189
    :cond_3d
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v2, :cond_47

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v2, :cond_47

    if-eqz p2, :cond_4f

    .line 191
    :cond_47
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3a

    .line 193
    :cond_4f
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showEmptyView(I)V
    .registers 4
    .param p1, "msgResId"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 289
    return-void
.end method

.method public updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .registers 5
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "setStackViewTasks"    # Z

    .prologue
    .line 202
    if-eqz p2, :cond_8

    .line 203
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 207
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hideEmptyView()V

    .line 201
    :goto_11
    return-void

    .line 210
    :cond_12
    const v0, 0x7f0f02d4

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    goto :goto_11
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 428
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v2

    .line 429
    .local v2, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1f

    .line 430
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v3, v3, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget-object v0, v3, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 431
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-ne v0, p1, :cond_1c

    .line 432
    const/4 v3, 0x1

    return v3

    .line 429
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 435
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    return v3
.end method
