.class public Lcom/android/systemui/statusbar/tv/TvStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TvStatusBar.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 48
    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 199
    return-void
.end method

.method public animateCollapsePanels(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 68
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .registers 2
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public appTransitionCancelled()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method

.method public appTransitionFinished()V
    .registers 1

    .prologue
    .line 173
    return-void
.end method

.method public appTransitionPending()V
    .registers 1

    .prologue
    .line 161
    return-void
.end method

.method public appTransitionStarting(JJ)V
    .registers 5
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 169
    return-void
.end method

.method public buzzBeepBlinked()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 207
    return-void
.end method

.method protected createAndAddWindows()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method public disable(IIZ)V
    .registers 4
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 60
    return-void
.end method

.method protected getMaxKeyguardNotifications(Z)I
    .registers 3
    .param p1, "recompute"    # Z

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public handleSystemNavigationKey(I)V
    .registers 2
    .param p1, "arg1"    # I

    .prologue
    .line 217
    return-void
.end method

.method public isPanelFullyCollapsed()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public maybeEscalateHeadsUp()V
    .registers 1

    .prologue
    .line 123
    return-void
.end method

.method public notificationLightOff()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public notificationLightPulse(III)V
    .registers 4
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 98
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .registers 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 149
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .registers 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 153
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 2
    .param p1, "source"    # I

    .prologue
    .line 177
    return-void
.end method

.method protected refreshLayout(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 145
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 203
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 2
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 56
    return-void
.end method

.method protected setAreThereNotifications()V
    .registers 1

    .prologue
    .line 102
    return-void
.end method

.method protected setHeadsUpUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 191
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 39
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 82
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 73
    return-void
.end method

.method public setWindowState(II)V
    .registers 3
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 86
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .registers 2
    .param p1, "taskId"    # I

    .prologue
    .line 157
    return-void
.end method

.method public showTvPictureInPictureMenu()V
    .registers 2

    .prologue
    .line 182
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->showTvPictureInPictureMenu()V

    .line 181
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 213
    const-class v0, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method protected toggleSplitScreenMode(II)V
    .registers 3
    .param p1, "metricsDockAction"    # I
    .param p2, "metricsUndockAction"    # I

    .prologue
    .line 119
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 77
    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "shouldPeek"    # Z
    .param p4, "alertAgain"    # Z

    .prologue
    .line 187
    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 52
    return-void
.end method

.method protected updateNotifications()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method
