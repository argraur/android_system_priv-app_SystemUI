.class public Lcom/android/systemui/recents/model/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$1;,
        Lcom/android/systemui/recents/model/TaskStack$DockState;,
        Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
    }
.end annotation


# instance fields
.field private FREEFORM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mAffinitiesGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mRawTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/TaskStack$1;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 561
    new-instance v0, Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    .line 565
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    .line 569
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    new-instance v1, Lcom/android/systemui/recents/model/TaskStack$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/TaskStack$2;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->setFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z

    .line 567
    return-void
.end method

.method private createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1077
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1078
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1079
    .local v3, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v3, :cond_1e

    .line 1080
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1081
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1083
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1e
    return-object v1
.end method


# virtual methods
.method public addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .registers 4
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-void
.end method

.method public computeAllTasksList()Ljava/util/ArrayList;
    .registers 3
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
    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 799
    return-object v0
.end method

.method public computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1035
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 1036
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1037
    .local v1, "existingComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1038
    .local v3, "removedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v7

    .line 1039
    .local v7, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1040
    .local v6, "taskKeyCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v6, :cond_48

    .line 1041
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 1044
    .local v5, "t":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget v8, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    if-eq v8, p2, :cond_26

    .line 1040
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1046
    :cond_26
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1047
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1048
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    .line 1052
    invoke-virtual {v4, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    if-eqz v8, :cond_44

    .line 1053
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 1055
    :cond_44
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 1059
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "t":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_48
    return-object v3
.end method

.method createAffiliatedGroupings(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 914
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 915
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 983
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 984
    .local v11, "tasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 985
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 986
    .local v8, "taskCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v8, :cond_39

    .line 987
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 999
    .local v7, "t":Lcom/android/systemui/recents/model/Task;
    new-instance v3, Lcom/android/systemui/recents/model/TaskGrouping;

    iget-object v12, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v12}, Lcom/android/systemui/recents/model/TaskGrouping;-><init>(I)V

    .line 1000
    .local v3, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/model/TaskStack;->addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 1002
    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/model/TaskGrouping;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1003
    iget-object v12, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v11, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1006
    .end local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v7    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1007
    const v13, 0x7f10024f

    .line 1006
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1008
    .local v6, "minAlpha":F
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1009
    .local v9, "taskGroupCount":I
    const/4 v4, 0x0

    :goto_4b
    if-ge v4, v9, :cond_90

    .line 1010
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskGrouping;

    .line 1011
    .restart local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 1013
    const/4 v12, 0x1

    if-gt v8, v12, :cond_5f

    .line 1009
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 1015
    :cond_5f
    iget-object v12, v3, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    iget v0, v12, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    .line 1016
    .local v0, "affiliationColor":I
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v6

    int-to-float v13, v8

    div-float v2, v12, v13

    .line 1017
    .local v2, "alphaStep":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1018
    .local v1, "alpha":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_77
    if-ge v5, v8, :cond_5c

    .line 1019
    iget-object v12, v3, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 1020
    .restart local v7    # "t":Lcom/android/systemui/recents/model/Task;
    const/4 v12, -0x1

    invoke-static {v0, v12, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v12

    iput v12, v7, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 1022
    sub-float/2addr v1, v2

    .line 1018
    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    .line 913
    .end local v0    # "affiliationColor":I
    .end local v1    # "alpha":F
    .end local v2    # "alphaStep":F
    .end local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v5    # "j":I
    .end local v7    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_90
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "TaskStack"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    const-string/jumbo v4, " numStackTasks="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1091
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1092
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1093
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1094
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    if-ge v0, v2, :cond_48

    .line 1095
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4, v1, p2}, Lcom/android/systemui/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 1086
    :cond_48
    return-void
.end method

.method public findTaskWithId(I)Lcom/android/systemui/recents/model/Task;
    .registers 7
    .param p1, "taskId"    # I

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v3

    .line 882
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 883
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_1b

    .line 884
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 885
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v4, p1, :cond_18

    .line 886
    return-object v1

    .line 883
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 889
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1b
    const/4 v4, 0x0

    return-object v4
.end method

.method public getFreeformTaskCount()I
    .registers 7

    .prologue
    .line 829
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 830
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v0, 0x0

    .line 831
    .local v0, "freeformCount":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 832
    .local v3, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v3, :cond_1f

    .line 833
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 834
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 835
    add-int/lit8 v0, v0, 0x1

    .line 832
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 838
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1f
    return v0
.end method

.method public getFreeformTasks()Ljava/util/ArrayList;
    .registers 7
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
    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v0, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 783
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 784
    .local v3, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v3, :cond_24

    .line 785
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 786
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 787
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 790
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_24
    return-object v0
.end method

.method public getLaunchTarget()Lcom/android/systemui/recents/model/Task;
    .registers 6

    .prologue
    .line 845
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 846
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 847
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_1b

    .line 848
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 849
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-boolean v4, v1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v4, :cond_18

    .line 850
    return-object v1

    .line 847
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 853
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1b
    const/4 v4, 0x0

    return-object v4
.end method

.method public getNextLaunchTarget()Lcom/android/systemui/recents/model/Task;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 861
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    .line 862
    .local v1, "taskCount":I
    if-nez v1, :cond_9

    .line 863
    const/4 v2, 0x0

    return-object v2

    .line 865
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 866
    .local v0, "launchTaskIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_25

    .line 867
    add-int/lit8 v2, v0, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 871
    :goto_1a
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    return-object v2

    .line 869
    :cond_25
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_1a
.end method

.method public getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;
    .registers 7
    .param p1, "includeFreeformTasks"    # Z

    .prologue
    const/4 v4, 0x0

    .line 745
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 746
    .local v1, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 747
    return-object v4

    .line 749
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_28

    .line 750
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 751
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_24

    if-eqz p1, :cond_25

    .line 752
    :cond_24
    return-object v2

    .line 749
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 755
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_28
    return-object v4
.end method

.method public getStackTaskCount()I
    .registers 7

    .prologue
    .line 813
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 814
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v1, 0x0

    .line 815
    .local v1, "stackCount":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 816
    .local v3, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v3, :cond_1f

    .line 817
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 818
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 819
    add-int/lit8 v1, v1, 0x1

    .line 816
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 822
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1f
    return v1
.end method

.method public getStackTasks()Ljava/util/ArrayList;
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
    .line 774
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()I
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    return v0
.end method

.method public getTaskKeys()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v3, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v4

    .line 762
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 763
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_1e

    .line 764
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 765
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 767
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1e
    return-object v3
.end method

.method public indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I
    .registers 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method

.method public moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V
    .registers 8
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "newStackId"    # I

    .prologue
    .line 597
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 598
    .local v3, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 599
    .local v2, "taskCount":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x2

    if-ne p2, v4, :cond_19

    .line 601
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4, p1, v2, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;II)V

    .line 595
    :cond_18
    :goto_18
    return-void

    .line 602
    :cond_19
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    if-ne p2, v4, :cond_18

    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, "insertIndex":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_25
    if-ltz v0, :cond_35

    .line 606
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 607
    add-int/lit8 v1, v0, 0x1

    .line 611
    :cond_35
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4, p1, v1, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;II)V

    goto :goto_18

    .line 605
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_25
.end method

