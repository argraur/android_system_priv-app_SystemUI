.class public Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TaskStackHorizontalViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

.field final synthetic this$0:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->this$0:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    .line 51
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    check-cast p2, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .end local p2    # "v":Landroid/view/View;
    iput-object p2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 50
    return-void
.end method

.method private getRemoveAtListener(ILcom/android/systemui/recents/model/Task;)Landroid/animation/Animator$AnimatorListener;
    .registers 4
    .param p1, "position"    # I
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 80
    new-instance v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;-><init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;Lcom/android/systemui/recents/model/Task;)V

    return-object v0
.end method


# virtual methods
.method public init(Lcom/android/systemui/recents/model/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->init(Lcom/android/systemui/recents/model/Task;)V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isInDismissState()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 65
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->getRemoveAtListener(ILcom/android/systemui/recents/model/Task;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/tv/views/TaskCardView;->startDismissTaskAnimation(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    :goto_1b
    return-void

    .line 68
    :cond_1c
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTaskCardView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 69
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 68
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_1b

    .line 71
    :catch_2f
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TaskStackViewAdapter"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 73
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0f02d9

    .line 72
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method
