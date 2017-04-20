.class public Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
.super Ljava/lang/Object;
.source "NotificationGroupManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;,
        Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
    }
.end annotation


# instance fields
.field private mBarState:I

.field private final mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsUpdatingUnchangedGroup:Z

.field private mIsolatedEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method private getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 355
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_b
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .registers 5
    .param p1, "groupKey"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 320
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-object v1

    .line 321
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v2, :cond_b

    .line 322
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_b
.end method

.method private getIsolatedChild(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .registers 6
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sbn$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 180
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v2

    .line 184
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_35
    const/4 v2, 0x0

    return-object v2
.end method

.method private getNumberOfIsolatedChildren(Ljava/lang/String;)I
    .registers 6
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sbn$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 171
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 175
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_2a
    return v0
.end method

.method private getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I
    .registers 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, "isolatedChildren":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 232
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-eqz v0, :cond_1f

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 233
    .local v2, "realChildren":I
    :goto_1c
    add-int v3, v1, v2

    return v3

    .line 232
    .end local v2    # "realChildren":I
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x0

    .line 404
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 405
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 406
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 407
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 411
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 412
    .local v2, "notificationGroup":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-eqz v2, :cond_5c

    .line 413
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 414
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v0, v4

    .line 415
    .local v0, "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_40
    if-nez v0, :cond_4a

    .line 416
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getIsolatedChild(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 418
    :cond_4a
    if-eqz v0, :cond_5c

    .line 419
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 420
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 426
    .end local v0    # "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_5c
    :goto_5c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 403
    return-void

    .line 408
    .end local v2    # "notificationGroup":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    :cond_64
    return-void

    .line 422
    .restart local v0    # "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v2    # "notificationGroup":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    :cond_65
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_5c
.end method

.method private hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .registers 4
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isGroupChild(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 348
    return v0

    .line 350
    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method private isGroupNotFullyVisible(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .registers 6
    .param p1, "notificationGroup"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v2, :cond_10

    .line 440
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v2

    if-lez v2, :cond_11

    .line 439
    :cond_10
    :goto_10
    return v0

    .line 441
    :cond_11
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_10

    move v0, v1

    goto :goto_10
.end method

.method private isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 341
    const/4 v0, 0x1

    return v0

    .line 343
    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    return v0
.end method

.method private isGroupSuppressed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 238
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-eqz v0, :cond_d

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isIsolated(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_15

    .line 217
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    if-ne v2, v0, :cond_13

    .line 216
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 217
    goto :goto_12

    :cond_15
    move v0, v1

    .line 216
    goto :goto_12
.end method

.method private onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 139
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 138
    :cond_c
    return-void
.end method

.method private onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .registers 7
    .param p1, "removed"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "groupKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 91
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_10

    .line 96
    return-void

    .line 98
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 99
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 103
    :goto_1b
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 104
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 105
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v2, :cond_2f

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_2f
    return-void

    .line 101
    :cond_30
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    goto :goto_1b
.end method

.method private setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V
    .registers 5
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    .param p2, "expanded"    # Z

    .prologue
    .line 69
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    .line 70
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_f

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 68
    :cond_f
    return-void
.end method

.method private shouldIsolate(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 431
    .local v0, "notificationGroup":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    .line 432
    :cond_1e
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_28

    .line 433
    if-nez v0, :cond_2a

    .line 432
    :cond_28
    const/4 v1, 0x1

    goto :goto_1d

    .line 434
    :cond_2a
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v1, :cond_28

    .line 435
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupNotFullyVisible(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v1

    goto :goto_1d
.end method

.method private updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .registers 6
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-nez p1, :cond_5

    .line 146
    return-void

    .line 148
    :cond_5
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    .line 149
    .local v0, "prevSuppressed":Z
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v3, :cond_f

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v3, :cond_29

    :cond_f
    move v1, v2

    :cond_10
    :goto_10
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    .line 154
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eq v0, v1, :cond_28

    .line 155
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eqz v1, :cond_1f

    .line 156
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 158
    :cond_1f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    if-nez v1, :cond_28

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    .line 144
    :cond_28
    return-void

    .line 150
    :cond_29
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eq v3, v1, :cond_10

    .line 151
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_4c

    .line 152
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    .line 151
    if-eqz v1, :cond_4c

    .line 153
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v1

    goto :goto_10

    :cond_4c
    move v1, v2

    .line 151
    goto :goto_10
.end method


# virtual methods
.method public collapseAllGroups()V
    .registers 6

    .prologue
    .line 254
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 255
    .local v1, "groupCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 256
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v3, :cond_26

    .line 257
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 258
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v4, :cond_20

    .line 259
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 261
    :cond_20
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 251
    .end local v0    # "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    :cond_26
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 449
    const-string/jumbo v3, "GroupManager state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  number of groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 452
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n    key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2d

    .line 454
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;>;"
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n    isolated entries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    const-string/jumbo v3, "      "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v3, ", "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_85

    .line 448
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    :cond_ae
    return-void
.end method

.method public getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z
    .registers 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 270
    return v3

    .line 272
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 273
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v1, :cond_1b

    .line 274
    :cond_1a
    return v3

    .line 273
    :cond_1b
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-nez v1, :cond_1a

    .line 276
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 280
    return v3

    .line 282
    :cond_28
    const/4 v1, 0x1

    return v1
.end method

.method public isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 54
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_10

    .line 55
    const/4 v1, 0x0

    return v1

    .line 57
    :cond_10
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    return v1
.end method

.method public isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 222
    return v1

    .line 224
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 225
    .local v0, "logicalGroupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_18

    .line 226
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/service/notification/StatusBarNotification;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 225
    :cond_18
    :goto_18
    return v1

    .line 226
    :cond_19
    const/4 v1, 0x1

    goto :goto_18
.end method

.method public isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z
    .registers 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 290
    return v1

    .line 292
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 293
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_17

    .line 294
    return v1

    .line 296
    :cond_17
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x1

    goto :goto_1f
.end method

.method public isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 10
    .param p1, "added"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 112
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 113
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 114
    .local v5, "isGroupChild":Z
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "groupKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 116
    .local v3, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v3, :cond_1e

    .line 117
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .end local v3    # "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;-><init>()V

    .line 118
    .restart local v3    # "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1e
    if-eqz v5, :cond_29

    .line 121
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 111
    :cond_28
    :goto_28
    return-void

    .line 124
    :cond_29
    iput-object p1, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 125
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v7

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    .line 126
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 127
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_28

    .line 129
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 130
    .local v2, "childrenCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 131
    .local v0, "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_4a

    .line 133
    .end local v0    # "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_5a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    goto :goto_28
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 4
    .param p1, "removed"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 76
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .registers 11
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "oldNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "oldKey":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "newKey":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    const/4 v0, 0x0

    .line 192
    .local v0, "groupKeysChanged":Z
    :goto_12
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 193
    .local v4, "wasGroupChild":Z
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 194
    .local v1, "isGroupChild":Z
    if-nez v0, :cond_63

    if-ne v4, v1, :cond_63

    const/4 v5, 0x1

    :goto_21
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    .line 195
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 198
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 199
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    .line 200
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 201
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    if-eqz v0, :cond_60

    .line 203
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 204
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 188
    :cond_60
    :goto_60
    return-void

    .line 191
    .end local v0    # "groupKeysChanged":Z
    .end local v1    # "isGroupChild":Z
    .end local v4    # "wasGroupChild":Z
    :cond_61
    const/4 v0, 0x1

    .restart local v0    # "groupKeysChanged":Z
    goto :goto_12

    .restart local v1    # "isGroupChild":Z
    .restart local v4    # "wasGroupChild":Z
    :cond_63
    move v5, v6

    .line 194
    goto :goto_21

    .line 206
    :cond_65
    if-nez v4, :cond_60

    if-eqz v1, :cond_60

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_60
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 2
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 365
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .registers 2
    .param p1, "inPinnedMode"    # Z

    .prologue
    .line 361
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .registers 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 374
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 375
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 376
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->shouldIsolate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 378
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 380
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    .line 373
    :cond_37
    :goto_37
    return-void

    .line 390
    :cond_38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_37

    .line 393
    :cond_3c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 395
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 398
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_37
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 2
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 369
    return-void
.end method

.method public setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "expanded"    # Z

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 62
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_f

    .line 63
    return-void

    .line 65
    :cond_f
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 60
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 444
    return-void
.end method

.method public setOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 48
    return-void
.end method

.method public setStatusBarState(I)V
    .registers 4
    .param p1, "newState"    # I

    .prologue
    .line 242
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    if-ne v0, p1, :cond_5

    .line 243
    return-void

    .line 245
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    .line 246
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    .line 241
    :cond_f
    return-void
.end method

.method public toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z
    .registers 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 328
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_10

    .line 329
    return v1

    .line 331
    :cond_10
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v2, :cond_1a

    :goto_14
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 332
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    return v1

    .line 331
    :cond_1a
    const/4 v1, 0x1

    goto :goto_14
.end method
