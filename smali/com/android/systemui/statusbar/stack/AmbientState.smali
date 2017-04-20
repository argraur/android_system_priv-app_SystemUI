.class public Lcom/android/systemui/statusbar/stack/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"


# instance fields
.field private mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mDark:Z

.field private mDimmed:Z

.field private mDismissAllInProgress:Z

.field private mDraggedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHideSensitive:Z

.field private mLayoutHeight:I

.field private mLayoutMinHeight:I

.field private mMaxHeadsUpTranslation:F

.field private mOverScrollBottomAmount:F

.field private mOverScrollTopAmount:F

.field private mScrollY:I

.field private mShadeExpanded:Z

.field private mSpeedBumpIndex:I

.field private mStackTranslation:F

.field private mTopPadding:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    .line 29
    return-void
.end method


# virtual methods
.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getDraggedViews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInnerHeight()I
    .registers 3

    .prologue
    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMaxHeadsUpTranslation()F
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return v0
.end method

.method public getOverScrollAmount(Z)F
    .registers 3
    .param p1, "top"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_4
.end method

.method public getScrollY()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    return v0
.end method

.method public getSpeedBumpIndex()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return v0
.end method

.method public getStackTranslation()F
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    return v0
.end method

.method public getTopPadding()F
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    int-to-float v0, v0

    return v0
.end method

.method public isDark()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    return v0
.end method

.method public isDimmed()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    return v0
.end method

.method public isHideSensitive()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    return v0
.end method

.method public isShadeExpanded()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public onDragFinished(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .registers 2
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 89
    return-void
.end method

.method public setDark(Z)V
    .registers 2
    .param p1, "dark"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    .line 77
    return-void
.end method

.method public setDimmed(Z)V
    .registers 2
    .param p1, "dimmed"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    .line 72
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .registers 2
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDismissAllInProgress:Z

    .line 173
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 129
    return-void
.end method

.method public setHideSensitive(Z)V
    .registers 2
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    .line 81
    return-void
.end method

.method public setLayoutHeight(I)V
    .registers 2
    .param p1, "layoutHeight"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutHeight:I

    .line 141
    return-void
.end method

.method public setLayoutMinHeight(I)V
    .registers 2
    .param p1, "layoutMinHeight"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mLayoutMinHeight:I

    .line 181
    return-void
.end method

.method public setMaxHeadsUpTranslation(F)V
    .registers 2
    .param p1, "maxHeadsUpTranslation"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 165
    return-void
.end method

.method public setOverScrollAmount(FZ)V
    .registers 3
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .prologue
    .line 110
    if-eqz p2, :cond_5

    .line 111
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    .line 109
    :goto_4
    return-void

    .line 113
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_4
.end method

.method public setScrollY(I)V
    .registers 2
    .param p1, "scrollY"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    .line 52
    return-void
.end method

.method public setShadeExpanded(Z)V
    .registers 2
    .param p1, "shadeExpanded"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShadeExpanded:Z

    .line 161
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .registers 2
    .param p1, "speedBumpIndex"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    .line 125
    return-void
.end method

.method public setStackTranslation(F)V
    .registers 2
    .param p1, "stackTranslation"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mStackTranslation:F

    .line 137
    return-void
.end method

.method public setTopPadding(I)V
    .registers 2
    .param p1, "topPadding"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mTopPadding:I

    .line 149
    return-void
.end method
