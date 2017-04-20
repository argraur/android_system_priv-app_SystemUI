.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationContentView$1;
    }
.end annotation


# instance fields
.field private mAnimate:Z

.field private mAnimationStartVisibleType:I

.field private mBeforeN:Z

.field private mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipToActualHeight:Z

.field private mClipTopAmount:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mContentHeight:I

.field private mContentHeightAtAnimationStart:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mDark:Z

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mFocusOnVisibilityChange:Z

.field private mForceSelectNextLayout:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpChild:Landroid/view/View;

.field private mHeadsUpHeight:I

.field private mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mHeadsupDisappearRunning:Z

.field private mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIsChildInGroup:Z

.field private mIsHeadsUp:Z

.field private final mMinContractedHeight:I

.field private final mNotificationContentMarginEnd:I

.field private mNotificationMaxHeight:I

.field private mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field private mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

.field private mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mShowingLegacyBackground:Z

.field private mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mSingleLineWidthIndention:I

.field private mSmallHeight:I

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTransformationStartVisibleType:I

.field private mUserExpanding:Z

.field private mVisibleType:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationContentView;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationContentView;I)Lcom/android/systemui/statusbar/TransformableView;
    .registers 3
    .param p1, "visibleType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 88
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 108
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 113
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 116
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 122
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    const v1, 0x7f10015d

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    const v1, 0x1050044

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->reset()V

    .line 127
    return-void
.end method

