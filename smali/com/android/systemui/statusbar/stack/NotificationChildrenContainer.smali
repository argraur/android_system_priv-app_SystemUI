.class public Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# instance fields
.field private mActualHeight:I

.field private mChildPadding:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenExpanded:Z

.field private mCollapsedBottompadding:F

.field private mDividerHeight:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mHeaderHeight:I

.field private mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

.field private mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mMaxNotificationHeight:I

.field private mNeverAppliedGroupState:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderMargin:I

.field private mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mNotificatonTopPadding:I

.field private mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mOverflowNumber:Landroid/widget/TextView;

.field private mRealHeight:I

.field private mUserLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 94
    return-void
.end method

.method private getIntrinsicHeight(F)I
    .registers 13
    .param p1, "maxAllowedVisibleChildren"    # F

    .prologue
    const/4 v10, 0x0

    .line 373
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 374
    .local v5, "intrinsicHeight":I
    const/4 v6, 0x0

    .line 375
    .local v6, "visibleChildren":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 376
    .local v1, "childCount":I
    const/4 v3, 0x1

    .line 377
    .local v3, "firstChild":Z
    const/4 v2, 0x0

    .line 378
    .local v2, "expandFactor":F
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_14

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    .line 381
    :cond_14
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v1, :cond_1c

    .line 382
    int-to-float v7, v6

    cmpl-float v7, v7, p1

    if-ltz v7, :cond_2a

    .line 409
    :cond_1c
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_7a

    .line 410
    int-to-float v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    invoke-static {v8, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 415
    :cond_29
    :goto_29
    return v5

    .line 385
    :cond_2a
    if-nez v3, :cond_5a

    .line 386
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_4f

    .line 387
    int-to-float v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v9, v9

    invoke-static {v8, v9, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 405
    :goto_3d
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 406
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v5, v7

    .line 407
    add-int/lit8 v6, v6, 0x1

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 390
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4f
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v7, :cond_57

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    :goto_55
    add-int/2addr v5, v7

    goto :goto_3d

    :cond_57
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    goto :goto_55

    .line 393
    :cond_5a
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_6d

    .line 394
    int-to-float v7, v5

    .line 396
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 394
    invoke-static {v10, v8, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 403
    :goto_6b
    const/4 v3, 0x0

    goto :goto_3d

    .line 399
    :cond_6d
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v7, :cond_78

    .line 400
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v7, v8

    .line 399
    :goto_76
    add-int/2addr v5, v7

    goto :goto_6b

    .line 401
    :cond_78
    const/4 v7, 0x0

    goto :goto_76

    .line 412
    :cond_7a
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v7, :cond_29

    .line 413
    int-to-float v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr v7, v8

    float-to-int v5, v7

    goto :goto_29
.end method

.method private getMaxAllowedVisibleChildren()I
    .registers 2

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    return v0
.end method

.method private getMaxAllowedVisibleChildren(Z)I
    .registers 3
    .param p1, "likeCollapsed"    # Z

    .prologue
    .line 562
    if-nez p1, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 563
    :cond_e
    const/16 v0, 0x8

    return v0

    .line 565
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    .line 565
    if-eqz v0, :cond_2b

    .line 567
    :cond_29
    const/4 v0, 0x5

    return v0

    .line 569
    :cond_2b
    const/4 v0, 0x2

    return v0
.end method

.method private getMinHeight(I)I
    .registers 10
    .param p1, "maxAllowedVisibleChildren"    # I

    .prologue
    .line 809
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 810
    .local v4, "minExpandHeight":I
    const/4 v5, 0x0

    .line 811
    .local v5, "visibleChildren":I
    const/4 v2, 0x1

    .line 812
    .local v2, "firstChild":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 813
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_f

    .line 814
    if-lt v5, p1, :cond_15

    .line 826
    :cond_f
    int-to-float v6, v4

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 827
    return v4

    .line 817
    :cond_15
    if-nez v2, :cond_30

    .line 818
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    add-int/2addr v4, v6

    .line 822
    :goto_1a
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 823
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 824
    add-int/lit8 v5, v5, 0x1

    .line 813
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 820
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_30
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private getVisibleChildrenExpandHeight()I
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 782
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int v4, v7, v8

    .line 783
    .local v4, "intrinsicHeight":I
    const/4 v6, 0x0

    .line 784
    .local v6, "visibleChildren":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 785
    .local v1, "childCount":I
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    .line 786
    .local v5, "maxAllowedVisibleChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_1a

    .line 787
    if-lt v6, v5, :cond_1b

    .line 797
    :cond_1a
    return v4

    .line 790
    :cond_1b
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 791
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 792
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    .line 791
    :goto_2d
    int-to-float v2, v7

    .line 794
    .local v2, "childHeight":F
    int-to-float v7, v4

    add-float/2addr v7, v2

    float-to-int v4, v7

    .line 795
    add-int/lit8 v6, v6, 0x1

    .line 786
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 793
    .end local v2    # "childHeight":F
    :cond_36
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_2d
.end method

.method private inflateDivider()Landroid/view/View;
    .registers 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 308
    const v1, 0x7f040091

    const/4 v2, 0x0

    .line 307
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    const v1, 0x7f1001c4

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    const v1, 0x7f1001af

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    const v1, 0x7f100159

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    const v1, 0x1050048

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v1, 0x7f1001c5

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    const v1, 0x1050049

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    .line 100
    return-void
.end method

.method private updateChildStateForExpandedGroup(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/stack/StackViewState;I)Z
    .registers 12
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "parentHeight"    # I
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p4, "yPosition"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 544
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v4

    add-int v3, p4, v4

    .line 545
    .local v3, "top":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    .line 546
    .local v1, "intrinsicHeight":I
    add-int v0, v3, v1

    .line 547
    .local v0, "bottom":I
    move v2, v1

    .line 548
    .local v2, "newHeight":I
    if-lt v0, p2, :cond_17

    .line 550
    sub-int v4, p2, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 552
    :cond_17
    if-nez v2, :cond_27

    move v4, v5

    :goto_1a
    iput-boolean v4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    .line 553
    iput v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 554
    iget v4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    if-eq v4, v1, :cond_26

    iget-boolean v4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    if-eqz v4, :cond_29

    :cond_26
    :goto_26
    return v6

    :cond_27
    move v4, v6

    .line 552
    goto :goto_1a

    :cond_29
    move v6, v5

    .line 554
    goto :goto_26
.end method

.method private updateExpansionStates()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 348
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_b

    .line 350
    :cond_a
    return-void

    .line 352
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 353
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v2, :cond_29

    .line 354
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 355
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v1, :cond_27

    if-ne v2, v4, :cond_27

    move v3, v4

    :goto_21
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_27
    move v3, v5

    .line 355
    goto :goto_21

    .line 347
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_29
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .registers 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "childIndex"    # I

    .prologue
    .line 201
    if-gez p2, :cond_25

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 202
    .local v1, "newIndex":I
    :goto_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 204
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 200
    return-void

    .line 201
    .end local v0    # "divider":Landroid/view/View;
    .end local v1    # "newIndex":I
    :cond_25
    move v1, p2

    .restart local v1    # "newIndex":I
    goto :goto_8
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .registers 9
    .param p2, "visualStabilityManager"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "childOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez p1, :cond_4

    .line 327
    const/4 v4, 0x0

    return v4

    .line 329
    :cond_4
    const/4 v3, 0x0

    .line 330
    .local v3, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3c

    .line 331
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 332
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 333
    .local v1, "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eq v0, v1, :cond_35

    .line 334
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 335
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 336
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 337
    const/4 v3, 0x1

    .line 330
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 339
    :cond_38
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    goto :goto_35

    .line 343
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 344
    return v3
.end method

.method public applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .registers 15
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 573
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 574
    .local v2, "childCount":I
    new-instance v7, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 575
    .local v7, "tmpState":Lcom/android/systemui/statusbar/stack/ViewState;
    const/4 v5, 0x0

    .line 576
    .local v5, "expandFraction":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_16

    .line 577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v5

    .line 579
    :cond_16
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v9, :cond_77

    .line 580
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v4

    .line 581
    :goto_20
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    if-ge v6, v2, :cond_7d

    .line 582
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 583
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v8

    .line 584
    .local v8, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {p1, v1, v8}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    .line 587
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 588
    .local v3, "divider":Landroid/view/View;
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 589
    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v11, v11

    sub-float/2addr v9, v11

    iput v9, v7, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 590
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v9, :cond_79

    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_79

    const/high16 v0, 0x3f000000    # 0.5f

    .line 591
    .local v0, "alpha":F
    :goto_51
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_67

    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    cmpl-float v9, v9, v12

    if-eqz v9, :cond_67

    .line 593
    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 592
    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v12, v11, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 595
    :cond_67
    if-eqz v4, :cond_7b

    move v9, v10

    :goto_6a
    iput-boolean v9, v7, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 596
    iput v0, v7, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 597
    invoke-virtual {p1, v3, v7}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 599
    invoke-virtual {v1, v12, v12, v10, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    .line 581
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 579
    .end local v0    # "alpha":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "divider":Landroid/view/View;
    .end local v6    # "i":I
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_77
    const/4 v4, 0x1

    .local v4, "dividersVisible":Z
    goto :goto_20

    .line 590
    .end local v4    # "dividersVisible":Z
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v3    # "divider":Landroid/view/View;
    .restart local v6    # "i":I
    .restart local v8    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_79
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_51

    .line 595
    :cond_7b
    const/4 v9, 0x1

    goto :goto_6a

    .line 601
    .end local v0    # "alpha":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "divider":Landroid/view/View;
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_7d
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v9, :cond_8a

    .line 602
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-virtual {p1, v9, v11}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 603
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 605
    :cond_8a
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v9, :cond_95

    .line 606
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-virtual {p1, v9, v10}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 572
    :cond_95
    return-void
.end method

.method public getCollapsedHeight()I
    .registers 2

    .prologue
    .line 805
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(I)I

    move-result v0

    return v0
.end method

.method public getGroupExpandFraction()F
    .registers 6

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    move-result v2

    .line 775
    .local v2, "visibleChildrenExpandedHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v1

    .line 776
    .local v1, "minExpandHeight":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    .line 777
    sub-int v4, v2, v1

    int-to-float v4, v4

    .line 776
    div-float v0, v3, v4

    .line 778
    .local v0, "factor":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3
.end method

.method public getHeaderView()Landroid/view/NotificationHeaderView;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v0

    .line 365
    .local v0, "maxAllowedVisibleChildren":I
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight(F)I

    move-result v1

    return v1
.end method

.method public getMaxContentHeight()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 729
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int v4, v6, v7

    .line 730
    .local v4, "maxContentHeight":I
    const/4 v5, 0x0

    .line 731
    .local v5, "visibleChildren":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 732
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_15

    .line 733
    const/16 v6, 0x8

    if-lt v5, v6, :cond_1c

    .line 743
    :cond_15
    if-lez v5, :cond_1b

    .line 744
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 746
    :cond_1b
    return v4

    .line 736
    :cond_1c
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 737
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 738
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v6

    .line 737
    :goto_2e
    int-to-float v2, v6

    .line 740
    .local v2, "childHeight":F
    int-to-float v6, v4

    add-float/2addr v6, v2

    float-to-int v4, v6

    .line 741
    add-int/lit8 v5, v5, 0x1

    .line 732
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 739
    .end local v2    # "childHeight":F
    :cond_37
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v6

    goto :goto_2e
.end method

.method public getMinHeight()I
    .registers 2

    .prologue
    .line 801
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(I)I

    move-result v0

    return v0
.end method

.method public getNotificationChildCount()I
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .registers 9
    .param p1, "childInGroup"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 872
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int v3, v5, v6

    .line 874
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_35

    .line 875
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 876
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_29

    const/4 v2, 0x1

    .line 877
    .local v2, "notGone":Z
    :goto_21
    if-eqz v2, :cond_26

    .line 878
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v3, v5

    .line 880
    :cond_26
    if-ne v0, p1, :cond_2b

    .line 881
    return v3

    .end local v2    # "notGone":Z
    :cond_29
    move v2, v4

    .line 876
    goto :goto_21

    .line 883
    .restart local v2    # "notGone":Z
    :cond_2b
    if-eqz v2, :cond_32

    .line 884
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 874
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 887
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "notGone":Z
    :cond_35
    return v4
.end method

.method public getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackViewState;)V
    .registers 25
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "parentState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    .line 426
    .local v3, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v17, v0

    .line 427
    .local v17, "yPosition":I
    const/4 v7, 0x1

    .line 428
    .local v7, "firstChild":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v12

    .line 429
    .local v12, "maxAllowedVisibleChildren":I
    add-int/lit8 v11, v12, -0x1

    .line 430
    .local v11, "lastVisibleIndex":I
    add-int/lit8 v8, v11, 0x1

    .line 431
    .local v8, "firstOverflowIndex":I
    const/4 v6, 0x0

    .line 432
    .local v6, "expandFactor":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_30

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v6

    .line 434
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v8

    .line 437
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v18

    if-nez v18, :cond_10a

    .line 438
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 439
    :goto_40
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 440
    .local v15, "parentHeight":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_45
    if-ge v9, v3, :cond_1d0

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 442
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v7, :cond_126

    .line 443
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10d

    .line 444
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 461
    :goto_89
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v4

    .line 462
    .local v4, "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v10

    .line 463
    .local v10, "intrinsicHeight":I
    if-eqz v5, :cond_176

    .line 466
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v15, v4, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildStateForExpandedGroup(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/stack/StackViewState;I)Z

    move-result v18

    if-eqz v18, :cond_a5

    .line 469
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomClipped:Z

    .line 476
    :cond_a5
    :goto_a5
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 479
    if-eqz v5, :cond_186

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v18

    .line 479
    :goto_ba
    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 482
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    .line 483
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    .line 484
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    .line 485
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    .line 486
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 487
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 488
    if-ge v9, v8, :cond_18a

    .line 489
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 494
    :cond_fa
    :goto_fa
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 495
    add-int v17, v17, v10

    .line 440
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_45

    .line 437
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v9    # "i":I
    .end local v10    # "intrinsicHeight":I
    .end local v15    # "parentHeight":I
    :cond_10a
    const/4 v5, 0x0

    .local v5, "childrenExpanded":Z
    goto/16 :goto_40

    .line 447
    .end local v5    # "childrenExpanded":Z
    .restart local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v9    # "i":I
    .restart local v15    # "parentHeight":I
    :cond_10d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v18, v0

    :goto_11b
    add-int v17, v17, v18

    goto/16 :goto_89

    :cond_11f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    move/from16 v18, v0

    goto :goto_11b

    .line 450
    :cond_126
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15a

    .line 451
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    .line 452
    const/16 v19, 0x0

    .line 453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 451
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 458
    :goto_157
    const/4 v7, 0x0

    goto/16 :goto_89

    .line 456
    :cond_15a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_173

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    :goto_170
    add-int v17, v17, v18

    goto :goto_157

    :cond_173
    const/16 v18, 0x0

    goto :goto_170

    .line 472
    .restart local v4    # "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .restart local v10    # "intrinsicHeight":I
    :cond_176
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    .line 473
    iput v10, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 474
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomClipped:Z

    goto/16 :goto_a5

    .line 481
    :cond_186
    const/16 v18, 0x0

    goto/16 :goto_ba

    .line 490
    :cond_18a
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, v6, v18

    if-nez v18, :cond_fa

    if-gt v9, v11, :cond_fa

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 492
    iget v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    goto/16 :goto_fa

    .line 498
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v10    # "intrinsicHeight":I
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_263

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    .line 500
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v19

    .line 499
    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 501
    .local v14, "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-nez v18, :cond_2a6

    .line 503
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_263

    .line 504
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v16

    .line 505
    .local v16, "singleLineView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v13

    .line 506
    .local v13, "mirrorView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_22d

    .line 507
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v13

    .line 509
    :cond_22d
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_23b

    .line 510
    move-object/from16 v13, v16

    .line 512
    :cond_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v19, v0

    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 521
    .end local v13    # "mirrorView":Landroid/view/View;
    .end local v14    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v16    # "singleLineView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    :cond_263
    :goto_263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a5

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    if-nez v18, :cond_27e

    .line 523
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 525
    :cond_27e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v19, v0

    if-eqz v5, :cond_2d4

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v18

    .line 526
    :goto_29f
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 424
    :cond_2a5
    return-void

    .line 517
    .restart local v14    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    goto :goto_263

    .line 528
    .end local v14    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2d4
    const/16 v18, 0x0

    goto :goto_29f
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .registers 9
    .param p1, "y"    # F

    .prologue
    .line 666
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 667
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_7
    if-ge v1, v3, :cond_2f

    .line 668
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 669
    .local v4, "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    .line 670
    .local v2, "childTop":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v6

    int-to-float v6, v6

    add-float v5, v2, v6

    .line 671
    .local v5, "top":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v2, v6

    .line 672
    .local v0, "bottom":F
    cmpl-float v6, p1, v5

    if-ltz v6, :cond_2c

    cmpg-float v6, p1, v0

    if-gtz v6, :cond_2c

    .line 673
    return-object v4

    .line 667
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 676
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "top":F
    :cond_2f
    const/4 v6, 0x0

    return-object v6
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 301
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 118
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v8, 0x8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 119
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_38

    .line 120
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 123
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v0, v7, v7, v6, v8}, Landroid/view/View;->layout(IIII)V

    .line 124
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-virtual {v6, v7, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 126
    .end local v0    # "child":Landroid/view/View;
    :cond_38
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v6, :cond_58

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getLayoutDirection()I

    move-result v6

    if-ne v6, v3, :cond_6e

    .line 128
    .local v3, "isRtl":Z
    :goto_42
    if-eqz v3, :cond_70

    const/4 v4, 0x0

    .line 129
    .local v4, "left":I
    :goto_45
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int v5, v4, v6

    .line 130
    .local v5, "right":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v6, v4, v7, v5, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 132
    .end local v3    # "isRtl":Z
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_58
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v6, :cond_6d

    .line 133
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v8

    .line 134
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v9}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v9

    .line 133
    invoke-virtual {v6, v7, v7, v8, v9}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 117
    :cond_6d
    return-void

    :cond_6e
    move v3, v7

    .line 127
    goto :goto_42

    .line 128
    .restart local v3    # "isRtl":Z
    :cond_70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v4, v6, v8

    .restart local v4    # "left":I
    goto :goto_45
.end method

.method protected onMeasure(II)V
    .registers 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    move/from16 v16, v0

    .line 141
    .local v16, "ownMaxHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 142
    .local v10, "heightMode":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v10, v0, :cond_eb

    const/4 v7, 0x1

    .line 143
    .local v7, "hasFixedHeight":Z
    :goto_11
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v10, v0, :cond_ee

    const/4 v12, 0x1

    .line 144
    .local v12, "isHeightLimited":Z
    :goto_18
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 145
    .local v17, "size":I
    if-nez v7, :cond_20

    if-eqz v12, :cond_24

    .line 146
    :cond_20
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 148
    :cond_24
    const/high16 v19, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 149
    .local v14, "newHeightSpec":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 150
    .local v18, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_51

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->measure(II)V

    .line 154
    :cond_51
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 155
    .local v6, "dividerHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v20, v0

    add-int v9, v19, v20

    .line 156
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 157
    .local v3, "childCount":I
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v4

    .line 158
    .local v4, "collapsedChildren":I
    if-le v3, v4, :cond_f1

    add-int/lit8 v15, v4, -0x1

    .line 159
    .local v15, "overflowIndex":I
    :goto_89
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8a
    if-ge v11, v3, :cond_f8

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 163
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-ne v11, v15, :cond_f3

    const/4 v13, 0x1

    .line 164
    .local v13, "isOverflow":Z
    :goto_9d
    if-eqz v13, :cond_f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f5

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    .line 164
    :goto_b1
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSingleLineWidthIndention(I)V

    .line 167
    move/from16 v0, p1

    invoke-virtual {v2, v0, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->measure(II)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 170
    .local v5, "divider":Landroid/view/View;
    move/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->measure(II)V

    .line 171
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e8

    .line 172
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMeasuredHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v9, v9, v19

    .line 159
    :cond_e8
    add-int/lit8 v11, v11, 0x1

    goto :goto_8a

    .line 142
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "childCount":I
    .end local v4    # "collapsedChildren":I
    .end local v5    # "divider":Landroid/view/View;
    .end local v6    # "dividerHeightSpec":I
    .end local v7    # "hasFixedHeight":Z
    .end local v9    # "height":I
    .end local v11    # "i":I
    .end local v12    # "isHeightLimited":Z
    .end local v13    # "isOverflow":Z
    .end local v14    # "newHeightSpec":I
    .end local v15    # "overflowIndex":I
    .end local v17    # "size":I
    .end local v18    # "width":I
    :cond_eb
    const/4 v7, 0x0

    .restart local v7    # "hasFixedHeight":Z
    goto/16 :goto_11

    .line 143
    :cond_ee
    const/4 v12, 0x0

    .restart local v12    # "isHeightLimited":Z
    goto/16 :goto_18

    .line 158
    .restart local v3    # "childCount":I
    .restart local v4    # "collapsedChildren":I
    .restart local v6    # "dividerHeightSpec":I
    .restart local v9    # "height":I
    .restart local v14    # "newHeightSpec":I
    .restart local v17    # "size":I
    .restart local v18    # "width":I
    :cond_f1
    const/4 v15, -0x1

    .restart local v15    # "overflowIndex":I
    goto :goto_89

    .line 163
    .restart local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v11    # "i":I
    :cond_f3
    const/4 v13, 0x0

    goto :goto_9d

    .line 166
    .restart local v13    # "isOverflow":Z
    :cond_f5
    const/16 v19, 0x0

    goto :goto_b1

    .line 175
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v13    # "isOverflow":Z
    :cond_f8
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    .line 176
    if-eqz v10, :cond_104

    .line 177
    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 180
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_125

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 182
    .local v8, "headerHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 185
    .end local v8    # "headerHeightSpec":I
    :cond_125
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setMeasuredDimension(II)V

    .line 139
    return-void
.end method

.method public onNotificationUpdated()V
    .registers 4

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 868
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationColor()I

    move-result v2

    .line 867
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberColor(Landroid/widget/TextView;I)V

    .line 866
    return-void
.end method

.method public pointInView(FFF)Z
    .registers 7
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    const/4 v0, 0x0

    .line 190
    neg-float v1, p3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1f

    neg-float v1, p3

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1f

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1f

    .line 191
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1f

    const/4 v0, 0x1

    .line 190
    :cond_1f
    return v0
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .registers 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 618
    return-void
.end method

.method public reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .registers 9
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 838
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 839
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 840
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    .line 841
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    .line 842
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_35

    .line 843
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 844
    .local v3, "prevDivider":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 845
    .local v2, "index":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    .line 847
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 848
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 850
    .end local v0    # "divider":Landroid/view/View;
    .end local v2    # "index":I
    .end local v3    # "prevDivider":Landroid/view/View;
    :cond_35
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 851
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 852
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 853
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 854
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 837
    return-void
.end method

.method public recreateNotificationHeader(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .registers 10
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v6, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 245
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 244
    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 246
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->makeNotificationHeader()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 247
    .local v2, "header":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-nez v3, :cond_52

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/NotificationHeaderView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 249
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 250
    const v4, 0x10203b5

    .line 249
    invoke-virtual {v3, v4}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "expandButton":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, p1}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 254
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 253
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 255
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 261
    .end local v1    # "expandButton":Landroid/view/View;
    :goto_4e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    .line 243
    return-void

    .line 258
    :cond_52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 259
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_4e
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 215
    .local v0, "childIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 218
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 219
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 221
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 228
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 229
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 231
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 232
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 213
    :cond_3d
    return-void
.end method

.method public setActualHeight(I)V
    .registers 12
    .param p1, "actualHeight"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 750
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v7, :cond_7

    .line 751
    return-void

    .line 753
    :cond_7
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 754
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v3

    .line 755
    .local v3, "fraction":F
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    .line 756
    .local v5, "maxAllowedVisibleChildren":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 757
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v1, :cond_51

    .line 758
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 759
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 760
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    .line 759
    :goto_2c
    int-to-float v2, v7

    .line 762
    .local v2, "childHeight":F
    if-ge v4, v5, :cond_4c

    .line 763
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    int-to-float v6, v7

    .line 765
    .local v6, "singleLineHeight":F
    invoke-static {v6, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    .line 757
    .end local v6    # "singleLineHeight":F
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 761
    .end local v2    # "childHeight":F
    :cond_43
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_2c

    .line 768
    .restart local v2    # "childHeight":F
    :cond_4c
    float-to-int v7, v2

    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    goto :goto_40

    .line 749
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childHeight":F
    :cond_51
    return-void
.end method

.method public setChildrenExpanded(Z)V
    .registers 6
    .param p1, "childrenExpanded"    # Z

    .prologue
    .line 680
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 682
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_e

    .line 683
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, p1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    .line 685
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 686
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_15
    if-ge v1, v2, :cond_26

    .line 687
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 688
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 679
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_26
    return-void
.end method

.method public setDark(ZZJ)V
    .registers 6
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->setInverted(ZZJ)V

    .line 834
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 830
    return-void
.end method

.method public setNotificationParent(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 4
    .param p1, "parent"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 694
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    .line 692
    return-void
.end method

.method public setUserLocked(Z)V
    .registers 6
    .param p1, "userLocked"    # Z

    .prologue
    .line 858
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 859
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 860
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 861
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 862
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 860
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 857
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_19
    return-void
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackStateAnimator;JJ)V
    .registers 28
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "stateAnimator"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p3, "baseDelay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    .line 624
    .local v16, "childCount":I
    new-instance v20, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v20 .. v20}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 625
    .local v20, "tmpState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v18

    .line 626
    .local v18, "expandFraction":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v3, :cond_a8

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v17

    .line 628
    :goto_1f
    add-int/lit8 v19, v16, -0x1

    .local v19, "i":I
    :goto_21
    if-ltz v19, :cond_b0

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 630
    .local v4, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    .line 631
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    const/4 v7, -0x1

    move-object/from16 v3, p2

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startStackAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;IJ)V

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 635
    .local v8, "divider":Landroid/view/View;
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 636
    iget v3, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 637
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v3, :cond_ac

    iget v3, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_ac

    const/high16 v2, 0x3f000000    # 0.5f

    .line 638
    .local v2, "alpha":F
    :goto_6b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_87

    iget v3, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_87

    .line 639
    const/4 v3, 0x0

    .line 640
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    move/from16 v0, v18

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 639
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v3, v7, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    .line 642
    :cond_87
    if-eqz v17, :cond_ae

    const/4 v3, 0x0

    :goto_8a
    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 643
    move-object/from16 v0, v20

    iput v2, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move-object/from16 v7, p2

    move-object/from16 v9, v20

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    .line 644
    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 646
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v6, v7, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    .line 628
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_21

    .line 626
    .end local v2    # "alpha":F
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v8    # "divider":Landroid/view/View;
    .end local v19    # "i":I
    :cond_a8
    const/16 v17, 0x1

    .local v17, "dividersVisible":Z
    goto/16 :goto_1f

    .line 637
    .end local v17    # "dividersVisible":Z
    .restart local v4    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .restart local v8    # "divider":Landroid/view/View;
    .restart local v19    # "i":I
    :cond_ac
    const/4 v2, 0x0

    .restart local v2    # "alpha":F
    goto :goto_6b

    .line 642
    :cond_ae
    const/4 v3, 0x1

    goto :goto_8a

    .line 648
    .end local v2    # "alpha":F
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v8    # "divider":Landroid/view/View;
    :cond_b0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_f2

    .line 649
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    if-eqz v3, :cond_e1

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v2, v3, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 651
    .restart local v2    # "alpha":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    const/4 v6, 0x0

    iput v6, v3, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v2, v3, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 654
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 656
    .end local v2    # "alpha":F
    :cond_e1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v9, p2

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 659
    :cond_f2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_105

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 622
    :cond_105
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateChildrenHeaderAppearance()V

    .line 264
    return-void
.end method

.method public updateGroupOverflow()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 269
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 270
    .local v0, "childCount":I
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v1

    .line 271
    .local v1, "maxAllowedVisibleChildren":I
    if-le v0, v1, :cond_37

    .line 272
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 273
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    sub-int v5, v0, v1

    .line 272
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 274
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    if-nez v3, :cond_29

    .line 275
    new-instance v3, Lcom/android/systemui/ViewInvertHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 276
    const-wide/16 v6, 0x2bc

    .line 275
    invoke-direct {v3, v4, v6, v7}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 278
    :cond_29
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-nez v3, :cond_36

    .line 279
    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 280
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 268
    :cond_36
    :goto_36
    return-void

    .line 282
    :cond_37
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_36

    .line 283
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 285
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 286
    .local v2, "removedOverflowNumber":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getTransientViewCount()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addTransientView(Landroid/view/View;I)V

    .line 287
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 294
    .end local v2    # "removedOverflowNumber":Landroid/view/View;
    :cond_57
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 295
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 296
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    goto :goto_36
.end method

.method public updateHeaderForExpansion(Z)V
    .registers 5
    .param p1, "expanded"    # Z

    .prologue
    const/4 v2, 0x0

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_1a

    .line 718
    if-eqz p1, :cond_1b

    .line 719
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 720
    .local v0, "cd":Landroid/graphics/drawable/ColorDrawable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->calculateBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 721
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v0}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    .end local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    :cond_1a
    :goto_1a
    return-void

    .line 723
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a
.end method

.method public updateHeaderVisibility(I)V
    .registers 3
    .param p1, "visiblity"    # I

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_9

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 705
    :cond_9
    return-void
.end method
