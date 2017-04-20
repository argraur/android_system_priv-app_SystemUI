.class public Lcom/android/systemui/statusbar/RemoteInputController;
.super Ljava/lang/Object;
.source "RemoteInputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/RemoteInputController$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/RemoteInputController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mOpen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSpinning:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 5
    .param p1, "sbwm"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p2, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 44
    iput-object p2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 42
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 116
    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v2

    .line 118
    .local v2, "remoteInputActive":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_24

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/RemoteInputController$Callback;->onRemoteInputActive(Z)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 115
    :cond_24
    return-void
.end method

.method private pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "contains"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remove"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "removeToken"    # Ljava/lang/Object;

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "found":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_4a

    .line 153
    iget-object v5, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 154
    .local v2, "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v5, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 155
    .local v3, "itemToken":Ljava/lang/Object;
    if-eqz p3, :cond_2b

    if-ne v3, p3, :cond_3a

    :cond_2b
    const/4 v4, 0x1

    .line 157
    .local v4, "removeTokenMatches":Z
    :goto_2c
    if-eqz v2, :cond_32

    if-ne v2, p2, :cond_3c

    if-eqz v4, :cond_3c

    .line 158
    :cond_32
    iget-object v5, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 155
    .end local v4    # "removeTokenMatches":Z
    :cond_3a
    const/4 v4, 0x0

    .restart local v4    # "removeTokenMatches":Z
    goto :goto_2c

    .line 159
    :cond_3c
    if-ne v2, p1, :cond_37

    .line 160
    if-eqz p3, :cond_48

    if-eq p3, v3, :cond_48

    .line 162
    iget-object v5, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_37

    .line 164
    :cond_48
    const/4 v0, 0x1

    goto :goto_37

    .line 168
    .end local v2    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v3    # "itemToken":Ljava/lang/Object;
    .end local v4    # "removeTokenMatches":Z
    :cond_4a
    return v0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    .prologue
    .line 173
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public addRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V
    .registers 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z

    move-result v0

    .line 59
    .local v0, "found":Z
    if-nez v0, :cond_1c

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->apply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 53
    return-void
.end method

.method public addSpinning(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public closeRemoteInputs()V
    .registers 5

    .prologue
    .line 185
    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 186
    return-void

    .line 190
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_3c

    .line 192
    iget-object v3, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 193
    .local v1, "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v1, :cond_39

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_39

    .line 194
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 198
    .end local v1    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_42
    if-ltz v0, :cond_56

    .line 199
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 200
    .restart local v1    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_53

    .line 201
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->closeRemoteInput()V

    .line 198
    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 184
    .end local v1    # "item":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_56
    return-void
.end method

.method public isRemoteInputActive()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .registers 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpinning(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remoteInputSent(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 179
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/RemoteInputController$Callback;->onRemoteInputSent(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 177
    :cond_17
    return-void
.end method

.method public removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V
    .registers 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->apply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 74
    return-void
.end method

.method public removeSpinning(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_12

    .line 107
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_12
    return-void
.end method
