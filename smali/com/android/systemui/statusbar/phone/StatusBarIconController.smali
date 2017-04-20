.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.source "StatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;
    }
.end annotation


# static fields
.field private static final sTmpInt2:[I

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

.field private mClock:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDarkIntensity:F

.field private mDarkModeIconColorSingleTone:I

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private mLightModeIconColorSingleTone:I

.field private mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mPendingDarkIntensity:F

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

.field private mStatusIcons:Landroid/widget/LinearLayout;

.field private mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field private mSystemIconArea:Landroid/widget/LinearLayout;

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private final mTintArea:Landroid/graphics/Rect;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarIconController;F)V
    .registers 2
    .param p1, "darkIntensity"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconTintInternal(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpRect:Landroid/graphics/Rect;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpInt2:[I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Landroid/view/View;
    .param p3, "keyguardStatusBar"    # Landroid/view/View;
    .param p4, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const v4, 0x7f12026e

    const v3, 0x7f12026d

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    const v2, 0x107000e

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;-><init>([Ljava/lang/String;)V

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    .line 104
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    .line 106
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    .line 118
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 119
    const v1, 0x7f120246

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 120
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 121
    const v1, 0x7f120230

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 123
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Lcom/android/systemui/SystemUIFactory;->createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    .line 125
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    .line 129
    const v1, 0x7f120245

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    .local v0, "notificationIconArea":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 134
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BatteryMeterView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 135
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/BatteryMeterView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->scaleBatteryMeterViews(Landroid/content/Context;)V

    .line 138
    const v1, 0x7f1200f9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    .line 139
    const v1, 0x7f0c00a8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    .line 140
    const v1, 0x7f0c00ab

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    .line 141
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->loadDimens()V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "icon_blacklist"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 13
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x2

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "slot":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getViewIndex(I)I

    move-result v4

    .line 204
    .local v4, "viewIndex":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 205
    .local v0, "blocked":Z
    new-instance v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2, v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 206
    .local v3, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 208
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 209
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 208
    invoke-direct {v1, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    invoke-virtual {v1, v5, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 211
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v3    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2, v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 214
    .restart local v3    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 215
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 215
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 201
    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 357
    if-nez p2, :cond_12

    .line 358
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 359
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 360
    return-void

    .line 362
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 364
    const-wide/16 v2, 0xa0

    .line 362
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 365
    const-wide/16 v2, 0x0

    .line 362
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 366
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Landroid/view/View;)V

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 355
    return-void
.end method

.method private animateIconTint(FJJ)V
    .registers 10
    .param p1, "targetDarkIntensity"    # F
    .param p2, "delay"    # J
    .param p4, "duration"    # J

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 444
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_10

    .line 445
    return-void

    .line 447
    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 440
    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 381
    if-nez p2, :cond_13

    .line 382
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 383
    return-void

    .line 385
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 387
    const-wide/16 v2, 0x140

    .line 385
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 385
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 389
    const-wide/16 v2, 0x32

    .line 385
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 394
    const/4 v1, 0x0

    .line 385
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    .line 398
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 400
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 398
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 378
    :cond_5a
    return-void
.end method

.method private applyIconTint()V
    .registers 7

    .prologue
    .line 522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 523
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 524
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    .end local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_23
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconTint(IFLandroid/graphics/Rect;)V

    .line 527
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 528
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    .line 527
    :goto_3c
    invoke-virtual {v3, v2}, Lcom/android/systemui/BatteryMeterView;->setDarkIntensity(F)V

    .line 529
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    return-void

    .line 528
    :cond_4f
    const/4 v2, 0x0

    goto :goto_3c
.end method

.method private deferIconTintChange(F)V
    .registers 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_b

    .line 470
    return-void

    .line 472
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 473
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    .line 468
    return-void
.end method

.method public static getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F
    .registers 4
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "intensity"    # F

    .prologue
    .line 493
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 494
    return p2

    .line 496
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 7
    .param p0, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 566
    .local v1, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p0, :cond_a

    .line 567
    const-string/jumbo p0, "rotate,headset"

    .line 569
    :cond_a
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "blacklist":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v0

    :goto_13
    if-ge v3, v4, :cond_23

    aget-object v2, v0, v3

    .line 571
    .local v2, "slot":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 572
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 575
    .end local v2    # "slot":Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method public static getTint(Landroid/graphics/Rect;Landroid/view/View;I)I
    .registers 4
    .param p0, "tintArea"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 481
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 482
    return p2

    .line 484
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method private handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getViewIndex(I)I

    move-result v1

    .line 304
    .local v1, "viewIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 305
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 306
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 307
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 302
    return-void
.end method

.method private static isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z
    .registers 11
    .param p0, "area"    # Landroid/graphics/Rect;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 505
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 506
    return v5

    .line 508
    :cond_9
    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 509
    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpInt2:[I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 510
    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->sTmpInt2:[I

    aget v4, v7, v6

    .line 512
    .local v4, "left":I
    iget v7, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 513
    .local v3, "intersectStart":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 514
    .local v2, "intersectEnd":I
    sub-int v7, v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 516
    .local v1, "intersectAmount":I
    iget v7, p0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_3e

    const/4 v0, 0x1

    .line 517
    .local v0, "coversFullStatusBar":Z
    :goto_33
    mul-int/lit8 v7, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_40

    .line 518
    .local v5, "majorityOfWidth":Z
    :goto_3b
    if-eqz v5, :cond_42

    .end local v0    # "coversFullStatusBar":Z
    :goto_3d
    return v0

    .line 516
    .end local v5    # "majorityOfWidth":Z
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "coversFullStatusBar":Z
    goto :goto_33

    :cond_40
    move v5, v6

    .line 517
    goto :goto_3b

    .restart local v5    # "majorityOfWidth":Z
    :cond_42
    move v0, v6

    .line 518
    goto :goto_3d
.end method

.method private loadDimens()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 196
    const v1, 0x1050022

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 198
    const v1, 0x7f100162

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    .line 194
    return-void
.end method

.method private scaleBatteryMeterViews(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 156
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 158
    .local v6, "typedValue":Landroid/util/TypedValue;
    const v7, 0x7f100155

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 159
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 161
    .local v2, "iconScaleFactor":F
    const v7, 0x7f10014e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 162
    .local v0, "batteryHeight":I
    const v7, 0x7f10014f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 163
    .local v1, "batteryWidth":I
    const v7, 0x7f1001f5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 165
    .local v3, "marginBottom":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    int-to-float v7, v1

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v0

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 165
    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v5, "scaledLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v9, v9, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 169
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/BatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/BatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return-void
.end method

.method private setHeightAndCenter(Landroid/widget/ImageView;I)V
    .registers 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "height"    # I

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 250
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_11

    move-object v1, v0

    .line 252
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 254
    :cond_11
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method private setIconTintInternal(F)V
    .registers 5
    .param p1, "darkIntensity"    # F

    .prologue
    .line 461
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkIntensity:F

    .line 462
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    .line 463
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mLightModeIconColorSingleTone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDarkModeIconColorSingleTone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 462
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconTint:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIconTint(I)V

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 460
    return-void
.end method

.method private updateClock()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    const v1, 0x7f100150

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    .line 601
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 602
    const v2, 0x7f100151

    .line 601
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 604
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 605
    const v3, 0x7f100152

    .line 604
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 600
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 598
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 537
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_15

    .line 538
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 539
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    .line 541
    :cond_15
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 536
    return-void
.end method

.method public appTransitionPending()V
    .registers 2

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 532
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .registers 12
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v6, 0x0

    .line 545
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    if-eqz v0, :cond_21

    .line 546
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintChangePending:Z

    .line 547
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mPendingDarkIntensity:F

    .line 548
    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p3

    .line 547
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    .line 561
    :cond_1e
    :goto_1e
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    .line 544
    return-void

    .line 551
    :cond_21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v0, :cond_1e

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    .line 556
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringStartTime:J

    .line 557
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDuration:J

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1e
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_f

    .line 347
    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 349
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 345
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 337
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  icon views: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_4d

    .line 339
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 340
    .local v2, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 342
    .end local v2    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_4d
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 335
    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 323
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V

    .line 315
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->loadDimens()V

    .line 580
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    .line 581
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateClock()V

    .line 582
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_32

    .line 583
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 584
    .local v0, "child":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 585
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 584
    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 586
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconHPadding:I

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 587
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 589
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_32
    const/4 v1, 0x0

    :goto_33
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4e

    .line 590
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 591
    .restart local v0    # "child":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 592
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconSize:I

    .line 591
    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 593
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 595
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->scaleBatteryMeterViews(Landroid/content/Context;)V

    .line 578
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 176
    return-void

    .line 178
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 186
    :cond_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_3a
    if-ltz v0, :cond_4c

    .line 187
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIcon(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 190
    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6d

    .line 191
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 174
    :cond_6d
    return-void
.end method

.method public removeIcon(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    if-nez v1, :cond_7

    .line 279
    return-void

    .line 281
    :cond_7
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->removeIcon(I)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getViewIndex(I)I

    move-result v0

    .line 283
    .local v0, "viewIndex":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 277
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 3
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIcon(I)V

    .line 261
    return-void
.end method

.method public setClockVisibility(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mClock:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    return-void

    .line 332
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setExternalIcon(Ljava/lang/String;)V
    .registers 8
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getViewIndex(I)I

    move-result v2

    .line 236
    .local v2, "viewIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 237
    const v4, 0x7f100160

    .line 236
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 238
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 239
    .local v1, "imageView":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 240
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 241
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    .line 242
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "imageView":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 243
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 244
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 245
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    .line 234
    return-void
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 289
    if-nez p2, :cond_6

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIcon(I)V

    .line 291
    return-void

    .line 293
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    .line 294
    .local v0, "isNew":Z
    :goto_d
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 295
    if-eqz v0, :cond_18

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 288
    :goto_15
    return-void

    .line 293
    .end local v0    # "isNew":Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "isNew":Z
    goto :goto_d

    .line 298
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_15
.end method

.method public setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .registers 12
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    .line 222
    .local v7, "index":I
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 223
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_24

    .line 224
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    move v5, v4

    move-object v6, p3

    .line 224
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 226
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 220
    :goto_23
    return-void

    .line 228
    :cond_24
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 229
    iput-object p3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 230
    invoke-direct {p0, v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_23
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 4
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 257
    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visibility"    # Z

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 269
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v0, :cond_e

    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v2, p2, :cond_f

    .line 270
    :cond_e
    return-void

    .line 272
    :cond_f
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 273
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 266
    return-void
.end method

.method public setIconsDark(ZZ)V
    .registers 11
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 426
    if-nez p2, :cond_f

    .line 427
    if-eqz p1, :cond_d

    :goto_9
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconTintInternal(F)V

    .line 425
    :goto_c
    return-void

    :cond_d
    move v0, v1

    .line 427
    goto :goto_9

    .line 428
    :cond_f
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionPending:Z

    if-eqz v4, :cond_1b

    .line 429
    if-eqz p1, :cond_19

    :goto_15
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->deferIconTintChange(F)V

    goto :goto_c

    :cond_19
    move v0, v1

    goto :goto_15

    .line 430
    :cond_1b
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferring:Z

    if-eqz v4, :cond_34

    .line 431
    if-eqz p1, :cond_22

    move v1, v0

    .line 432
    :cond_22
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 433
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTransitionDeferringDuration:J

    move-object v0, p0

    .line 431
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    goto :goto_c

    .line 435
    :cond_34
    if-eqz p1, :cond_37

    move v1, v0

    :cond_37
    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateIconTint(FJJ)V

    goto :goto_c
.end method

.method public setIconsDarkArea(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "darkArea"    # Landroid/graphics/Rect;

    .prologue
    .line 413
    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 414
    return-void

    .line 416
    :cond_b
    if-nez p1, :cond_1b

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 421
    :goto_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->applyIconTint()V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setTintArea(Landroid/graphics/Rect;)V

    .line 412
    return-void

    .line 419
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method public setSignalCluster(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .registers 2
    .param p1, "signalCluster"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSignalCluster:Lcom/android/systemui/statusbar/SignalClusterView;

    .line 147
    return-void
.end method

.method public showNotificationIconArea(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 327
    return-void
.end method

.method public showSystemIconArea(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateShow(Landroid/view/View;Z)V

    .line 319
    return-void
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .registers 3
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V

    .line 311
    return-void
.end method
