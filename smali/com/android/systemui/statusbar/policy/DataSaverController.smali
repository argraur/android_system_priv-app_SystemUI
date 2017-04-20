.class public Lcom/android/systemui/statusbar/policy/DataSaverController;
.super Ljava/lang/Object;
.source "DataSaverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DataSaverController$1;,
        Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/DataSaverController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/DataSaverController;Z)V
    .registers 2
    .param p1, "isDataSaving"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/policy/DataSaverController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController$1;-><init>(Lcom/android/systemui/statusbar/policy/DataSaverController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 32
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 31
    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .registers 5
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 36
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    monitor-exit v2

    .line 35
    return-void

    .line 36
    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 45
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21

    :cond_18
    monitor-exit v1

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V

    .line 43
    return-void

    .line 44
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDataSaverEnabled()Z
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public remListener(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 55
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    .line 53
    return-void

    .line 54
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDataSaverEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 69
    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverController;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 66
    :goto_a
    return-void

    .line 70
    :catch_b
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_a
.end method
