.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field public key:Ljava/lang/String;

.field private lastFullScreenIntentLaunchTime:J

.field public legacy:Z

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public targetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .registers 5
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ic"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 66
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 65
    return-void
.end method

.method private compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .registers 7
    .param p1, "a"    # Landroid/widget/RemoteViews;
    .param p2, "b"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return v0

    .line 153
    :cond_7
    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    .line 154
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 155
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 156
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 153
    if-eqz v2, :cond_31

    .line 157
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_6

    :cond_31
    move v0, v1

    .line 153
    goto :goto_6
.end method


# virtual methods
.method public cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    .registers 14
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "updatedNotification"    # Landroid/app/Notification;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "applyInPlace":Z
    if-eqz p2, :cond_67

    .line 113
    invoke-static {p1, p2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 114
    .local v7, "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 116
    .local v3, "newContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 118
    .local v2, "newBigContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 120
    .local v4, "newHeadsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 123
    .local v5, "newPublicNotification":Landroid/widget/RemoteViews;
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 124
    const-string/jumbo v9, "android.contains.customView"

    .line 123
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 125
    iget-object v9, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 126
    const-string/jumbo v10, "android.contains.customView"

    .line 125
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 122
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 127
    .local v6, "sameCustomView":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 128
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 127
    if-eqz v8, :cond_65

    .line 129
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 127
    if-eqz v8, :cond_65

    .line 130
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v8

    .line 127
    if-eqz v8, :cond_65

    .line 131
    move v0, v6

    .line 132
    .end local v0    # "applyInPlace":Z
    :goto_5c
    iput-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 133
    iput-object v4, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 134
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 135
    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 147
    .end local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v3    # "newContentView":Landroid/widget/RemoteViews;
    .end local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .end local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .end local v6    # "sameCustomView":Z
    .end local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :goto_64
    return v0

    .line 127
    .restart local v0    # "applyInPlace":Z
    .restart local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .restart local v3    # "newContentView":Landroid/widget/RemoteViews;
    .restart local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .restart local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .restart local v6    # "sameCustomView":Z
    .restart local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :cond_65
    const/4 v0, 0x0

    goto :goto_5c

    .line 138
    .end local v2    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v3    # "newContentView":Landroid/widget/RemoteViews;
    .end local v4    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    .end local v5    # "newPublicNotification":Landroid/widget/RemoteViews;
    .end local v6    # "sameCustomView":Z
    .end local v7    # "updatedNotificationBuilder":Landroid/app/Notification$Builder;
    :cond_67
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 140
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 141
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 142
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 143
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 145
    const/4 v0, 0x0

    goto :goto_64
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeadsUpContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPublicContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasInterrupted()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .registers 7

    .prologue
    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public notifyFullScreenIntentLaunched()V
    .registers 3

    .prologue
    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 160
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 87
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_12

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    .line 82
    :cond_12
    return-void
.end method

.method public setInterruption()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    .line 71
    return-void
.end method
