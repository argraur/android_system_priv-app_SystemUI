.class Lcom/android/systemui/recents/tv/RecentsTvActivity$2;
.super Ljava/lang/Object;
.source "RecentsTvActivity.java"

# interfaces
.implements Lcom/android/systemui/tv/pip/PipRecentsOverlayManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/tv/RecentsTvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/RecentsTvActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->onBackPressed()V

    .line 131
    return-void
.end method

.method public onClosed()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToLaunchTargetTaskOrHome(Z)Z

    .line 126
    return-void
.end method

.method public onRecentsFocused()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-get0(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 138
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-get1(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->requestFocus()Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-get1(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v0

    .line 140
    const/16 v1, 0x8

    .line 139
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->sendAccessibilityEvent(I)V

    .line 142
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$2;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-get1(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->startFocusGainAnimation()V

    .line 136
    return-void
.end method
