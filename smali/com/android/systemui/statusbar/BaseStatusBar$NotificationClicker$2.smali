.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;ZZLandroid/app/PendingIntent;)V
    .registers 8
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .param p2, "val$notificationKey"    # Ljava/lang/String;
    .param p3, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "val$sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p5, "val$keyguardShowing"    # Z
    .param p6, "val$afterKeyguardGone"    # Z
    .param p7, "val$intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$keyguardShowing:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$afterKeyguardGone:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 1910
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1913
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPanelFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1914
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v9}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsClickedNotification(Landroid/view/View;Z)V

    .line 1919
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 1921
    :cond_31
    const/4 v7, 0x0

    .line 1922
    .local v7, "parentToCancel":Landroid/service/notification/StatusBarNotification;
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1923
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 1925
    .local v8, "summarySbn":Landroid/service/notification/StatusBarNotification;
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1926
    move-object v7, v8

    .line 1929
    .end local v7    # "parentToCancel":Landroid/service/notification/StatusBarNotification;
    .end local v8    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    :cond_63
    move-object v6, v7

    .line 1930
    .local v6, "parentToCancelFinal":Landroid/service/notification/StatusBarNotification;
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$keyguardShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$afterKeyguardGone:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;ZZLandroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->start()V

    .line 2019
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZZ)V

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 2023
    return v9
.end method
