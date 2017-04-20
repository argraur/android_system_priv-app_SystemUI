.class Lcom/android/systemui/recents/model/TaskStack$1;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack$1;->this$0:Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)I
    .registers 7
    .param p1, "o1"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "o2"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 547
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 549
    :cond_c
    invoke-virtual {p2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 552
    :cond_18
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->temporarySortIndexInStack:I

    int-to-long v0, v0

    iget v2, p2, Lcom/android/systemui/recents/model/Task;->temporarySortIndexInStack:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 548
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 546
    check-cast p1, Lcom/android/systemui/recents/model/Task;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/model/TaskStack$1;->compare(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method
