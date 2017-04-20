.class public Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"


# instance fields
.field public TRANSITION_DURATION_IN:J

.field public TRANSITION_DURATION_OUT:J

.field private mBrightnessMirror:Landroid/view/View;

.field private final mInt2Cache:[I

.field private final mNotificationPanel:Landroid/view/View;

.field private final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field private final mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private final mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .registers 4
    .param p1, "statusBarWindow"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_OUT:J

    .line 37
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 47
    const v0, 0x7f120266

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ScrimView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 48
    const v0, 0x7f1200b0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 49
    const v0, 0x7f120249

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Landroid/view/View;

    .line 51
    const v0, 0x7f12024c

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 45
    return-void
.end method

.method private inAnimation(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 6
    .param p1, "a"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 83
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    .line 82
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method private outAnimation(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 6
    .param p1, "a"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 77
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_OUT:J

    .line 76
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 79
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMirror()Landroid/view/View;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    return-object v0
.end method

.method public hideMirror()V
    .registers 6

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->inAnimation(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 62
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 6

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 120
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->removeView(Landroid/view/View;)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f04001d

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->addView(Landroid/view/View;I)V

    .line 118
    return-void
.end method

.method public setLocation(Landroid/view/View;)V
    .registers 11
    .param p1, "original"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 89
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 93
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v4, v4, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 94
    .local v2, "originalX":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v4, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 95
    .local v3, "originalY":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 96
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 97
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 98
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 99
    .local v0, "mirrorX":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 100
    .local v1, "mirrorY":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    sub-int v5, v2, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 101
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    sub-int v5, v3, v1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 88
    return-void
.end method

.method public showMirror()V
    .registers 6

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFadingOut(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_OUT:J

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->outAnimation(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 54
    return-void
.end method

.method public updateResources()V
    .registers 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    const v2, 0x7f100175

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    const v2, 0x7f0e0057

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method
