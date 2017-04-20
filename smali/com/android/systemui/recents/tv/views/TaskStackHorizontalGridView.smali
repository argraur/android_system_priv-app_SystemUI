.class public Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;
.super Landroid/support/v17/leanback/widget/HorizontalGridView;
.source "TaskStackHorizontalGridView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;


# instance fields
.field private mFocusedTask:Lcom/android/systemui/recents/model/Task;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/tv/views/TaskCardView;
    .registers 5
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 102
    .local v1, "tv":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-ne v2, p1, :cond_14

    .line 103
    return-object v1

    .line 100
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v1    # "tv":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_17
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->findFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 92
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public init(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 3
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_b

    .line 74
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 70
    :cond_b
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 54
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setWindowAlignment(I)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setImportantForAccessibility(I)V

    .line 57
    invoke-super {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->onAttachedToWindow()V

    .line 53
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->onDetachedFromWindow()V

    .line 63
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "newTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    .line 139
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 138
    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->addTaskAt(Lcom/android/systemui/recents/model/Task;I)V

    .line 137
    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V
    .registers 10
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/recents/model/Task;
    .param p4, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p5, "fromDockGesture"    # Z

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v1, p2, :cond_11

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 150
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-nez v1, :cond_35

    .line 151
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-nez v1, :cond_22

    const/4 v0, 0x1

    .line 152
    .local v0, "shouldFinishActivity":Z
    :cond_22
    if-eqz v0, :cond_35

    .line 153
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_36

    .line 154
    const v1, 0x7f0f02d4

    .line 153
    :goto_2f
    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 144
    .end local v0    # "shouldFinishActivity":Z
    :cond_35
    return-void

    .line 155
    .restart local v0    # "shouldFinishActivity":Z
    :cond_36
    const v1, 0x7f0f02d5

    goto :goto_2f
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 2
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 161
    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 2
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 166
    return-void
.end method

.method public startFocusGainAnimation()V
    .registers 5

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 116
    .local v1, "v":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 117
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 119
    :cond_1b
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getRecentsRowFocusAnimationHolder()Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->startFocusGainAnimation()V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "v":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_25
    return-void
.end method

.method public startFocusLossAnimation()V
    .registers 5

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 129
    .local v1, "v":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 130
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 132
    :cond_1b
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getRecentsRowFocusAnimationHolder()Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->startFocusLossAnimation()V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    .end local v1    # "v":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_25
    return-void
.end method
