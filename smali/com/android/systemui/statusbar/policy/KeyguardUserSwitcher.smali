.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.super Ljava/lang/Object;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;,
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;,
        Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

.field private mAnimating:Z

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private final mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

.field private mBgAnimator:Landroid/animation/ObjectAnimator;

.field public final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mUserSwitcher:Landroid/view/ViewGroup;

.field private final mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->refresh()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSwitcher"    # Landroid/view/ViewStub;
    .param p3, "statusBarView"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .param p4, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p5, "userSwitcherController"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v7, 0x0

    .line 63
    .local v7, "keyguardUserSwitcherEnabled":Z
    :goto_19
    if-eqz p5, :cond_61

    if-eqz v7, :cond_61

    .line 64
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->reinflateViews()V

    .line 67
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 69
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-direct {v0, p1, p5, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 72
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 73
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    const-wide/16 v2, 0x190

    .line 74
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 73
    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 60
    :goto_5e
    return-void

    .line 62
    .end local v7    # "keyguardUserSwitcherEnabled":Z
    :cond_5f
    const/4 v7, 0x1

    .restart local v7    # "keyguardUserSwitcherEnabled":Z
    goto :goto_19

    .line 77
    :cond_61
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 78
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 79
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    .line 80
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 81
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    goto :goto_5e
.end method

.method private cancelAnimations()V
    .registers 4

    .prologue
    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 145
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 148
    :cond_19
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_22

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 151
    :cond_22
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 152
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 143
    return-void
.end method

.method private hide(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    .line 134
    if-eqz p1, :cond_1b

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startDisappearAnimation()V

    .line 139
    :goto_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    .line 131
    :cond_1a
    return-void

    .line 137
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->setVisibility(I)V

    goto :goto_15
.end method

.method private refresh()V
    .registers 10

    .prologue
    .line 201
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 202
    .local v2, "childCount":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getCount()I

    move-result v1

    .line 203
    .local v1, "adapterCount":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 204
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_4b

    .line 205
    if-ge v3, v1, :cond_3d

    .line 206
    const/4 v6, 0x0

    .line 207
    .local v6, "oldView":Landroid/view/View;
    if-ge v3, v2, :cond_1e

    .line 208
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 210
    .end local v6    # "oldView":Landroid/view/View;
    :cond_1e
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3, v6, v8}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 211
    .local v5, "newView":Landroid/view/View;
    if-nez v6, :cond_30

    .line 213
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    .end local v5    # "newView":Landroid/view/View;
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 214
    .restart local v5    # "newView":Landroid/view/View;
    :cond_30
    if-eq v6, v5, :cond_2d

    .line 216
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 217
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2d

    .line 220
    .end local v5    # "newView":Landroid/view/View;
    :cond_3d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 221
    .local v4, "lastIndex":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2d

    .line 200
    .end local v4    # "lastIndex":I
    :cond_4b
    return-void
.end method

.method private reinflateViews()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 90
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->removeAllViews()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    const v2, 0x7f040048

    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    .line 96
    const v1, 0x7f12010c

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method private shouldExpandByDefault()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private startAppearAnimation()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 156
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 157
    .local v0, "count":I
    new-array v2, v0, [Landroid/view/View;

    .line 158
    .local v2, "objects":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_17

    .line 159
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 161
    :cond_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 162
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 163
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 170
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 171
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    const-string/jumbo v4, "alpha"

    const/16 v5, 0xff

    filled-new-array {v6, v5}, [I

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 172
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 155
    return-void
.end method

.method private startDisappearAnimation()V
    .registers 5

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 187
    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 188
    const-wide/16 v2, 0x12c

    .line 186
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 184
    return-void
.end method


# virtual methods
.method public hideIfNotSimple(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 226
    :cond_c
    :goto_c
    return-void

    .line 228
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)V

    goto :goto_c
.end method

.method isAnimating()Z
    .registers 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAnimating:Z

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    if-eqz v0, :cond_a

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->reinflateViews()V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->refresh()V

    .line 243
    :cond_a
    return-void
.end method

.method public setKeyguard(ZZ)V
    .registers 4
    .param p1, "keyguard"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    .line 103
    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->shouldExpandByDefault()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    .line 101
    :cond_f
    :goto_f
    return-void

    .line 106
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)V

    goto :goto_f
.end method

.method public show(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcher:Landroid/view/ViewGroup;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->cancelAnimations()V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->refresh()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Container;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mStatusBarView:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherShowing(ZZ)V

    .line 125
    if-eqz p1, :cond_25

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startAppearAnimation()V

    .line 119
    :cond_25
    return-void
.end method
