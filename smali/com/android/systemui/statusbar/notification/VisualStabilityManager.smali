.class public Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    }
.end annotation


# instance fields
.field private mAddedChildren:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedReorderViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpanded:Z

.field private mReorderingAllowed:Z

.field private mScreenOn:Z

.field private mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/util/ArraySet;

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/util/ArraySet;

    .line 32
    return-void
.end method

.method private notifyCallbacks()V
    .registers 4

    .prologue
    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 81
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    .line 82
    .local v0, "callback":Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;->onReorderingAllowed()V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    .end local v0    # "callback":Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    :cond_17
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 79
    return-void
.end method

.method private updateReorderingAllowed()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    if-eqz v2, :cond_a

    const/4 v1, 0x0

    .line 72
    .local v1, "reorderingAllowed":Z
    :cond_a
    if-eqz v1, :cond_10

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v2, :cond_19

    :cond_10
    const/4 v0, 0x0

    .line 73
    .local v0, "changed":Z
    :goto_11
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    .line 74
    if-eqz v0, :cond_18

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyCallbacks()V

    .line 70
    :cond_18
    return-void

    .line 72
    .end local v0    # "changed":Z
    :cond_19
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_11
.end method


# virtual methods
.method public addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 49
    return-void

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .registers 4
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v0, :cond_6

    .line 101
    return v1

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 104
    return v1

    .line 106
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 110
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_21
    return v1
.end method

.method public isReorderingAllowed()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    return v0
.end method

.method public notifyViewAddition(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .registers 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 125
    if-eqz p2, :cond_9

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_9
    return-void
.end method

.method public onReorderingFinished()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 118
    return-void
.end method

.method public setPanelExpanded(Z)V
    .registers 2
    .param p1, "expanded"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    .line 57
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    .line 65
    return-void
.end method

.method public setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V
    .registers 2
    .param p1, "visibilityLocationProvider"    # Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    .line 114
    return-void
.end method
