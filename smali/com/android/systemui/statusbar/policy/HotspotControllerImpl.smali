.class public Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.super Ljava/lang/Object;
.source "HotspotControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;,
        Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/HotspotController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHotspotState:I

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireCallback(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    const-string/jumbo v0, "HotspotController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 48
    const-string/jumbo v0, "connectivity"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 45
    return-void
.end method

.method private fireCallback(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 127
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 128
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotChanged(Z)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 126
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_1c
    monitor-exit v3

    .line 125
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "hotspotState"    # I

    .prologue
    .line 64
    packed-switch p0, :pswitch_data_1a

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_5
    const-string/jumbo v0, "DISABLED"

    return-object v0

    .line 68
    :pswitch_9
    const-string/jumbo v0, "DISABLING"

    return-object v0

    .line 70
    :pswitch_d
    const-string/jumbo v0, "ENABLED"

    return-object v0

    .line 72
    :pswitch_11
    const-string/jumbo v0, "ENABLING"

    return-object v0

    .line 74
    :pswitch_15
    const-string/jumbo v0, "FAILED"

    return-object v0

    .line 64
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_9
        :pswitch_5
        :pswitch_11
        :pswitch_d
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 82
    if-eqz p1, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_44

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    monitor-exit v1

    return-void

    .line 83
    :cond_f
    :try_start_f
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "HotspotController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    :goto_3d
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->setListening(Z)V
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_44

    monitor-exit v1

    .line 80
    return-void

    .line 85
    :cond_42
    const/4 v0, 0x1

    goto :goto_3d

    .line 81
    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 59
    const-string/jumbo v0, "HotspotController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "  mHotspotEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public isHotspotEnabled()Z
    .registers 3

    .prologue
    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHotspotSupported()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_20

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v0

    .line 53
    :cond_20
    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .prologue
    .line 91
    if-nez p1, :cond_3

    return-void

    .line 92
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "HotspotController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_21
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 94
    :try_start_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    :goto_34
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->setListening(Z)V
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_3b

    monitor-exit v1

    .line 90
    return-void

    .line 95
    :cond_39
    const/4 v0, 0x1

    goto :goto_34

    .line 93
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setHotspotEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 116
    if-eqz p1, :cond_e

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;-><init>()V

    .line 118
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2, v2, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 115
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
    :goto_d
    return-void

    .line 121
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_d
.end method