.method public removeAllTasks()V
    .registers 5

    .prologue
    .line 650
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 651
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_21

    .line 652
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 653
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V

    .line 654
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 656
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_21
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v3, :cond_2a

    .line 658
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v3, p0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 649
    :cond_2a
    return-void
.end method

.method public removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .registers 4
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 902
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    return-void
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V
    .registers 10
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p3, "fromDockGesture"    # Z

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->contains(Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 635
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V

    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 637
    .local v3, "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_1f

    .line 639
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 643
    .end local v3    # "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method

.method removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V
    .registers 5
    .param p1, "taskList"    # Lcom/android/systemui/recents/model/FilteredTaskList;
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 618
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/recents/model/Task;)Z

    .line 620
    iget-object v0, p2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 621
    .local v0, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz v0, :cond_13

    .line 622
    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/TaskGrouping;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 623
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v1

    if-nez v1, :cond_13

    .line 624
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 616
    :cond_13
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 588
    return-void
.end method

.method public setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "notifyStackChanges"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v12

    .line 671
    .local v12, "currentTasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v15

    .line 672
    .local v15, "newTasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v9, "addedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v17, "removedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v10, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-nez v2, :cond_29

    .line 678
    const/16 p3, 0x0

    .line 682
    .end local p3    # "notifyStackChanges":Z
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 683
    .local v19, "taskCount":I
    add-int/lit8 v13, v19, -0x1

    .local v13, "i":I
    :goto_33
    if-ltz v13, :cond_57

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/model/Task;

    .line 685
    .local v18, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 686
    if-eqz p3, :cond_4e

    .line 687
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_4e
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/Task;->setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 683
    add-int/lit8 v13, v13, -0x1

    goto :goto_33

    .line 694
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_57
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v19

    .line 695
    const/4 v13, 0x0

    :goto_5c
    move/from16 v0, v19

    if-ge v13, v0, :cond_84

    .line 696
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 697
    .local v14, "newTask":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 698
    .local v11, "currentTask":Lcom/android/systemui/recents/model/Task;
    if-nez v11, :cond_7d

    if-eqz p3, :cond_7d

    .line 699
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_77
    :goto_77
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    add-int/lit8 v13, v13, 0x1

    goto :goto_5c

    .line 700
    :cond_7d
    if-eqz v11, :cond_77

    .line 703
    invoke-virtual {v11, v14}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 704
    move-object v14, v11

    goto :goto_77

    .line 710
    .end local v11    # "currentTask":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "newTask":Lcom/android/systemui/recents/model/Task;
    :cond_84
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_8a
    if-ltz v13, :cond_97

    .line 711
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iput v13, v2, Lcom/android/systemui/recents/model/Task;->temporarySortIndexInStack:I

    .line 710
    add-int/lit8 v13, v13, -0x1

    goto :goto_8a

    .line 713
    :cond_97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, v10}, Lcom/android/systemui/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 716
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 719
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->createAffiliatedGroupings(Landroid/content/Context;)V

    .line 722
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 723
    .local v16, "removedTaskCount":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 724
    .local v5, "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    const/4 v13, 0x0

    :goto_b8
    move/from16 v0, v16

    if-ge v13, v0, :cond_d3

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 726
    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    .line 725
    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 724
    add-int/lit8 v13, v13, 0x1

    goto :goto_b8

    .line 730
    :cond_d3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 731
    .local v8, "addedTaskCount":I
    const/4 v13, 0x0

    :goto_d8
    if-ge v13, v8, :cond_ec

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v2}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    .line 731
    add-int/lit8 v13, v13, 0x1

    goto :goto_d8

    .line 736
    :cond_ec
    if-eqz p3, :cond_f7

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 668
    :cond_f7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stack Tasks ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "):\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1066
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1067
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    if-ge v0, v2, :cond_5a

    .line 1068
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1070
    :cond_5a
    return-object v1
.end method
