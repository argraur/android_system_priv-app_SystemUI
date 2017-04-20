.class final Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method

.method private shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z
    .registers 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 2029
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->flags:I

    .line 2030
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-eq v1, v2, :cond_e

    .line 2031
    return v3

    .line 2033
    :cond_e
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_13

    .line 2034
    return v3

    .line 2036
    :cond_13
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1871
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_e

    .line 1872
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NotificationClicker called on a view that is not a notification row."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return-void

    :cond_e
    move-object v3, p1

    .line 1876
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1877
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 1878
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    if-nez v4, :cond_21

    .line 1879
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NotificationClicker called on an unclickable notification,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return-void

    .line 1884
    :cond_21
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSettingsRow()Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSettingsRow()Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1885
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    .line 1886
    return-void

    .line 1889
    :cond_36
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 1890
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7a

    .line 1891
    iget-object v7, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1893
    .local v7, "intent":Landroid/app/PendingIntent;
    :goto_40
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1896
    .local v2, "notificationKey":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    .line 1897
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 1904
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    .line 1905
    .local v5, "keyguardShowing":Z
    invoke-virtual {v7}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1906
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1907
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v9, v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1906
    invoke-static {v0, v1, v9}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v6

    .line 1908
    :goto_6e
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;ZZLandroid/app/PendingIntent;)V

    invoke-virtual {v9, v0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 1870
    return-void

    .line 1892
    .end local v2    # "notificationKey":Ljava/lang/String;
    .end local v5    # "keyguardShowing":Z
    .end local v7    # "intent":Landroid/app/PendingIntent;
    :cond_7a
    iget-object v7, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .restart local v7    # "intent":Landroid/app/PendingIntent;
    goto :goto_40

    .line 1905
    .restart local v2    # "notificationKey":Ljava/lang/String;
    .restart local v5    # "keyguardShowing":Z
    :cond_7d
    const/4 v6, 0x0

    .local v6, "afterKeyguardGone":Z
    goto :goto_6e
.end method

.method public register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .registers 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x0

    .line 2040
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 2041
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_d

    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_11

    .line 2042
    :cond_d
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2039
    :goto_10
    return-void

    .line 2044
    :cond_11
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10
.end method
