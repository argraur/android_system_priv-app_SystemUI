.class Lcom/android/systemui/recents/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 176
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeIfVisible(Z)Z

    .line 172
    :cond_13
    :goto_13
    return-void

    .line 177
    :cond_14
    const-string/jumbo v10, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 182
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 184
    .local v1, "currentUser":I
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 185
    const-string/jumbo v11, "overview_last_stack_active_time"

    const-wide/16 v12, -0x1

    .line 184
    invoke-static {v10, v11, v12, v13, v1}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v6

    .line 186
    .local v6, "oldLastStackActiveTime":J
    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-eqz v10, :cond_13

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    .local v2, "currentTime":J
    cmp-long v10, v2, v6

    if-gez v10, :cond_13

    .line 193
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 194
    .local v5, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 195
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getRawTasks()Ljava/util/List;

    move-result-object v9

    .line 196
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_5a
    if-ltz v4, :cond_7a

    .line 197
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 198
    .local v8, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-wide v10, v8, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v10, v2, v10

    if-gtz v10, :cond_77

    iget-wide v10, v8, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v10, v10, v6

    if-gez v10, :cond_77

    .line 200
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    iget v11, v8, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 196
    :cond_77
    add-int/lit8 v4, v4, -0x1

    goto :goto_5a

    .line 203
    .end local v8    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_7a
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 204
    const-string/jumbo v11, "overview_last_stack_active_time"

    .line 203
    invoke-static {v10, v11, v2, v3, v1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    goto :goto_13
.end method