.method private animateToVisibleType(I)V
    .registers 6
    .param p1, "visibleType"    # I

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 727
    .local v1, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 728
    .local v0, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    if-eq v1, v0, :cond_e

    if-nez v0, :cond_13

    .line 729
    :cond_e
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 730
    return-void

    .line 732
    :cond_13
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 733
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 734
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 735
    new-instance v2, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method private applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "hasRemoteInput"    # Z
    .param p4, "existingPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "cachedView"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1006
    const v6, 0x10203a9

    .line 1005
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1007
    .local v1, "actionContainerCandidate":Landroid/view/View;
    instance-of v6, v1, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_a0

    .line 1009
    sget-object v6, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 1008
    check-cast v4, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1011
    .local v4, "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-eqz v4, :cond_1a

    .line 1012
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 1015
    :cond_1a
    if-nez v4, :cond_38

    if-eqz p3, :cond_38

    move-object v0, v1

    .line 1016
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1017
    .local v0, "actionContainer":Landroid/view/ViewGroup;
    if-nez p5, :cond_8b

    .line 1019
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1018
    invoke-static {v6, v0, p2, v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v5

    .line 1021
    .local v5, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    .line 1022
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    move-object v4, v5

    .line 1034
    .end local v0    # "actionContainer":Landroid/view/ViewGroup;
    .end local v5    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_38
    :goto_38
    if-eqz p3, :cond_8a

    .line 1035
    iget-object v6, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v3, v6, Landroid/app/Notification;->color:I

    .line 1036
    .local v3, "color":I
    if-nez v3, :cond_4d

    .line 1037
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v7, 0x7f0c00b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 1040
    :cond_4d
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v7, 0x7f0c00b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 1041
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v8, 0x7f0c00b7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 1039
    invoke-static {v3, v6, v7}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextBackgroundColor(III)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundColor(I)V

    .line 1043
    if-nez p4, :cond_6e

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 1046
    :cond_6e
    iget-object v6, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v2, v6, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1047
    .local v2, "actions":[Landroid/app/Notification$Action;
    if-eqz p4, :cond_7b

    .line 1048
    invoke-virtual {v4, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 1050
    :cond_7b
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 1051
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-nez v6, :cond_8a

    .line 1052
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    .line 1061
    .end local v2    # "actions":[Landroid/app/Notification$Action;
    .end local v3    # "color":I
    :cond_8a
    :goto_8a
    return-object v4

    .line 1028
    .restart local v0    # "actionContainer":Landroid/view/ViewGroup;
    :cond_8b
    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1029
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1030
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestFocus()Z

    .line 1031
    move-object v4, p5

    goto :goto_38

    .line 1055
    .end local v0    # "actionContainer":Landroid/view/ViewGroup;
    .restart local v2    # "actions":[Landroid/app/Notification$Action;
    .restart local v3    # "color":I
    :cond_96
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 1056
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    goto :goto_8a

    .line 1063
    .end local v2    # "actions":[Landroid/app/Notification$Action;
    .end local v3    # "color":I
    .end local v4    # "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_a0
    return-object v7
.end method

.method private applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 16
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-nez v0, :cond_7

    .line 954
    return-void

    .line 957
    :cond_7
    const/4 v3, 0x0

    .line 959
    .local v3, "hasRemoteInput":Z
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v11, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 960
    .local v11, "actions":[Landroid/app/Notification$Action;
    if-eqz v11, :cond_36

    .line 961
    array-length v6, v11

    move v4, v2

    :goto_14
    if-ge v4, v6, :cond_36

    aget-object v10, v11, v4

    .line 962
    .local v10, "a":Landroid/app/Notification$Action;
    invoke-virtual {v10}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 963
    invoke-virtual {v10}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    array-length v8, v7

    move v0, v2

    :goto_24
    if-ge v0, v8, :cond_2f

    aget-object v12, v7, v0

    .line 964
    .local v12, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v12}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 965
    const/4 v3, 0x1

    .line 961
    .end local v12    # "ri":Landroid/app/RemoteInput;
    :cond_2f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_14

    .line 963
    .restart local v12    # "ri":Landroid/app/RemoteInput;
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 973
    .end local v10    # "a":Landroid/app/Notification$Action;
    .end local v12    # "ri":Landroid/app/RemoteInput;
    :cond_36
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 974
    .local v1, "bigContentView":Landroid/view/View;
    if-eqz v1, :cond_7a

    .line 976
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-object v0, p0

    move-object v2, p1

    .line 975
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 980
    :goto_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_55

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v2, :cond_55

    .line 983
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 985
    :cond_55
    iput-object v13, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 987
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 988
    .local v5, "headsUpContentView":Landroid/view/View;
    if-eqz v5, :cond_7d

    .line 990
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-object v4, p0

    move-object v6, p1

    move v7, v3

    .line 989
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 994
    :goto_68
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_77

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v2, :cond_77

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 999
    :cond_77
    iput-object v13, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 952
    return-void

    .line 978
    .end local v5    # "headsUpContentView":Landroid/view/View;
    :cond_7a
    iput-object v13, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_46

    .line 992
    .restart local v5    # "headsUpContentView":Landroid/view/View;
    :cond_7d
    iput-object v13, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_68
.end method

.method private calculateTransformationAmount()F
    .registers 8

    .prologue
    .line 549
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 550
    .local v3, "startHeight":I
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 551
    .local v1, "endHeight":I
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 552
    .local v2, "progress":I
    sub-int v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 553
    .local v4, "totalDistance":I
    int-to-float v5, v2

    int-to-float v6, v4

    div-float v0, v5, v6

    .line 554
    .local v0, "amount":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5
.end method

.method private focusExpandButtonIfNecessary()V
    .registers 4

    .prologue
    .line 410
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz v2, :cond_16

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    .line 412
    .local v1, "header":Landroid/view/NotificationHeaderView;
    if-eqz v1, :cond_13

    .line 413
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v0

    .line 414
    .local v0, "expandButton":Landroid/widget/ImageView;
    if-eqz v0, :cond_13

    .line 415
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestAccessibilityFocus()Z

    .line 418
    .end local v0    # "expandButton":Landroid/widget/ImageView;
    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 409
    .end local v1    # "header":Landroid/view/NotificationHeaderView;
    :cond_16
    return-void
.end method

.method private forceUpdateVisibilities()V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 643
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eqz v4, :cond_52

    .line 644
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-nez v4, :cond_54

    const/4 v0, 0x1

    .line 645
    .local v0, "contractedVisible":Z
    :goto_c
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v4, v6, :cond_56

    .line 646
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v4, v6, :cond_58

    const/4 v1, 0x1

    .line 647
    .local v1, "expandedVisible":Z
    :goto_15
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v4, v5, :cond_5a

    .line 648
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v4, v5, :cond_5c

    const/4 v2, 0x1

    .line 649
    .local v2, "headsUpVisible":Z
    :goto_1e
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5e

    .line 650
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_60

    const/4 v3, 0x1

    .line 651
    .local v3, "singleLineVisible":Z
    :goto_29
    if-nez v0, :cond_62

    .line 652
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :goto_30
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v4, :cond_3b

    .line 657
    if-nez v1, :cond_68

    .line 658
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 663
    :cond_3b
    :goto_3b
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v4, :cond_46

    .line 664
    if-nez v2, :cond_6e

    .line 665
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :cond_46
    :goto_46
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v4, :cond_51

    .line 671
    if-nez v3, :cond_74

    .line 672
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->setVisibility(I)V

    .line 642
    :cond_51
    :goto_51
    return-void

    .line 643
    .end local v0    # "contractedVisible":Z
    .end local v1    # "expandedVisible":Z
    .end local v2    # "headsUpVisible":Z
    .end local v3    # "singleLineVisible":Z
    :cond_52
    const/4 v0, 0x1

    .restart local v0    # "contractedVisible":Z
    goto :goto_c

    .line 644
    .end local v0    # "contractedVisible":Z
    :cond_54
    const/4 v0, 0x0

    .restart local v0    # "contractedVisible":Z
    goto :goto_c

    .line 645
    :cond_56
    const/4 v1, 0x1

    .restart local v1    # "expandedVisible":Z
    goto :goto_15

    .line 646
    .end local v1    # "expandedVisible":Z
    :cond_58
    const/4 v1, 0x0

    .restart local v1    # "expandedVisible":Z
    goto :goto_15

    .line 647
    :cond_5a
    const/4 v2, 0x1

    .restart local v2    # "headsUpVisible":Z
    goto :goto_1e

    .line 648
    .end local v2    # "headsUpVisible":Z
    :cond_5c
    const/4 v2, 0x0

    .restart local v2    # "headsUpVisible":Z
    goto :goto_1e

    .line 649
    :cond_5e
    const/4 v3, 0x1

    .restart local v3    # "singleLineVisible":Z
    goto :goto_29

    .line 650
    .end local v3    # "singleLineVisible":Z
    :cond_60
    const/4 v3, 0x0

    .restart local v3    # "singleLineVisible":Z
    goto :goto_29

    .line 654
    :cond_62
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    goto :goto_30

    .line 660
    :cond_68
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    goto :goto_3b

    .line 667
    :cond_6e
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    goto :goto_46

    .line 674
    :cond_74
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->setVisible(Z)V

    goto :goto_51
.end method

.method private getMinContentHeightHint()I
    .registers 9

    .prologue
    const v7, 0x1050047

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 448
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_1c

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 449
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .line 454
    :cond_1c
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_60

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_60

    .line 456
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 457
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v2

    .line 458
    :goto_2e
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 459
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_3c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsupDisappearRunning:Z

    .line 458
    if-eqz v3, :cond_5e

    .line 460
    :cond_3c
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_5c

    const/4 v1, 0x0

    .line 461
    .local v1, "pinned":Z
    :goto_45
    if-nez v2, :cond_49

    if-eqz v1, :cond_60

    .line 462
    :cond_49
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    .line 456
    .end local v1    # "pinned":Z
    :cond_5a
    const/4 v2, 0x1

    .local v2, "transitioningBetweenHunAndExpanded":Z
    goto :goto_2e

    .line 460
    .end local v2    # "transitioningBetweenHunAndExpanded":Z
    :cond_5c
    const/4 v1, 0x1

    .restart local v1    # "pinned":Z
    goto :goto_45

    .line 458
    .end local v1    # "pinned":Z
    :cond_5e
    const/4 v1, 0x0

    .restart local v1    # "pinned":Z
    goto :goto_45

    .line 467
    .end local v1    # "pinned":Z
    :cond_60
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v3, v5, :cond_79

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    if-ltz v3, :cond_79

    .line 468
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_79

    .line 469
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    .line 473
    :cond_79
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_9e

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 474
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 482
    .local v0, "hint":I
    :goto_89
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_9d

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 483
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 485
    :cond_9d
    return v0

    .line 475
    .end local v0    # "hint":I
    :cond_9e
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_a9

    .line 476
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .restart local v0    # "hint":I
    goto :goto_89

    .line 478
    .end local v0    # "hint":I
    :cond_a9
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v0, v3, v4

    .restart local v0    # "hint":I
    goto :goto_89
.end method

.method private getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .registers 3
    .param p1, "visibleType"    # I

    .prologue
    .line 764
    packed-switch p1, :pswitch_data_10

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 766
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 768
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 770
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 764
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getViewForVisibleType(I)Landroid/view/View;
    .registers 3
    .param p1, "visibleType"    # I

    .prologue
    .line 781
    packed-switch p1, :pswitch_data_10

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0

    .line 783
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0

    .line 785
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0

    .line 787
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 781
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .registers 3
    .param p1, "visibleType"    # I

    .prologue
    .line 794
    packed-switch p1, :pswitch_data_e

    .line 802
    const/4 v0, 0x0

    return-object v0

    .line 796
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 798
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 800
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 794
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private getVisualTypeForHeight(F)I
    .registers 6
    .param p1, "viewHeight"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 836
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v3, :cond_15

    move v0, v1

    .line 837
    .local v0, "noExpandedChild":Z
    :goto_7
    if-nez v0, :cond_17

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_17

    .line 838
    return v1

    .end local v0    # "noExpandedChild":Z
    :cond_15
    move v0, v2

    .line 836
    goto :goto_7

    .line 840
    .restart local v0    # "noExpandedChild":Z
    :cond_17
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-nez v3, :cond_25

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_25

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 844
    :cond_25
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_2d

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsupDisappearRunning:Z

    if-eqz v3, :cond_39

    :cond_2d
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_39

    .line 845
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 852
    :cond_39
    if-nez v0, :cond_6b

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_58

    .line 853
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_6b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 854
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 857
    :cond_58
    return v1

    .line 841
    :cond_59
    const/4 v1, 0x3

    return v1

    .line 846
    :cond_5b
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_68

    if-eqz v0, :cond_6a

    .line 847
    :cond_68
    const/4 v1, 0x2

    return v1

    .line 849
    :cond_6a
    return v1

    .line 855
    :cond_6b
    return v2
.end method

.method private isGroupExpanded()Z
    .registers 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private isTransitioningFromTo(II)Z
    .registers 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v0, 0x0

    .line 489
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v1, p1, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v1, p1, :cond_e

    .line 490
    :cond_9
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v1, p2, :cond_e

    const/4 v0, 0x1

    .line 489
    :cond_e
    return v0
.end method

.method private isVisibleOrTransitioning(I)Z
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 494
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v1, p1, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v1, p1, :cond_a

    :cond_9
    :goto_9
    return v0

    .line 495
    :cond_a
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-eq v1, p1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private selectLayout(ZZ)V
    .registers 10
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 606
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v6, :cond_7

    .line 607
    return-void

    .line 609
    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v6, :cond_f

    .line 610
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContentTransformation()V

    .line 605
    :cond_e
    :goto_e
    return-void

    .line 612
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v1

    .line 613
    .local v1, "visibleType":I
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v1, v6, :cond_4d

    move v0, v4

    .line 614
    .local v0, "changedType":Z
    :goto_18
    if-nez v0, :cond_1c

    if-eqz p2, :cond_e

    .line 615
    :cond_1c
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    .line 616
    .local v2, "visibleView":Landroid/view/View;
    if-eqz v2, :cond_28

    .line 617
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 618
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->transferRemoteInputFocus(I)V

    .line 620
    :cond_28
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    .line 621
    .local v3, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v3, :cond_37

    .line 622
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 625
    :cond_37
    if-eqz p1, :cond_5f

    if-ne v1, v4, :cond_4f

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v4, :cond_4f

    .line 629
    :cond_3f
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->animateToVisibleType(I)V

    .line 633
    :goto_42
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 634
    if-eqz v0, :cond_49

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->focusExpandButtonIfNecessary()V

    .line 637
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_e

    .end local v0    # "changedType":Z
    .end local v2    # "visibleView":Landroid/view/View;
    .end local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_4d
    move v0, v5

    .line 613
    goto :goto_18

    .line 626
    .restart local v0    # "changedType":Z
    .restart local v2    # "visibleView":Landroid/view/View;
    .restart local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_4f
    const/4 v4, 0x2

    if-ne v1, v4, :cond_56

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v4, :cond_3f

    .line 627
    :cond_56
    const/4 v4, 0x3

    if-ne v1, v4, :cond_5d

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v4, :cond_3f

    .line 628
    :cond_5d
    if-eqz v1, :cond_3f

    .line 631
    :cond_5f
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    goto :goto_42
.end method

.method private setVisible(Z)V
    .registers 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 396
    if-eqz p1, :cond_15

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 395
    :goto_14
    return-void

    .line 404
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    goto :goto_14
.end method

.method private shouldContractedBeFixedSize()Z
    .registers 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private transferRemoteInputFocus(I)V
    .registers 4
    .param p1, "visibleType"    # I

    .prologue
    .line 747
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1a

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    .line 747
    if-eqz v0, :cond_1a

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 752
    :cond_1a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_34

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_34

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    .line 752
    if-eqz v0, :cond_34

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 746
    :cond_34
    return-void
.end method

.method private updateBackgroundTransformation(F)V
    .registers 6
    .param p1, "transformationAmount"    # F

    .prologue
    const/4 v3, 0x0

    .line 532
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 533
    .local v0, "endColor":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    .line 534
    .local v1, "startColor":I
    if-eq v0, v1, :cond_23

    .line 535
    if-nez v1, :cond_17

    .line 536
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v1

    .line 538
    :cond_17
    if-nez v0, :cond_1f

    .line 539
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v0

    .line 541
    :cond_1f
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 544
    :cond_23
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundAlpha(F)V

    .line 545
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 531
    return-void
.end method

.method private updateClipping()V
    .registers 6

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v0, :cond_18

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 591
    :goto_17
    return-void

    .line 596
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_17
.end method

.method private updateContentTransformation()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v3

    .line 500
    .local v3, "visibleType":I
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v3, v4, :cond_2b

    .line 502
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 503
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 505
    .local v1, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 504
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 506
    .local v0, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    invoke-interface {v1, v0, v5}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 507
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 508
    invoke-interface {v0, v1, v5}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 509
    iput v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 510
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 512
    .end local v0    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    :cond_2b
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    if-eqz v4, :cond_32

    .line 513
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibilities()V

    .line 515
    :cond_32
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5f

    .line 516
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v4, v5, :cond_5f

    .line 517
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 518
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 520
    .restart local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 519
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 521
    .restart local v0    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateTransformationAmount()F

    move-result v2

    .line 522
    .local v2, "transformationAmount":F
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 523
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 524
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundTransformation(F)V

    .line 498
    .end local v0    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v2    # "transformationAmount":F
    :goto_5e
    return-void

    .line 526
    :cond_5f
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 527
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_5e
.end method

.method private updateContractedHeaderWidth()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 223
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    .line 224
    .local v1, "contractedHeader":Landroid/view/NotificationHeaderView;
    if-eqz v1, :cond_8a

    .line 225
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_5d

    .line 226
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v5

    if-eqz v5, :cond_5d

    .line 227
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    .line 228
    .local v2, "expandedHeader":Landroid/view/NotificationHeaderView;
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    .line 229
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    .line 228
    sub-int v3, v5, v6

    .line 230
    .local v3, "expandedSize":I
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    .line 231
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    .line 230
    sub-int v0, v5, v6

    .line 232
    .local v0, "collapsedSize":I
    if-eq v3, v0, :cond_8a

    .line 233
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    sub-int v4, v5, v3

    .line 235
    .local v4, "paddingEnd":I
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_58

    move v5, v4

    .line 238
    :goto_3f
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v6

    .line 239
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 240
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    .line 242
    .end local v4    # "paddingEnd":I
    :cond_4d
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    .line 234
    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 243
    invoke-virtual {v1, v8}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 244
    return v8

    .line 237
    .restart local v4    # "paddingEnd":I
    :cond_58
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v5

    goto :goto_3f

    .line 247
    .end local v0    # "collapsedSize":I
    .end local v2    # "expandedHeader":Landroid/view/NotificationHeaderView;
    .end local v3    # "expandedSize":I
    .end local v4    # "paddingEnd":I
    :cond_5d
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 248
    .restart local v4    # "paddingEnd":I
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    if-eq v5, v4, :cond_8a

    .line 250
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_85

    move v5, v4

    .line 253
    :goto_6c
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v6

    .line 254
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 255
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    .line 257
    .end local v4    # "paddingEnd":I
    :cond_7a
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    .line 249
    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 258
    invoke-virtual {v1, v9}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 259
    return v8

    .line 252
    .restart local v4    # "paddingEnd":I
    :cond_85
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v5

    goto :goto_6c

    .line 263
    .end local v4    # "paddingEnd":I
    :cond_8a
    return v9
.end method

.method private updateShowingLegacyBackground()V
    .registers 3

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowingLegacyBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setShowingLegacyBackground(Z)V

    .line 908
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowingLegacyBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setShowingLegacyBackground(Z)V

    .line 911
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowingLegacyBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setShowingLegacyBackground(Z)V

    .line 904
    :cond_21
    return-void
.end method

.method private updateSingleLineView()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 943
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_16

    .line 944
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 945
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 944
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 942
    :cond_15
    :goto_15
    return-void

    .line 946
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_15

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 948
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    goto :goto_15
.end method

.method private updateViewVisibilities(I)V
    .registers 7
    .param p1, "visibleType"    # I

    .prologue
    .line 709
    if-nez p1, :cond_30

    const/4 v0, 0x1

    .line 710
    .local v0, "contractedVisible":Z
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 711
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v4, :cond_15

    .line 712
    const/4 v4, 0x1

    if-ne p1, v4, :cond_32

    const/4 v1, 0x1

    .line 713
    .local v1, "expandedVisible":Z
    :goto_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 715
    .end local v1    # "expandedVisible":Z
    :cond_15
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v4, :cond_22

    .line 716
    const/4 v4, 0x2

    if-ne p1, v4, :cond_34

    const/4 v2, 0x1

    .line 717
    .local v2, "headsUpVisible":Z
    :goto_1d
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 719
    .end local v2    # "headsUpVisible":Z
    :cond_22
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v4, :cond_2f

    .line 720
    const/4 v4, 0x3

    if-ne p1, v4, :cond_36

    const/4 v3, 0x1

    .line 721
    .local v3, "singleLineVisible":Z
    :goto_2a
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->setVisible(Z)V

    .line 708
    .end local v3    # "singleLineVisible":Z
    :cond_2f
    return-void

    .line 709
    .end local v0    # "contractedVisible":Z
    :cond_30
    const/4 v0, 0x0

    .restart local v0    # "contractedVisible":Z
    goto :goto_3

    .line 712
    :cond_32
    const/4 v1, 0x0

    .restart local v1    # "expandedVisible":Z
    goto :goto_10

    .line 716
    .end local v1    # "expandedVisible":Z
    :cond_34
    const/4 v2, 0x0

    .restart local v2    # "headsUpVisible":Z
    goto :goto_1d

    .line 720
    .end local v2    # "headsUpVisible":Z
    :cond_36
    const/4 v3, 0x0

    .restart local v3    # "singleLineVisible":Z
    goto :goto_2a
.end method

.method private updateVisibility()V
    .registers 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    .line 385
    return-void
.end method


# virtual methods
.method public calculateVisibleType()I
    .registers 8

    .prologue
    .line 810
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v5, :cond_4f

    .line 811
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_17

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v5

    if-nez v5, :cond_17

    .line 812
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v5

    .line 811
    if-eqz v5, :cond_40

    .line 813
    :cond_17
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v2

    .line 815
    .local v2, "height":I
    :goto_1d
    if-nez v2, :cond_21

    .line 816
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 818
    :cond_21
    int-to-float v5, v2

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    .line 819
    .local v1, "expandedVisualType":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_30

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 821
    :cond_30
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v0

    .line 822
    .local v0, "collapsedVisualType":I
    :goto_3b
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v5, v0, :cond_4d

    .end local v1    # "expandedVisualType":I
    :goto_3f
    return v1

    .line 814
    .end local v0    # "collapsedVisualType":I
    .end local v2    # "height":I
    :cond_40
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v2

    goto :goto_1d

    .line 820
    .restart local v1    # "expandedVisualType":I
    .restart local v2    # "height":I
    :cond_4b
    const/4 v0, 0x3

    .restart local v0    # "collapsedVisualType":I
    goto :goto_3b

    :cond_4d
    move v1, v0

    .line 824
    goto :goto_3f

    .line 826
    .end local v0    # "collapsedVisualType":I
    .end local v1    # "expandedVisualType":I
    .end local v2    # "height":I
    :cond_4f
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    .line 827
    .local v3, "intrinsicHeight":I
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 828
    .local v4, "viewHeight":I
    if-eqz v3, :cond_5f

    .line 830
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 832
    :cond_5f
    int-to-float v5, v4

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v5

    return v5
.end method

.method public closeRemoteInput()V
    .registers 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_9

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1070
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_12

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1066
    :cond_12
    return-void
.end method

.method public getBackgroundColor(I)I
    .registers 4
    .param p1, "visibleType"    # I

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 701
    .local v0, "currentVisibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    const/4 v1, 0x0

    .line 702
    .local v1, "customBackgroundColor":I
    if-eqz v0, :cond_b

    .line 703
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v1

    .line 705
    :cond_b
    return v1
.end method

.method public getBackgroundColorForExpansionState()I
    .registers 3

    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    if-nez v1, :cond_10

    .line 693
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    .line 692
    if-eqz v1, :cond_19

    .line 694
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 696
    .local v0, "visibleType":I
    :goto_14
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    return v1

    .line 695
    .end local v0    # "visibleType":I
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    goto :goto_14
.end method

.method public getContractedChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 564
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 567
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 565
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .registers 3
    .param p1, "likeGroupExpanded"    # Z

    .prologue
    .line 575
    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 576
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 578
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .registers 3

    .prologue
    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, "header":Landroid/view/NotificationHeaderView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 1113
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1115
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_b
    if-nez v0, :cond_17

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 1116
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1118
    :cond_17
    if-nez v0, :cond_23

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_23

    .line 1119
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1121
    :cond_23
    return-object v0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .registers 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1125
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1126
    .local v0, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-nez v0, :cond_a

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    goto :goto_9
.end method

.method public getVisibleType()I
    .registers 2

    .prologue
    .line 686
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 288
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 391
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 390
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "previousHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 276
    :cond_c
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 277
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_1b

    .line 278
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 280
    :cond_1b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 282
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 283
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 284
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 271
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 145
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 146
    .local v2, "heightMode":I
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v2, v14, :cond_16b

    const/4 v1, 0x1

    .line 147
    .local v1, "hasFixedHeight":Z
    :goto_9
    const/high16 v14, -0x80000000

    if-ne v2, v14, :cond_16e

    const/4 v4, 0x1

    .line 148
    .local v4, "isHeightLimited":Z
    :goto_e
    const v7, 0x7fffffff

    .line 149
    .local v7, "maxSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 150
    .local v13, "width":I
    if-nez v1, :cond_19

    if-eqz v4, :cond_1d

    .line 151
    :cond_19
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 153
    :cond_1d
    const/4 v6, 0x0

    .line 154
    .local v6, "maxChildHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v14, :cond_5e

    .line 155
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 156
    .local v11, "size":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 157
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v14, :cond_3e

    .line 159
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 161
    :cond_3e
    const v14, 0x7fffffff

    if-ne v11, v14, :cond_171

    .line 162
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 164
    .local v12, "spec":I
    :goto_49
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v12}, Landroid/view/View;->measure(II)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 167
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "size":I
    .end local v12    # "spec":I
    :cond_5e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v14, :cond_e4

    .line 169
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 170
    .restart local v11    # "size":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldContractedBeFixedSize()Z

    move-result v14

    if-eqz v14, :cond_179

    .line 171
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 175
    .local v3, "heightSpec":I
    :goto_78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v3}, Landroid/view/View;->measure(II)V

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 177
    .local v8, "measuredHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    if-ge v8, v14, :cond_a2

    .line 178
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v3}, Landroid/view/View;->measure(II)V

    .line 181
    :cond_a2
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContractedHeaderWidth()Z

    move-result v14

    if-eqz v14, :cond_b5

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v3}, Landroid/view/View;->measure(II)V

    .line 185
    :cond_b5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v14, :cond_e4

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-le v14, v15, :cond_e4

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 189
    const/high16 v15, 0x40000000    # 2.0f

    .line 188
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move/from16 v0, p1

    invoke-virtual {v14, v0, v3}, Landroid/view/View;->measure(II)V

    .line 193
    .end local v3    # "heightSpec":I
    .end local v8    # "measuredHeight":I
    .end local v11    # "size":I
    :cond_e4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v14, :cond_11f

    .line 194
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 195
    .restart local v11    # "size":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 196
    .restart local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v14, :cond_104

    .line 198
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 200
    :cond_104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 201
    const/high16 v15, -0x80000000

    invoke-static {v11, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 200
    move/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/view/View;->measure(II)V

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 204
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "size":I
    :cond_11f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v14, :cond_161

    .line 205
    move/from16 v10, p1

    .line 206
    .local v10, "singleLineWidthSpec":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v14, :cond_148

    .line 207
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    if-eqz v14, :cond_148

    .line 209
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v15

    add-int/2addr v14, v15

    .line 210
    const/high16 v15, 0x40000000    # 2.0f

    .line 208
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 212
    :cond_148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 213
    const/high16 v15, -0x80000000

    invoke-static {v7, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 212
    invoke-virtual {v14, v10, v15}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 216
    .end local v10    # "singleLineWidthSpec":I
    :cond_161
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 217
    .local v9, "ownHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->setMeasuredDimension(II)V

    .line 144
    return-void

    .line 146
    .end local v1    # "hasFixedHeight":Z
    .end local v4    # "isHeightLimited":Z
    .end local v6    # "maxChildHeight":I
    .end local v7    # "maxSize":I
    .end local v9    # "ownHeight":I
    .end local v13    # "width":I
    :cond_16b
    const/4 v1, 0x0

    .restart local v1    # "hasFixedHeight":Z
    goto/16 :goto_9

    .line 147
    :cond_16e
    const/4 v4, 0x0

    .restart local v4    # "isHeightLimited":Z
    goto/16 :goto_e

    .line 163
    .restart local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "maxChildHeight":I
    .restart local v7    # "maxSize":I
    .restart local v11    # "size":I
    .restart local v13    # "width":I
    :cond_171
    const/high16 v14, -0x80000000

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12    # "spec":I
    goto/16 :goto_49

    .line 173
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "spec":I
    :cond_179
    const/high16 v14, -0x80000000

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "heightSpec":I
    goto/16 :goto_78
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 922
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 923
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v3, 0x18

    if-ge v0, v3, :cond_48

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    .line 924
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateSingleLineView()V

    .line 925
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 929
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 932
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 935
    :cond_37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateShowingLegacyBackground()V

    .line 936
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 937
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 938
    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 939
    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 921
    return-void

    :cond_48
    move v0, v2

    .line 923
    goto :goto_e
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 381
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 380
    return-void
.end method

.method public reInflateViews()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1138
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_13

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1140
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateSingleLineView()V

    .line 1137
    :cond_13
    return-void
.end method

.method public requestSelectLayout(Z)V
    .registers 3
    .param p1, "needsAnimation"    # Z

    .prologue
    .line 1134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1133
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 298
    :cond_13
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_44

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 308
    :cond_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_58

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 311
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 313
    :cond_58
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_89

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 323
    :cond_89
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_9d

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 326
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 328
    :cond_9d
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 329
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 330
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 293
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .registers 2
    .param p1, "clipToActualHeight"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 602
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 600
    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 587
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    .line 588
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 586
    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 2
    .param p1, "containingNotification"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1129
    return-void
.end method

.method public setContentHeight(I)V
    .registers 6
    .param p1, "contentHeight"    # I

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeight()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 424
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v0

    .line 428
    .local v0, "minHeightHint":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    .line 429
    .local v1, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v1, :cond_29

    .line 430
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 433
    :cond_29
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    .line 434
    if-eqz v1, :cond_36

    .line 435
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 438
    :cond_36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 422
    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .registers 3
    .param p1, "animating"    # Z

    .prologue
    .line 1183
    if-nez p1, :cond_5

    .line 1184
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 1182
    :cond_5
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 350
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 351
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 352
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 345
    return-void
.end method

.method public setDark(ZZJ)V
    .registers 8
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_5

    .line 868
    return-void

    .line 870
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    .line 871
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2f

    .line 874
    :goto_d
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_35

    .line 877
    :cond_18
    :goto_18
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_3b

    .line 880
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_41

    if-eqz p1, :cond_41

    .line 866
    :cond_2e
    :goto_2e
    return-void

    .line 872
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_d

    .line 875
    :cond_35
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_18

    .line 878
    :cond_3b
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_23

    .line 881
    :cond_41
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->setDark(ZZJ)V

    goto :goto_2e
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "expandClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 1083
    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 362
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 363
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 364
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 357
    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .registers 2

    .prologue
    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 1193
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .registers 2
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1075
    return-void
.end method

.method public setHeadsUp(Z)V
    .registers 4
    .param p1, "headsUp"    # Z

    .prologue
    .line 886
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    .line 887
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 888
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 885
    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 373
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 374
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 375
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 368
    return-void
.end method

.method public setHeadsupDisappearRunning(Z)V
    .registers 4
    .param p1, "headsupDisappearRunning"    # Z

    .prologue
    .line 1189
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsupDisappearRunning:Z

    .line 1190
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1188
    return-void
.end method

.method public setHeights(III)V
    .registers 4
    .param p1, "smallHeight"    # I
    .param p2, "headsUpMaxHeight"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 139
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 140
    iput p3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 137
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .registers 2
    .param p1, "isChildInGroup"    # Z

    .prologue
    .line 917
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    .line 918
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateSingleLineView()V

    .line 916
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .registers 2
    .param p1, "r"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1079
    return-void
.end method

.method public setRemoved()V
    .registers 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_9

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1177
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_12

    .line 1178
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1173
    :cond_12
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 900
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowingLegacyBackground:Z

    .line 901
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateShowingLegacyBackground()V

    .line 899
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .registers 3
    .param p1, "singleLineWidthIndention"    # I

    .prologue
    .line 1162
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eq p1, v0, :cond_e

    .line 1163
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->forceLayout()V

    .line 1165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceLayout()V

    .line 1161
    :cond_e
    return-void
.end method

.method public setUserExpanding(Z)V
    .registers 3
    .param p1, "userExpanding"    # Z

    .prologue
    .line 1146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    .line 1147
    if-eqz p1, :cond_9

    .line 1148
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1145
    :goto_8
    return-void

    .line 1150
    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 1152
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 1153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_8
.end method

.method public updateBackgroundColor(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    .line 680
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 681
    .local v0, "customBackgroundColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    .line 682
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 679
    return-void
.end method

.method public updateExpandButtons(Z)V
    .registers 4
    .param p1, "expandable"    # Z

    .prologue
    .line 1088
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_25

    .line 1091
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v0, :cond_47

    .line 1092
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_25

    .line 1093
    const/4 p1, 0x0

    .line 1099
    .end local p1    # "expandable":Z
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_30

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1102
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_3b

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1105
    :cond_3b
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1087
    :cond_46
    return-void

    .line 1091
    .restart local p1    # "expandable":Z
    :cond_47
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_25

    .line 1096
    const/4 p1, 0x0

    .local p1, "expandable":Z
    goto :goto_25
.end method
