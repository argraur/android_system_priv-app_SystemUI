.class public Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# instance fields
.field private mBackgroundColor:I

.field private final mGreyPaint:Landroid/graphics/Paint;

.field private final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mShouldInvertDark:Z

.field private mShowingLegacyBackground:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 50
    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 48
    return-void
.end method

.method private isColorLight(I)Z
    .registers 8
    .param p1, "backgroundColor"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_12

    .line 125
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_13

    .line 124
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 125
    goto :goto_12
.end method


# virtual methods
.method protected fadeGrayscale(ZJ)V
    .registers 12
    .param p1, "dark"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 76
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)V

    .line 83
    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;Z)V

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    .line 76
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 75
    return-void
.end method

.method public getCustomBackgroundColor()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    goto :goto_9
.end method

.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .registers 7
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const v3, 0x7f120039

    .line 110
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iput v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 113
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_39

    .line 114
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    :cond_2c
    :goto_2c
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    if-eqz v1, :cond_50

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->isColorLight(I)Z

    move-result v1

    :goto_36
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    .line 109
    return-void

    .line 117
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_39
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    goto :goto_2c

    .line 120
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_50
    const/4 v1, 0x1

    goto :goto_36
.end method

.method public setDark(ZZJ)V
    .registers 8
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_9

    .line 56
    return-void

    .line 58
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShowingLegacyBackground:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    if-eqz v0, :cond_22

    .line 60
    if-eqz p2, :cond_1c

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    .line 54
    :goto_1b
    return-void

    .line 63
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_1b

    .line 66
    :cond_22
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_31

    const/4 v0, 0x2

    :goto_27
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    if-eqz p2, :cond_33

    .line 68
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V

    goto :goto_1b

    .line 66
    :cond_31
    const/4 v0, 0x0

    goto :goto_27

    .line 70
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->updateGrayscale(Z)V

    goto :goto_1b
.end method

.method public setShowingLegacyBackground(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setShowingLegacyBackground(Z)V

    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShowingLegacyBackground:Z

    .line 135
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 103
    return-void

    .line 105
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected updateGrayscale(Z)V
    .registers 5
    .param p1, "dark"    # Z

    .prologue
    .line 94
    if-eqz p1, :cond_1a

    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->updateGrayscaleMatrix(F)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 93
    :cond_1a
    return-void
.end method
