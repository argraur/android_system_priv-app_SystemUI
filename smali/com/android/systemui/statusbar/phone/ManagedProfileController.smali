.class public Lcom/android/systemui/statusbar/phone/ManagedProfileController;
.super Ljava/lang/Object;
.source "ManagedProfileController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;,
        Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mListening:Z

.field private final mProfiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->reloadManagedProfiles()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 3
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    .line 133
    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;-><init>(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mUserManager:Landroid/os/UserManager;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    .line 41
    return-void
.end method

.method private reloadManagedProfiles()V
    .registers 9

    .prologue
    .line 78
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v7

    .line 79
    :try_start_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_3a

    const/4 v2, 0x1

    .line 80
    .local v2, "hadProfile":Z
    :goto_c
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 81
    .local v5, "user":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 83
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ui$iterator":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 84
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 85
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_37

    goto :goto_1f

    .line 78
    .end local v2    # "hadProfile":Z
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "ui$iterator":Ljava/util/Iterator;
    .end local v5    # "user":I
    :catchall_37
    move-exception v6

    monitor-exit v7

    throw v6

    .line 79
    :cond_3a
    const/4 v2, 0x0

    .restart local v2    # "hadProfile":Z
    goto :goto_c

    .line 88
    .restart local v4    # "ui$iterator":Ljava/util/Iterator;
    .restart local v5    # "user":I
    :cond_3c
    :try_start_3c
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_60

    if-eqz v2, :cond_60

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCurrentUser:I

    if-ne v5, v6, :cond_60

    .line 89
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 90
    .local v0, "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileRemoved()V

    goto :goto_50

    .line 93
    .end local v0    # "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_60
    iput v5, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCurrentUser:I
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_37

    monitor-exit v7

    .line 77
    return-void
.end method

.method private setListening(Z)V
    .registers 8
    .param p1, "listening"    # Z

    .prologue
    const/4 v4, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mListening:Z

    .line 118
    if-eqz p1, :cond_36

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->reloadManagedProfiles()V

    .line 121
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_35
    return-void

    .line 129
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_35
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .prologue
    const/4 v1, 0x1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 50
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setListening(Z)V

    .line 52
    :cond_11
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    .line 47
    return-void
.end method

.method public hasActiveProfile()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mListening:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->reloadManagedProfiles()V

    .line 99
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v1

    .line 100
    :try_start_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_16

    move-result v2

    if-lez v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    monitor-exit v1

    return v0

    .line 99
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isWorkModeEnabled()Z
    .registers 5

    .prologue
    .line 105
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mListening:Z

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->reloadManagedProfiles()V

    .line 106
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v3

    .line 107
    :try_start_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ui$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 108
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_28

    move-result v2

    if-eqz v2, :cond_10

    .line 109
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .line 112
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :cond_25
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 106
    .end local v1    # "ui$iterator":Ljava/util/Iterator;
    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 57
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setListening(Z)V

    .line 55
    :cond_14
    return-void
.end method

.method public setWorkModeEnabled(Z)V
    .registers 9
    .param p1, "enableWorkMode"    # Z

    .prologue
    .line 62
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    monitor-enter v4

    .line 63
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mProfiles:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ui$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 64
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_34

    .line 65
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mUserManager:Landroid/os/UserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 66
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mContext:Landroid/content/Context;

    .line 67
    const-string/jumbo v5, "statusbar"

    .line 66
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 68
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_31

    goto :goto_9

    .line 62
    .end local v0    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    :catchall_31
    move-exception v3

    monitor-exit v4

    throw v3

    .line 71
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    .restart local v2    # "ui$iterator":Ljava/util/Iterator;
    :cond_34
    :try_start_34
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->mUserManager:Landroid/os/UserManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->setQuietModeEnabled(IZ)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31

    goto :goto_9

    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_3d
    monitor-exit v4

    .line 61
    return-void
.end method
