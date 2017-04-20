.class public Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActionsContainer:Landroid/view/View;

.field private mContentHeight:I

.field private mMinHeightHint:I

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/ProgressBar;F)V
    .registers 3
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "intensity"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 52
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    .line 114
    const/4 v2, 0x2

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 49
    return-void
.end method

.method private fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V
    .registers 12
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 189
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/ProgressBar;)V

    .line 195
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 189
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 188
    return-void
.end method

.method private static interpolateColor(IIF)I
    .registers 16
    .param p0, "source"    # I
    .param p1, "target"    # I
    .param p2, "t"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 219
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 220
    .local v0, "aSource":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 221
    .local v6, "rSource":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 222
    .local v4, "gSource":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 223
    .local v2, "bSource":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 224
    .local v1, "aTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 225
    .local v7, "rTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 226
    .local v5, "gTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 228
    .local v3, "bTarget":I
    int-to-float v8, v0

    sub-float v9, v12, p2

    mul-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 229
    int-to-float v9, v6

    sub-float v10, v12, p2

    mul-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 230
    int-to-float v10, v4

    sub-float v11, v12, p2

    mul-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, p2

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 231
    int-to-float v11, v2

    sub-float/2addr v12, p2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 227
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method private resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V
    .registers 6
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 119
    const v3, 0x7f12003f

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "progress":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_54

    .line 125
    check-cast v0, Landroid/widget/ProgressBar;

    .end local v0    # "progress":Landroid/view/View;
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 130
    :goto_48
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10203a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 117
    return-void

    .line 128
    .restart local v0    # "progress":Landroid/view/View;
    :cond_54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_48
.end method

.method private setProgressBarDark(ZZJ)V
    .registers 6
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 180
    if-eqz p2, :cond_c

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V

    .line 178
    :cond_b
    :goto_b
    return-void

    .line 183
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;Z)V

    goto :goto_b
.end method

.method private updateActionOffset()V
    .registers 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 246
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 247
    .local v0, "constrainedContentHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 243
    .end local v0    # "constrainedContentHeight":I
    :cond_1a
    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;F)V
    .registers 6
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "intensity"    # F

    .prologue
    .line 199
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mColor:I

    const/4 v2, -0x1

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->interpolateColor(IIF)I

    move-result v0

    .line 200
    .local v0, "color":I
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 201
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 198
    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;Z)V
    .registers 4
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "dark"    # Z

    .prologue
    .line 205
    if-eqz p2, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    .line 204
    return-void

    .line 205
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .registers 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V

    .line 138
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 134
    return-void
.end method

.method public setContentHeight(II)V
    .registers 3
    .param p1, "contentHeight"    # I
    .param p2, "minHeightHint"    # I

    .prologue
    .line 236
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setContentHeight(II)V

    .line 238
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    .line 239
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateActionOffset()V

    .line 235
    return-void
.end method

.method public setDark(ZZJ)V
    .registers 6
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_9

    .line 171
    return-void

    .line 173
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setDark(ZZJ)V

    .line 174
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setPictureGrayscale(ZZJ)V

    .line 175
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setProgressBarDark(ZZJ)V

    .line 169
    return-void
.end method

.method protected setPictureGrayscale(ZZJ)V
    .registers 6
    .param p1, "grayscale"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 210
    if-eqz p2, :cond_c

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    .line 208
    :cond_b
    :goto_b
    return-void

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_b
.end method

.method protected updateInvertHelper()V
    .registers 4

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10203b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "mainColumn":Landroid/view/View;
    if-eqz v0, :cond_13

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    .line 142
    :cond_13
    return-void
.end method

.method protected updateTransformedTypes()V
    .registers 4

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 157
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 160
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_27

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 163
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_33

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 151
    :cond_33
    return-void
.end method
