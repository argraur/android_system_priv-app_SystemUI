.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static final sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mClockNotificationsMarginMax:I

.field private mClockNotificationsMarginMin:I

.field private mClockYFractionMax:F

.field private mClockYFractionMin:F

.field private mDensity:F

.field private mEmptyDragAmount:F

.field private mExpandedHeight:F

.field private mHeight:I

.field private mKeyguardStatusHeight:I

.field private mMaxKeyguardNotifications:I

.field private mMaxPanelHeight:I

.field private mMoreCardNotificationAmount:F

.field private mNotificationCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 65
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f600000    # 0.875f

    const v3, 0x3f19999a    # 0.6f

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 67
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 29
    return-void
.end method

.method private getClockAlpha(F)F
    .registers 7
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1e

    .line 176
    const/high16 v1, 0x3f000000    # 0.5f

    .line 178
    .local v1, "fadeEnd":F
    :goto_b
    sub-float v2, p1, v1

    .line 179
    const v3, 0x3f733333    # 0.95f

    sub-float/2addr v3, v1

    .line 178
    div-float v0, v2, v3

    .line 180
    .local v0, "alpha":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 177
    .end local v0    # "alpha":F
    .end local v1    # "fadeEnd":F
    :cond_1e
    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_b
.end method

.method private getClockNotificationsPadding()I
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 133
    .local v0, "t":F
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 134
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getClockScale(III)F
    .registers 14
    .param p1, "notificationPadding"    # I
    .param p2, "clockY"    # I
    .param p3, "startPadding"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_40

    const/high16 v3, 0x40c00000    # 6.0f

    .line 122
    .local v3, "scaleMultiplier":F
    :goto_d
    int-to-float v4, p2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float v2, v4, v5

    .line 123
    .local v2, "scaleEnd":F
    int-to-float v4, p1

    sub-float v0, v4, v2

    .line 124
    .local v0, "distanceToScaleEnd":F
    int-to-float v4, p3

    sub-float/2addr v4, v2

    div-float v1, v0, v4

    .line 125
    .local v1, "progress":F
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 126
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 127
    float-to-double v4, v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    div-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-double v6, v6

    const-wide v8, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 128
    return v1

    .line 121
    .end local v0    # "distanceToScaleEnd":F
    .end local v1    # "progress":F
    .end local v2    # "scaleEnd":F
    .end local v3    # "scaleMultiplier":F
    :cond_40
    const/high16 v3, 0x40a00000    # 5.0f

    .restart local v3    # "scaleMultiplier":F
    goto :goto_d
.end method

.method private getClockY()I
    .registers 3

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYFraction()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getClockYExpansionAdjustment()F
    .registers 7

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionRubberbandFactor()F

    move-result v0

    .line 149
    .local v0, "rubberbandFactor":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    sub-float/2addr v4, v5

    mul-float v3, v0, v4

    .line 150
    .local v3, "value":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 151
    .local v2, "t":F
    sget-object v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    neg-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    .line 152
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v5, v5

    .line 151
    mul-float v1, v4, v5

    .line 153
    .local v1, "slowedDownValue":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    if-nez v4, :cond_2d

    .line 154
    const/high16 v4, -0x40000000    # -2.0f

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    return v4

    .line 156
    :cond_2d
    return v1
.end method

.method private getClockYExpansionRubberbandFactor()F
    .registers 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 162
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 163
    float-to-double v2, v0

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 164
    sub-float/2addr v1, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getClockYFraction()F
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 139
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 140
    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getNotificationAmountT()F
    .registers 4

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    int-to-float v0, v0

    .line 188
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    add-float/2addr v1, v2

    .line 187
    div-float/2addr v0, v1

    return v0
.end method

.method private getTopPaddingAdjMultiplier()F
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 169
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 170
    sub-float/2addr v1, v0

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v2

    .line 171
    const v2, 0x404ccccd    # 3.2f

    mul-float/2addr v2, v0

    .line 170
    add-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public getMinStackScrollerPadding(II)F
    .registers 5
    .param p1, "height"    # I
    .param p2, "keyguardStatusHeight"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 101
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    int-to-float v1, v1

    .line 100
    add-float/2addr v0, v1

    return v0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 77
    const v0, 0x7f1001b8

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    .line 79
    const v0, 0x7f1001b9

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    .line 80
    const v0, 0x7f11000b

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    .line 81
    const v0, 0x7f11000a

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    .line 83
    const v0, 0x7f10015c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 84
    const v1, 0x7f100157

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 83
    div-float/2addr v0, v1

    .line 82
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    .line 85
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    .line 75
    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .registers 11
    .param p1, "result"    # Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 106
    .local v4, "y":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionAdjustment()F

    move-result v0

    .line 107
    .local v0, "clockAdjustment":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getTopPaddingAdjMultiplier()F

    move-result v3

    .line 108
    .local v3, "topPaddingAdjMultiplier":F
    mul-float v5, v0, v3

    float-to-int v5, v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v5

    .line 110
    iget v6, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 109
    add-int v1, v5, v6

    .line 111
    .local v1, "clockNotificationsPadding":I
    add-int v2, v4, v1

    .line 112
    .local v2, "padding":I
    iput v4, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 113
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v5, v2

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 114
    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 115
    iget v6, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v7, v8

    .line 114
    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockScale(III)F

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 117
    iget v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(F)F

    move-result v5

    iput v5, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 104
    return-void
.end method

.method public setup(IIFIIIF)V
    .registers 8
    .param p1, "maxKeyguardNotifications"    # I
    .param p2, "maxPanelHeight"    # I
    .param p3, "expandedHeight"    # F
    .param p4, "notificationCount"    # I
    .param p5, "height"    # I
    .param p6, "keyguardStatusHeight"    # I
    .param p7, "emptyDragAmount"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    .line 91
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    .line 92
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    .line 93
    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    .line 94
    iput p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    .line 95
    iput p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 96
    iput p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    .line 89
    return-void
.end method
