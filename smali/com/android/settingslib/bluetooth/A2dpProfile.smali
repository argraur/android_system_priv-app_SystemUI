.class public final Lcom/android/settingslib/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 36
    sput-boolean v2, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 45
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 46
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 44
    sput-object v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 92
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 93
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;)V

    .line 95
    const/4 v2, 0x2

    .line 94
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 90
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    return v3

    .line 116
    :cond_6
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_22

    .line 118
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sink$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 119
    .local v0, "sink":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_10

    .line 122
    .end local v0    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "sink$iterator":Ljava/util/Iterator;
    :cond_22
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v1, 0x64

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_15

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 131
    :cond_15
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 5

    .prologue
    .line 203
    sget-boolean v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "A2dpProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_d
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1e

    .line 206
    :try_start_11
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 206
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 202
    :cond_1e
    :goto_1e
    return-void

    .line 209
    :catch_1f
    move-exception v0

    .line 210
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "A2dpProfile"

    const-string/jumbo v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 108
    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 109
    const/4 v1, 0x2

    .line 110
    const/4 v2, 0x1

    .line 111
    const/4 v3, 0x3

    .line 109
    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_6

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public isAutoConnectable()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_6

    return v0

    .line 143
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 152
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_7

    return-void

    .line 153
    :cond_7
    if-eqz p2, :cond_17

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_16

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 151
    :cond_16
    :goto_16
    return-void

    .line 158
    :cond_17
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    const-string/jumbo v0, "A2DP"

    return-object v0
.end method
