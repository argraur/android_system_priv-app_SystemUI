.class Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;
.super Ljava/lang/Object;
.source "RecentsTvActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/tv/RecentsTvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishRecentsRunnable"
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/RecentsTvActivity;
    .param p2, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    .line 175
    const v3, 0x7f0500b2

    const v4, 0x7f0500b3

    .line 174
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 176
    .local v1, "opts":Landroid/app/ActivityOptions;
    iget-object v2, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 172
    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :goto_19
    return-void

    .line 177
    :catch_1a
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RecentsTvActivity"

    iget-object v3, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$FinishRecentsRunnable;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Home"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0f02d9

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method
