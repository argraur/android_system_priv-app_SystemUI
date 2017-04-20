.class Lcom/android/systemui/recents/model/FilteredTaskList;
.super Ljava/lang/Object;
.source "TaskStack.java"


# instance fields
.field mFilter:Lcom/android/systemui/recents/model/TaskFilter;

.field mFilteredTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTaskIndices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    .line 84
    return-void
.end method

.method private updateFilteredTaskIndices()V
    .registers 7

    .prologue
    .line 195
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 196
    .local v2, "taskCount":I
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_24

    .line 198
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 199
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 194
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_24
    return-void
.end method

.method private updateFilteredTasks()V
    .registers 7

    .prologue
    .line 171
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    if-eqz v4, :cond_44

    .line 174
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 175
    .local v3, "taskIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 176
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v2, :cond_29

    .line 177
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 178
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 181
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v2, :cond_4b

    .line 182
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 183
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    invoke-interface {v4, v3, v1, v0}, Lcom/android/systemui/recents/model/TaskFilter;->acceptTask(Landroid/util/SparseArray;Lcom/android/systemui/recents/model/Task;I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 184
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 188
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskCount":I
    .end local v3    # "taskIdMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task;>;"
    :cond_44
    iget-object v4, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_4b
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTaskIndices()V

    .line 170
    return-void
.end method


# virtual methods
.method contains(Lcom/android/systemui/recents/model/Task;)Z
    .registers 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method indexOf(Lcom/android/systemui/recents/model/Task;)I
    .registers 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 153
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 154
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 156
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public moveTaskToStack(Lcom/android/systemui/recents/model/Task;II)V
    .registers 6
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "insertIndex"    # I
    .param p3, "newStackId"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 120
    .local v0, "taskIndex":I
    if-eq v0, p2, :cond_14

    .line 121
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    if-ge v0, p2, :cond_f

    .line 123
    add-int/lit8 p2, p2, -0x1

    .line 125
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 130
    :cond_14
    invoke-virtual {p1, p3}, Lcom/android/systemui/recents/model/Task;->setStackId(I)V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 118
    return-void
.end method

.method remove(Lcom/android/systemui/recents/model/Task;)Z
    .registers 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 144
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    .local v0, "removed":Z
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 146
    return v0

    .line 148
    .end local v0    # "removed":Z
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method set(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 135
    return-void
.end method

.method setFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z
    .registers 4
    .param p1, "filter"    # Lcom/android/systemui/recents/model/TaskFilter;

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v0, "prevFilteredTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/recents/model/TaskFilter;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 97
    const/4 v1, 0x1

    return v1

    .line 99
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method size()I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
