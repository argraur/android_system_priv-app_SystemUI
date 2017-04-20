.class Lcom/android/systemui/statusbar/BaseStatusBar$7$2;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$7;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$7;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$7;
    .param p2, "val$sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "val$rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 627
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap2(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/Notification;)V

    .line 628
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 630
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-eqz v2, :cond_48

    const/4 v0, 0x1

    .line 635
    .local v0, "isUpdate":Z
    :goto_2a
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v2, :cond_56

    .line 636
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 635
    if-eqz v2, :cond_56

    .line 642
    if-eqz v0, :cond_4a

    .line 643
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 647
    :goto_47
    return-void

    .line 630
    .end local v0    # "isUpdate":Z
    :cond_48
    const/4 v0, 0x0

    .restart local v0    # "isUpdate":Z
    goto :goto_2a

    .line 645
    :cond_4a
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_47

    .line 649
    :cond_56
    if-eqz v0, :cond_64

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 626
    :goto_63
    return-void

    .line 652
    :cond_64
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_63
.end method
