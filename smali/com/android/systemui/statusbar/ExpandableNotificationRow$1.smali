.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get10(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v2

    if-nez v2, :cond_60

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 145
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 147
    .local v1, "wasExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 148
    .local v0, "nowExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get7(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;->onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x198

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 151
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-wrap0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZ)V

    .line 143
    .end local v0    # "nowExpanded":Z
    .end local v1    # "wasExpanded":Z
    :goto_5f
    return-void

    .line 153
    :cond_60
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get8(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setFocusOnVisibilityChange()V

    .line 157
    :cond_6f
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const/4 v0, 0x0

    .line 159
    .local v0, "nowExpanded":Z
    :goto_80
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    .line 164
    :goto_85
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get7(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;->onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x197

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    goto :goto_5f

    .line 158
    .end local v0    # "nowExpanded":Z
    :cond_a5
    const/4 v0, 0x1

    .restart local v0    # "nowExpanded":Z
    goto :goto_80

    .line 161
    .end local v0    # "nowExpanded":Z
    :cond_a7
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_b6

    const/4 v0, 0x0

    .line 162
    .restart local v0    # "nowExpanded":Z
    :goto_b0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    goto :goto_85

    .line 161
    .end local v0    # "nowExpanded":Z
    :cond_b6
    const/4 v0, 0x1

    .restart local v0    # "nowExpanded":Z
    goto :goto_b0
.end method
