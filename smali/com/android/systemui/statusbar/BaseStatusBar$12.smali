.class Lcom/android/systemui/statusbar/BaseStatusBar$12;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "val$guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p3, "val$sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->hasImportanceChanged()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1124
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    .line 1125
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 1126
    :cond_1e
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$12$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$12$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$12;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    .line 1133
    .local v0, "dismissAction":Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 1121
    .end local v0    # "dismissAction":Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    :goto_30
    return-void

    .line 1135
    :cond_31
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap3(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    goto :goto_30
.end method
