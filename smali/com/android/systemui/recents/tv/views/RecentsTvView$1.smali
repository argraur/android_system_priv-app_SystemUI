.class Lcom/android/systemui/recents/tv/views/RecentsTvView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecentsTvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/views/RecentsTvView;->launchTaskFomRecents(Lcom/android/systemui/recents/model/Task;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/views/RecentsTvView;Lcom/android/systemui/recents/model/Task;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/views/RecentsTvView;
    .param p2, "val$task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    iput-object p2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 11
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v5, 0x0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 160
    if-nez p2, :cond_3b

    .line 161
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->-get2(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/tv/views/TaskCardView;

    move-result-object v4

    .line 162
    .local v4, "cardView":Lcom/android/systemui/recents/tv/views/TaskCardView;
    if-eqz v4, :cond_3c

    .line 163
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->-get3(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-static {v1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->-get1(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->val$task:Lcom/android/systemui/recents/model/Task;

    .line 164
    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-static {v3}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->-get2(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v3

    const/4 v6, -0x1

    .line 163
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/graphics/Rect;I)V

    .line 173
    :goto_2c
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->-get2(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-static {v1}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->-get0(Lcom/android/systemui/recents/tv/views/RecentsTvView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 158
    .end local v4    # "cardView":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_3b
    return-void

    .line 169
    .restart local v4    # "cardView":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_3c
    const-string/jumbo v0, "RecentsTvView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Card view for task : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", returned null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 171
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/RecentsTvView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvView$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v7, v0, v1, v2, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    goto :goto_2c
.end method
