.class public abstract Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# instance fields
.field protected mDark:Z

.field protected mDarkInitialized:Z

.field protected final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

.field protected final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDarkInitialized:Z

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 64
    return-void
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203b7

    if-ne v0, v1, :cond_68

    .line 47
    const-string/jumbo v0, "bigPicture"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 49
    :cond_1c
    const-string/jumbo v0, "bigText"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 51
    :cond_2f
    const-string/jumbo v0, "media"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string/jumbo v0, "bigMediaNarrow"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 52
    :cond_49
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 53
    :cond_4f
    const-string/jumbo v0, "messaging"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 56
    :cond_62
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 57
    :cond_68
    instance-of v0, p1, Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_72

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 60
    :cond_72
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0
.end method


# virtual methods
.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .registers 3
    .param p1, "fadingView"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomBackgroundColor()I
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .registers 3
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDarkInitialized:Z

    .line 85
    return-void
.end method

.method public setContentHeight(II)V
    .registers 3
    .param p1, "contentHeight"    # I
    .param p2, "minHeightHint"    # I

    .prologue
    .line 164
    return-void
.end method

.method public setDark(ZZJ)V
    .registers 6
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDark:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDarkInitialized:Z

    .line 76
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 161
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void

    .line 154
    :cond_12
    const/4 v0, 0x4

    goto :goto_e
.end method

.method protected startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V
    .registers 13
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 92
    if-eqz p2, :cond_2d

    const/4 v2, 0x0

    .line 93
    .local v2, "startIntensity":F
    :goto_3
    if-eqz p2, :cond_30

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    .local v1, "endIntensity":F
    :goto_7
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 95
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 99
    if-eqz p5, :cond_29

    .line 100
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    :cond_29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 91
    return-void

    .line 92
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endIntensity":F
    .end local v2    # "startIntensity":F
    :cond_2d
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "startIntensity":F
    goto :goto_3

    .line 93
    :cond_30
    const/4 v1, 0x0

    .restart local v1    # "endIntensity":F
    goto :goto_7
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 3
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 147
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 136
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 115
    return-void
.end method

.method protected updateGrayscaleMatrix(F)V
    .registers 4
    .param p1, "intensity"    # F

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 105
    return-void
.end method
