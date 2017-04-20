.class public Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TaskStackHorizontalViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1, "tasks"    # Ljava/util/List;

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    .line 101
    return-void
.end method


# virtual methods
.method public addTaskAt(Lcom/android/systemui/recents/model/Task;I)V
    .registers 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "position"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyItemInserted(I)V

    .line 155
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositionOfTask(Lcom/android/systemui/recents/model/Task;)I
    .registers 5
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 147
    .local v0, "position":I
    if-ltz v0, :cond_a

    .end local v0    # "position":I
    :goto_9
    return v0

    .restart local v0    # "position":I
    :cond_a
    move v0, v1

    goto :goto_9
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 121
    check-cast p1, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 124
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 125
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->init(Lcom/android/systemui/recents/model/Task;)V

    .line 121
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    .line 116
    const v2, 0x7f0400d8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 115
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;Landroid/view/View;)V

    .line 117
    .local v1, "viewHolder":Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    return-object v1
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;)V
    .registers 6
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 135
    .local v0, "position":I
    if-ltz v0, :cond_20

    .line 136
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyItemRemoved(I)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    if-eqz v1, :cond_20

    .line 139
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 133
    :cond_20
    return-void
.end method

.method public setNewStackTasks(Ljava/util/List;)V
    .registers 3
    .param p1, "tasks"    # Ljava/util/List;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public setTaskStackHorizontalGridView(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;)V
    .registers 2
    .param p1, "gridView"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 151
    return-void
.end method
