.class public Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationHeaderViewWrapper.java"


# instance fields
.field protected mColor:I

.field private mExpandButton:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field private final mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mIconDarkAlpha:I

.field private final mIconDarkColor:I

.field protected final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field protected final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIconDarkAlpha:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;Landroid/widget/ImageView;F)V
    .registers 3
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "intensity"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;F)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 65
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 50
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 51
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    .line 50
    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIconDarkColor:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIconDarkAlpha:I

    .line 67
    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 64
    return-void
.end method

.method private addRemainingTransformTypes()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addRemainingTransformTypes(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method private fadeIconAlpha(Landroid/widget/ImageView;ZJ)V
    .registers 12
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 205
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;Landroid/widget/ImageView;)V

    .line 211
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 204
    return-void
.end method

.method private fadeIconColorFilter(Landroid/widget/ImageView;ZJ)V
    .registers 12
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 196
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;Landroid/widget/ImageView;)V

    .line 201
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 196
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 195
    return-void
.end method

.method private static interpolateColor(IIF)I
    .registers 16
    .param p0, "source"    # I
    .param p1, "target"    # I
    .param p2, "t"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 271
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 272
    .local v0, "aSource":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 273
    .local v6, "rSource":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 274
    .local v4, "gSource":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 275
    .local v2, "bSource":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 276
    .local v1, "aTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 277
    .local v7, "rTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 278
    .local v5, "gTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 280
    .local v3, "bTarget":I
    int-to-float v8, v0

    sub-float v9, v12, p2

    mul-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 281
    int-to-float v9, v6

    sub-float v10, v12, p2

    mul-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 282
    int-to-float v10, v4

    sub-float v11, v12, p2

    mul-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, p2

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 283
    int-to-float v11, v2

    sub-float/2addr v12, p2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 279
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method private resolveColor(Landroid/widget/ImageView;)I
    .registers 4
    .param p1, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 82
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 83
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 84
    .local v0, "filter":Landroid/graphics/ColorFilter;
    instance-of v1, v0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_1b

    .line 85
    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    return v1

    .line 88
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private updateCropToPaddingForImageViews()V
    .registers 6

    .prologue
    .line 130
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 131
    .local v3, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/view/View;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_a
    :goto_a
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 133
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 134
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_21

    .line 135
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "child":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    goto :goto_a

    .line 136
    .restart local v0    # "child":Landroid/view/View;
    :cond_21
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_a

    move-object v1, v0

    .line 137
    check-cast v1, Landroid/view/ViewGroup;

    .line 138
    .local v1, "group":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 139
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 129
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_39
    return-void
.end method

.method private updateIconAlpha(Landroid/widget/ImageView;Z)V
    .registers 4
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 252
    if-eqz p2, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIconDarkAlpha:I

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 251
    return-void

    .line 252
    :cond_8
    const/16 v0, 0xff

    goto :goto_4
.end method

.method private updateIconColorFilter(Landroid/widget/ImageView;F)V
    .registers 9
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "intensity"    # F

    .prologue
    const/4 v5, 0x0

    .line 236
    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    const/4 v4, -0x1

    invoke-static {v3, v4, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->interpolateColor(IIF)I

    move-result v0

    .line 237
    .local v0, "color":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 238
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 242
    .local v2, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1f

    .line 243
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 246
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 235
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1f
    return-void
.end method

.method private updateIconColorFilter(Landroid/widget/ImageView;Z)V
    .registers 4
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 232
    if-eqz p2, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;F)V

    .line 231
    return-void

    .line 232
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method protected fadeGrayscale(Landroid/widget/ImageView;ZJ)V
    .registers 12
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 215
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;Landroid/widget/ImageView;)V

    .line 221
    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$4;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;ZLandroid/widget/ImageView;)V

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 215
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 214
    return-void
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .registers 3
    .param p1, "fadingView"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .registers 7
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 95
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v2

    .line 98
    .local v2, "previousViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->addRemainingTransformTypes()V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateCropToPaddingForImageViews()V

    .line 106
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v0

    .line 107
    .local v0, "currentViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v1, v4, :cond_39

    .line 108
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 109
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 110
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->resetTransformedView(Landroid/view/View;)V

    .line 107
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 92
    .end local v3    # "view":Landroid/view/View;
    :cond_39
    return-void
.end method

.method protected resolveHeaderViews()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveColor(Landroid/widget/ImageView;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    .line 78
    const v1, 0x10203af

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 73
    return-void
.end method

.method public setDark(ZZJ)V
    .registers 8
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 163
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDark:Z

    if-ne p1, v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDarkInitialized:Z

    if-eqz v1, :cond_9

    .line 164
    return-void

    .line 166
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 167
    if-eqz p2, :cond_20

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    .line 172
    :goto_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 162
    :cond_1f
    :goto_1f
    return-void

    .line 170
    :cond_20
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_13

    .line 175
    :cond_26
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v1

    .line 176
    const/4 v2, -0x1

    .line 175
    if-eq v1, v2, :cond_3f

    const/4 v0, 0x1

    .line 177
    .local v0, "hadColorFilter":Z
    :goto_30
    if-eqz p2, :cond_47

    .line 178
    if-eqz v0, :cond_41

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->fadeIconColorFilter(Landroid/widget/ImageView;ZJ)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->fadeIconAlpha(Landroid/widget/ImageView;ZJ)V

    goto :goto_1f

    .line 175
    .end local v0    # "hadColorFilter":Z
    :cond_3f
    const/4 v0, 0x0

    .restart local v0    # "hadColorFilter":Z
    goto :goto_30

    .line 182
    :cond_41
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    goto :goto_1f

    .line 185
    :cond_47
    if-eqz v0, :cond_54

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateIconColorFilter(Landroid/widget/ImageView;Z)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateIconAlpha(Landroid/widget/ImageView;Z)V

    goto :goto_1f

    .line 189
    :cond_54
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_1f
.end method

.method public setVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    .line 317
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 3
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 307
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 312
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 302
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_13

    .end local p2    # "onClickListener":Landroid/view/View$OnClickListener;
    :goto_c
    invoke-virtual {v0, p2}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void

    .line 266
    .restart local p2    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_10
    const/16 v0, 0x8

    goto :goto_5

    .line 267
    :cond_13
    const/4 p2, 0x0

    goto :goto_c
.end method

.method protected updateGrayscale(Landroid/widget/ImageView;Z)V
    .registers 5
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 256
    if-eqz p2, :cond_12

    .line 257
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateGrayscaleMatrix(F)V

    .line 258
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 255
    :goto_11
    return-void

    .line 260
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_11
.end method

.method protected updateInvertHelper()V
    .registers 4

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2}, Lcom/android/systemui/ViewInvertHelper;->clearTargets()V

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_1d

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    .line 147
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 145
    .end local v0    # "child":Landroid/view/View;
    :cond_20
    return-void
.end method

.method protected updateTransformedTypes()V
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->reset()V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 155
    return-void
.end method
