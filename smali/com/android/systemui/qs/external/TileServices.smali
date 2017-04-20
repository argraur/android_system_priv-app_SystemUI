.class public Lcom/android/systemui/qs/external/TileServices;
.super Landroid/service/quicksettings/IQSService$Stub;
.source "TileServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/TileServices$1;,
        Lcom/android/systemui/qs/external/TileServices$2;
    }
.end annotation


# static fields
.field private static final SERVICE_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/qs/external/TileServiceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMaxBound:I

.field private final mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/qs/external/CustomTile;",
            "Lcom/android/systemui/qs/external/TileServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/qs/external/CustomTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/qs/external/CustomTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/external/TileServices;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->requestListening(Landroid/content/ComponentName;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 320
    new-instance v0, Lcom/android/systemui/qs/external/TileServices$2;

    invoke-direct {v0}, Lcom/android/systemui/qs/external/TileServices$2;-><init>()V

    .line 319
    sput-object v0, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Ljava/util/Comparator;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/os/Looper;)V
    .registers 7
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/service/quicksettings/IQSService$Stub;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    .line 309
    new-instance v0, Lcom/android/systemui/qs/external/TileServices$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServices$1;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.service.quicksettings.action.REQUEST_LISTENING"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method private getTileForComponent(Landroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTile;
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 305
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/external/CustomTile;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    .line 304
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 299
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/external/CustomTile;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    .line 298
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestListening(Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 160
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 161
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForComponent(Landroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 162
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-nez v0, :cond_25

    .line 163
    const-string/jumbo v3, "TileServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t find tile for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_42

    monitor-exit v4

    .line 164
    return-void

    .line 166
    :cond_25
    :try_start_25
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 167
    .local v2, "service":Lcom/android/systemui/qs/external/TileServiceManager;
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_42

    move-result v3

    if-nez v3, :cond_35

    monitor-exit v4

    .line 168
    return-void

    .line 170
    :cond_35
    const/4 v3, 0x1

    :try_start_36
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_42

    .line 172
    :try_start_39
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_45
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    :goto_40
    monitor-exit v4

    .line 159
    return-void

    .line 160
    .end local v0    # "customTile":Lcom/android/systemui/qs/external/CustomTile;
    .end local v2    # "service":Lcom/android/systemui/qs/external/TileServiceManager;
    :catchall_42
    move-exception v3

    monitor-exit v4

    throw v3

    .line 173
    .restart local v0    # "customTile":Lcom/android/systemui/qs/external/CustomTile;
    .restart local v2    # "service":Lcom/android/systemui/qs/external/TileServiceManager;
    :catch_45
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_40
.end method

.method private verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V
    .registers 7
    .param p1, "tile"    # Lcom/android/systemui/qs/external/CustomTile;

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 149
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 151
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v3, v2, :cond_30

    .line 152
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Component outside caller\'s uid"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_29} :catch_29

    .line 154
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "uid":I
    :catch_29
    move-exception v0

    .line 155
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 146
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "uid":I
    :cond_30
    return-void
.end method


# virtual methods
.method public freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V
    .registers 7
    .param p1, "tile"    # Lcom/android/systemui/qs/external/CustomTile;
    .param p2, "service"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 99
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p2, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 100
    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->handleDestroy()V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "slot":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/qs/external/TileServices$3;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/qs/external/TileServices$3;-><init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_35

    monitor-exit v2

    .line 97
    return-void

    .line 98
    .end local v0    # "slot":Ljava/lang/String;
    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 269
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_f

    .line 270
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 271
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    return-object v1

    .line 273
    :cond_f
    return-object v1
.end method

.method public getTileWrapper(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;
    .registers 7
    .param p1, "tile"    # Lcom/android/systemui/qs/external/CustomTile;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 84
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/external/TileServices;->onCreateTileService(Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    .line 85
    .local v1, "service":Lcom/android/systemui/qs/external/TileServiceManager;
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 86
    :try_start_f
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_24

    monitor-exit v3

    .line 90
    return-object v1

    .line 85
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isLocked()Z
    .registers 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    .line 288
    .local v0, "keyguardMonitor":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    return v1
.end method

.method public isSecure()Z
    .registers 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    .line 294
    .local v0, "keyguardMonitor":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method protected onCreateTileService(Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)Lcom/android/systemui/qs/external/TileServiceManager;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "tile"    # Landroid/service/quicksettings/Tile;

    .prologue
    .line 94
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)V

    return-object v0
.end method

.method public onDialogHidden(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 220
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_18

    .line 221
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setShowingDialog(Z)V

    .line 223
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->onDialogHidden()V

    .line 218
    :cond_18
    return-void
.end method

.method public onShowDialog(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 209
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_1d

    .line 210
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->onDialogShown()V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->collapsePanels()V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setShowingDialog(Z)V

    .line 207
    :cond_1d
    return-void
.end method

.method public onStartActivity(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 230
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_e

    .line 231
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->collapsePanels()V

    .line 228
    :cond_e
    return-void
.end method

.method public onStartSuccessful(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 196
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_1b

    .line 197
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 198
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 199
    :try_start_c
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 200
    .local v1, "tileServiceManager":Lcom/android/systemui/qs/external/TileServiceManager;
    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1c

    monitor-exit v3

    .line 202
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->refreshState()V

    .line 194
    .end local v1    # "tileServiceManager":Lcom/android/systemui/qs/external/TileServiceManager;
    :cond_1b
    return-void

    .line 198
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public recalculateBindAllowance()V
    .registers 8

    .prologue
    .line 121
    iget-object v6, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 122
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/external/TileServiceManager;>;"
    monitor-exit v6

    .line 124
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    .local v0, "N":I
    iget v5, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    if-le v0, v5, :cond_32

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 128
    .local v2, "currentTime":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_2d

    .line 129
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v5, v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->calculateBindPriority(J)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 121
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "currentTime":J
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/external/TileServiceManager;>;"
    :catchall_2a
    move-exception v5

    monitor-exit v6

    throw v5

    .line 132
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "currentTime":J
    .restart local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/external/TileServiceManager;>;"
    :cond_2d
    sget-object v5, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    .end local v1    # "i":I
    .end local v2    # "currentTime":J
    :cond_32
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_33
    iget v5, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    if-ge v1, v5, :cond_46

    if-ge v1, v0, :cond_46

    .line 137
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 140
    :cond_46
    :goto_46
    if-ge v1, v0, :cond_55

    .line 141
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 119
    :cond_55
    return-void
.end method

.method public startUnlockAndRun(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 279
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_c

    .line 280
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 281
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->startUnlockAndRun()V

    .line 277
    :cond_c
    return-void
.end method

.method public updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 180
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 181
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_25

    .line 182
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 183
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 184
    :try_start_c
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 185
    .local v1, "tileServiceManager":Lcom/android/systemui/qs/external/TileServiceManager;
    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setLastUpdate(J)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    monitor-exit v3

    .line 188
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/external/CustomTile;->updateState(Landroid/service/quicksettings/Tile;)V

    .line 189
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->refreshState()V

    .line 179
    .end local v1    # "tileServiceManager":Lcom/android/systemui/qs/external/TileServiceManager;
    :cond_25
    return-void

    .line 183
    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v8

    .line 239
    .local v8, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v8, :cond_41

    .line 240
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 242
    :try_start_9
    invoke-virtual {v8}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 243
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/external/TileServices;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 245
    .local v1, "userHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 246
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 245
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 247
    .local v10, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 248
    if-eqz p2, :cond_42

    .line 249
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 252
    :goto_37
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/qs/external/TileServices$4;

    invoke-direct {v4, p0, v7, v0}, Lcom/android/systemui/qs/external/TileServices$4;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_41} :catch_44

    .line 237
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_41
    :goto_41
    return-void

    .line 251
    .restart local v1    # "userHandle":Landroid/os/UserHandle;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_42
    const/4 v0, 0x0

    .local v0, "statusIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_37

    .line 261
    .end local v0    # "statusIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :catch_44
    move-exception v9

    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_41
.end method
